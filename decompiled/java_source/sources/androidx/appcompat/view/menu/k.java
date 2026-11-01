package androidx.appcompat.view.menu;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import android.widget.PopupWindow;
import androidx.appcompat.R$dimen;
import androidx.core.view.GravityCompat;

/* JADX INFO: loaded from: classes.dex */
public class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f1507a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final f f1508b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f1509c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f1510d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f1511e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private View f1512f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f1513g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f1514h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private l.a f1515i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private j f1516j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private PopupWindow.OnDismissListener f1517k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final PopupWindow.OnDismissListener f1518l;

    class a implements PopupWindow.OnDismissListener {
        a() {
        }

        @Override // android.widget.PopupWindow.OnDismissListener
        public void onDismiss() {
            k.this.e();
        }
    }

    public k(Context context, f fVar, View view, boolean z10, int i11) {
        this(context, fVar, view, z10, i11, 0);
    }

    public k(Context context, f fVar, View view, boolean z10, int i11, int i12) {
        this.f1513g = GravityCompat.START;
        this.f1518l = new a();
        this.f1507a = context;
        this.f1508b = fVar;
        this.f1512f = view;
        this.f1509c = z10;
        this.f1510d = i11;
        this.f1511e = i12;
    }

    private j a() {
        Display defaultDisplay = ((WindowManager) this.f1507a.getSystemService("window")).getDefaultDisplay();
        Point point = new Point();
        defaultDisplay.getRealSize(point);
        j cascadingMenuPopup = Math.min(point.x, point.y) >= this.f1507a.getResources().getDimensionPixelSize(R$dimen.abc_cascading_menus_min_smallest_width) ? new CascadingMenuPopup(this.f1507a, this.f1512f, this.f1510d, this.f1511e, this.f1509c) : new p(this.f1507a, this.f1508b, this.f1512f, this.f1510d, this.f1511e, this.f1509c);
        cascadingMenuPopup.l(this.f1508b);
        cascadingMenuPopup.v(this.f1518l);
        cascadingMenuPopup.q(this.f1512f);
        cascadingMenuPopup.d(this.f1515i);
        cascadingMenuPopup.s(this.f1514h);
        cascadingMenuPopup.t(this.f1513g);
        return cascadingMenuPopup;
    }

    private void l(int i11, int i12, boolean z10, boolean z11) {
        j jVarC = c();
        jVarC.w(z11);
        if (z10) {
            if ((GravityCompat.getAbsoluteGravity(this.f1513g, this.f1512f.getLayoutDirection()) & 7) == 5) {
                i11 -= this.f1512f.getWidth();
            }
            jVarC.u(i11);
            jVarC.x(i12);
            int i13 = (int) ((this.f1507a.getResources().getDisplayMetrics().density * 48.0f) / 2.0f);
            jVarC.r(new Rect(i11 - i13, i12 - i13, i11 + i13, i12 + i13));
        }
        jVarC.show();
    }

    public void b() {
        if (d()) {
            this.f1516j.dismiss();
        }
    }

    public j c() {
        if (this.f1516j == null) {
            this.f1516j = a();
        }
        return this.f1516j;
    }

    public boolean d() {
        j jVar = this.f1516j;
        return jVar != null && jVar.a();
    }

    protected void e() {
        this.f1516j = null;
        PopupWindow.OnDismissListener onDismissListener = this.f1517k;
        if (onDismissListener != null) {
            onDismissListener.onDismiss();
        }
    }

    public void f(View view) {
        this.f1512f = view;
    }

    public void g(boolean z10) {
        this.f1514h = z10;
        j jVar = this.f1516j;
        if (jVar != null) {
            jVar.s(z10);
        }
    }

    public void h(int i11) {
        this.f1513g = i11;
    }

    public void i(PopupWindow.OnDismissListener onDismissListener) {
        this.f1517k = onDismissListener;
    }

    public void j(l.a aVar) {
        this.f1515i = aVar;
        j jVar = this.f1516j;
        if (jVar != null) {
            jVar.d(aVar);
        }
    }

    public void k() {
        if (!m()) {
            throw new IllegalStateException("MenuPopupHelper cannot be used without an anchor");
        }
    }

    public boolean m() {
        if (d()) {
            return true;
        }
        if (this.f1512f == null) {
            return false;
        }
        l(0, 0, false, false);
        return true;
    }

    public boolean n(int i11, int i12) {
        if (d()) {
            return true;
        }
        if (this.f1512f == null) {
            return false;
        }
        l(i11, i12, true, true);
        return true;
    }
}
