package rd;

/* JADX INFO: loaded from: classes5.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f74316a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f74317b;

    public b(int i11, int i12) {
        this.f74316a = i11;
        this.f74317b = i12;
    }

    public final int a() {
        return this.f74317b;
    }

    public final int b() {
        return this.f74316a;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return this.f74316a == bVar.f74316a && this.f74317b == bVar.f74317b;
    }

    public final int hashCode() {
        return this.f74316a ^ this.f74317b;
    }

    public final String toString() {
        return this.f74316a + "(" + this.f74317b + ')';
    }
}
