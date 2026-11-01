package zy;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatButton;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import com.transsnet.login.R$id;
import com.transsnet.login.R$layout;
import com.transsnet.login.phone.widget.LoginPwdEditText;

/* JADX INFO: loaded from: classes7.dex */
public final class h implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LinearLayout f79573a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppCompatImageView f79574b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppCompatButton f79575c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final LoginPwdEditText f79576d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final l f79577e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AppCompatTextView f79578f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final AppCompatTextView f79579g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ViewStub f79580h;

    private h(LinearLayout linearLayout, AppCompatImageView appCompatImageView, AppCompatButton appCompatButton, LoginPwdEditText loginPwdEditText, l lVar, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, ViewStub viewStub) {
        this.f79573a = linearLayout;
        this.f79574b = appCompatImageView;
        this.f79575c = appCompatButton;
        this.f79576d = loginPwdEditText;
        this.f79577e = lVar;
        this.f79578f = appCompatTextView;
        this.f79579g = appCompatTextView2;
        this.f79580h = viewStub;
    }

    public static h a(View view) {
        View viewA;
        int i11 = R$id.btn_eye;
        AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
        if (appCompatImageView != null) {
            i11 = R$id.btn_login;
            AppCompatButton appCompatButton = (AppCompatButton) g4.b.a(view, i11);
            if (appCompatButton != null) {
                i11 = R$id.et_pwd;
                LoginPwdEditText loginPwdEditText = (LoginPwdEditText) g4.b.a(view, i11);
                if (loginPwdEditText != null && (viewA = g4.b.a(view, (i11 = R$id.title))) != null) {
                    l lVarA = l.a(viewA);
                    i11 = R$id.tv_tips;
                    AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
                    if (appCompatTextView != null) {
                        i11 = R$id.tv_welcome;
                        AppCompatTextView appCompatTextView2 = (AppCompatTextView) g4.b.a(view, i11);
                        if (appCompatTextView2 != null) {
                            i11 = R$id.vs_invitation_code;
                            ViewStub viewStub = (ViewStub) g4.b.a(view, i11);
                            if (viewStub != null) {
                                return new h((LinearLayout) view, appCompatImageView, appCompatButton, loginPwdEditText, lVarA, appCompatTextView, appCompatTextView2, viewStub);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static h c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static h d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.login_activity_phone_set_pwd, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f79573a;
    }
}
