package fw;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatImageButton;
import androidx.appcompat.widget.AppCompatTextView;
import com.transsion.usercenter.R$id;
import com.transsion.usercenter.R$layout;

/* JADX INFO: loaded from: classes7.dex */
public final class f implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LinearLayout f62631a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppCompatImageButton f62632b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppCompatTextView f62633c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AppCompatTextView f62634d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AppCompatTextView f62635e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AppCompatTextView f62636f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final AppCompatTextView f62637g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final AppCompatTextView f62638h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final AppCompatTextView f62639i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final AppCompatTextView f62640j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final AppCompatTextView f62641k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final AppCompatTextView f62642l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final AppCompatTextView f62643m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final AppCompatTextView f62644n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final AppCompatTextView f62645o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final AppCompatTextView f62646p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final AppCompatTextView f62647q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final AppCompatTextView f62648r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final AppCompatTextView f62649s;

    private f(LinearLayout linearLayout, AppCompatImageButton appCompatImageButton, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, AppCompatTextView appCompatTextView4, AppCompatTextView appCompatTextView5, AppCompatTextView appCompatTextView6, AppCompatTextView appCompatTextView7, AppCompatTextView appCompatTextView8, AppCompatTextView appCompatTextView9, AppCompatTextView appCompatTextView10, AppCompatTextView appCompatTextView11, AppCompatTextView appCompatTextView12, AppCompatTextView appCompatTextView13, AppCompatTextView appCompatTextView14, AppCompatTextView appCompatTextView15, AppCompatTextView appCompatTextView16, AppCompatTextView appCompatTextView17) {
        this.f62631a = linearLayout;
        this.f62632b = appCompatImageButton;
        this.f62633c = appCompatTextView;
        this.f62634d = appCompatTextView2;
        this.f62635e = appCompatTextView3;
        this.f62636f = appCompatTextView4;
        this.f62637g = appCompatTextView5;
        this.f62638h = appCompatTextView6;
        this.f62639i = appCompatTextView7;
        this.f62640j = appCompatTextView8;
        this.f62641k = appCompatTextView9;
        this.f62642l = appCompatTextView10;
        this.f62643m = appCompatTextView11;
        this.f62644n = appCompatTextView12;
        this.f62645o = appCompatTextView13;
        this.f62646p = appCompatTextView14;
        this.f62647q = appCompatTextView15;
        this.f62648r = appCompatTextView16;
        this.f62649s = appCompatTextView17;
    }

    public static f a(View view) {
        int i11 = R$id.btn_back;
        AppCompatImageButton appCompatImageButton = (AppCompatImageButton) g4.b.a(view, i11);
        if (appCompatImageButton != null) {
            i11 = R$id.tv_app_info;
            AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
            if (appCompatTextView != null) {
                i11 = R$id.tvChannel;
                AppCompatTextView appCompatTextView2 = (AppCompatTextView) g4.b.a(view, i11);
                if (appCompatTextView2 != null) {
                    i11 = R$id.tv_content_mode;
                    AppCompatTextView appCompatTextView3 = (AppCompatTextView) g4.b.a(view, i11);
                    if (appCompatTextView3 != null) {
                        i11 = R$id.tvDebugJS;
                        AppCompatTextView appCompatTextView4 = (AppCompatTextView) g4.b.a(view, i11);
                        if (appCompatTextView4 != null) {
                            i11 = R$id.tv_fps_switch;
                            AppCompatTextView appCompatTextView5 = (AppCompatTextView) g4.b.a(view, i11);
                            if (appCompatTextView5 != null) {
                                i11 = R$id.tvHttpHost;
                                AppCompatTextView appCompatTextView6 = (AppCompatTextView) g4.b.a(view, i11);
                                if (appCompatTextView6 != null) {
                                    i11 = R$id.tvIso;
                                    AppCompatTextView appCompatTextView7 = (AppCompatTextView) g4.b.a(view, i11);
                                    if (appCompatTextView7 != null) {
                                        i11 = R$id.tvKillApp;
                                        AppCompatTextView appCompatTextView8 = (AppCompatTextView) g4.b.a(view, i11);
                                        if (appCompatTextView8 != null) {
                                            i11 = R$id.tv_lane;
                                            AppCompatTextView appCompatTextView9 = (AppCompatTextView) g4.b.a(view, i11);
                                            if (appCompatTextView9 != null) {
                                                i11 = R$id.tv_location_mock;
                                                AppCompatTextView appCompatTextView10 = (AppCompatTextView) g4.b.a(view, i11);
                                                if (appCompatTextView10 != null) {
                                                    i11 = R$id.tvMiniAppSDKTest;
                                                    AppCompatTextView appCompatTextView11 = (AppCompatTextView) g4.b.a(view, i11);
                                                    if (appCompatTextView11 != null) {
                                                        i11 = R$id.tvNotification;
                                                        AppCompatTextView appCompatTextView12 = (AppCompatTextView) g4.b.a(view, i11);
                                                        if (appCompatTextView12 != null) {
                                                            i11 = R$id.tv_select_brand;
                                                            AppCompatTextView appCompatTextView13 = (AppCompatTextView) g4.b.a(view, i11);
                                                            if (appCompatTextView13 != null) {
                                                                i11 = R$id.tvStreaming;
                                                                AppCompatTextView appCompatTextView14 = (AppCompatTextView) g4.b.a(view, i11);
                                                                if (appCompatTextView14 != null) {
                                                                    i11 = R$id.tvTestAd;
                                                                    AppCompatTextView appCompatTextView15 = (AppCompatTextView) g4.b.a(view, i11);
                                                                    if (appCompatTextView15 != null) {
                                                                        i11 = R$id.tvWebTest;
                                                                        AppCompatTextView appCompatTextView16 = (AppCompatTextView) g4.b.a(view, i11);
                                                                        if (appCompatTextView16 != null) {
                                                                            i11 = R$id.tvWidget;
                                                                            AppCompatTextView appCompatTextView17 = (AppCompatTextView) g4.b.a(view, i11);
                                                                            if (appCompatTextView17 != null) {
                                                                                return new f((LinearLayout) view, appCompatImageButton, appCompatTextView, appCompatTextView2, appCompatTextView3, appCompatTextView4, appCompatTextView5, appCompatTextView6, appCompatTextView7, appCompatTextView8, appCompatTextView9, appCompatTextView10, appCompatTextView11, appCompatTextView12, appCompatTextView13, appCompatTextView14, appCompatTextView15, appCompatTextView16, appCompatTextView17);
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

    public static f c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static f d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_laboratory, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f62631a;
    }
}
