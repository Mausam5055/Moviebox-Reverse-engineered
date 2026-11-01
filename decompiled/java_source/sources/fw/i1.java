package fw;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatButton;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.tn.lib.view.TitleLayout;
import com.transsion.usercenter.R$id;
import com.transsion.usercenter.R$layout;

/* JADX INFO: loaded from: classes7.dex */
public final class i1 implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f62693a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppCompatButton f62694b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppCompatEditText f62695c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AppCompatEditText f62696d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AppCompatImageView f62697e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AppCompatImageView f62698f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final LinearLayout f62699g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final TitleLayout f62700h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final AppCompatTextView f62701i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final AppCompatTextView f62702j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final AppCompatTextView f62703k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final AppCompatTextView f62704l;

    private i1(ConstraintLayout constraintLayout, AppCompatButton appCompatButton, AppCompatEditText appCompatEditText, AppCompatEditText appCompatEditText2, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, LinearLayout linearLayout, TitleLayout titleLayout, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, AppCompatTextView appCompatTextView4) {
        this.f62693a = constraintLayout;
        this.f62694b = appCompatButton;
        this.f62695c = appCompatEditText;
        this.f62696d = appCompatEditText2;
        this.f62697e = appCompatImageView;
        this.f62698f = appCompatImageView2;
        this.f62699g = linearLayout;
        this.f62700h = titleLayout;
        this.f62701i = appCompatTextView;
        this.f62702j = appCompatTextView2;
        this.f62703k = appCompatTextView3;
        this.f62704l = appCompatTextView4;
    }

    public static i1 a(View view) {
        int i11 = R$id.btn_submit;
        AppCompatButton appCompatButton = (AppCompatButton) g4.b.a(view, i11);
        if (appCompatButton != null) {
            i11 = R$id.et_desc;
            AppCompatEditText appCompatEditText = (AppCompatEditText) g4.b.a(view, i11);
            if (appCompatEditText != null) {
                i11 = R$id.et_phone;
                AppCompatEditText appCompatEditText2 = (AppCompatEditText) g4.b.a(view, i11);
                if (appCompatEditText2 != null) {
                    i11 = R$id.img_background;
                    AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
                    if (appCompatImageView != null) {
                        i11 = R$id.iv_add_image;
                        AppCompatImageView appCompatImageView2 = (AppCompatImageView) g4.b.a(view, i11);
                        if (appCompatImageView2 != null) {
                            i11 = R$id.ll_input;
                            LinearLayout linearLayout = (LinearLayout) g4.b.a(view, i11);
                            if (linearLayout != null) {
                                i11 = R$id.toolbar;
                                TitleLayout titleLayout = (TitleLayout) g4.b.a(view, i11);
                                if (titleLayout != null) {
                                    i11 = R$id.tv_desc_num;
                                    AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
                                    if (appCompatTextView != null) {
                                        i11 = R$id.tv_phone_country_code;
                                        AppCompatTextView appCompatTextView2 = (AppCompatTextView) g4.b.a(view, i11);
                                        if (appCompatTextView2 != null) {
                                            i11 = R$id.tv_title_desc;
                                            AppCompatTextView appCompatTextView3 = (AppCompatTextView) g4.b.a(view, i11);
                                            if (appCompatTextView3 != null) {
                                                i11 = R$id.whatsapp_hint;
                                                AppCompatTextView appCompatTextView4 = (AppCompatTextView) g4.b.a(view, i11);
                                                if (appCompatTextView4 != null) {
                                                    return new i1((ConstraintLayout) view, appCompatButton, appCompatEditText, appCompatEditText2, appCompatImageView, appCompatImageView2, linearLayout, titleLayout, appCompatTextView, appCompatTextView2, appCompatTextView3, appCompatTextView4);
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

    public static i1 c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static i1 d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.user_activity_setting_feedback, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f62693a;
    }
}
