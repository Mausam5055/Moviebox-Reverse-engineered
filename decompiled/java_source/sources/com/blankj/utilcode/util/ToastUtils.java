package com.blankj.utilcode.util;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.core.view.ViewCompat;
import com.blankj.utilcode.R$id;
import com.blankj.utilcode.R$layout;
import com.cloud.tmc.miniapp.utils.toast.ToastStrategy;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;

/* JADX INFO: loaded from: classes2.dex */
public final class ToastUtils {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final ToastUtils f20048l = n();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static WeakReference f20049m;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f20050a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f20051b = -1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f20052c = -1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f20053d = -1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f20054e = -16777217;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f20055f = -1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f20056g = -16777217;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f20057h = -1;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f20058i = false;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private Drawable[] f20059j = new Drawable[4];

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f20060k = false;

    static final class ActivityToast extends a {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static int f20061f;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private Utils.a f20062d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private b f20063e;

        class a extends Utils.a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ int f20064a;

            a(int i11) {
                this.f20064a = i11;
            }

            @Override // com.blankj.utilcode.util.Utils.a
            public void a(Activity activity) {
                if (ActivityToast.this.i()) {
                    ActivityToast.this.l(activity, this.f20064a, false);
                }
            }
        }

        ActivityToast(ToastUtils toastUtils) {
            super(toastUtils);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean i() {
            return this.f20062d != null;
        }

        private void j() {
            a aVar = new a(f20061f);
            this.f20062d = aVar;
            e0.a(aVar);
        }

        private b k(int i11) {
            c cVar = new c(this.f20070b);
            cVar.f20069a = this.f20069a;
            cVar.a(i11);
            return cVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void l(Activity activity, int i11, boolean z10) {
            Window window = activity.getWindow();
            if (window != null) {
                ViewGroup viewGroup = (ViewGroup) window.getDecorView();
                FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
                layoutParams.gravity = this.f20069a.getGravity();
                layoutParams.bottomMargin = this.f20069a.getYOffset() + e0.p();
                layoutParams.topMargin = this.f20069a.getYOffset() + e0.s();
                layoutParams.leftMargin = this.f20069a.getXOffset();
                View viewD = d(i11);
                if (z10) {
                    viewD.setAlpha(0.0f);
                    viewD.animate().alpha(1.0f).setDuration(200L).start();
                }
                viewGroup.addView(viewD, layoutParams);
            }
        }

        private b m(Activity activity, int i11) {
            WindowManagerToast windowManagerToast = new WindowManagerToast(this.f20070b, activity.getWindowManager(), 99);
            windowManagerToast.f20071c = d(-1);
            windowManagerToast.f20069a = this.f20069a;
            windowManagerToast.a(i11);
            return windowManagerToast;
        }

        private void n() {
            e0.I(this.f20062d);
            this.f20062d = null;
        }

        @Override // com.blankj.utilcode.util.ToastUtils.b
        public void a(int i11) {
            if (this.f20069a == null) {
                return;
            }
            if (!e0.x()) {
                this.f20063e = k(i11);
                return;
            }
            boolean z10 = false;
            for (Activity activity : e0.h()) {
                if (e0.w(activity)) {
                    if (z10) {
                        l(activity, f20061f, true);
                    } else {
                        this.f20063e = m(activity, i11);
                        z10 = true;
                    }
                }
            }
            if (!z10) {
                this.f20063e = k(i11);
                return;
            }
            j();
            e0.K(new Runnable() { // from class: com.blankj.utilcode.util.ToastUtils.ActivityToast.1
                @Override // java.lang.Runnable
                public void run() {
                    ActivityToast.this.cancel();
                }
            }, i11 == 0 ? 2000L : ToastStrategy.LONG_DURATION_TIMEOUT);
            f20061f++;
        }

        @Override // com.blankj.utilcode.util.ToastUtils.a, com.blankj.utilcode.util.ToastUtils.b
        public void cancel() {
            Window window;
            if (i()) {
                n();
                for (Activity activity : e0.h()) {
                    if (e0.w(activity) && (window = activity.getWindow()) != null) {
                        ViewGroup viewGroup = (ViewGroup) window.getDecorView();
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("TAG_TOAST");
                        sb2.append(f20061f - 1);
                        View viewFindViewWithTag = viewGroup.findViewWithTag(sb2.toString());
                        if (viewFindViewWithTag != null) {
                            try {
                                viewGroup.removeView(viewFindViewWithTag);
                            } catch (Exception unused) {
                            }
                        }
                    }
                }
            }
            b bVar = this.f20063e;
            if (bVar != null) {
                bVar.cancel();
                this.f20063e = null;
            }
            super.cancel();
        }
    }

    public static final class UtilsMaxWidthRelativeLayout extends RelativeLayout {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final int f20066a = e0.d(80.0f);

        public UtilsMaxWidthRelativeLayout(Context context) {
            super(context);
        }

        public UtilsMaxWidthRelativeLayout(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public UtilsMaxWidthRelativeLayout(Context context, AttributeSet attributeSet, int i11) {
            super(context, attributeSet, i11);
        }

        @Override // android.widget.RelativeLayout, android.view.View
        protected void onMeasure(int i11, int i12) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(e0.i() - f20066a, Integer.MIN_VALUE), i12);
        }
    }

