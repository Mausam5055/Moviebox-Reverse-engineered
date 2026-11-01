package fw;

import android.view.View;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import com.transsion.baseui.widget.EditTextWithClear;
import com.transsion.usercenter.R$id;

/* JADX INFO: loaded from: classes7.dex */
public final class y implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LinearLayout f62990a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppCompatTextView f62991b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppCompatTextView f62992c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final EditTextWithClear f62993d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AppCompatTextView f62994e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AppCompatTextView f62995f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final AppCompatTextView f62996g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final AppCompatTextView f62997h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final AppCompatTextView f62998i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final AppCompatTextView f62999j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final AppCompatTextView f63000k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final AppCompatTextView f63001l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final AppCompatTextView f63002m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final AppCompatTextView f63003n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final AppCompatTextView f63004o;

    private y(LinearLayout linearLayout, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, EditTextWithClear editTextWithClear, AppCompatTextView appCompatTextView3, AppCompatTextView appCompatTextView4, AppCompatTextView appCompatTextView5, AppCompatTextView appCompatTextView6, AppCompatTextView appCompatTextView7, AppCompatTextView appCompatTextView8, AppCompatTextView appCompatTextView9, AppCompatTextView appCompatTextView10, AppCompatTextView appCompatTextView11, AppCompatTextView appCompatTextView12, AppCompatTextView appCompatTextView13) {
        this.f62990a = linearLayout;
        this.f62991b = appCompatTextView;
        this.f62992c = appCompatTextView2;
        this.f62993d = editTextWithClear;
        this.f62994e = appCompatTextView3;
        this.f62995f = appCompatTextView4;
        this.f62996g = appCompatTextView5;
        this.f62997h = appCompatTextView6;
        this.f62998i = appCompatTextView7;
        this.f62999j = appCompatTextView8;
        this.f63000k = appCompatTextView9;
        this.f63001l = appCompatTextView10;
        this.f63002m = appCompatTextView11;
        this.f63003n = appCompatTextView12;
        this.f63004o = appCompatTextView13;
    }

    public static y a(View view) {
        int i11 = R$id.btn_close;
        AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
        if (appCompatTextView != null) {
            i11 = R$id.btn_custom_lane;
            AppCompatTextView appCompatTextView2 = (AppCompatTextView) g4.b.a(view, i11);
            if (appCompatTextView2 != null) {
                i11 = R$id.et_custom_lane;
                EditTextWithClear editTextWithClear = (EditTextWithClear) g4.b.a(view, i11);
                if (editTextWithClear != null) {
                    i11 = R$id.tv_lane_1;
                    AppCompatTextView appCompatTextView3 = (AppCompatTextView) g4.b.a(view, i11);
                    if (appCompatTextView3 != null) {
                        i11 = R$id.tv_lane_2;
                        AppCompatTextView appCompatTextView4 = (AppCompatTextView) g4.b.a(view, i11);
                        if (appCompatTextView4 != null) {
                            i11 = R$id.tv_lane_3;
                            AppCompatTextView appCompatTextView5 = (AppCompatTextView) g4.b.a(view, i11);
                            if (appCompatTextView5 != null) {
                                i11 = R$id.tv_lane_4;
                                AppCompatTextView appCompatTextView6 = (AppCompatTextView) g4.b.a(view, i11);
                                if (appCompatTextView6 != null) {
                                    i11 = R$id.tv_lane_5;
                                    AppCompatTextView appCompatTextView7 = (AppCompatTextView) g4.b.a(view, i11);
                                    if (appCompatTextView7 != null) {
                                        i11 = R$id.tv_lane_6;
                                        AppCompatTextView appCompatTextView8 = (AppCompatTextView) g4.b.a(view, i11);
                                        if (appCompatTextView8 != null) {
                                            i11 = R$id.tv_lane_7;
                                            AppCompatTextView appCompatTextView9 = (AppCompatTextView) g4.b.a(view, i11);
                                            if (appCompatTextView9 != null) {
                                                i11 = R$id.tv_lane_8;
                                                AppCompatTextView appCompatTextView10 = (AppCompatTextView) g4.b.a(view, i11);
                                                if (appCompatTextView10 != null) {
                                                    i11 = R$id.tv_lane_9;
                                                    AppCompatTextView appCompatTextView11 = (AppCompatTextView) g4.b.a(view, i11);
                                                    if (appCompatTextView11 != null) {
                                                        i11 = R$id.tv_lane_cur;
                                                        AppCompatTextView appCompatTextView12 = (AppCompatTextView) g4.b.a(view, i11);
                                                        if (appCompatTextView12 != null) {
                                                            i11 = R$id.tv_reset;
                                                            AppCompatTextView appCompatTextView13 = (AppCompatTextView) g4.b.a(view, i11);
                                                            if (appCompatTextView13 != null) {
                                                                return new y((LinearLayout) view, appCompatTextView, appCompatTextView2, editTextWithClear, appCompatTextView3, appCompatTextView4, appCompatTextView5, appCompatTextView6, appCompatTextView7, appCompatTextView8, appCompatTextView9, appCompatTextView10, appCompatTextView11, appCompatTextView12, appCompatTextView13);
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
    public LinearLayout getRoot() {
        return this.f62990a;
    }
}
