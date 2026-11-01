package zy;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatButton;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.appcompat.widget.AppCompatImageButton;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsnet.login.R$id;
import com.transsnet.login.R$layout;
import com.transsnet.login.phone.widget.LoginPwdEditText;

/* JADX INFO: loaded from: classes7.dex */
public final class g implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LinearLayout f79558a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppCompatImageView f79559b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppCompatImageButton f79560c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AppCompatTextView f79561d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AppCompatImageView f79562e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AppCompatButton f79563f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final AppCompatEditText f79564g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final LoginPwdEditText f79565h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final AppCompatImageView f79566i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final ConstraintLayout f79567j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final AppCompatTextView f79568k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final AppCompatTextView f79569l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final AppCompatTextView f79570m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final AppCompatTextView f79571n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final View f79572o;

    private g(LinearLayout linearLayout, AppCompatImageView appCompatImageView, AppCompatImageButton appCompatImageButton, AppCompatTextView appCompatTextView, AppCompatImageView appCompatImageView2, AppCompatButton appCompatButton, AppCompatEditText appCompatEditText, LoginPwdEditText loginPwdEditText, AppCompatImageView appCompatImageView3, ConstraintLayout constraintLayout, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, AppCompatTextView appCompatTextView4, AppCompatTextView appCompatTextView5, View view) {
        this.f79558a = linearLayout;
        this.f79559b = appCompatImageView;
        this.f79560c = appCompatImageButton;
        this.f79561d = appCompatTextView;
        this.f79562e = appCompatImageView2;
        this.f79563f = appCompatButton;
        this.f79564g = appCompatEditText;
        this.f79565h = loginPwdEditText;
        this.f79566i = appCompatImageView3;
        this.f79567j = constraintLayout;
        this.f79568k = appCompatTextView2;
        this.f79569l = appCompatTextView3;
        this.f79570m = appCompatTextView4;
        this.f79571n = appCompatTextView5;
        this.f79572o = view;
    }

    public static g a(View view) {
        View viewA;
        int i11 = R$id.btn_back;
        AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
        if (appCompatImageView != null) {
            i11 = R$id.btn_clear;
            AppCompatImageButton appCompatImageButton = (AppCompatImageButton) g4.b.a(view, i11);
            if (appCompatImageButton != null) {
                i11 = R$id.btn_email;
                AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
                if (appCompatTextView != null) {
                    i11 = R$id.btn_eye;
                    AppCompatImageView appCompatImageView2 = (AppCompatImageView) g4.b.a(view, i11);
                    if (appCompatImageView2 != null) {
                        i11 = R$id.btn_login;
                        AppCompatButton appCompatButton = (AppCompatButton) g4.b.a(view, i11);
                        if (appCompatButton != null) {
                            i11 = R$id.et_phone;
                            AppCompatEditText appCompatEditText = (AppCompatEditText) g4.b.a(view, i11);
                            if (appCompatEditText != null) {
                                i11 = R$id.et_pwd;
                                LoginPwdEditText loginPwdEditText = (LoginPwdEditText) g4.b.a(view, i11);
                                if (loginPwdEditText != null) {
                                    i11 = R$id.iv_arrow;
                                    AppCompatImageView appCompatImageView3 = (AppCompatImageView) g4.b.a(view, i11);
                                    if (appCompatImageView3 != null) {
                                        i11 = R$id.ll_input;
                                        ConstraintLayout constraintLayout = (ConstraintLayout) g4.b.a(view, i11);
                                        if (constraintLayout != null) {
                                            i11 = R$id.tv_forget_pwd;
                                            AppCompatTextView appCompatTextView2 = (AppCompatTextView) g4.b.a(view, i11);
                                            if (appCompatTextView2 != null) {
                                                i11 = R$id.tv_phone_country_code;
                                                AppCompatTextView appCompatTextView3 = (AppCompatTextView) g4.b.a(view, i11);
                                                if (appCompatTextView3 != null) {
                                                    i11 = R$id.tv_privacy;
                                                    AppCompatTextView appCompatTextView4 = (AppCompatTextView) g4.b.a(view, i11);
                                                    if (appCompatTextView4 != null) {
                                                        i11 = R$id.tv_tips;
                                                        AppCompatTextView appCompatTextView5 = (AppCompatTextView) g4.b.a(view, i11);
                                                        if (appCompatTextView5 != null && (viewA = g4.b.a(view, (i11 = R$id.v_line))) != null) {
                                                            return new g((LinearLayout) view, appCompatImageView, appCompatImageButton, appCompatTextView, appCompatImageView2, appCompatButton, appCompatEditText, loginPwdEditText, appCompatImageView3, constraintLayout, appCompatTextView2, appCompatTextView3, appCompatTextView4, appCompatTextView5, viewA);
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

    public static g c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static g d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.login_activity_phone_pwd, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f79558a;
    }
}
