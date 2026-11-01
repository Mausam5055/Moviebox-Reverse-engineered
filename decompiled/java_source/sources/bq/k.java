package bq;

import android.view.View;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.room.R$id;

/* JADX INFO: loaded from: classes5.dex */
public final class k implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f16781a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final View f16782b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppCompatImageView f16783c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AppCompatImageView f16784d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AppCompatTextView f16785e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AppCompatTextView f16786f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final AppCompatTextView f16787g;

    private k(ConstraintLayout constraintLayout, View view, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3) {
        this.f16781a = constraintLayout;
        this.f16782b = view;
        this.f16783c = appCompatImageView;
        this.f16784d = appCompatImageView2;
        this.f16785e = appCompatTextView;
        this.f16786f = appCompatTextView2;
        this.f16787g = appCompatTextView3;
    }

    public static k a(View view) {
        int i11 = R$id.btn_top;
        View viewA = g4.b.a(view, i11);
        if (viewA != null) {
            i11 = R$id.iv_back;
            AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
            if (appCompatImageView != null) {
                i11 = R$id.iv_icon;
                AppCompatImageView appCompatImageView2 = (AppCompatImageView) g4.b.a(view, i11);
                if (appCompatImageView2 != null) {
                    i11 = R$id.tvAdWatchAVideo;
                    AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
                    if (appCompatTextView != null) {
                        i11 = R$id.tv_tips;
                        AppCompatTextView appCompatTextView2 = (AppCompatTextView) g4.b.a(view, i11);
                        if (appCompatTextView2 != null) {
                            i11 = R$id.tv_title;
                            AppCompatTextView appCompatTextView3 = (AppCompatTextView) g4.b.a(view, i11);
                            if (appCompatTextView3 != null) {
                                return new k((ConstraintLayout) view, viewA, appCompatImageView, appCompatImageView2, appCompatTextView, appCompatTextView2, appCompatTextView3);
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
    public ConstraintLayout getRoot() {
        return this.f16781a;
    }
}
