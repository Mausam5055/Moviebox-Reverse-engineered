package bd;

import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
final class c extends e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Set f16350a;

    c(Set set) {
        if (set == null) {
            throw new NullPointerException("Null rolloutAssignments");
        }
        this.f16350a = set;
    }

    @Override // bd.e
    public Set b() {
        return this.f16350a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof e) {
            return this.f16350a.equals(((e) obj).b());
        }
        return false;
    }

    public int hashCode() {
        return this.f16350a.hashCode() ^ 1000003;
    }

    public String toString() {
        return "RolloutsState{rolloutAssignments=" + this.f16350a + "}";
    }
}
