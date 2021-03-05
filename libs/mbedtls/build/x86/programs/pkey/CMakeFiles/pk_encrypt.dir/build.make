# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.19

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Disable VCS-based implicit rules.
% : %,v


# Disable VCS-based implicit rules.
% : RCS/%


# Disable VCS-based implicit rules.
% : RCS/%,v


# Disable VCS-based implicit rules.
% : SCCS/s.%


# Disable VCS-based implicit rules.
% : s.%


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.19.5/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.19.5/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/longlom/Projects/rpo22/libs/mbedtls/mbedtls

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/longlom/Projects/rpo22/libs/mbedtls/build/x86

# Include any dependencies generated for this target.
include programs/pkey/CMakeFiles/pk_encrypt.dir/depend.make

# Include the progress variables for this target.
include programs/pkey/CMakeFiles/pk_encrypt.dir/progress.make

# Include the compile flags for this target's objects.
include programs/pkey/CMakeFiles/pk_encrypt.dir/flags.make

programs/pkey/CMakeFiles/pk_encrypt.dir/pk_encrypt.c.o: programs/pkey/CMakeFiles/pk_encrypt.dir/flags.make
programs/pkey/CMakeFiles/pk_encrypt.dir/pk_encrypt.c.o: /Users/longlom/Projects/rpo22/libs/mbedtls/mbedtls/programs/pkey/pk_encrypt.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/longlom/Projects/rpo22/libs/mbedtls/build/x86/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object programs/pkey/CMakeFiles/pk_encrypt.dir/pk_encrypt.c.o"
	cd /Users/longlom/Projects/rpo22/libs/mbedtls/build/x86/programs/pkey && /Users/longlom/Library/Android/sdk/ndk/22.0.7026061/toolchains/llvm/prebuilt/darwin-x86_64/bin/clang --target=i686-none-linux-android16 --gcc-toolchain=/Users/longlom/Library/Android/sdk/ndk/22.0.7026061/toolchains/llvm/prebuilt/darwin-x86_64 --sysroot=/Users/longlom/Library/Android/sdk/ndk/22.0.7026061/toolchains/llvm/prebuilt/darwin-x86_64/sysroot $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/pk_encrypt.dir/pk_encrypt.c.o -c /Users/longlom/Projects/rpo22/libs/mbedtls/mbedtls/programs/pkey/pk_encrypt.c

programs/pkey/CMakeFiles/pk_encrypt.dir/pk_encrypt.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/pk_encrypt.dir/pk_encrypt.c.i"
	cd /Users/longlom/Projects/rpo22/libs/mbedtls/build/x86/programs/pkey && /Users/longlom/Library/Android/sdk/ndk/22.0.7026061/toolchains/llvm/prebuilt/darwin-x86_64/bin/clang --target=i686-none-linux-android16 --gcc-toolchain=/Users/longlom/Library/Android/sdk/ndk/22.0.7026061/toolchains/llvm/prebuilt/darwin-x86_64 --sysroot=/Users/longlom/Library/Android/sdk/ndk/22.0.7026061/toolchains/llvm/prebuilt/darwin-x86_64/sysroot $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/longlom/Projects/rpo22/libs/mbedtls/mbedtls/programs/pkey/pk_encrypt.c > CMakeFiles/pk_encrypt.dir/pk_encrypt.c.i

programs/pkey/CMakeFiles/pk_encrypt.dir/pk_encrypt.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/pk_encrypt.dir/pk_encrypt.c.s"
	cd /Users/longlom/Projects/rpo22/libs/mbedtls/build/x86/programs/pkey && /Users/longlom/Library/Android/sdk/ndk/22.0.7026061/toolchains/llvm/prebuilt/darwin-x86_64/bin/clang --target=i686-none-linux-android16 --gcc-toolchain=/Users/longlom/Library/Android/sdk/ndk/22.0.7026061/toolchains/llvm/prebuilt/darwin-x86_64 --sysroot=/Users/longlom/Library/Android/sdk/ndk/22.0.7026061/toolchains/llvm/prebuilt/darwin-x86_64/sysroot $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/longlom/Projects/rpo22/libs/mbedtls/mbedtls/programs/pkey/pk_encrypt.c -o CMakeFiles/pk_encrypt.dir/pk_encrypt.c.s

# Object files for target pk_encrypt
pk_encrypt_OBJECTS = \
"CMakeFiles/pk_encrypt.dir/pk_encrypt.c.o"

