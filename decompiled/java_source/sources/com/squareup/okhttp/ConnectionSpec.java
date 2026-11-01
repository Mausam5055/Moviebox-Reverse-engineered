package com.squareup.okhttp;

import com.squareup.okhttp.internal.g;
import java.util.Arrays;
import java.util.List;
import javax.net.ssl.SSLSocket;

/* JADX INFO: loaded from: classes5.dex */
public final class ConnectionSpec {
    private static final CipherSuite[] APPROVED_CIPHER_SUITES;
    public static final ConnectionSpec CLEARTEXT;
    public static final ConnectionSpec COMPATIBLE_TLS;
    public static final ConnectionSpec MODERN_TLS;
    private final String[] cipherSuites;
    private final boolean supportsTlsExtensions;
    private final boolean tls;
    private final String[] tlsVersions;

    public static final class Builder {
        private String[] cipherSuites;
        private boolean supportsTlsExtensions;
        private boolean tls;
        private String[] tlsVersions;

        public Builder(ConnectionSpec connectionSpec) {
            this.tls = connectionSpec.tls;
            this.cipherSuites = connectionSpec.cipherSuites;
            this.tlsVersions = connectionSpec.tlsVersions;
            this.supportsTlsExtensions = connectionSpec.supportsTlsExtensions;
        }

        Builder(boolean z10) {
            this.tls = z10;
        }

        public Builder allEnabledCipherSuites() {
            if (!this.tls) {
                throw new IllegalStateException("no cipher suites for cleartext connections");
            }
            this.cipherSuites = null;
            return this;
        }

        public Builder allEnabledTlsVersions() {
            if (!this.tls) {
                throw new IllegalStateException("no TLS versions for cleartext connections");
            }
            this.tlsVersions = null;
            return this;
        }

        public ConnectionSpec build() {
            return new ConnectionSpec(this);
        }

        public Builder cipherSuites(CipherSuite... cipherSuiteArr) {
            if (!this.tls) {
                throw new IllegalStateException("no cipher suites for cleartext connections");
            }
            String[] strArr = new String[cipherSuiteArr.length];
            for (int i11 = 0; i11 < cipherSuiteArr.length; i11++) {
                strArr[i11] = cipherSuiteArr[i11].javaName;
            }
            return cipherSuites(strArr);
        }

        public Builder cipherSuites(String... strArr) {
            if (!this.tls) {
                throw new IllegalStateException("no cipher suites for cleartext connections");
            }
            if (strArr.length == 0) {
                throw new IllegalArgumentException("At least one cipher suite is required");
            }
            this.cipherSuites = (String[]) strArr.clone();
            return this;
        }

        public Builder supportsTlsExtensions(boolean z10) {
            if (!this.tls) {
                throw new IllegalStateException("no TLS extensions for cleartext connections");
            }
            this.supportsTlsExtensions = z10;
            return this;
        }

        public Builder tlsVersions(TlsVersion... tlsVersionArr) {
            if (!this.tls) {
                throw new IllegalStateException("no TLS versions for cleartext connections");
            }
            String[] strArr = new String[tlsVersionArr.length];
            for (int i11 = 0; i11 < tlsVersionArr.length; i11++) {
                strArr[i11] = tlsVersionArr[i11].javaName;
            }
            return tlsVersions(strArr);
        }

        public Builder tlsVersions(String... strArr) {
            if (!this.tls) {
                throw new IllegalStateException("no TLS versions for cleartext connections");
            }
            if (strArr.length == 0) {
                throw new IllegalArgumentException("At least one TLS version is required");
            }
            this.tlsVersions = (String[]) strArr.clone();
            return this;
        }
    }

    static {
        CipherSuite[] cipherSuiteArr = {CipherSuite.TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256, CipherSuite.TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256, CipherSuite.TLS_DHE_RSA_WITH_AES_128_GCM_SHA256, CipherSuite.TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA, CipherSuite.TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA, CipherSuite.TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA, CipherSuite.TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA, CipherSuite.TLS_DHE_RSA_WITH_AES_128_CBC_SHA, CipherSuite.TLS_DHE_RSA_WITH_AES_256_CBC_SHA, CipherSuite.TLS_RSA_WITH_AES_128_GCM_SHA256, CipherSuite.TLS_RSA_WITH_AES_128_CBC_SHA, CipherSuite.TLS_RSA_WITH_AES_256_CBC_SHA, CipherSuite.TLS_RSA_WITH_3DES_EDE_CBC_SHA};
        APPROVED_CIPHER_SUITES = cipherSuiteArr;
        Builder builderCipherSuites = new Builder(true).cipherSuites(cipherSuiteArr);
        TlsVersion tlsVersion = TlsVersion.TLS_1_0;
        ConnectionSpec connectionSpecBuild = builderCipherSuites.tlsVersions(TlsVersion.TLS_1_2, TlsVersion.TLS_1_1, tlsVersion).supportsTlsExtensions(true).build();
        MODERN_TLS = connectionSpecBuild;
        COMPATIBLE_TLS = new Builder(connectionSpecBuild).tlsVersions(tlsVersion).supportsTlsExtensions(true).build();
        CLEARTEXT = new Builder(false).build();
    }

