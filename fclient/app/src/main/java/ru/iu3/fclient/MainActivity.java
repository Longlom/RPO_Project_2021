package ru.iu3.fclient;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;

import org.apache.commons.codec.DecoderException;
import org.apache.commons.codec.binary.Hex;

import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.charset.StandardCharsets;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.apache.commons.codec.DecoderException;
import org.apache.commons.codec.binary.Hex;
import org.apache.commons.io.IOUtils;

public class MainActivity extends AppCompatActivity {

    // Used to load the 'native-lib' library on application startup.
    static {
        System.loadLibrary("native-lib");
        System.loadLibrary("mbedcrypto");
        initRng();
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        Button btn = findViewById(R.id.btnClickMe);
        btn.setOnClickListener((View v) -> {
            onButtonClick(v);
        });

        Button btnHttp = findViewById(R.id.btnHttp);
        btnHttp.setOnClickListener((View v) -> {
            onButtonHttpClick(v);
        });


        int res = initRng();
        Log.i("fclient", "Init Rng = " + res);
        byte[] v = randomBytes(10);

        byte[] key = StringToHex("0123456789ABCDEF0123456789ABCDE0");
        byte[] enc = encrypt(key, StringToHex("00000000000000102"));
        byte[] dec = decrypt(key, enc);
        String s = new String(Hex.encodeHex(dec)).toUpperCase();
        Toast.makeText(this, s, Toast.LENGTH_SHORT).show();

//        byte[] rnd = randomBytes(16);
//        byte[] data = {'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h'};
//        byte[] encrypted = encrypt(rnd, data);
//        byte[] decrypted = decrypt(rnd, encrypted);
//        String originalData = new String(data, StandardCharsets.UTF_8);
//        String encryptedData = new String(encrypted, StandardCharsets.UTF_8);
//        String decryptedData = new String(decrypted, StandardCharsets.UTF_8);
//
//        // Example of a call to a native method
//        TextView tv = findViewById(R.id.sample_text);
//        tv.setText(stringFromJNI());
    }

    public static byte[] StringToHex(String s) {
        try {
            return Hex.decodeHex(s.toCharArray());
        } catch (DecoderException ex) {

        }
        return new byte[0];
    }


    protected void onButtonClick(View v) {
//        Intent it = new Intent(this, PinpadActivity.class);
//        startActivity(it);
        Intent it = new Intent(this, PinpadActivity.class);
        startActivityForResult(it, 0);
//        TestHttpClient();
    }

    protected void onButtonHttpClick(View v) {
        TestHttpClient();
    }

    protected void TestHttpClient() {
        new Thread(() -> {
            try {
//                HttpURLConnection uc = (HttpURLConnection) (new URL("https://www.wikipedia.org").openConnection());
                HttpURLConnection uc = (HttpURLConnection) (new URL("http://10.0.2.2:8081/api/v1/title").openConnection());
                InputStream inputStream = uc.getInputStream();
                String html = IOUtils.toString(inputStream);
                String title = getPageTitle(html);
                runOnUiThread(() -> {
                    Toast.makeText(this, title, Toast.LENGTH_SHORT).show();
                });
            } catch (Exception ex) {
                Log.e("fapptag", "Http client fails", ex);
            }
        }).start();
    }

    protected String getPageTitle(String html) {
        Pattern pattern = Pattern.compile("<title>(.+?)</title>", Pattern.DOTALL);
        Matcher matcher = pattern.matcher(html);
        String p;
        if (matcher.find()) {
            p = matcher.group(1);
        } else {
            p = "Not Found";
        }
        return p;
    }

    /**
     * A native method that is implemented by the 'native-lib' native library,
     * which is packaged with this application.
     */
    public native String stringFromJNI();

    public static native int initRng();

    public static native byte[] randomBytes(int no);

    public static native byte[] encrypt(byte[] key, byte[] data);

    public static native byte[] decrypt(byte[] key, byte[] data);
}