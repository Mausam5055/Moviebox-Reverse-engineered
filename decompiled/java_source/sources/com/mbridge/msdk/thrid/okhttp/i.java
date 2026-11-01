package com.mbridge.msdk.thrid.okhttp;

import java.util.Arrays;
import java.util.List;
import javax.net.ssl.SSLSocket;

/* JADX INFO: loaded from: classes5.dex */
public final class i {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final f[] f37885e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final f[] f37886f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final i f37887g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final i f37888h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final i f37889i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final i f37890j;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final boolean f37891a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final boolean f37892b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final String[] f37893c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final String[] f37894d;

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        boolean f37895a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        String[] f37896b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        String[] f37897c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        boolean f37898d;

        public a(i iVar) {
            this.f37895a = iVar.f37891a;
            this.f37896b = iVar.f37893c;
            this.f37897c = iVar.f37894d;
            this.f37898d = iVar.f37892b;
        }

        a(boolean z10) {
            this.f37895a = z10;
        }

        public a a(boolean z10) {
            if (!this.f37895a) {
                throw new IllegalStateException("no TLS extensions for cleartext connections");
            }
            this.f37898d = z10;
            return this;
        }

        public a a(b0... b0VarArr) {
            if (!this.f37895a) {
                throw new IllegalStateException("no TLS versions for cleartext connections");
            }
            String[] strArr = new String[b0VarArr.length];
            for (int i11 = 0; i11 < b0VarArr.length; i11++) {
                strArr[i11] = b0VarArr[i11].f37774a;
            }
            return b(strArr);
        }

        public a a(f... fVarArr) {
            if (!this.f37895a) {
                throw new IllegalStateException("no cipher suites for cleartext connections");
            }
            String[] strArr = new String[fVarArr.length];
            for (int i11 = 0; i11 < fVarArr.length; i11++) {
                strArr[i11] = fVarArr[i11].f37875a;
            }
            return a(strArr);
        }

        public a a(String... strArr) {
            if (!this.f37895a) {
                throw new IllegalStateException("no cipher suites for cleartext connections");
            }
            if (strArr.length == 0) {
                throw new IllegalArgumentException("At least one cipher suite is required");
            }
            this.f37896b = (String[]) strArr.clone();
            return this;
        }

        public i a() {
            return new i(this);
        }