    private ConnectionSpec(Builder builder) {
        this.tls = builder.tls;
        this.cipherSuites = builder.cipherSuites;
        this.tlsVersions = builder.tlsVersions;
        this.supportsTlsExtensions = builder.supportsTlsExtensions;
    }

    private static boolean nonEmptyIntersection(String[] strArr, String[] strArr2) {
        if (strArr != null && strArr2 != null && strArr.length != 0 && strArr2.length != 0) {
            for (String str : strArr) {
                if (g.f(strArr2, str)) {
                    return true;
                }
            }
        }
        return false;
    }

    private ConnectionSpec supportedSpec(SSLSocket sSLSocket, boolean z10) {
        String[] strArr = this.cipherSuites;
        String[] enabledCipherSuites = strArr != null ? (String[]) g.n(String.class, strArr, sSLSocket.getEnabledCipherSuites()) : sSLSocket.getEnabledCipherSuites();
        String[] strArr2 = this.tlsVersions;
        String[] enabledProtocols = strArr2 != null ? (String[]) g.n(String.class, strArr2, sSLSocket.getEnabledProtocols()) : sSLSocket.getEnabledProtocols();
        if (z10 && g.f(sSLSocket.getSupportedCipherSuites(), "TLS_FALLBACK_SCSV")) {
            enabledCipherSuites = g.e(enabledCipherSuites, "TLS_FALLBACK_SCSV");
        }
        return new Builder(this).cipherSuites(enabledCipherSuites).tlsVersions(enabledProtocols).build();
    }

    void apply(SSLSocket sSLSocket, boolean z10) {
        ConnectionSpec connectionSpecSupportedSpec = supportedSpec(sSLSocket, z10);
        String[] strArr = connectionSpecSupportedSpec.tlsVersions;
        if (strArr != null) {
            sSLSocket.setEnabledProtocols(strArr);
        }
        String[] strArr2 = connectionSpecSupportedSpec.cipherSuites;
        if (strArr2 != null) {
            sSLSocket.setEnabledCipherSuites(strArr2);
        }
    }

    public List<CipherSuite> cipherSuites() {
        String[] strArr = this.cipherSuites;
        if (strArr == null) {
            return null;
        }
        CipherSuite[] cipherSuiteArr = new CipherSuite[strArr.length];
        int i11 = 0;
        while (true) {
            String[] strArr2 = this.cipherSuites;
            if (i11 >= strArr2.length) {
                return g.k(cipherSuiteArr);
            }
            cipherSuiteArr[i11] = CipherSuite.forJavaName(strArr2[i11]);
            i11++;
        }
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof ConnectionSpec)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        ConnectionSpec connectionSpec = (ConnectionSpec) obj;
        boolean z10 = this.tls;
        if (z10 != connectionSpec.tls) {
            return false;
        }
        return !z10 || (Arrays.equals(this.cipherSuites, connectionSpec.cipherSuites) && Arrays.equals(this.tlsVersions, connectionSpec.tlsVersions) && this.supportsTlsExtensions == connectionSpec.supportsTlsExtensions);
    }

    public int hashCode() {
        if (this.tls) {
            return ((((527 + Arrays.hashCode(this.cipherSuites)) * 31) + Arrays.hashCode(this.tlsVersions)) * 31) + (!this.supportsTlsExtensions ? 1 : 0);
        }
        return 17;
    }

    public boolean isCompatible(SSLSocket sSLSocket) {
        if (!this.tls) {
            return false;
        }
        String[] strArr = this.tlsVersions;
        if (strArr != null && !nonEmptyIntersection(strArr, sSLSocket.getEnabledProtocols())) {
            return false;
        }
        String[] strArr2 = this.cipherSuites;
        return strArr2 == null || nonEmptyIntersection(strArr2, sSLSocket.getEnabledCipherSuites());
    }

    public boolean isTls() {
        return this.tls;
    }

    public boolean supportsTlsExtensions() {
        return this.supportsTlsExtensions;
    }

    public List<TlsVersion> tlsVersions() {
        String[] strArr = this.tlsVersions;
        if (strArr == null) {
            return null;
        }
        TlsVersion[] tlsVersionArr = new TlsVersion[strArr.length];
        int i11 = 0;
        while (true) {
            String[] strArr2 = this.tlsVersions;
            if (i11 >= strArr2.length) {
                return g.k(tlsVersionArr);
            }
            tlsVersionArr[i11] = TlsVersion.forJavaName(strArr2[i11]);
            i11++;
        }
    }

    public String toString() {
        if (!this.tls) {
            return "ConnectionSpec()";
        }
        return "ConnectionSpec(cipherSuites=" + (this.cipherSuites != null ? cipherSuites().toString() : "[all enabled]") + ", tlsVersions=" + (this.tlsVersions != null ? tlsVersions().toString() : "[all enabled]") + ", supportsTlsExtensions=" + this.supportsTlsExtensions + ")";
    }
}
