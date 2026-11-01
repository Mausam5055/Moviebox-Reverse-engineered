package x9;

/* JADX INFO: loaded from: classes4.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f78057a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f78058b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f78059c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f78060d;

    public b(String str, String str2, int i11, int i12) {
        this.f78057a = str;
        this.f78058b = str2;
        this.f78059c = i11;
        this.f78060d = i12;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return this.f78059c == bVar.f78059c && this.f78060d == bVar.f78060d && com.google.common.base.j.a(this.f78057a, bVar.f78057a) && com.google.common.base.j.a(this.f78058b, bVar.f78058b);
    }

    public int hashCode() {
        return com.google.common.base.j.b(this.f78057a, this.f78058b, Integer.valueOf(this.f78059c), Integer.valueOf(this.f78060d));
    }
}
