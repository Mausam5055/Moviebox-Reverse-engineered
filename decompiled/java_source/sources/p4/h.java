package p4;

/* JADX INFO: loaded from: classes2.dex */
public class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    Object f72304a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    Object f72305b;

    private static boolean a(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    public void b(Object obj, Object obj2) {
        this.f72304a = obj;
        this.f72305b = obj2;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof androidx.core.util.e)) {
            return false;
        }
        androidx.core.util.e eVar = (androidx.core.util.e) obj;
        return a(eVar.f8267a, this.f72304a) && a(eVar.f8268b, this.f72305b);
    }

    public int hashCode() {
        Object obj = this.f72304a;
        int iHashCode = obj == null ? 0 : obj.hashCode();
        Object obj2 = this.f72305b;
        return iHashCode ^ (obj2 != null ? obj2.hashCode() : 0);
    }

    public String toString() {
        return "Pair{" + this.f72304a + " " + this.f72305b + "}";
    }
}
