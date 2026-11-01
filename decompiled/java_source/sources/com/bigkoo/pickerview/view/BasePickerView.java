package com.bigkoo.pickerview.view;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.Window;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import com.bigkoo.pickerview.R$id;
import com.bigkoo.pickerview.R$layout;
import com.bigkoo.pickerview.R$style;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes2.dex */
public abstract class BasePickerView {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f19947a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected ViewGroup f19948b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ViewGroup f19949c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ViewGroup f19950d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected p5.a f19951e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f19952f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Animation f19953g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Animation f19954h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f19955i;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private Dialog f19957k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    protected View f19958l;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    protected int f19956j = 80;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f19959m = true;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private View.OnKeyListener f19960n = new c();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final View.OnTouchListener f19961o = new d();

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            BasePickerView.this.f();
        }
    }

    class b implements Animation.AnimationListener {
        b() {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            BasePickerView.this.h();
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    class c implements View.OnKeyListener {
        c() {
        }

        @Override // android.view.View.OnKeyListener
        public boolean onKey(View view, int i11, KeyEvent keyEvent) {
            if (i11 != 4 || keyEvent.getAction() != 0 || !BasePickerView.this.q()) {
                return false;
            }
            BasePickerView.this.f();
            return true;
        }
    }

    class d implements View.OnTouchListener {
        d() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (motionEvent.getAction() != 0) {
                return false;
            }
            BasePickerView.this.f();
            return false;
        }
    }

    class e implements DialogInterface.OnDismissListener {
        e() {
        }

        @Override // android.content.DialogInterface.OnDismissListener
        public void onDismiss(DialogInterface dialogInterface) {
            BasePickerView.a(BasePickerView.this);
        }
    }

    public BasePickerView(Context context) {
        this.f19947a = context;
    }

    static /* bridge */ /* synthetic */ q5.b a(BasePickerView basePickerView) {
        basePickerView.getClass();
        return null;
    }

    private void g() {
        Dialog dialog = this.f19957k;
        if (dialog != null) {
            dialog.dismiss();
        }
    }

    private Animation i() {
        return AnimationUtils.loadAnimation(this.f19947a, r5.c.a(this.f19956j, true));
    }

    private static String j() {
        try {
            Method declaredMethod = Class.forName("android.os.SystemProperties").getDeclaredMethod("get", String.class);
            declaredMethod.setAccessible(true);
            return (String) declaredMethod.invoke(null, "qemu.hw.mainkeys");
        } catch (Throwable unused) {
            return null;
        }
    }

    public static int k(Context context) {
        Resources resources;
        int identifier;
        if (!m(context) || (identifier = (resources = context.getResources()).getIdentifier("navigation_bar_height", "dimen", "android")) <= 0) {
            return 0;
        }
        return resources.getDimensionPixelSize(identifier);
    }

    private Animation l() {
        return AnimationUtils.loadAnimation(this.f19947a, r5.c.a(this.f19956j, false));
    }

    public static boolean m(Context context) {
        Resources resources = context.getResources();
        int identifier = resources.getIdentifier("config_showNavigationBar", "bool", "android");
        if (identifier == 0) {
            return !ViewConfiguration.get(context).hasPermanentMenuKey();
        }
        boolean z10 = resources.getBoolean(identifier);
        String strJ = j();
        if ("1".equals(strJ)) {
            return false;
        }
        if ("0".equals(strJ)) {
            return true;
        }
        return z10;
    }

    private void r(View view) {
        this.f19951e.A.addView(view);
        if (this.f19959m) {
            this.f19948b.startAnimation(this.f19954h);
        }
    }

    private void w() {
        Dialog dialog = this.f19957k;
        if (dialog != null) {
            dialog.show();
        }
    }

    public void e() {
        if (this.f19950d != null) {
            Dialog dialog = new Dialog(this.f19947a, R$style.custom_dialog2);
            this.f19957k = dialog;
            dialog.setCancelable(this.f19951e.U);
            this.f19957k.setContentView(this.f19950d);
            Window window = this.f19957k.getWindow();
            if (window != null) {
                window.setWindowAnimations(R$style.picker_view_scale_anim);
                window.setGravity(17);
            }
            this.f19957k.setOnDismissListener(new e());
        }
    }

    public void f() {
        if (p()) {
            g();
            return;
        }
        if (this.f19952f) {
            return;
        }
        if (this.f19959m) {
            this.f19953g.setAnimationListener(new b());
            this.f19948b.startAnimation(this.f19953g);
        } else {
            h();
        }
        this.f19952f = true;
    }

    public View findViewById(int i11) {
        return this.f19948b.findViewById(i11);
    }

    public void h() {
        this.f19951e.A.post(new Runnable() { // from class: com.bigkoo.pickerview.view.BasePickerView.3
            @Override // java.lang.Runnable
            public void run() {
                BasePickerView basePickerView = BasePickerView.this;
                basePickerView.f19951e.A.removeView(basePickerView.f19949c);
                BasePickerView.this.f19955i = false;
                BasePickerView.this.f19952f = false;
                BasePickerView.a(BasePickerView.this);
            }
        });
    }

    protected void n() {
        this.f19954h = i();
        this.f19953g = l();
    }

    protected void o() {
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2, 80);
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(this.f19947a);
        if (p()) {
            ViewGroup viewGroup = (ViewGroup) layoutInflaterFrom.inflate(R$layout.layout_basepickerview, (ViewGroup) null, false);
            this.f19950d = viewGroup;
            viewGroup.setBackgroundColor(0);
            ViewGroup viewGroup2 = (ViewGroup) this.f19950d.findViewById(R$id.content_container);
            this.f19948b = viewGroup2;
            layoutParams.leftMargin = 30;
            layoutParams.rightMargin = 30;
            viewGroup2.setLayoutParams(layoutParams);
            e();
            this.f19950d.setOnClickListener(new a());
        } else {
            p5.a aVar = this.f19951e;
            if (aVar.A == null) {
                aVar.A = (ViewGroup) ((Activity) this.f19947a).getWindow().getDecorView();
            }
            this.f19949c = (ViewGroup) layoutInflaterFrom.inflate(R$layout.layout_basepickerview, this.f19951e.A, false);
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -1);
            layoutParams2.bottomMargin = k(this.f19947a);
            this.f19949c.setLayoutParams(layoutParams2);
            int i11 = this.f19951e.R;
            if (i11 != -1) {
                this.f19949c.setBackgroundColor(i11);
            }
            ViewGroup viewGroup3 = (ViewGroup) this.f19949c.findViewById(R$id.content_container);
            this.f19948b = viewGroup3;
            viewGroup3.setLayoutParams(layoutParams);
        }
        t(true);
    }

    public abstract boolean p();

    public boolean q() {
        if (p()) {
            return false;
        }
        return this.f19949c.getParent() != null || this.f19955i;
    }

    public void s() {
        Dialog dialog = this.f19957k;
        if (dialog != null) {
            dialog.setCancelable(this.f19951e.U);
        }
    }

    public void t(boolean z10) {
        ViewGroup viewGroup = p() ? this.f19950d : this.f19949c;
        viewGroup.setFocusable(z10);
        viewGroup.setFocusableInTouchMode(z10);
        if (z10) {
            viewGroup.setOnKeyListener(this.f19960n);
        } else {
            viewGroup.setOnKeyListener(null);
        }
    }

    protected BasePickerView u(boolean z10) {
        ViewGroup viewGroup = this.f19949c;
        if (viewGroup != null) {
            View viewFindViewById = viewGroup.findViewById(R$id.outmost_container);
            if (z10) {
                viewFindViewById.setOnTouchListener(this.f19961o);
            } else {
                viewFindViewById.setOnTouchListener(null);
            }
        }
        return this;
    }

    public void v() {
        if (p()) {
            w();
        } else {
            if (q()) {
                return;
            }
            this.f19955i = true;
            r(this.f19949c);
            this.f19949c.requestFocus();
        }
    }
}
