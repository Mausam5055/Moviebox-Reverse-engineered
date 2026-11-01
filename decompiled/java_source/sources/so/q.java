package so;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.appbar.AppBarLayout;
import com.tn.lib.view.TitleLayout;
import com.transsion.postdetail.R$id;
import com.transsion.postdetail.R$layout;
import com.transsion.postdetail.ui.view.PostDetailItemView;

/* JADX INFO: loaded from: classes6.dex */
public final class q implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f75676a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppBarLayout f75677b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ConstraintLayout f75678c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final FrameLayout f75679d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final PostDetailItemView f75680e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final TitleLayout f75681f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final AppCompatTextView f75682g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final AppCompatTextView f75683h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final View f75684i;

    private q(ConstraintLayout constraintLayout, AppBarLayout appBarLayout, ConstraintLayout constraintLayout2, FrameLayout frameLayout, PostDetailItemView postDetailItemView, TitleLayout titleLayout, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, View view) {
        this.f75676a = constraintLayout;
        this.f75677b = appBarLayout;
        this.f75678c = constraintLayout2;
        this.f75679d = frameLayout;
        this.f75680e = postDetailItemView;
        this.f75681f = titleLayout;
        this.f75682g = appCompatTextView;
        this.f75683h = appCompatTextView2;
        this.f75684i = view;
    }

    public static q a(View view) {
        View viewA;
        int i11 = R$id.app_bar_layout;
        AppBarLayout appBarLayout = (AppBarLayout) g4.b.a(view, i11);
        if (appBarLayout != null) {
            ConstraintLayout constraintLayout = (ConstraintLayout) view;
            i11 = R$id.fl_comment_container;
            FrameLayout frameLayout = (FrameLayout) g4.b.a(view, i11);
            if (frameLayout != null) {
                i11 = R$id.postDetailItem;
                PostDetailItemView postDetailItemView = (PostDetailItemView) g4.b.a(view, i11);
                if (postDetailItemView != null) {
                    i11 = R$id.titleLayout;
                    TitleLayout titleLayout = (TitleLayout) g4.b.a(view, i11);
                    if (titleLayout != null) {
                        i11 = R$id.tv_comment;
                        AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
                        if (appCompatTextView != null) {
                            i11 = R$id.tv_comment_num;
                            AppCompatTextView appCompatTextView2 = (AppCompatTextView) g4.b.a(view, i11);
                            if (appCompatTextView2 != null && (viewA = g4.b.a(view, (i11 = R$id.v_bottom))) != null) {
                                return new q(constraintLayout, appBarLayout, constraintLayout, frameLayout, postDetailItemView, titleLayout, appCompatTextView, appCompatTextView2, viewA);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static q c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static q d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_post_detail_layout, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f75676a;
    }
}
