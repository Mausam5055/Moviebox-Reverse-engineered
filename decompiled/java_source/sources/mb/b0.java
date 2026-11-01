package mb;

/* JADX INFO: loaded from: classes5.dex */
public final class b0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Class f69435a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Class f69436b;

    private @interface a {
    }

    public b0(Class cls, Class cls2) {
        this.f69435a = cls;
        this.f69436b = cls2;
    }

    public static b0 a(Class cls, Class cls2) {
        return new b0(cls, cls2);
    }

    public static b0 b(Class cls) {
        return new b0(a.class, cls);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || b0.class != obj.getClass()) {
            return false;
        }
        b0 b0Var = (b0) obj;
        if (this.f69436b.equals(b0Var.f69436b)) {
            return this.f69435a.equals(b0Var.f69435a);
        }
        return false;
    }

    public int hashCode() {
        return (this.f69436b.hashCode() * 31) + this.f69435a.hashCode();
    }

    public String toString() {
        if (this.f69435a == a.class) {
            return this.f69436b.getName();
        }
        return "@" + this.f69435a.getName() + " " + this.f69436b.getName();
    }
}
