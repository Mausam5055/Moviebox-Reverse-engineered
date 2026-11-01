package androidx.core.util;

/* JADX INFO: loaded from: classes.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f8267a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f8268b;

    public e(Object obj, Object obj2) {
        this.f8267a = obj;
        this.f8268b = obj2;
    }

    public static e a(Object obj, Object obj2) {
        return new e(obj, obj2);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        return d.a(eVar.f8267a, this.f8267a) && d.a(eVar.f8268b, this.f8268b);
    }

    public int hashCode() {
        Object obj = this.f8267a;
        int iHashCode = obj == null ? 0 : obj.hashCode();
        Object obj2 = this.f8268b;
        return iHashCode ^ (obj2 != null ? obj2.hashCode() : 0);
    }

    public String toString() {
        return "Pair{" + this.f8267a + " " + this.f8268b + "}";
    }
}
