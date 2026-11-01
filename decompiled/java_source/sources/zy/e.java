package zy;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import com.transsnet.login.R$id;
import com.transsnet.login.R$layout;

/* JADX INFO: loaded from: classes7.dex */
public final class e implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LinearLayout f79540a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FrameLayout f79541b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final FrameLayout f79542c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AppCompatImageView f79543d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final LinearLayout f79544e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AppCompatTextView f79545f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final AppCompatTextView f79546g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final AppCompatTextView f79547h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final AppCompatTextView f79548i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final View f79549j;

    private e(LinearLayout linearLayout, FrameLayout frameLayout, FrameLayout frameLayout2, AppCompatImageView appCompatImageView, LinearLayout linearLayout2, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, AppCompatTextView appCompatTextView4, View view) {
        this.f79540a = linearLayout;
        this.f79541b = frameLayout;
        this.f79542c = frameLayout2;
        this.f79543d = appCompatImageView;
        this.f79544e = linearLayout2;
        this.f79545f = appCompatTextView;
        this.f79546g = appCompatTextView2;
        this.f79547h = appCompatTextView3;
        this.f79548i = appCompatTextView4;
        this.f79549j = view;
    }

    public static e a(View view) {
        View viewA;
        int i11 = R$id.btn_email_login;
        FrameLayout frameLayout = (FrameLayout) g4.b.a(view, i11);
        if (frameLayout != null) {
            i11 = R$id.btn_gp_login;
            FrameLayout frameLayout2 = (FrameLayout) g4.b.a(view, i11);
            if (frameLayout2 != null) {
                i11 = R$id.ll_close;
                AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
                if (appCompatImageView != null) {
                    i11 = R$id.rl_login;
                    LinearLayout linearLayout = (LinearLayout) g4.b.a(view, i11);
                    if (linearLayout != null) {
                        i11 = R$id.tv_email_login_text;
                        AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
                        if (appCompatTextView != null) {
                            i11 = R$id.tv_log_in;
                            AppCompatTextView appCompatTextView2 = (AppCompatTextView) g4.b.a(view, i11);
                            if (appCompatTextView2 != null) {
                                i11 = R$id.tv_privacy;
                                AppCompatTextView appCompatTextView3 = (AppCompatTextView) g4.b.a(view, i11);
                                if (appCompatTextView3 != null) {
                                    i11 = R$id.tv_title;
                                    AppCompatTextView appCompatTextView4 = (AppCompatTextView) g4.b.a(view, i11);
                                    if (appCompatTextView4 != null && (viewA = g4.b.a(view, (i11 = R$id.view_blank))) != null) {
                                        return new e((LinearLayout) view, frameLayout, frameLayout2, appCompatImageView, linearLayout, appCompatTextView, appCompatTextView2, appCompatTextView3, appCompatTextView4, viewA);
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

    public static e c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static e d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.login_activity_like, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f79540a;
    }
}
