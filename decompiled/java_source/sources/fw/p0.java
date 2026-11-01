package fw;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.fragment.app.FragmentContainerView;
import com.google.android.material.imageview.ShapeableImageView;
import com.google.android.material.tabs.TabLayout;
import com.noober.background.view.BLTextView;
import com.tn.lib.view.TitleLayout;
import com.tn.lib.widget.TnTextView;
import com.transsion.baseui.widget.GradientBorderView;
import com.transsion.usercenter.R$id;
import com.transsion.usercenter.R$layout;

/* JADX INFO: loaded from: classes7.dex */
public final class p0 implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f62840a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final GradientBorderView f62841b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final BLTextView f62842c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ShapeableImageView f62843d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final TnTextView f62844e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AppCompatImageView f62845f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final Group f62846g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final View f62847h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final TabLayout f62848i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final TitleLayout f62849j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final FragmentContainerView f62850k;

    private p0(ConstraintLayout constraintLayout, GradientBorderView gradientBorderView, BLTextView bLTextView, ShapeableImageView shapeableImageView, TnTextView tnTextView, AppCompatImageView appCompatImageView, Group group, View view, TabLayout tabLayout, TitleLayout titleLayout, FragmentContainerView fragmentContainerView) {
        this.f62840a = constraintLayout;
        this.f62841b = gradientBorderView;
        this.f62842c = bLTextView;
        this.f62843d = shapeableImageView;
        this.f62844e = tnTextView;
        this.f62845f = appCompatImageView;
        this.f62846g = group;
        this.f62847h = view;
        this.f62848i = tabLayout;
        this.f62849j = titleLayout;
        this.f62850k = fragmentContainerView;
    }

    public static p0 a(View view) {
        View viewA;
        int i11 = R$id.scanButton;
        GradientBorderView gradientBorderView = (GradientBorderView) g4.b.a(view, i11);
        if (gradientBorderView != null) {
            i11 = R$id.scanButtonBackground;
            BLTextView bLTextView = (BLTextView) g4.b.a(view, i11);
            if (bLTextView != null) {
                i11 = R$id.scanCard;
                ShapeableImageView shapeableImageView = (ShapeableImageView) g4.b.a(view, i11);
                if (shapeableImageView != null) {
                    i11 = R$id.scanDescription;
                    TnTextView tnTextView = (TnTextView) g4.b.a(view, i11);
                    if (tnTextView != null) {
                        i11 = R$id.scanDeviceImage;
                        AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
                        if (appCompatImageView != null) {
                            i11 = R$id.scanModuleGroup;
                            Group group = (Group) g4.b.a(view, i11);
                            if (group != null && (viewA = g4.b.a(view, (i11 = R$id.tabDivider))) != null) {
                                i11 = R$id.tabLayout;
                                TabLayout tabLayout = (TabLayout) g4.b.a(view, i11);
                                if (tabLayout != null) {
                                    i11 = R$id.titleLayout;
                                    TitleLayout titleLayout = (TitleLayout) g4.b.a(view, i11);
                                    if (titleLayout != null) {
                                        i11 = R$id.webFragmentContainer;
                                        FragmentContainerView fragmentContainerView = (FragmentContainerView) g4.b.a(view, i11);
                                        if (fragmentContainerView != null) {
                                            return new p0((ConstraintLayout) view, gradientBorderView, bLTextView, shapeableImageView, tnTextView, appCompatImageView, group, viewA, tabLayout, titleLayout, fragmentContainerView);
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

    public static p0 c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static p0 d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_tv_download_web_link, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f62840a;
    }
}
