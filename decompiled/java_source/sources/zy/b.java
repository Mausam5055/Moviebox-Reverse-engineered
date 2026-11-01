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
public final class b implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LinearLayout f79515a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppCompatImageButton f79516b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppCompatButton f79517c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AppCompatImageView f79518d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AppCompatEditText f79519e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final LinearLayout f79520f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final l f79521g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final AppCompatTextView f79522h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final AppCompatTextView f79523i;

    private b(LinearLayout linearLayout, AppCompatImageButton appCompatImageButton, AppCompatButton appCompatButton, AppCompatImageView appCompatImageView, AppCompatEditText appCompatEditText, LinearLayout linearLayout2, l lVar, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2) {
        this.f79515a = linearLayout;
        this.f79516b = appCompatImageButton;
        this.f79517c = appCompatButton;
        this.f79518d = appCompatImageView;
        this.f79519e = appCompatEditText;
        this.f79520f = linearLayout2;
        this.f79521g = lVar;
        this.f79522h = appCompatTextView;
        this.f79523i = appCompatTextView2;
    }

    public static b a(View view) {
        View viewA;
        int i11 = R$id.btn_clear;
        AppCompatImageButton appCompatImageButton = (AppCompatImageButton) g4.b.a(view, i11);
        if (appCompatImageButton != null) {
            i11 = R$id.btn_next;
            AppCompatButton appCompatButton = (AppCompatButton) g4.b.a(view, i11);
            if (appCompatButton != null) {
                i11 = R$id.btn_phone_login;
                AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
                if (appCompatImageView != null) {
                    i11 = R$id.et_email;
                    AppCompatEditText appCompatEditText = (AppCompatEditText) g4.b.a(view, i11);
                    if (appCompatEditText != null) {
                        i11 = R$id.ll_phone_login_entry;
                        LinearLayout linearLayout = (LinearLayout) g4.b.a(view, i11);
                        if (linearLayout != null && (viewA = g4.b.a(view, (i11 = R$id.title))) != null) {
                            l lVarA = l.a(viewA);
                            i11 = R$id.tv_privacy;
                            AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
                            if (appCompatTextView != null) {
                                i11 = R$id.tv_tips;
                                AppCompatTextView appCompatTextView2 = (AppCompatTextView) g4.b.a(view, i11);
                                if (appCompatTextView2 != null) {
                                    return new b((LinearLayout) view, appCompatImageButton, appCompatButton, appCompatImageView, appCompatEditText, linearLayout, lVarA, appCompatTextView, appCompatTextView2);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static b c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static b d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.login_activity_email, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f79515a;
    }
}