    static final class WindowManagerToast extends a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private WindowManager f20067d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private WindowManager.LayoutParams f20068e;

        WindowManagerToast(ToastUtils toastUtils, int i11) {
            super(toastUtils);
            this.f20068e = new WindowManager.LayoutParams();
            this.f20067d = (WindowManager) Utils.a().getSystemService("window");
            this.f20068e.type = i11;
        }

        WindowManagerToast(ToastUtils toastUtils, WindowManager windowManager, int i11) {
            super(toastUtils);
            WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
            this.f20068e = layoutParams;
            this.f20067d = windowManager;
            layoutParams.type = i11;
        }

        @Override // com.blankj.utilcode.util.ToastUtils.b
        public void a(int i11) {
            if (this.f20069a == null) {
                return;
            }
            WindowManager.LayoutParams layoutParams = this.f20068e;
            layoutParams.height = -2;
            layoutParams.width = -2;
            layoutParams.format = -3;
            layoutParams.windowAnimations = 16973828;
            layoutParams.setTitle("ToastWithoutNotification");
            WindowManager.LayoutParams layoutParams2 = this.f20068e;
            layoutParams2.flags = 152;
            layoutParams2.packageName = Utils.a().getPackageName();
            this.f20068e.gravity = this.f20069a.getGravity();
            WindowManager.LayoutParams layoutParams3 = this.f20068e;
            int i12 = layoutParams3.gravity;
            if ((i12 & 7) == 7) {
                layoutParams3.horizontalWeight = 1.0f;
            }
            if ((i12 & 112) == 112) {
                layoutParams3.verticalWeight = 1.0f;
            }
            layoutParams3.x = this.f20069a.getXOffset();
            this.f20068e.y = this.f20069a.getYOffset();
            this.f20068e.horizontalMargin = this.f20069a.getHorizontalMargin();
            this.f20068e.verticalMargin = this.f20069a.getVerticalMargin();
            try {
                WindowManager windowManager = this.f20067d;
                if (windowManager != null) {
                    windowManager.addView(this.f20071c, this.f20068e);
                }
            } catch (Exception unused) {
            }
            e0.K(new Runnable() { // from class: com.blankj.utilcode.util.ToastUtils.WindowManagerToast.1
                @Override // java.lang.Runnable
                public void run() {
                    WindowManagerToast.this.cancel();
                }
            }, i11 == 0 ? 2000L : ToastStrategy.LONG_DURATION_TIMEOUT);
        }

