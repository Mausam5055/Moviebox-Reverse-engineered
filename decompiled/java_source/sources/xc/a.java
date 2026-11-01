package xc;

/* JADX INFO: loaded from: classes5.dex */
final class a extends f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f78189a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f78190b;

    a(String str, String str2) {
        if (str == null) {
            throw new NullPointerException("Null libraryName");
        }
        this.f78189a = str;
        if (str2 == null) {
            throw new NullPointerException("Null version");
        }
        this.f78190b = str2;
    }

    @Override // xc.f
    public String b() {
        return this.f78189a;
    }

    @Override // xc.f
    public String c() {
        return this.f78190b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        return this.f78189a.equals(fVar.b()) && this.f78190b.equals(fVar.c());
    }

    public int hashCode() {
        return ((this.f78189a.hashCode() ^ 1000003) * 1000003) ^ this.f78190b.hashCode();
    }

    public String toString() {
        return "LibraryVersion{libraryName=" + this.f78189a + ", version=" + this.f78190b + "}";
    }
}
