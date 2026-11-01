package fw;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.tn.lib.view.TitleLayout;
import com.transsion.usercenter.R$id;
import com.transsion.usercenter.R$layout;

/* JADX INFO: loaded from: classes7.dex */
public final class g1 implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f62669a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppCompatImageView f62670b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TitleLayout f62671c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AppCompatTextView f62672d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AppCompatTextView f62673e;

    private g1(ConstraintLayout constraintLayout, AppCompatImageView appCompatImageView, TitleLayout titleLayout, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2) {
        this.f62669a = constraintLayout;
        this.f62670b = appCompatImageView;
        this.f62671c = titleLayout;
        this.f62672d = appCompatTextView;
        this.f62673e = appCompatTextView2;
    }

    public static g1 a(View view) {
        int i11 = R$id.iv_logo;
        AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
        if (appCompatImageView != null) {
            i11 = R$id.toolbar;
            TitleLayout titleLayout = (TitleLayout) g4.b.a(view, i11);
            if (titleLayout != null) {
                i11 = R$id.tv_privacy;
                AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
                if (appCompatTextView != null) {
                    i11 = R$id.tv_version;
                    AppCompatTextView appCompatTextView2 = (AppCompatTextView) g4.b.a(view, i11);
                    if (appCompatTextView2 != null) {
                        return new g1((ConstraintLayout) view, appCompatImageView, titleLayout, appCompatTextView, appCompatTextView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static g1 c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static g1 d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.user_activity_setting_about_us, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f62669a;
    }
}
