package yc;

import java.util.Set;

/* JADX INFO: loaded from: classes5.dex */
final class a extends b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Set f78969a;

    a(Set set) {
        if (set == null) {
            throw new NullPointerException("Null updatedKeys");
        }
        this.f78969a = set;
    }

    @Override // yc.b
    public Set b() {
        return this.f78969a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof b) {
            return this.f78969a.equals(((b) obj).b());
        }
        return false;
    }

    public int hashCode() {
        return this.f78969a.hashCode() ^ 1000003;
    }

    public String toString() {
        return "ConfigUpdate{updatedKeys=" + this.f78969a + "}";
    }
}
