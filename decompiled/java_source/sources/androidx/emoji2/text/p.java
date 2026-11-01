package androidx.emoji2.text;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Typeface;

/* JADX INFO: loaded from: classes.dex */
public class p {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final ThreadLocal f9140d = new ThreadLocal();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f9141a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final n f9142b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private volatile int f9143c = 0;

    p(n nVar, int i11) {
        this.f9142b = nVar;
        this.f9141a = i11;
    }

    private androidx.emoji2.text.flatbuffer.b g() {
        ThreadLocal threadLocal = f9140d;
        androidx.emoji2.text.flatbuffer.b bVar = (androidx.emoji2.text.flatbuffer.b) threadLocal.get();
        if (bVar == null) {
            bVar = new androidx.emoji2.text.flatbuffer.b();
            threadLocal.set(bVar);
        }
        this.f9142b.d().k(bVar, this.f9141a);
        return bVar;
    }

    public void a(Canvas canvas, float f11, float f12, Paint paint) {
        Typeface typefaceG = this.f9142b.g();
        Typeface typeface = paint.getTypeface();
        paint.setTypeface(typefaceG);
        canvas.drawText(this.f9142b.c(), this.f9141a * 2, 2, f11, f12, paint);
        paint.setTypeface(typeface);
    }

    public int b(int i11) {
        return g().i(i11);
    }

    public int c() {
        return g().j();
    }

    public int d() {
        return this.f9143c & 3;
    }

    public int e() {
        return g().l();
    }

    public int f() {
        return g().m();
    }

    public short h() {
        return g().n();
    }

    public int i() {
        return g().o();
    }

    public boolean j() {
        return g().k();
    }

    public boolean k() {
        return (this.f9143c & 4) > 0;
    }

    public void l(boolean z10) {
        int iD = d();
        if (z10) {
            this.f9143c = iD | 4;
        } else {
            this.f9143c = iD;
        }
    }

    public void m(boolean z10) {
        int i11 = this.f9143c & 4;
        this.f9143c = z10 ? i11 | 2 : i11 | 1;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(super.toString());
        sb2.append(", id:");
        sb2.append(Integer.toHexString(f()));
        sb2.append(", codepoints:");
        int iC = c();
        for (int i11 = 0; i11 < iC; i11++) {
            sb2.append(Integer.toHexString(b(i11)));
            sb2.append(" ");
        }
        return sb2.toString();
    }
}
