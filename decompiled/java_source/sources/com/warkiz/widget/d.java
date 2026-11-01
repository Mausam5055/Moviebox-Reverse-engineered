package com.warkiz.widget;

import android.content.Context;
import android.graphics.drawable.GradientDrawable;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.TextView;

/* JADX INFO: loaded from: classes7.dex */
public class d {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ArrowView f60784c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private TextView f60785d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private PopupWindow f60786e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private LinearLayout f60787f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f60788g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f60789h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Context f60790i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f60791j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private IndicatorSeekBar f60792k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private View f60793l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private View f60794m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private View f60795n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private float f60796o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f60797p;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int[] f60783b = new int[2];

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f60782a = e();

    public d(Context context, IndicatorSeekBar indicatorSeekBar, int i11, int i12, int i13, int i14, View view, View view2) {
        this.f60790i = context;
        this.f60792k = indicatorSeekBar;
        this.f60789h = i11;
        this.f60791j = i12;
        this.f60794m = view;
        this.f60795n = view2;
        this.f60796o = i13;
        this.f60797p = i14;
        this.f60788g = g.a(this.f60790i, 2.0f);
        h();
    }

    private void a(float f11) {
        int i11 = this.f60791j;
        if (i11 == 4 || i11 == 1) {
            return;
        }
        int iC = c();
        if (iC + f11 < this.f60786e.getContentView().getMeasuredWidth() / 2) {
            k(this.f60784c, -((int) (((this.f60786e.getContentView().getMeasuredWidth() / 2) - iC) - f11)), -1, -1, -1);
        } else if ((this.f60782a - iC) - f11 < this.f60786e.getContentView().getMeasuredWidth() / 2) {
            k(this.f60784c, (int) ((this.f60786e.getContentView().getMeasuredWidth() / 2) - ((this.f60782a - iC) - f11)), -1, -1, -1);
        } else {
            k(this.f60784c, 0, 0, 0, 0);
        }
    }

    private GradientDrawable b() {
        GradientDrawable gradientDrawable = this.f60791j == 2 ? (GradientDrawable) this.f60790i.getResources().getDrawable(R$drawable.isb_indicator_rounded_corners) : (GradientDrawable) this.f60790i.getResources().getDrawable(R$drawable.isb_indicator_square_corners);
        gradientDrawable.setColor(this.f60789h);
        return gradientDrawable;
    }

    private int c() {
        this.f60792k.getLocationOnScreen(this.f60783b);
        return this.f60783b[0];
    }

    private int e() {
        WindowManager windowManager = (WindowManager) this.f60790i.getSystemService("window");
        if (windowManager != null) {
            return windowManager.getDefaultDisplay().getWidth();
        }
        return 0;
    }

    private void h() {
        View viewFindViewById;
        int i11 = this.f60791j;
        if (i11 == 4) {
            View view = this.f60794m;
            if (view == null) {
                throw new IllegalArgumentException("the attr：indicator_custom_layout must be set while you set the indicator type to CUSTOM.");
            }
            this.f60793l = view;
            int identifier = this.f60790i.getResources().getIdentifier("isb_progress", "id", this.f60790i.getApplicationContext().getPackageName());
            if (identifier <= 0 || (viewFindViewById = this.f60793l.findViewById(identifier)) == null) {
                return;
            }
            if (!(viewFindViewById instanceof TextView)) {
                throw new ClassCastException("the view identified by isb_progress in indicator custom layout can not be cast to TextView");
            }
            TextView textView = (TextView) viewFindViewById;
            this.f60785d = textView;
            textView.setText(this.f60792k.getIndicatorTextString());
            this.f60785d.setTextSize(g.b(this.f60790i, this.f60796o));
            this.f60785d.setTextColor(this.f60797p);
            return;
        }
        if (i11 == 1) {
            CircleBubbleView circleBubbleView = new CircleBubbleView(this.f60790i, this.f60796o, this.f60797p, this.f60789h, "1000");
            this.f60793l = circleBubbleView;
            circleBubbleView.setProgress(this.f60792k.getIndicatorTextString());
            return;
        }
        View viewInflate = View.inflate(this.f60790i, R$layout.isb_indicator, null);
        this.f60793l = viewInflate;
        this.f60787f = (LinearLayout) viewInflate.findViewById(R$id.indicator_container);
        ArrowView arrowView = (ArrowView) this.f60793l.findViewById(R$id.indicator_arrow);
        this.f60784c = arrowView;
        arrowView.setColor(this.f60789h);
        TextView textView2 = (TextView) this.f60793l.findViewById(R$id.isb_progress);
        this.f60785d = textView2;
        textView2.setText(this.f60792k.getIndicatorTextString());
        this.f60785d.setTextSize(g.b(this.f60790i, this.f60796o));
        this.f60785d.setTextColor(this.f60797p);
        this.f60787f.setBackground(b());
        if (this.f60795n != null) {
            int identifier2 = this.f60790i.getResources().getIdentifier("isb_progress", "id", this.f60790i.getApplicationContext().getPackageName());
            View view2 = this.f60795n;
            if (identifier2 <= 0) {
                m(view2);
                return;
            }
            View viewFindViewById2 = view2.findViewById(identifier2);
            if (viewFindViewById2 == null || !(viewFindViewById2 instanceof TextView)) {
                m(view2);
            } else {
                n(view2, (TextView) viewFindViewById2);
            }
        }
    }

