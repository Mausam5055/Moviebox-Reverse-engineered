package py;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.Group;
import com.noober.background.view.BLView;
import com.transsnet.downloader.R$id;

/* JADX INFO: loaded from: classes7.dex */
public final class k1 implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final View f72789a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final View f72790b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final FrameLayout f72791c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Group f72792d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Group f72793e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Group f72794f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final Group f72795g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final AppCompatImageView f72796h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final AppCompatImageView f72797i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final AppCompatImageView f72798j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final AppCompatImageView f72799k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final ProgressBar f72800l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final View f72801m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final AppCompatTextView f72802n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final AppCompatTextView f72803o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final AppCompatTextView f72804p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final AppCompatTextView f72805q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final AppCompatTextView f72806r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final AppCompatTextView f72807s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final AppCompatTextView f72808t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final AppCompatTextView f72809u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final AppCompatTextView f72810v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final View f72811w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final View f72812x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final View f72813y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final BLView f72814z;

    private k1(View view, View view2, FrameLayout frameLayout, Group group, Group group2, Group group3, Group group4, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, AppCompatImageView appCompatImageView3, AppCompatImageView appCompatImageView4, ProgressBar progressBar, View view3, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, AppCompatTextView appCompatTextView4, AppCompatTextView appCompatTextView5, AppCompatTextView appCompatTextView6, AppCompatTextView appCompatTextView7, AppCompatTextView appCompatTextView8, AppCompatTextView appCompatTextView9, View view4, View view5, View view6, BLView bLView) {
        this.f72789a = view;
        this.f72790b = view2;
        this.f72791c = frameLayout;
        this.f72792d = group;
        this.f72793e = group2;
        this.f72794f = group3;
        this.f72795g = group4;
        this.f72796h = appCompatImageView;
        this.f72797i = appCompatImageView2;
        this.f72798j = appCompatImageView3;
        this.f72799k = appCompatImageView4;
        this.f72800l = progressBar;
        this.f72801m = view3;
        this.f72802n = appCompatTextView;
        this.f72803o = appCompatTextView2;
        this.f72804p = appCompatTextView3;
        this.f72805q = appCompatTextView4;
        this.f72806r = appCompatTextView5;
        this.f72807s = appCompatTextView6;
        this.f72808t = appCompatTextView7;
        this.f72809u = appCompatTextView8;
        this.f72810v = appCompatTextView9;
        this.f72811w = view4;
        this.f72812x = view5;
        this.f72813y = view6;
        this.f72814z = bLView;
    }

    public static k1 a(View view) {
        View viewA;
        View viewA2;
        View viewA3;
        View viewA4;
        int i11 = R$id.bottom_guideline;
        View viewA5 = g4.b.a(view, i11);
        if (viewA5 != null) {
            i11 = R$id.fl_send;
            FrameLayout frameLayout = (FrameLayout) g4.b.a(view, i11);
            if (frameLayout != null) {
                i11 = R$id.group_def;
                Group group = (Group) g4.b.a(view, i11);
                if (group != null) {
                    i11 = R$id.group_list;
                    Group group2 = (Group) g4.b.a(view, i11);
                    if (group2 != null) {
                        i11 = R$id.group_send;
                        Group group3 = (Group) g4.b.a(view, i11);
                        if (group3 != null) {
                            i11 = R$id.group_top_connect;
                            Group group4 = (Group) g4.b.a(view, i11);
                            if (group4 != null) {
                                i11 = R$id.iv_close;
                                AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
                                if (appCompatImageView != null) {
                                    i11 = R$id.iv_reset;
                                    AppCompatImageView appCompatImageView2 = (AppCompatImageView) g4.b.a(view, i11);
                                    if (appCompatImageView2 != null) {
                                        i11 = R$id.iv_send_list;
                                        AppCompatImageView appCompatImageView3 = (AppCompatImageView) g4.b.a(view, i11);
                                        if (appCompatImageView3 != null) {
                                            i11 = R$id.iv_top_icon;
                                            AppCompatImageView appCompatImageView4 = (AppCompatImageView) g4.b.a(view, i11);
                                            if (appCompatImageView4 != null) {
                                                i11 = R$id.pb_loading;
                                                ProgressBar progressBar = (ProgressBar) g4.b.a(view, i11);
                                                if (progressBar != null && (viewA = g4.b.a(view, (i11 = R$id.top_guideline))) != null) {
                                                    i11 = R$id.tv_close;
                                                    AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
                                                    if (appCompatTextView != null) {
                                                        i11 = R$id.tv_receive_def;
                                                        AppCompatTextView appCompatTextView2 = (AppCompatTextView) g4.b.a(view, i11);
                                                        if (appCompatTextView2 != null) {
                                                            i11 = R$id.tv_reset;
                                                            AppCompatTextView appCompatTextView3 = (AppCompatTextView) g4.b.a(view, i11);
                                                            if (appCompatTextView3 != null) {
                                                                i11 = R$id.tv_send;
                                                                AppCompatTextView appCompatTextView4 = (AppCompatTextView) g4.b.a(view, i11);
                                                                if (appCompatTextView4 != null) {
                                                                    i11 = R$id.tv_send_def;
                                                                    AppCompatTextView appCompatTextView5 = (AppCompatTextView) g4.b.a(view, i11);
                                                                    if (appCompatTextView5 != null) {
                                                                        i11 = R$id.tv_send_list_count;
                                                                        AppCompatTextView appCompatTextView6 = (AppCompatTextView) g4.b.a(view, i11);
                                                                        if (appCompatTextView6 != null) {
                                                                            i11 = R$id.tv_send_list_tips;
                                                                            AppCompatTextView appCompatTextView7 = (AppCompatTextView) g4.b.a(view, i11);
                                                                            if (appCompatTextView7 != null) {
                                                                                i11 = R$id.tv_top_disconnect;
                                                                                AppCompatTextView appCompatTextView8 = (AppCompatTextView) g4.b.a(view, i11);
                                                                                if (appCompatTextView8 != null) {
                                                                                    i11 = R$id.tv_top_phone_model;
                                                                                    AppCompatTextView appCompatTextView9 = (AppCompatTextView) g4.b.a(view, i11);
                                                                                    if (appCompatTextView9 != null && (viewA2 = g4.b.a(view, (i11 = R$id.v_receive_def))) != null && (viewA3 = g4.b.a(view, (i11 = R$id.v_send))) != null && (viewA4 = g4.b.a(view, (i11 = R$id.v_send_def))) != null) {
                                                                                        i11 = R$id.v_top_bg;
                                                                                        BLView bLView = (BLView) g4.b.a(view, i11);
                                                                                        if (bLView != null) {
                                                                                            return new k1(view, viewA5, frameLayout, group, group2, group3, group4, appCompatImageView, appCompatImageView2, appCompatImageView3, appCompatImageView4, progressBar, viewA, appCompatTextView, appCompatTextView2, appCompatTextView3, appCompatTextView4, appCompatTextView5, appCompatTextView6, appCompatTextView7, appCompatTextView8, appCompatTextView9, viewA2, viewA3, viewA4, bLView);
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
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    @Override // g4.a
    public View getRoot() {
        return this.f72789a;
    }
}
