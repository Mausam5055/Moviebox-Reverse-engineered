package cn;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.baseui.widget.ResourcesRequestView;
import com.transsion.moviedetail.R$id;
import com.transsion.moviedetail.R$layout;

/* JADX INFO: loaded from: classes5.dex */
public final class k implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f17398a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppCompatImageView f17399b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppCompatTextView f17400c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AppCompatTextView f17401d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ResourcesRequestView f17402e;

    private k(ConstraintLayout constraintLayout, AppCompatImageView appCompatImageView, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, ResourcesRequestView resourcesRequestView) {
        this.f17398a = constraintLayout;
        this.f17399b = appCompatImageView;
        this.f17400c = appCompatTextView;
        this.f17401d = appCompatTextView2;
        this.f17402e = resourcesRequestView;
    }

    public static k a(View view) {
        int i11 = R$id.innerIcon;
        AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
        if (appCompatImageView != null) {
            i11 = R$id.innerTvInfo;
            AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
            if (appCompatTextView != null) {
                i11 = R$id.innerTvTitle;
                AppCompatTextView appCompatTextView2 = (AppCompatTextView) g4.b.a(view, i11);
                if (appCompatTextView2 != null) {
                    i11 = R$id.iv_resources;
                    ResourcesRequestView resourcesRequestView = (ResourcesRequestView) g4.b.a(view, i11);
                    if (resourcesRequestView != null) {
                        return new k((ConstraintLayout) view, appCompatImageView, appCompatTextView, appCompatTextView2, resourcesRequestView);
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
        View viewInflate = layoutInflater.inflate(R$layout.fragment_resource_detector_empty_layout, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f17398a;
    }
}