    private void k(View view, int i11, int i12, int i13, int i14) {
        if (view != null && (view.getLayoutParams() instanceof ViewGroup.MarginLayoutParams)) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
            if (i11 == -1) {
                i11 = marginLayoutParams.leftMargin;
            }
            if (i12 == -1) {
                i12 = marginLayoutParams.topMargin;
            }
            if (i13 == -1) {
                i13 = marginLayoutParams.rightMargin;
            }
            if (i14 == -1) {
                i14 = marginLayoutParams.bottomMargin;
            }
            marginLayoutParams.setMargins(i11, i12, i13, i14);
            view.requestLayout();
        }
    }

    View d() {
        return this.f60793l;
    }

    void f() {
        PopupWindow popupWindow = this.f60786e;
        if (popupWindow == null) {
            return;
        }
        popupWindow.dismiss();
    }

    void g() {
        View view;
        if (this.f60786e != null || this.f60791j == 0 || (view = this.f60793l) == null) {
            return;
        }
        view.measure(0, 0);
        this.f60786e = new PopupWindow(this.f60793l, -2, -2, false);
    }

    boolean i() {
        PopupWindow popupWindow = this.f60786e;
        return popupWindow != null && popupWindow.isShowing();
    }

    void j() {
        String indicatorTextString = this.f60792k.getIndicatorTextString();
        View view = this.f60793l;
        if (view instanceof CircleBubbleView) {
            ((CircleBubbleView) view).setProgress(indicatorTextString);
            return;
        }
        TextView textView = this.f60785d;
        if (textView != null) {
            textView.setText(indicatorTextString);
        }
    }

    void l(String str) {
        View view = this.f60793l;
        if (view instanceof CircleBubbleView) {
            ((CircleBubbleView) view).setProgress(str);
            return;
        }
        TextView textView = this.f60785d;
        if (textView != null) {
            textView.setText(str);
        }
    }

    public void m(View view) {
        n(view, null);
    }

    public void n(View view, TextView textView) {
        this.f60785d = textView;
        this.f60787f.removeAllViews();
        view.setBackground(b());
        this.f60787f.addView(view);
    }

    void o(float f11) {
        if (this.f60792k.isEnabled() && this.f60792k.getVisibility() == 0) {
            j();
            PopupWindow popupWindow = this.f60786e;
            if (popupWindow != null) {
                popupWindow.getContentView().measure(0, 0);
                PopupWindow popupWindow2 = this.f60786e;
                popupWindow2.showAsDropDown(this.f60792k, (int) (f11 - (popupWindow2.getContentView().getMeasuredWidth() / 2.0f)), -(((this.f60792k.getMeasuredHeight() + this.f60786e.getContentView().getMeasuredHeight()) - this.f60792k.getPaddingTop()) + this.f60788g));
                a(f11);
            }
        }
    }

    void p(float f11) {
        if (this.f60792k.isEnabled() && this.f60792k.getVisibility() == 0) {
            j();
            PopupWindow popupWindow = this.f60786e;
            if (popupWindow != null) {
                popupWindow.getContentView().measure(0, 0);
                PopupWindow popupWindow2 = this.f60786e;
                popupWindow2.update(this.f60792k, (int) (f11 - (popupWindow2.getContentView().getMeasuredWidth() / 2)), -(((this.f60792k.getMeasuredHeight() + this.f60786e.getContentView().getMeasuredHeight()) - this.f60792k.getPaddingTop()) + this.f60788g), -1, -1);
                a(f11);
            }
        }
    }

    void q(int i11) {
        k(this.f60784c, i11, -1, -1, -1);
    }

    void r(int i11) {
        k(this.f60793l, i11, -1, -1, -1);
    }
}
