package fw;

import android.view.View;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import com.transsion.baseui.widget.EditTextWithClear;
import com.transsion.usercenter.R$id;

/* JADX INFO: loaded from: classes7.dex */
public final class w implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LinearLayout f62956a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppCompatTextView f62957b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppCompatTextView f62958c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final EditTextWithClear f62959d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AppCompatTextView f62960e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AppCompatTextView f62961f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final AppCompatTextView f62962g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final AppCompatTextView f62963h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final AppCompatTextView f62964i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final AppCompatTextView f62965j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final AppCompatTextView f62966k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final AppCompatTextView f62967l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final AppCompatTextView f62968m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final AppCompatTextView f62969n;

    private w(LinearLayout linearLayout, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, EditTextWithClear editTextWithClear, AppCompatTextView appCompatTextView3, AppCompatTextView appCompatTextView4, AppCompatTextView appCompatTextView5, AppCompatTextView appCompatTextView6, AppCompatTextView appCompatTextView7, AppCompatTextView appCompatTextView8, AppCompatTextView appCompatTextView9, AppCompatTextView appCompatTextView10, AppCompatTextView appCompatTextView11, AppCompatTextView appCompatTextView12) {
        this.f62956a = linearLayout;
        this.f62957b = appCompatTextView;
        this.f62958c = appCompatTextView2;
        this.f62959d = editTextWithClear;
        this.f62960e = appCompatTextView3;
        this.f62961f = appCompatTextView4;
        this.f62962g = appCompatTextView5;
        this.f62963h = appCompatTextView6;
        this.f62964i = appCompatTextView7;
        this.f62965j = appCompatTextView8;
        this.f62966k = appCompatTextView9;
        this.f62967l = appCompatTextView10;
        this.f62968m = appCompatTextView11;
        this.f62969n = appCompatTextView12;
    }

    public static w a(View view) {
        int i11 = R$id.btn_close;
        AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
        if (appCompatTextView != null) {
            i11 = R$id.btn_custom_host;
            AppCompatTextView appCompatTextView2 = (AppCompatTextView) g4.b.a(view, i11);
            if (appCompatTextView2 != null) {
                i11 = R$id.et_custom_host;
                EditTextWithClear editTextWithClear = (EditTextWithClear) g4.b.a(view, i11);
                if (editTextWithClear != null) {
                    i11 = R$id.tv_host_1;
                    AppCompatTextView appCompatTextView3 = (AppCompatTextView) g4.b.a(view, i11);
                    if (appCompatTextView3 != null) {
                        i11 = R$id.tv_host_2;
                        AppCompatTextView appCompatTextView4 = (AppCompatTextView) g4.b.a(view, i11);
                        if (appCompatTextView4 != null) {
                            i11 = R$id.tv_host_3;
                            AppCompatTextView appCompatTextView5 = (AppCompatTextView) g4.b.a(view, i11);
                            if (appCompatTextView5 != null) {
                                i11 = R$id.tv_host_4;
                                AppCompatTextView appCompatTextView6 = (AppCompatTextView) g4.b.a(view, i11);
                                if (appCompatTextView6 != null) {
                                    i11 = R$id.tv_host_5;
                                    AppCompatTextView appCompatTextView7 = (AppCompatTextView) g4.b.a(view, i11);
                                    if (appCompatTextView7 != null) {
                                        i11 = R$id.tv_host_6;
                                        AppCompatTextView appCompatTextView8 = (AppCompatTextView) g4.b.a(view, i11);
                                        if (appCompatTextView8 != null) {
                                            i11 = R$id.tv_host_7;
                                            AppCompatTextView appCompatTextView9 = (AppCompatTextView) g4.b.a(view, i11);
                                            if (appCompatTextView9 != null) {
                                                i11 = R$id.tv_host_8;
                                                AppCompatTextView appCompatTextView10 = (AppCompatTextView) g4.b.a(view, i11);
                                                if (appCompatTextView10 != null) {
                                                    i11 = R$id.tv_host_cur;
                                                    AppCompatTextView appCompatTextView11 = (AppCompatTextView) g4.b.a(view, i11);
                                                    if (appCompatTextView11 != null) {
                                                        i11 = R$id.tv_reset;
                                                        AppCompatTextView appCompatTextView12 = (AppCompatTextView) g4.b.a(view, i11);
                                                        if (appCompatTextView12 != null) {
                                                            return new w((LinearLayout) view, appCompatTextView, appCompatTextView2, editTextWithClear, appCompatTextView3, appCompatTextView4, appCompatTextView5, appCompatTextView6, appCompatTextView7, appCompatTextView8, appCompatTextView9, appCompatTextView10, appCompatTextView11, appCompatTextView12);
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
        return this.f62956a;
    }
}
