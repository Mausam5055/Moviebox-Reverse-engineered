package zy;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatButton;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.appcompat.widget.AppCompatImageButton;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import com.transsnet.login.R$id;
import com.transsnet.login.R$layout;
import com.transsnet.login.phone.widget.LoginPwdEditText;

/* JADX INFO: loaded from: classes7.dex */
public final class c implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LinearLayout f79524a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppCompatImageView f79525b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppCompatImageButton f79526c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AppCompatImageView f79527d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AppCompatButton f79528e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AppCompatTextView f79529f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final AppCompatEditText f79530g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final LoginPwdEditText f79531h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final FrameLayout f79532i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final AppCompatTextView f79533j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final AppCompatTextView f79534k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final AppCompatTextView f79535l;

    private c(LinearLayout linearLayout, AppCompatImageView appCompatImageView, AppCompatImageButton appCompatImageButton, AppCompatImageView appCompatImageView2, AppCompatButton appCompatButton, AppCompatTextView appCompatTextView, AppCompatEditText appCompatEditText, LoginPwdEditText loginPwdEditText, FrameLayout frameLayout, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, AppCompatTextView appCompatTextView4) {
        this.f79524a = linearLayout;
        this.f79525b = appCompatImageView;
        this.f79526c = appCompatImageButton;
        this.f79527d = appCompatImageView2;
        this.f79528e = appCompatButton;
        this.f79529f = appCompatTextView;
        this.f79530g = appCompatEditText;
        this.f79531h = loginPwdEditText;
        this.f79532i = frameLayout;
        this.f79533j = appCompatTextView2;
        this.f79534k = appCompatTextView3;
        this.f79535l = appCompatTextView4;
    }

    public static c a(View view) {
        int i11 = R$id.btn_back;
        AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
        if (appCompatImageView != null) {
            i11 = R$id.btn_clear;
            AppCompatImageButton appCompatImageButton = (AppCompatImageButton) g4.b.a(view, i11);
            if (appCompatImageButton != null) {
                i11 = R$id.btn_eye;
                AppCompatImageView appCompatImageView2 = (AppCompatImageView) g4.b.a(view, i11);
                if (appCompatImageView2 != null) {
                    i11 = R$id.btn_login;
                    AppCompatButton appCompatButton = (AppCompatButton) g4.b.a(view, i11);
                    if (appCompatButton != null) {
                        i11 = R$id.btn_phone_login;
                        AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
                        if (appCompatTextView != null) {
                            i11 = R$id.et_mail;
                            AppCompatEditText appCompatEditText = (AppCompatEditText) g4.b.a(view, i11);
                            if (appCompatEditText != null) {
                                i11 = R$id.et_pwd;
                                LoginPwdEditText loginPwdEditText = (LoginPwdEditText) g4.b.a(view, i11);
                                if (loginPwdEditText != null) {
                                    i11 = R$id.ll_input;
                                    FrameLayout frameLayout = (FrameLayout) g4.b.a(view, i11);
                                    if (frameLayout != null) {
                                        i11 = R$id.tv_forget_pwd;
                                        AppCompatTextView appCompatTextView2 = (AppCompatTextView) g4.b.a(view, i11);
                                        if (appCompatTextView2 != null) {
                                            i11 = R$id.tv_privacy;
                                            AppCompatTextView appCompatTextView3 = (AppCompatTextView) g4.b.a(view, i11);
                                            if (appCompatTextView3 != null) {
                                                i11 = R$id.tv_tips;
                                                AppCompatTextView appCompatTextView4 = (AppCompatTextView) g4.b.a(view, i11);
                                                if (appCompatTextView4 != null) {
                                                    return new c((LinearLayout) view, appCompatImageView, appCompatImageButton, appCompatImageView2, appCompatButton, appCompatTextView, appCompatEditText, loginPwdEditText, frameLayout, appCompatTextView2, appCompatTextView3, appCompatTextView4);
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

    public static c c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static c d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.login_activity_email_pwd, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f79524a;
    }
}
