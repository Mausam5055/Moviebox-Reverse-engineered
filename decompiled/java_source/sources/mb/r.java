package mb;

import com.google.android.gms.fido.fido2.api.common.DevicePublicKeyStringDef;

/* JADX INFO: loaded from: classes5.dex */
public final class r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final b0 f69490a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f69491b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f69492c;

    private r(Class cls, int i11, int i12) {
        this(b0.b(cls), i11, i12);
    }

    private r(b0 b0Var, int i11, int i12) {
        this.f69490a = (b0) a0.c(b0Var, "Null dependency anInterface.");
        this.f69491b = i11;
        this.f69492c = i12;
    }

    public static r a(Class cls) {
        return new r(cls, 0, 2);
    }

    private static String b(int i11) {
        if (i11 == 0) {
            return DevicePublicKeyStringDef.DIRECT;
        }
        if (i11 == 1) {
            return "provider";
        }
        if (i11 == 2) {
            return "deferred";
        }
        throw new AssertionError("Unsupported injection: " + i11);
    }

    public static r h(Class cls) {
        return new r(cls, 0, 0);
    }

    public static r i(Class cls) {
        return new r(cls, 0, 1);
    }

    public static r j(b0 b0Var) {
        return new r(b0Var, 0, 1);
    }

    public static r k(Class cls) {
        return new r(cls, 1, 0);
    }

    public static r l(b0 b0Var) {
        return new r(b0Var, 1, 0);
    }

    public static r m(Class cls) {
        return new r(cls, 1, 1);
    }

    public static r n(b0 b0Var) {
        return new r(b0Var, 1, 1);
    }

    public static r o(Class cls) {
        return new r(cls, 2, 0);
    }

    public b0 c() {
        return this.f69490a;
    }

    public boolean d() {
        return this.f69492c == 2;
    }

    public boolean e() {
        return this.f69492c == 0;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof r)) {
            return false;
        }
        r rVar = (r) obj;
        return this.f69490a.equals(rVar.f69490a) && this.f69491b == rVar.f69491b && this.f69492c == rVar.f69492c;
    }

    public boolean f() {
        return this.f69491b == 1;
    }

    public boolean g() {
        return this.f69491b == 2;
    }

    public int hashCode() {
        return ((((this.f69490a.hashCode() ^ 1000003) * 1000003) ^ this.f69491b) * 1000003) ^ this.f69492c;
    }

    public String toString() {
        String str;
        StringBuilder sb2 = new StringBuilder("Dependency{anInterface=");
        sb2.append(this.f69490a);
        sb2.append(", type=");
        int i11 = this.f69491b;
        if (i11 == 1) {
            str = "required";
        } else {
            str = i11 == 0 ? "optional" : "set";
        }
        sb2.append(str);
        sb2.append(", injection=");
        sb2.append(b(this.f69492c));
        sb2.append("}");
        return sb2.toString();
    }
}
