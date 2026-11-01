package sb;

import ob.f;

/* JADX INFO: loaded from: classes5.dex */
final class b extends e.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f75301a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f75302b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f75303c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f75304d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f75305e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final f f75306f;

    b(String str, String str2, String str3, String str4, int i11, f fVar) {
        if (str == null) {
            throw new NullPointerException("Null appIdentifier");
        }
        this.f75301a = str;
        if (str2 == null) {
            throw new NullPointerException("Null versionCode");
        }
        this.f75302b = str2;
        if (str3 == null) {
            throw new NullPointerException("Null versionName");
        }
        this.f75303c = str3;
        if (str4 == null) {
            throw new NullPointerException("Null installUuid");
        }
        this.f75304d = str4;
        this.f75305e = i11;
        if (fVar == null) {
            throw new NullPointerException("Null developmentPlatformProvider");
        }
        this.f75306f = fVar;
    }

    @Override // sb.e.a
    public String a() {
        return this.f75301a;
    }

    @Override // sb.e.a
    public int c() {
        return this.f75305e;
    }

    @Override // sb.e.a
    public f d() {
        return this.f75306f;
    }

    @Override // sb.e.a
    public String e() {
        return this.f75304d;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof e.a)) {
            return false;
        }
        e.a aVar = (e.a) obj;
        return this.f75301a.equals(aVar.a()) && this.f75302b.equals(aVar.f()) && this.f75303c.equals(aVar.g()) && this.f75304d.equals(aVar.e()) && this.f75305e == aVar.c() && this.f75306f.equals(aVar.d());
    }

    @Override // sb.e.a
    public String f() {
        return this.f75302b;
    }

    @Override // sb.e.a
    public String g() {
        return this.f75303c;
    }

    public int hashCode() {
        return ((((((((((this.f75301a.hashCode() ^ 1000003) * 1000003) ^ this.f75302b.hashCode()) * 1000003) ^ this.f75303c.hashCode()) * 1000003) ^ this.f75304d.hashCode()) * 1000003) ^ this.f75305e) * 1000003) ^ this.f75306f.hashCode();
    }

    public String toString() {
        return "AppData{appIdentifier=" + this.f75301a + ", versionCode=" + this.f75302b + ", versionName=" + this.f75303c + ", installUuid=" + this.f75304d + ", deliveryMechanism=" + this.f75305e + ", developmentPlatformProvider=" + this.f75306f + "}";
    }
}
