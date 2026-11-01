package sb;

/* JADX INFO: loaded from: classes5.dex */
final class d extends e.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f75316a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f75317b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f75318c;

    d(String str, String str2, boolean z10) {
        if (str == null) {
            throw new NullPointerException("Null osRelease");
        }
        this.f75316a = str;
        if (str2 == null) {
            throw new NullPointerException("Null osCodeName");
        }
        this.f75317b = str2;
        this.f75318c = z10;
    }

    @Override // sb.e.c
    public boolean b() {
        return this.f75318c;
    }

    @Override // sb.e.c
    public String c() {
        return this.f75317b;
    }

    @Override // sb.e.c
    public String d() {
        return this.f75316a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof e.c)) {
            return false;
        }
        e.c cVar = (e.c) obj;
        return this.f75316a.equals(cVar.d()) && this.f75317b.equals(cVar.c()) && this.f75318c == cVar.b();
    }

    public int hashCode() {
        return ((((this.f75316a.hashCode() ^ 1000003) * 1000003) ^ this.f75317b.hashCode()) * 1000003) ^ (this.f75318c ? 1231 : 1237);
    }

    public String toString() {
        return "OsData{osRelease=" + this.f75316a + ", osCodeName=" + this.f75317b + ", isRooted=" + this.f75318c + "}";
    }
}
