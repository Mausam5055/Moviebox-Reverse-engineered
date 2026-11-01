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
import com.transsnet.login.R$id;
import com.transsnet.login.R$layout;

/* JADX INFO: loaded from: classes7.dex */
public final class j implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LinearLayout f79586a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppCompatImageView f79587b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppCompatImageButton f79588c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AppCompatButton f79589d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AppCompatButton f79590e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AppCompatEditText f79591f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final LinearLayout f79592g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final AppCompatTextView f79593h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final AppCompatTextView f79594i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final AppCompatTextView f79595j;

    private j(LinearLayout linearLayout, AppCompatImageView appCompatImageView, AppCompatImageButton appCompatImageButton, AppCompatButton appCompatButton, AppCompatButton appCompatButton2, AppCompatEditText appCompatEditText, LinearLayout linearLayout2, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3) {
        this.f79586a = linearLayout;
        this.f79587b = appCompatImageView;
        this.f79588c = appCompatImageButton;
        this.f79589d = appCompatButton;
        this.f79590e = appCompatButton2;
        this.f79591f = appCompatEditText;
        this.f79592g = linearLayout2;
        this.f79593h = appCompatTextView;
        this.f79594i = appCompatTextView2;
        this.f79595j = appCompatTextView3;
    }

    public static j a(View view) {
        int i11 = R$id.btn_back;
        AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
        if (appCompatImageView != null) {
            i11 = R$id.btn_clear;
            AppCompatImageButton appCompatImageButton = (AppCompatImageButton) g4.b.a(view, i11);
            if (appCompatImageButton != null) {
                i11 = R$id.btn_email;
                AppCompatButton appCompatButton = (AppCompatButton) g4.b.a(view, i11);
                if (appCompatButton != null) {
                    i11 = R$id.btn_login;
                    AppCompatButton appCompatButton2 = (AppCompatButton) g4.b.a(view, i11);
                    if (appCompatButton2 != null) {
                        i11 = R$id.et_phone;
                        AppCompatEditText appCompatEditText = (AppCompatEditText) g4.b.a(view, i11);
                        if (appCompatEditText != null) {
                            i11 = R$id.ll_input;
                            LinearLayout linearLayout = (LinearLayout) g4.b.a(view, i11);
                            if (linearLayout != null) {
                                i11 = R$id.tv_phone_country_code;
                                AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
                                if (appCompatTextView != null) {
                                    i11 = R$id.tv_privacy;
                                    AppCompatTextView appCompatTextView2 = (AppCompatTextView) g4.b.a(view, i11);
                                    if (appCompatTextView2 != null) {
                                        i11 = R$id.tv_tips;
                                        AppCompatTextView appCompatTextView3 = (AppCompatTextView) g4.b.a(view, i11);
                                        if (appCompatTextView3 != null) {
                                            return new j((LinearLayout) view, appCompatImageView, appCompatImageButton, appCompatButton, appCompatButton2, appCompatEditText, linearLayout, appCompatTextView, appCompatTextView2, appCompatTextView3);
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

    public static j c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static j d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.login_fragment_phone, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f79586a;
    }
}
