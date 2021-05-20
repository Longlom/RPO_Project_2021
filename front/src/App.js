import React, {useState} from "react";
import './App.css';
import { BrowserRouter as Router, Route, Switch, Redirect } from "react-router-dom"
import history from "./utils/history";
import NavigationBar from "./components/NavigationBar";
import Home from "./components/Home";
import Login from "./components/Login";
import Utils from './utils/utils'
import {Provider} from "react-redux";
import {store} from "./utils/redux";
import SideBar from "./components/SideBar";
import CountryListComponent from "./components/CountryListComponent";
import CountryComponent from "./components/CountryComponent";
import ArtistListComponent from "./components/ArtistListComponent";
import ArtistComponent from "./components/ArtistComponent";

const AuthRoute = (props) => {
    let user = Utils.getUserName();
    if (!user) return <Redirect to="/login"/>;
    return <Route {...props} />
}

function App(props) {
    const [isExpanded, setExpanded] = useState(false);

    return (
        <Provider store={store}>
            <div className="App">
                <Router history={history}>
                    <NavigationBar store={store} toggleSideBar={() => setExpanded(!isExpanded)}/>
                    <div className="wrapper">
                        <SideBar expanded ={isExpanded}/>
                        <div className="container-fluid">
                            {props.errorMessage &&
                            <div className='alert alert-danger m-1'>{props.errorMessage}</div>
                            }
                            <Switch>
                                <AuthRoute path="/home" component={Home}/>
                                <Route path="/login" history={history} exact component={Login}/>
                                <AuthRoute path="/countries" exact component={CountryListComponent}/>
                                <AuthRoute path="/countries/:id" component={CountryComponent}/>
                                <AuthRoute path="/artists" exact component={ArtistListComponent}/>
                                <AuthRoute path="/artists/:id" component={ArtistComponent}/>

                            </Switch>
                        </div>
                    </div>
                </Router>
            </div>
        </Provider>
    );
}

function mapStateToProps(state) {
    return { errorMessage: state.alert }
};

export default App;
