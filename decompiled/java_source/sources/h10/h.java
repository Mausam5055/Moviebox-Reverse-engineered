package h10;

import java.util.Arrays;

/* JADX INFO: loaded from: classes7.dex */
public final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f64102a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f64103b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final o f64104c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Object[] f64105d;

    public h(String str, String str2, o oVar, Object... objArr) {
        this.f64102a = str;
        this.f64103b = str2;
        this.f64104c = oVar;
        this.f64105d = objArr;
    }

    public o a() {
        return this.f64104c;
    }

    Object[] b() {
        return this.f64105d;
    }

    public String c() {
        return this.f64103b;
    }

    public String d() {
        return this.f64102a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof h)) {
            return false;
        }
        h hVar = (h) obj;
        return this.f64102a.equals(hVar.f64102a) && this.f64103b.equals(hVar.f64103b) && this.f64104c.equals(hVar.f64104c) && Arrays.equals(this.f64105d, hVar.f64105d);
    }

    public int hashCode() {
        return ((this.f64102a.hashCode() ^ Integer.rotateLeft(this.f64103b.hashCode(), 8)) ^ Integer.rotateLeft(this.f64104c.hashCode(), 16)) ^ Integer.rotateLeft(Arrays.hashCode(this.f64105d), 24);
    }

    public String toString() {
        return this.f64102a + " : " + this.f64103b + ' ' + this.f64104c + ' ' + Arrays.toString(this.f64105d);
    }
}
