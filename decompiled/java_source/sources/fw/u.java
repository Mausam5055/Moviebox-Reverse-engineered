package fw;

import android.view.View;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import com.transsion.baseui.widget.EditTextWithClear;
import com.transsion.usercenter.R$id;

/* JADX INFO: loaded from: classes7.dex */
public final class u implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LinearLayout f62936a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppCompatTextView f62937b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppCompatTextView f62938c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final EditTextWithClear f62939d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AppCompatTextView f62940e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AppCompatTextView f62941f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final AppCompatTextView f62942g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final AppCompatTextView f62943h;

    private u(LinearLayout linearLayout, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, EditTextWithClear editTextWithClear, AppCompatTextView appCompatTextView3, AppCompatTextView appCompatTextView4, AppCompatTextView appCompatTextView5, AppCompatTextView appCompatTextView6) {
        this.f62936a = linearLayout;
        this.f62937b = appCompatTextView;
        this.f62938c = appCompatTextView2;
        this.f62939d = editTextWithClear;
        this.f62940e = appCompatTextView3;
        this.f62941f = appCompatTextView4;
        this.f62942g = appCompatTextView5;
        this.f62943h = appCompatTextView6;
    }

    public static u a(View view) {
        int i11 = R$id.btn_close;
        AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
        if (appCompatTextView != null) {
            i11 = R$id.btn_custom_lane;
            AppCompatTextView appCompatTextView2 = (AppCompatTextView) g4.b.a(view, i11);
            if (appCompatTextView2 != null) {
                i11 = R$id.et_custom_cn;
                EditTextWithClear editTextWithClear = (EditTextWithClear) g4.b.a(view, i11);
                if (editTextWithClear != null) {
                    i11 = R$id.tv_lane_cur;
                    AppCompatTextView appCompatTextView3 = (AppCompatTextView) g4.b.a(view, i11);
                    if (appCompatTextView3 != null) {
                        i11 = R$id.tv_lane_ke;
                        AppCompatTextView appCompatTextView4 = (AppCompatTextView) g4.b.a(view, i11);
                        if (appCompatTextView4 != null) {
                            i11 = R$id.tv_lane_ng;
                            AppCompatTextView appCompatTextView5 = (AppCompatTextView) g4.b.a(view, i11);
                            if (appCompatTextView5 != null) {
                                i11 = R$id.tv_reset;
                                AppCompatTextView appCompatTextView6 = (AppCompatTextView) g4.b.a(view, i11);
                                if (appCompatTextView6 != null) {
                                    return new u((LinearLayout) view, appCompatTextView, appCompatTextView2, editTextWithClear, appCompatTextView3, appCompatTextView4, appCompatTextView5, appCompatTextView6);
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
        return this.f62936a;
    }
}
