package fw;

import android.view.View;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import com.transsion.baseui.widget.EditTextWithClear;
import com.transsion.usercenter.R$id;

/* JADX INFO: loaded from: classes7.dex */
public final class r implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LinearLayout f62881a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppCompatTextView f62882b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppCompatTextView f62883c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final EditTextWithClear f62884d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AppCompatTextView f62885e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AppCompatTextView f62886f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final AppCompatTextView f62887g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final AppCompatTextView f62888h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final AppCompatTextView f62889i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final AppCompatTextView f62890j;

    private r(LinearLayout linearLayout, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, EditTextWithClear editTextWithClear, AppCompatTextView appCompatTextView3, AppCompatTextView appCompatTextView4, AppCompatTextView appCompatTextView5, AppCompatTextView appCompatTextView6, AppCompatTextView appCompatTextView7, AppCompatTextView appCompatTextView8) {
        this.f62881a = linearLayout;
        this.f62882b = appCompatTextView;
        this.f62883c = appCompatTextView2;
        this.f62884d = editTextWithClear;
        this.f62885e = appCompatTextView3;
        this.f62886f = appCompatTextView4;
        this.f62887g = appCompatTextView5;
        this.f62888h = appCompatTextView6;
        this.f62889i = appCompatTextView7;
        this.f62890j = appCompatTextView8;
    }

    public static r a(View view) {
        int i11 = R$id.btn_close;
        AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
        if (appCompatTextView != null) {
            i11 = R$id.btn_custom_brand;
            AppCompatTextView appCompatTextView2 = (AppCompatTextView) g4.b.a(view, i11);
            if (appCompatTextView2 != null) {
                i11 = R$id.et_custom_brand;
                EditTextWithClear editTextWithClear = (EditTextWithClear) g4.b.a(view, i11);
                if (editTextWithClear != null) {
                    i11 = R$id.tv_lane_cur;
                    AppCompatTextView appCompatTextView3 = (AppCompatTextView) g4.b.a(view, i11);
                    if (appCompatTextView3 != null) {
                        i11 = R$id.tv_lane_infinix;
                        AppCompatTextView appCompatTextView4 = (AppCompatTextView) g4.b.a(view, i11);
                        if (appCompatTextView4 != null) {
                            i11 = R$id.tv_lane_itel;
                            AppCompatTextView appCompatTextView5 = (AppCompatTextView) g4.b.a(view, i11);
                            if (appCompatTextView5 != null) {
                                i11 = R$id.tv_lane_samsung;
                                AppCompatTextView appCompatTextView6 = (AppCompatTextView) g4.b.a(view, i11);
                                if (appCompatTextView6 != null) {
                                    i11 = R$id.tv_lane_tecno;
                                    AppCompatTextView appCompatTextView7 = (AppCompatTextView) g4.b.a(view, i11);
                                    if (appCompatTextView7 != null) {
                                        i11 = R$id.tv_reset;
                                        AppCompatTextView appCompatTextView8 = (AppCompatTextView) g4.b.a(view, i11);
                                        if (appCompatTextView8 != null) {
                                            return new r((LinearLayout) view, appCompatTextView, appCompatTextView2, editTextWithClear, appCompatTextView3, appCompatTextView4, appCompatTextView5, appCompatTextView6, appCompatTextView7, appCompatTextView8);
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
        return this.f62881a;
    }
}