        public a b(String... strArr) {
            if (!this.f37895a) {
                throw new IllegalStateException("no TLS versions for cleartext connections");
            }
            if (strArr.length == 0) {
                throw new IllegalArgumentException("At least one TLS version is required");
            }
            this.f37897c = (String[]) strArr.clone();
            return this;
        }
    }

    static {
        f fVar = f.f37846n1;
        f fVar2 = f.f37849o1;
        f fVar3 = f.f37852p1;
        f fVar4 = f.f37855q1;
        f fVar5 = f.f37858r1;
        f fVar6 = f.Z0;
        f fVar7 = f.f37816d1;
        f fVar8 = f.f37807a1;
        f fVar9 = f.f37819e1;
        f fVar10 = f.f37837k1;
        f fVar11 = f.f37834j1;
        f[] fVarArr = {fVar, fVar2, fVar3, fVar4, fVar5, fVar6, fVar7, fVar8, fVar9, fVar10, fVar11};
        f37885e = fVarArr;
        f[] fVarArr2 = {fVar, fVar2, fVar3, fVar4, fVar5, fVar6, fVar7, fVar8, fVar9, fVar10, fVar11, f.K0, f.L0, f.f37830i0, f.f37833j0, f.G, f.K, f.f37835k};
        f37886f = fVarArr2;
        a aVarA = new a(true).a(fVarArr);
        b0 b0Var = b0.TLS_1_3;
        b0 b0Var2 = b0.TLS_1_2;
        f37887g = aVarA.a(b0Var, b0Var2).a(true).a();
        a aVarA2 = new a(true).a(fVarArr2);
        b0 b0Var3 = b0.TLS_1_0;
        f37888h = aVarA2.a(b0Var, b0Var2, b0.TLS_1_1, b0Var3).a(true).a();
        f37889i = new a(true).a(fVarArr2).a(b0Var3).a(true).a();
        f37890j = new a(false).a();
    }

    i(a aVar) {
        this.f37891a = aVar.f37895a;
        this.f37893c = aVar.f37896b;
        this.f37894d = aVar.f37897c;
        this.f37892b = aVar.f37898d;
    }

    private i b(SSLSocket sSLSocket, boolean z10) {
        String[] strArrA = this.f37893c != null ? com.mbridge.msdk.thrid.okhttp.internal.c.a(f.f37808b, sSLSocket.getEnabledCipherSuites(), this.f37893c) : sSLSocket.getEnabledCipherSuites();
        String[] strArrA2 = this.f37894d != null ? com.mbridge.msdk.thrid.okhttp.internal.c.a(com.mbridge.msdk.thrid.okhttp.internal.c.f37917q, sSLSocket.getEnabledProtocols(), this.f37894d) : sSLSocket.getEnabledProtocols();
        String[] supportedCipherSuites = sSLSocket.getSupportedCipherSuites();
        int iA = com.mbridge.msdk.thrid.okhttp.internal.c.a(f.f37808b, supportedCipherSuites, "TLS_FALLBACK_SCSV");
        if (z10 && iA != -1) {
            strArrA = com.mbridge.msdk.thrid.okhttp.internal.c.a(strArrA, supportedCipherSuites[iA]);
        }
        return new a(this).a(strArrA).b(strArrA2).a();
    }

    public List<f> a() {
        String[] strArr = this.f37893c;
        if (strArr != null) {
            return f.a(strArr);
        }
        return null;
    }

    void a(SSLSocket sSLSocket, boolean z10) {
        i iVarB = b(sSLSocket, z10);
        String[] strArr = iVarB.f37894d;
        if (strArr != null) {
            sSLSocket.setEnabledProtocols(strArr);
        }
        String[] strArr2 = iVarB.f37893c;
        if (strArr2 != null) {
            sSLSocket.setEnabledCipherSuites(strArr2);
        }
    }

    public boolean a(SSLSocket sSLSocket) {
        if (!this.f37891a) {
            return false;
        }
        String[] strArr = this.f37894d;
        if (strArr != null && !com.mbridge.msdk.thrid.okhttp.internal.c.b(com.mbridge.msdk.thrid.okhttp.internal.c.f37917q, strArr, sSLSocket.getEnabledProtocols())) {
            return false;
        }
        String[] strArr2 = this.f37893c;
        return strArr2 == null || com.mbridge.msdk.thrid.okhttp.internal.c.b(f.f37808b, strArr2, sSLSocket.getEnabledCipherSuites());
    }

    public boolean b() {
        return this.f37891a;
    }

    public boolean c() {
        return this.f37892b;
    }

    public List<b0> d() {
        String[] strArr = this.f37894d;
        if (strArr != null) {
            return b0.a(strArr);
        }
        return null;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof i)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        i iVar = (i) obj;
        boolean z10 = this.f37891a;
        if (z10 != iVar.f37891a) {
            return false;
        }
        return !z10 || (Arrays.equals(this.f37893c, iVar.f37893c) && Arrays.equals(this.f37894d, iVar.f37894d) && this.f37892b == iVar.f37892b);
    }

    public int hashCode() {
        if (this.f37891a) {
            return ((((Arrays.hashCode(this.f37893c) + 527) * 31) + Arrays.hashCode(this.f37894d)) * 31) + (!this.f37892b ? 1 : 0);
        }
        return 17;
    }

    public String toString() {
        if (!this.f37891a) {
            return "ConnectionSpec()";
        }
        return "ConnectionSpec(cipherSuites=" + (this.f37893c != null ? a().toString() : "[all enabled]") + ", tlsVersions=" + (this.f37894d != null ? d().toString() : "[all enabled]") + ", supportsTlsExtensions=" + this.f37892b + ")";
    }
}
