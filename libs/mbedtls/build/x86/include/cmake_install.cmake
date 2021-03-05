# Install script for directory: /Users/longlom/Projects/rpo22/libs/mbedtls/mbedtls/include

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "0")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "TRUE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/Users/longlom/Library/Android/sdk/ndk/22.0.7026061/toolchains/llvm/prebuilt/darwin-x86_64/bin/i686-linux-android-objdump")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/mbedtls" TYPE FILE PERMISSIONS OWNER_READ OWNER_WRITE GROUP_READ WORLD_READ FILES
    "/Users/longlom/Projects/rpo22/libs/mbedtls/mbedtls/include/mbedtls/aes.h"
    "/Users/longlom/Projects/rpo22/libs/mbedtls/mbedtls/include/mbedtls/aesni.h"
    "/Users/longlom/Projects/rpo22/libs/mbedtls/mbedtls/include/mbedtls/arc4.h"
    "/Users/longlom/Projects/rpo22/libs/mbedtls/mbedtls/include/mbedtls/aria.h"
    "/Users/longlom/Projects/rpo22/libs/mbedtls/mbedtls/include/mbedtls/asn1.h"
    "/Users/longlom/Projects/rpo22/libs/mbedtls/mbedtls/include/mbedtls/asn1write.h"
    "/Users/longlom/Projects/rpo22/libs/mbedtls/mbedtls/include/mbedtls/base64.h"
    "/Users/longlom/Projects/rpo22/libs/mbedtls/mbedtls/include/mbedtls/bignum.h"
    "/Users/longlom/Projects/rpo22/libs/mbedtls/mbedtls/include/mbedtls/blowfish.h"
    "/Users/longlom/Projects/rpo22/libs/mbedtls/mbedtls/include/mbedtls/bn_mul.h"
    "/Users/longlom/Projects/rpo22/libs/mbedtls/mbedtls/include/mbedtls/camellia.h"
    "/Users/longlom/Projects/rpo22/libs/mbedtls/mbedtls/include/mbedtls/ccm.h"
    "/Users/longlom/Projects/rpo22/libs/mbedtls/mbedtls/include/mbedtls/certs.h"
    "/Users/longlom/Projects/rpo22/libs/mbedtls/mbedtls/include/mbedtls/chacha20.h"
    "/Users/longlom/Projects/rpo22/libs/mbedtls/mbedtls/include/mbedtls/chachapoly.h"
    "/Users/longlom/Projects/rpo22/libs/mbedtls/mbedtls/include/mbedtls/check_config.h"
    "/Users/longlom/Projects/rpo22/libs/mbedtls/mbedtls/include/mbedtls/cipher.h"
    "/Users/longlom/Projects/rpo22/libs/mbedtls/mbedtls/include/mbedtls/cipher_internal.h"
    "/Users/longlom/Projects/rpo22/libs/mbedtls/mbedtls/include/mbedtls/cmac.h"
    "/Users/longlom/Projects/rpo22/libs/mbedtls/mbedtls/include/mbedtls/compat-1.3.h"
    "/Users/longlom/Projects/rpo22/libs/mbedtls/mbedtls/include/mbedtls/config.h"
    "/Users/longlom/Projects/rpo22/libs/mbedtls/mbedtls/include/mbedtls/config_psa.h"
    "/Users/longlom/Projects/rpo22/libs/mbedtls/mbedtls/include/mbedtls/ctr_drbg.h"
    "/Users/longlom/Projects/rpo22/libs/mbedtls/mbedtls/include/mbedtls/debug.h"
    "/Users/longlom/Projects/rpo22/libs/mbedtls/mbedtls/include/mbedtls/des.h"
    "/Users/longlom/Projects/rpo22/libs/mbedtls/mbedtls/include/mbedtls/dhm.h"
    "/Users/longlom/Projects/rpo22/libs/mbedtls/mbedtls/include/mbedtls/ecdh.h"
    "/Users/longlom/Projects/rpo22/libs/mbedtls/mbedtls/include/mbedtls/ecdsa.h"
    "/Users/longlom/Projects/rpo22/libs/mbedtls/mbedtls/include/mbedtls/ecjpake.h"
    "/Users/longlom/Projects/rpo22/libs/mbedtls/mbedtls/include/mbedtls/ecp.h"
    "/Users/longlom/Projects/rpo22/libs/mbedtls/mbedtls/include/mbedtls/ecp_internal.h"
    "/Users/longlom/Projects/rpo22/libs/mbedtls/mbedtls/include/mbedtls/entropy.h"
    "/Users/longlom/Projects/rpo22/libs/mbedtls/mbedtls/include/mbedtls/entropy_poll.h"
    "/Users/longlom/Projects/rpo22/libs/mbedtls/mbedtls/include/mbedtls/error.h"
    "/Users/longlom/Projects/rpo22/libs/mbedtls/mbedtls/include/mbedtls/gcm.h"
    "/Users/longlom/Projects/rpo22/libs/mbedtls/mbedtls/include/mbedtls/havege.h"
    "/Users/longlom/Projects/rpo22/libs/mbedtls/mbedtls/include/mbedtls/hkdf.h"
    "/Users/longlom/Projects/rpo22/libs/mbedtls/mbedtls/include/mbedtls/hmac_drbg.h"
    "/Users/longlom/Projects/rpo22/libs/mbedtls/mbedtls/include/mbedtls/md.h"
    "/Users/longlom/Projects/rpo22/libs/mbedtls/mbedtls/include/mbedtls/md2.h"
    "/Users/longlom/Projects/rpo22/libs/mbedtls/mbedtls/include/mbedtls/md4.h"
    "/Users/longlom/Projects/rpo22/libs/mbedtls/mbedtls/include/mbedtls/md5.h"
    "/Users/longlom/Projects/rpo22/libs/mbedtls/mbedtls/include/mbedtls/md_internal.h"
    "/Users/longlom/Projects/rpo22/libs/mbedtls/mbedtls/include/mbedtls/memory_buffer_alloc.h"
    "/Users/longlom/Projects/rpo22/libs/mbedtls/mbedtls/include/mbedtls/net.h"
    "/Users/longlom/Projects/rpo22/libs/mbedtls/mbedtls/include/mbedtls/net_sockets.h"
    "/Users/longlom/Projects/rpo22/libs/mbedtls/mbedtls/include/mbedtls/nist_kw.h"
    "/Users/longlom/Projects/rpo22/libs/mbedtls/mbedtls/include/mbedtls/oid.h"
    "/Users/longlom/Projects/rpo22/libs/mbedtls/mbedtls/include/mbedtls/padlock.h"
    "/Users/longlom/Projects/rpo22/libs/mbedtls/mbedtls/include/mbedtls/pem.h"
    "/Users/longlom/Projects/rpo22/libs/mbedtls/mbedtls/include/mbedtls/pk.h"
    "/Users/longlom/Projects/rpo22/libs/mbedtls/mbedtls/include/mbedtls/pk_internal.h"
    "/Users/longlom/Projects/rpo22/libs/mbedtls/mbedtls/include/mbedtls/pkcs11.h"
    "/Users/longlom/Projects/rpo22/libs/mbedtls/mbedtls/include/mbedtls/pkcs12.h"
    "/Users/longlom/Projects/rpo22/libs/mbedtls/mbedtls/include/mbedtls/pkcs5.h"
    "/Users/longlom/Projects/rpo22/libs/mbedtls/mbedtls/include/mbedtls/platform.h"
    "/Users/longlom/Projects/rpo22/libs/mbedtls/mbedtls/include/mbedtls/platform_time.h"
    "/Users/longlom/Projects/rpo22/libs/mbedtls/mbedtls/include/mbedtls/platform_util.h"
    "/Users/longlom/Projects/rpo22/libs/mbedtls/mbedtls/include/mbedtls/poly1305.h"
    "/Users/longlom/Projects/rpo22/libs/mbedtls/mbedtls/include/mbedtls/psa_util.h"
    "/Users/longlom/Projects/rpo22/libs/mbedtls/mbedtls/include/mbedtls/ripemd160.h"
    "/Users/longlom/Projects/rpo22/libs/mbedtls/mbedtls/include/mbedtls/rsa.h"
    "/Users/longlom/Projects/rpo22/libs/mbedtls/mbedtls/include/mbedtls/rsa_internal.h"
    "/Users/longlom/Projects/rpo22/libs/mbedtls/mbedtls/include/mbedtls/sha1.h"
    "/Users/longlom/Projects/rpo22/libs/mbedtls/mbedtls/include/mbedtls/sha256.h"
    "/Users/longlom/Projects/rpo22/libs/mbedtls/mbedtls/include/mbedtls/sha512.h"
    "/Users/longlom/Projects/rpo22/libs/mbedtls/mbedtls/include/mbedtls/ssl.h"
    "/Users/longlom/Projects/rpo22/libs/mbedtls/mbedtls/include/mbedtls/ssl_cache.h"
    "/Users/longlom/Projects/rpo22/libs/mbedtls/mbedtls/include/mbedtls/ssl_ciphersuites.h"
    "/Users/longlom/Projects/rpo22/libs/mbedtls/mbedtls/include/mbedtls/ssl_cookie.h"
    "/Users/longlom/Projects/rpo22/libs/mbedtls/mbedtls/include/mbedtls/ssl_internal.h"
    "/Users/longlom/Projects/rpo22/libs/mbedtls/mbedtls/include/mbedtls/ssl_ticket.h"
    "/Users/longlom/Projects/rpo22/libs/mbedtls/mbedtls/include/mbedtls/threading.h"
    "/Users/longlom/Projects/rpo22/libs/mbedtls/mbedtls/include/mbedtls/timing.h"
    "/Users/longlom/Projects/rpo22/libs/mbedtls/mbedtls/include/mbedtls/version.h"
    "/Users/longlom/Projects/rpo22/libs/mbedtls/mbedtls/include/mbedtls/x509.h"
    "/Users/longlom/Projects/rpo22/libs/mbedtls/mbedtls/include/mbedtls/x509_crl.h"
    "/Users/longlom/Projects/rpo22/libs/mbedtls/mbedtls/include/mbedtls/x509_crt.h"
    "/Users/longlom/Projects/rpo22/libs/mbedtls/mbedtls/include/mbedtls/x509_csr.h"
    "/Users/longlom/Projects/rpo22/libs/mbedtls/mbedtls/include/mbedtls/xtea.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/psa" TYPE FILE PERMISSIONS OWNER_READ OWNER_WRITE GROUP_READ WORLD_READ FILES
    "/Users/longlom/Projects/rpo22/libs/mbedtls/mbedtls/include/psa/crypto.h"
    "/Users/longlom/Projects/rpo22/libs/mbedtls/mbedtls/include/psa/crypto_compat.h"
    "/Users/longlom/Projects/rpo22/libs/mbedtls/mbedtls/include/psa/crypto_config.h"
    "/Users/longlom/Projects/rpo22/libs/mbedtls/mbedtls/include/psa/crypto_driver_common.h"
    "/Users/longlom/Projects/rpo22/libs/mbedtls/mbedtls/include/psa/crypto_extra.h"
    "/Users/longlom/Projects/rpo22/libs/mbedtls/mbedtls/include/psa/crypto_platform.h"
    "/Users/longlom/Projects/rpo22/libs/mbedtls/mbedtls/include/psa/crypto_se_driver.h"
    "/Users/longlom/Projects/rpo22/libs/mbedtls/mbedtls/include/psa/crypto_sizes.h"
    "/Users/longlom/Projects/rpo22/libs/mbedtls/mbedtls/include/psa/crypto_struct.h"
    "/Users/longlom/Projects/rpo22/libs/mbedtls/mbedtls/include/psa/crypto_types.h"
    "/Users/longlom/Projects/rpo22/libs/mbedtls/mbedtls/include/psa/crypto_values.h"
    )
endif()

