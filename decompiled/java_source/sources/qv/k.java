package qv;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.FragmentContainerView;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.ugcvideodetail.R$id;
import com.transsion.ugcvideodetail.R$layout;

/* JADX INFO: loaded from: classes7.dex */
public final class k implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f73789a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ConstraintLayout f73790b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final FragmentContainerView f73791c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AppCompatImageView f73792d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final RecyclerView f73793e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AppCompatTextView f73794f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final View f73795g;

    private k(ConstraintLayout constraintLayout, ConstraintLayout constraintLayout2, FragmentContainerView fragmentContainerView, AppCompatImageView appCompatImageView, RecyclerView recyclerView, AppCompatTextView appCompatTextView, View view) {
        this.f73789a = constraintLayout;
        this.f73790b = constraintLayout2;
        this.f73791c = fragmentContainerView;
        this.f73792d = appCompatImageView;
        this.f73793e = recyclerView;
        this.f73794f = appCompatTextView;
        this.f73795g = view;
    }

    public static k a(View view) {
        View viewA;
        ConstraintLayout constraintLayout = (ConstraintLayout) view;
        int i11 = R$id.fragmentContainer;
        FragmentContainerView fragmentContainerView = (FragmentContainerView) g4.b.a(view, i11);
        if (fragmentContainerView != null) {
            i11 = R$id.ivClose;
            AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
            if (appCompatImageView != null) {
                i11 = R$id.rvTabs;
                RecyclerView recyclerView = (RecyclerView) g4.b.a(view, i11);
                if (recyclerView != null) {
                    i11 = R$id.tvPageTitle;
                    AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
                    if (appCompatTextView != null && (viewA = g4.b.a(view, (i11 = R$id.vTitleLine))) != null) {
                        return new k(constraintLayout, constraintLayout, fragmentContainerView, appCompatImageView, recyclerView, appCompatTextView, viewA);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static k c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static k d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_ugc_video_detail_play_list_tab, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f73789a;
    }
}