# External object files for target pk_encrypt
pk_encrypt_EXTERNAL_OBJECTS = \
"/Users/longlom/Projects/rpo22/libs/mbedtls/build/x86/CMakeFiles/mbedtls_test.dir/tests/src/drivers/cipher.c.o" \
"/Users/longlom/Projects/rpo22/libs/mbedtls/build/x86/CMakeFiles/mbedtls_test.dir/tests/src/drivers/key_management.c.o" \
"/Users/longlom/Projects/rpo22/libs/mbedtls/build/x86/CMakeFiles/mbedtls_test.dir/tests/src/drivers/signature.c.o" \
"/Users/longlom/Projects/rpo22/libs/mbedtls/build/x86/CMakeFiles/mbedtls_test.dir/tests/src/drivers/size.c.o" \
"/Users/longlom/Projects/rpo22/libs/mbedtls/build/x86/CMakeFiles/mbedtls_test.dir/tests/src/fake_external_rng_for_test.c.o" \
"/Users/longlom/Projects/rpo22/libs/mbedtls/build/x86/CMakeFiles/mbedtls_test.dir/tests/src/helpers.c.o" \
"/Users/longlom/Projects/rpo22/libs/mbedtls/build/x86/CMakeFiles/mbedtls_test.dir/tests/src/psa_crypto_helpers.c.o" \
"/Users/longlom/Projects/rpo22/libs/mbedtls/build/x86/CMakeFiles/mbedtls_test.dir/tests/src/random.c.o"

programs/pkey/pk_encrypt: programs/pkey/CMakeFiles/pk_encrypt.dir/pk_encrypt.c.o
programs/pkey/pk_encrypt: CMakeFiles/mbedtls_test.dir/tests/src/drivers/cipher.c.o
programs/pkey/pk_encrypt: CMakeFiles/mbedtls_test.dir/tests/src/drivers/key_management.c.o
programs/pkey/pk_encrypt: CMakeFiles/mbedtls_test.dir/tests/src/drivers/signature.c.o
programs/pkey/pk_encrypt: CMakeFiles/mbedtls_test.dir/tests/src/drivers/size.c.o
programs/pkey/pk_encrypt: CMakeFiles/mbedtls_test.dir/tests/src/fake_external_rng_for_test.c.o
programs/pkey/pk_encrypt: CMakeFiles/mbedtls_test.dir/tests/src/helpers.c.o
programs/pkey/pk_encrypt: CMakeFiles/mbedtls_test.dir/tests/src/psa_crypto_helpers.c.o
programs/pkey/pk_encrypt: CMakeFiles/mbedtls_test.dir/tests/src/random.c.o
programs/pkey/pk_encrypt: programs/pkey/CMakeFiles/pk_encrypt.dir/build.make
programs/pkey/pk_encrypt: library/libmbedcrypto.so
programs/pkey/pk_encrypt: programs/pkey/CMakeFiles/pk_encrypt.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/longlom/Projects/rpo22/libs/mbedtls/build/x86/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable pk_encrypt"
	cd /Users/longlom/Projects/rpo22/libs/mbedtls/build/x86/programs/pkey && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/pk_encrypt.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
programs/pkey/CMakeFiles/pk_encrypt.dir/build: programs/pkey/pk_encrypt

.PHONY : programs/pkey/CMakeFiles/pk_encrypt.dir/build

programs/pkey/CMakeFiles/pk_encrypt.dir/clean:
	cd /Users/longlom/Projects/rpo22/libs/mbedtls/build/x86/programs/pkey && $(CMAKE_COMMAND) -P CMakeFiles/pk_encrypt.dir/cmake_clean.cmake
.PHONY : programs/pkey/CMakeFiles/pk_encrypt.dir/clean

programs/pkey/CMakeFiles/pk_encrypt.dir/depend:
	cd /Users/longlom/Projects/rpo22/libs/mbedtls/build/x86 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/longlom/Projects/rpo22/libs/mbedtls/mbedtls /Users/longlom/Projects/rpo22/libs/mbedtls/mbedtls/programs/pkey /Users/longlom/Projects/rpo22/libs/mbedtls/build/x86 /Users/longlom/Projects/rpo22/libs/mbedtls/build/x86/programs/pkey /Users/longlom/Projects/rpo22/libs/mbedtls/build/x86/programs/pkey/CMakeFiles/pk_encrypt.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : programs/pkey/CMakeFiles/pk_encrypt.dir/depend

