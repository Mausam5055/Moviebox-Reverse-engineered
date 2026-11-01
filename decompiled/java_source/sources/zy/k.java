package zy;

import android.view.View;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsnet.login.R$id;

/* JADX INFO: loaded from: classes7.dex */
public final class k implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f79596a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppCompatEditText f79597b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppCompatImageView f79598c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final View f79599d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AppCompatTextView f79600e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AppCompatTextView f79601f;

    private k(ConstraintLayout constraintLayout, AppCompatEditText appCompatEditText, AppCompatImageView appCompatImageView, View view, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2) {
        this.f79596a = constraintLayout;
        this.f79597b = appCompatEditText;
        this.f79598c = appCompatImageView;
        this.f79599d = view;
        this.f79600e = appCompatTextView;
        this.f79601f = appCompatTextView2;
    }

    public static k a(View view) {
        View viewA;
        int i11 = R$id.et_code;
        AppCompatEditText appCompatEditText = (AppCompatEditText) g4.b.a(view, i11);
        if (appCompatEditText != null) {
            i11 = R$id.iv_help;
            AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
            if (appCompatImageView != null && (viewA = g4.b.a(view, (i11 = R$id.line))) != null) {
                i11 = R$id.tv_hava_invitation_code;
                AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
                if (appCompatTextView != null) {
                    i11 = R$id.tv_tips;
                    AppCompatTextView appCompatTextView2 = (AppCompatTextView) g4.b.a(view, i11);
                    if (appCompatTextView2 != null) {
                        return new k((ConstraintLayout) view, appCompatEditText, appCompatImageView, viewA, appCompatTextView, appCompatTextView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f79596a;
    }
}
