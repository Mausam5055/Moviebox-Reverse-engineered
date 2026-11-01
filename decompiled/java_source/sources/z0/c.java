package z0;

import android.graphics.Insets;
import android.graphics.Rect;

/* JADX INFO: loaded from: classes2.dex */
public final class c {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final c f79124e = new c(0, 0, 0, 0);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f79125a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f79126b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f79127c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f79128d;

    static class a {
        static Insets a(int i11, int i12, int i13, int i14) {
            return Insets.of(i11, i12, i13, i14);
        }
    }

    private c(int i11, int i12, int i13, int i14) {
        this.f79125a = i11;
        this.f79126b = i12;
        this.f79127c = i13;
        this.f79128d = i14;
    }

    public static c a(c cVar, c cVar2) {
        return c(Math.max(cVar.f79125a, cVar2.f79125a), Math.max(cVar.f79126b, cVar2.f79126b), Math.max(cVar.f79127c, cVar2.f79127c), Math.max(cVar.f79128d, cVar2.f79128d));
    }

    public static c b(c cVar, c cVar2) {
        return c(Math.min(cVar.f79125a, cVar2.f79125a), Math.min(cVar.f79126b, cVar2.f79126b), Math.min(cVar.f79127c, cVar2.f79127c), Math.min(cVar.f79128d, cVar2.f79128d));
    }

    public static c c(int i11, int i12, int i13, int i14) {
        return (i11 == 0 && i12 == 0 && i13 == 0 && i14 == 0) ? f79124e : new c(i11, i12, i13, i14);
    }

    public static c d(Rect rect) {
        return c(rect.left, rect.top, rect.right, rect.bottom);
    }

    public static c e(c cVar, c cVar2) {
        return c(cVar.f79125a - cVar2.f79125a, cVar.f79126b - cVar2.f79126b, cVar.f79127c - cVar2.f79127c, cVar.f79128d - cVar2.f79128d);
    }

    public static c f(Insets insets) {
        return c(insets.left, insets.top, insets.right, insets.bottom);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || c.class != obj.getClass()) {
            return false;
        }
        c cVar = (c) obj;
        return this.f79128d == cVar.f79128d && this.f79125a == cVar.f79125a && this.f79127c == cVar.f79127c && this.f79126b == cVar.f79126b;
    }

    public Insets g() {
        return a.a(this.f79125a, this.f79126b, this.f79127c, this.f79128d);
    }

    public int hashCode() {
        return (((((this.f79125a * 31) + this.f79126b) * 31) + this.f79127c) * 31) + this.f79128d;
    }

    public String toString() {
        return "Insets{left=" + this.f79125a + ", top=" + this.f79126b + ", right=" + this.f79127c + ", bottom=" + this.f79128d + '}';
    }
}
