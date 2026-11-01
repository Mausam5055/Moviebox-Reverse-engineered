package gh;

import android.view.View;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.widget.NestedScrollView;
import com.tn.lib.tranpay.R$id;

/* JADX INFO: loaded from: classes4.dex */
public final class b implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LinearLayoutCompat f63579a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppCompatImageView f63580b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppCompatImageView f63581c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AppCompatEditText f63582d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AppCompatEditText f63583e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AppCompatTextView f63584f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final FrameLayout f63585g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final AppCompatImageView f63586h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final ConstraintLayout f63587i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final View f63588j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final AppCompatTextView f63589k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final AppCompatTextView f63590l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final AppCompatTextView f63591m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final AppCompatTextView f63592n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final AppCompatTextView f63593o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final AppCompatTextView f63594p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final AppCompatTextView f63595q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final AppCompatTextView f63596r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final AppCompatTextView f63597s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final ConstraintLayout f63598t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final View f63599u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final LinearLayoutCompat f63600v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final LinearLayoutCompat f63601w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final NestedScrollView f63602x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final View f63603y;

    private b(LinearLayoutCompat linearLayoutCompat, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, AppCompatEditText appCompatEditText, AppCompatEditText appCompatEditText2, AppCompatTextView appCompatTextView, FrameLayout frameLayout, AppCompatImageView appCompatImageView3, ConstraintLayout constraintLayout, View view, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, AppCompatTextView appCompatTextView4, AppCompatTextView appCompatTextView5, AppCompatTextView appCompatTextView6, AppCompatTextView appCompatTextView7, AppCompatTextView appCompatTextView8, AppCompatTextView appCompatTextView9, AppCompatTextView appCompatTextView10, ConstraintLayout constraintLayout2, View view2, LinearLayoutCompat linearLayoutCompat2, LinearLayoutCompat linearLayoutCompat3, NestedScrollView nestedScrollView, View view3) {
        this.f63579a = linearLayoutCompat;
        this.f63580b = appCompatImageView;
        this.f63581c = appCompatImageView2;
        this.f63582d = appCompatEditText;
        this.f63583e = appCompatEditText2;
        this.f63584f = appCompatTextView;
        this.f63585g = frameLayout;
        this.f63586h = appCompatImageView3;
        this.f63587i = constraintLayout;
        this.f63588j = view;
        this.f63589k = appCompatTextView2;
        this.f63590l = appCompatTextView3;
        this.f63591m = appCompatTextView4;
        this.f63592n = appCompatTextView5;
        this.f63593o = appCompatTextView6;
        this.f63594p = appCompatTextView7;
        this.f63595q = appCompatTextView8;
        this.f63596r = appCompatTextView9;
        this.f63597s = appCompatTextView10;
        this.f63598t = constraintLayout2;
        this.f63599u = view2;
        this.f63600v = linearLayoutCompat2;
        this.f63601w = linearLayoutCompat3;
        this.f63602x = nestedScrollView;
        this.f63603y = view3;
    }

    public static b a(View view) {
        View viewA;
        View viewA2;
        View viewA3;
        int i11 = R$id.clear_cnic_button;
        AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
        if (appCompatImageView != null) {
            i11 = R$id.clear_phone_button;
            AppCompatImageView appCompatImageView2 = (AppCompatImageView) g4.b.a(view, i11);
            if (appCompatImageView2 != null) {
                i11 = R$id.input_cnic;
                AppCompatEditText appCompatEditText = (AppCompatEditText) g4.b.a(view, i11);
                if (appCompatEditText != null) {
                    i11 = R$id.input_phone;
                    AppCompatEditText appCompatEditText2 = (AppCompatEditText) g4.b.a(view, i11);
                    if (appCompatEditText2 != null) {
                        i11 = R$id.iv_amount;
                        AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
                        if (appCompatTextView != null) {
                            i11 = R$id.iv_back;
                            FrameLayout frameLayout = (FrameLayout) g4.b.a(view, i11);
                            if (frameLayout != null) {
                                i11 = R$id.iv_close;
                                AppCompatImageView appCompatImageView3 = (AppCompatImageView) g4.b.a(view, i11);
                                if (appCompatImageView3 != null) {
                                    i11 = R$id.iv_cnic_container;
                                    ConstraintLayout constraintLayout = (ConstraintLayout) g4.b.a(view, i11);
                                    if (constraintLayout != null && (viewA = g4.b.a(view, (i11 = R$id.iv_cnic_container_line))) != null) {
                                        i11 = R$id.iv_company;
                                        AppCompatTextView appCompatTextView2 = (AppCompatTextView) g4.b.a(view, i11);
                                        if (appCompatTextView2 != null) {
                                            i11 = R$id.iv_cp_name_desc;
                                            AppCompatTextView appCompatTextView3 = (AppCompatTextView) g4.b.a(view, i11);
                                            if (appCompatTextView3 != null) {
                                                i11 = R$id.iv_desc;
                                                AppCompatTextView appCompatTextView4 = (AppCompatTextView) g4.b.a(view, i11);
                                                if (appCompatTextView4 != null) {
                                                    i11 = R$id.iv_input_cnic_error;
                                                    AppCompatTextView appCompatTextView5 = (AppCompatTextView) g4.b.a(view, i11);
                                                    if (appCompatTextView5 != null) {
                                                        i11 = R$id.iv_input_phone_error;
                                                        AppCompatTextView appCompatTextView6 = (AppCompatTextView) g4.b.a(view, i11);
                                                        if (appCompatTextView6 != null) {
                                                            i11 = R$id.iv_order_id;
                                                            AppCompatTextView appCompatTextView7 = (AppCompatTextView) g4.b.a(view, i11);
                                                            if (appCompatTextView7 != null) {
                                                                i11 = R$id.iv_pay_button;
                                                                AppCompatTextView appCompatTextView8 = (AppCompatTextView) g4.b.a(view, i11);
                                                                if (appCompatTextView8 != null) {
                                                                    i11 = R$id.iv_payment_method;
                                                                    AppCompatTextView appCompatTextView9 = (AppCompatTextView) g4.b.a(view, i11);
                                                                    if (appCompatTextView9 != null) {
                                                                        i11 = R$id.iv_phone_code;
                                                                        AppCompatTextView appCompatTextView10 = (AppCompatTextView) g4.b.a(view, i11);
                                                                        if (appCompatTextView10 != null) {
                                                                            i11 = R$id.iv_phone_container;
                                                                            ConstraintLayout constraintLayout2 = (ConstraintLayout) g4.b.a(view, i11);
                                                                            if (constraintLayout2 != null && (viewA2 = g4.b.a(view, (i11 = R$id.iv_phone_container_line))) != null) {
                                                                                LinearLayoutCompat linearLayoutCompat = (LinearLayoutCompat) g4.b.a(view, R$id.left_panel);
                                                                                LinearLayoutCompat linearLayoutCompat2 = (LinearLayoutCompat) view;
                                                                                i11 = R$id.scroll_view;
                                                                                NestedScrollView nestedScrollView = (NestedScrollView) g4.b.a(view, i11);
                                                                                if (nestedScrollView != null && (viewA3 = g4.b.a(view, (i11 = R$id.view))) != null) {
                                                                                    return new b(linearLayoutCompat2, appCompatImageView, appCompatImageView2, appCompatEditText, appCompatEditText2, appCompatTextView, frameLayout, appCompatImageView3, constraintLayout, viewA, appCompatTextView2, appCompatTextView3, appCompatTextView4, appCompatTextView5, appCompatTextView6, appCompatTextView7, appCompatTextView8, appCompatTextView9, appCompatTextView10, constraintLayout2, viewA2, linearLayoutCompat, linearLayoutCompat2, nestedScrollView, viewA3);
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public LinearLayoutCompat getRoot() {
        return this.f63579a;
    }
}