        @Override // com.blankj.utilcode.util.ToastUtils.a, com.blankj.utilcode.util.ToastUtils.b
        public void cancel() {
            try {
                WindowManager windowManager = this.f20067d;
                if (windowManager != null) {
                    windowManager.removeViewImmediate(this.f20071c);
                    this.f20067d = null;
                }
            } catch (Exception unused) {
            }
            super.cancel();
        }
    }

    static abstract class a implements b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        protected Toast f20069a = new Toast(Utils.a());

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        protected ToastUtils f20070b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        protected View f20071c;

        a(ToastUtils toastUtils) {
            this.f20070b = toastUtils;
            if (toastUtils.f20051b == -1 && this.f20070b.f20052c == -1 && this.f20070b.f20053d == -1) {
                return;
            }
            this.f20069a.setGravity(this.f20070b.f20051b, this.f20070b.f20052c, this.f20070b.f20053d);
        }

        private void e() {
            if (e0.B()) {
                b(d(-1));
            }
        }

        private void f(TextView textView) {
            if (this.f20070b.f20055f != -1) {
                this.f20071c.setBackgroundResource(this.f20070b.f20055f);
                textView.setBackgroundColor(0);
                return;
            }
            if (this.f20070b.f20054e != -16777217) {
                Drawable background = this.f20071c.getBackground();
                Drawable background2 = textView.getBackground();
                if (background != null && background2 != null) {
                    background.mutate().setColorFilter(new PorterDuffColorFilter(this.f20070b.f20054e, PorterDuff.Mode.SRC_IN));
                    textView.setBackgroundColor(0);
                } else if (background != null) {
                    background.mutate().setColorFilter(new PorterDuffColorFilter(this.f20070b.f20054e, PorterDuff.Mode.SRC_IN));
                } else if (background2 != null) {
                    background2.mutate().setColorFilter(new PorterDuffColorFilter(this.f20070b.f20054e, PorterDuff.Mode.SRC_IN));
                } else {
                    this.f20071c.setBackgroundColor(this.f20070b.f20054e);
                }
            }
        }

        @Override // com.blankj.utilcode.util.ToastUtils.b
        public void b(View view) {
            this.f20071c = view;
            this.f20069a.setView(view);
        }

        @Override // com.blankj.utilcode.util.ToastUtils.b
        public void c(CharSequence charSequence) {
            View viewT = this.f20070b.t(charSequence);
            if (viewT != null) {
                b(viewT);
                e();
                return;
            }
            View view = this.f20069a.getView();
            this.f20071c = view;
            if (view == null || view.findViewById(R.id.message) == null) {
                b(e0.F(R$layout.utils_toast_view));
            }
            TextView textView = (TextView) this.f20071c.findViewById(R.id.message);
            textView.setText(charSequence);
            if (this.f20070b.f20056g != -16777217) {
                textView.setTextColor(this.f20070b.f20056g);
            }
            if (this.f20070b.f20057h != -1) {
                textView.setTextSize(this.f20070b.f20057h);
            }
            f(textView);
            e();
        }

        @Override // com.blankj.utilcode.util.ToastUtils.b
        public void cancel() {
            Toast toast = this.f20069a;
            if (toast != null) {
                toast.cancel();
            }
            this.f20069a = null;
            this.f20071c = null;
        }

        View d(int i11) {
            Bitmap bitmapM = e0.M(this.f20071c);
            ImageView imageView = new ImageView(Utils.a());
            imageView.setTag("TAG_TOAST" + i11);
            imageView.setImageBitmap(bitmapM);
            return imageView;
        }
    }

    interface b {
        void a(int i11);

        void b(View view);

        void c(CharSequence charSequence);

        void cancel();
    }

    static final class c extends a {

        static class a extends Handler {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private Handler f20072a;

            a(Handler handler) {
                this.f20072a = handler;
            }

            @Override // android.os.Handler
            public void dispatchMessage(Message message) {
                try {
                    this.f20072a.dispatchMessage(message);
                } catch (Exception e11) {
                    e11.printStackTrace();
                }
            }

            @Override // android.os.Handler
            public void handleMessage(Message message) {
                this.f20072a.handleMessage(message);
            }
        }

        c(ToastUtils toastUtils) {
            super(toastUtils);
            if (Build.VERSION.SDK_INT == 25) {
                try {
                    Field declaredField = Toast.class.getDeclaredField("mTN");
                    declaredField.setAccessible(true);
                    Object obj = declaredField.get(this.f20069a);
                    Field declaredField2 = declaredField.getType().getDeclaredField("mHandler");
                    declaredField2.setAccessible(true);
                    declaredField2.set(obj, new a((Handler) declaredField2.get(obj)));
                } catch (Exception unused) {
                }
            }
        }

        @Override // com.blankj.utilcode.util.ToastUtils.b
        public void a(int i11) {
            Toast toast = this.f20069a;
            if (toast == null) {
                return;
            }
            toast.setDuration(i11);
            this.f20069a.show();
        }
    }

    public static void l() {
        e0.J(new Runnable() { // from class: com.blankj.utilcode.util.ToastUtils.1
            @Override // java.lang.Runnable
            public void run() {
                if (ToastUtils.f20049m != null) {
                    b bVar = (b) ToastUtils.f20049m.get();
                    if (bVar != null) {
                        bVar.cancel();
                    }
                    WeakReference unused = ToastUtils.f20049m = null;
                }
            }
        });
    }

    private static CharSequence m(CharSequence charSequence) {
        if (charSequence == null) {
            return "toast null";
        }
        return charSequence.length() == 0 ? "toast nothing" : charSequence;
    }

    public static ToastUtils n() {
        return new ToastUtils();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static b o(ToastUtils toastUtils) {
        if (!toastUtils.f20060k && androidx.core.app.t.d(Utils.a()).a() && !e0.z()) {
            return new c(toastUtils);
        }
        int i11 = Build.VERSION.SDK_INT;
        if (i11 < 25) {
            return new WindowManagerToast(toastUtils, 2005);
        }
        if (e0.z()) {
            return i11 >= 26 ? new WindowManagerToast(toastUtils, 2038) : new WindowManagerToast(toastUtils, 2002);
        }
        return new ActivityToast(toastUtils);
    }

    private static void p(final View view, final CharSequence charSequence, final int i11, ToastUtils toastUtils) {
        e0.J(new Runnable() { // from class: com.blankj.utilcode.util.ToastUtils.2
            @Override // java.lang.Runnable
            public void run() {
                ToastUtils.l();
                b bVarO = ToastUtils.o(ToastUtils.this);
                WeakReference unused = ToastUtils.f20049m = new WeakReference(bVarO);
                View view2 = view;
                if (view2 != null) {
                    bVarO.b(view2);
                } else {
                    bVarO.c(charSequence);
                }
                bVarO.a(i11);
            }
        });
    }

    private static void q(CharSequence charSequence, int i11, ToastUtils toastUtils) {
        p(null, m(charSequence), i11, toastUtils);
    }

    public static void r(int i11) {
        q(e0.t(i11), 0, f20048l);
    }

    public static void s(String str, Object... objArr) {
        q(e0.g(str, objArr), 0, f20048l);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public View t(CharSequence charSequence) {
        if (!"dark".equals(this.f20050a) && !"light".equals(this.f20050a)) {
            Drawable[] drawableArr = this.f20059j;
            if (drawableArr[0] == null && drawableArr[1] == null && drawableArr[2] == null && drawableArr[3] == null) {
                return null;
            }
        }
        View viewF = e0.F(R$layout.utils_toast_view);
        TextView textView = (TextView) viewF.findViewById(R.id.message);
        if ("dark".equals(this.f20050a)) {
            ((GradientDrawable) viewF.getBackground().mutate()).setColor(Color.parseColor("#BB000000"));
            textView.setTextColor(-1);
        }
        textView.setText(charSequence);
        if (this.f20059j[0] != null) {
            View viewFindViewById = viewF.findViewById(R$id.utvLeftIconView);
            ViewCompat.setBackground(viewFindViewById, this.f20059j[0]);
            viewFindViewById.setVisibility(0);
        }
        if (this.f20059j[1] != null) {
            View viewFindViewById2 = viewF.findViewById(R$id.utvTopIconView);
            ViewCompat.setBackground(viewFindViewById2, this.f20059j[1]);
            viewFindViewById2.setVisibility(0);
        }
        if (this.f20059j[2] != null) {
            View viewFindViewById3 = viewF.findViewById(R$id.utvRightIconView);
            ViewCompat.setBackground(viewFindViewById3, this.f20059j[2]);
            viewFindViewById3.setVisibility(0);
        }
        if (this.f20059j[3] != null) {
            View viewFindViewById4 = viewF.findViewById(R$id.utvBottomIconView);
            ViewCompat.setBackground(viewFindViewById4, this.f20059j[3]);
            viewFindViewById4.setVisibility(0);
        }
        return viewF;
    }
}
