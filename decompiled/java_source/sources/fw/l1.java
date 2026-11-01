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
public final class l1 implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f62765a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final View f62766b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppCompatImageView f62767c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AppCompatTextView f62768d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AppCompatTextView f62769e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AppCompatTextView f62770f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final AppCompatImageView f62771g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final AppCompatTextView f62772h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final AppCompatTextView f62773i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final TitleLayout f62774j;

    private l1(ConstraintLayout constraintLayout, View view, AppCompatImageView appCompatImageView, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, AppCompatImageView appCompatImageView2, AppCompatTextView appCompatTextView4, AppCompatTextView appCompatTextView5, TitleLayout titleLayout) {
        this.f62765a = constraintLayout;
        this.f62766b = view;
        this.f62767c = appCompatImageView;
        this.f62768d = appCompatTextView;
        this.f62769e = appCompatTextView2;
        this.f62770f = appCompatTextView3;
        this.f62771g = appCompatImageView2;
        this.f62772h = appCompatTextView4;
        this.f62773i = appCompatTextView5;
        this.f62774j = titleLayout;
    }

    public static l1 a(View view) {
        int i11 = R$id.bgView;
        View viewA = g4.b.a(view, i11);
        if (viewA != null) {
            i11 = R$id.downloadIV;
            AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
            if (appCompatImageView != null) {
                i11 = R$id.downloadTip;
                AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
                if (appCompatTextView != null) {
                    i11 = R$id.downloadTv;
                    AppCompatTextView appCompatTextView2 = (AppCompatTextView) g4.b.a(view, i11);
                    if (appCompatTextView2 != null) {
                        i11 = R$id.restartTV;
                        AppCompatTextView appCompatTextView3 = (AppCompatTextView) g4.b.a(view, i11);
                        if (appCompatTextView3 != null) {
                            i11 = R$id.streamIV;
                            AppCompatImageView appCompatImageView2 = (AppCompatImageView) g4.b.a(view, i11);
                            if (appCompatImageView2 != null) {
                                i11 = R$id.streamTip;
                                AppCompatTextView appCompatTextView4 = (AppCompatTextView) g4.b.a(view, i11);
                                if (appCompatTextView4 != null) {
                                    i11 = R$id.streamTv;
                                    AppCompatTextView appCompatTextView5 = (AppCompatTextView) g4.b.a(view, i11);
                                    if (appCompatTextView5 != null) {
                                        i11 = R$id.titleLayout;
                                        TitleLayout titleLayout = (TitleLayout) g4.b.a(view, i11);
                                        if (titleLayout != null) {
                                            return new l1((ConstraintLayout) view, viewA, appCompatImageView, appCompatTextView, appCompatTextView2, appCompatTextView3, appCompatImageView2, appCompatTextView4, appCompatTextView5, titleLayout);
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

    public static l1 c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static l1 d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.user_activity_setting_watch, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f62765a;
    }
}
