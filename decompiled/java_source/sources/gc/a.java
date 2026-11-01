package gc;

import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
final class a extends p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f63522a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List f63523b;

    a(String str, List list) {
        if (str == null) {
            throw new NullPointerException("Null userAgent");
        }
        this.f63522a = str;
        if (list == null) {
            throw new NullPointerException("Null usedDates");
        }
        this.f63523b = list;
    }

    @Override // gc.p
    public List b() {
        return this.f63523b;
    }

    @Override // gc.p
    public String c() {
        return this.f63522a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof p)) {
            return false;
        }
        p pVar = (p) obj;
        return this.f63522a.equals(pVar.c()) && this.f63523b.equals(pVar.b());
    }

    public int hashCode() {
        return ((this.f63522a.hashCode() ^ 1000003) * 1000003) ^ this.f63523b.hashCode();
    }

    public String toString() {
        return "HeartBeatResult{userAgent=" + this.f63522a + ", usedDates=" + this.f63523b + "}";
    }
}
