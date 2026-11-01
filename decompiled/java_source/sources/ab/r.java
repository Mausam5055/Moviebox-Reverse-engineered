package ab;

import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.RectF;
import android.os.Build;
import android.view.View;

/* JADX INFO: loaded from: classes4.dex */
public abstract class r {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    n f599c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    boolean f597a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    boolean f598b = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    RectF f600d = new RectF();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final Path f601e = new Path();

    public static r a(View view) {
        return Build.VERSION.SDK_INT >= 33 ? new t(view) : new s(view);
    }

    private boolean d() {
        RectF rectF = this.f600d;
        return rectF.left <= rectF.right && rectF.top <= rectF.bottom;
    }

    private void k() {
        if (!d() || this.f599c == null) {
            return;
        }
        o.k().e(this.f599c, 1.0f, this.f600d, this.f601e);
    }

    abstract void b(View view);

    public boolean c() {
        return this.f597a;
    }

    public void e(Canvas canvas, pa.a.InterfaceC0882a interfaceC0882a) {
        if (!j() || this.f601e.isEmpty()) {
            interfaceC0882a.a(canvas);
            return;
        }
        canvas.save();
        canvas.clipPath(this.f601e);
        interfaceC0882a.a(canvas);
        canvas.restore();
    }

    public void f(View view, RectF rectF) {
        this.f600d = rectF;
        k();
        b(view);
    }

    public void g(View view, n nVar) {
        this.f599c = nVar;
        k();
        b(view);
    }

    public void h(View view, boolean z10) {
        if (z10 != this.f597a) {
            this.f597a = z10;
            b(view);
        }
    }

    public void i(View view, boolean z10) {
        this.f598b = z10;
        b(view);
    }

    abstract boolean j();
}
