package py;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import com.google.android.material.appbar.AppBarLayout;
import com.transsnet.downloader.R$id;
import com.transsnet.downloader.R$layout;
import net.lucode.hackware.magicindicator.MagicIndicator;

/* JADX INFO: loaded from: classes7.dex */
public final class p0 implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final FrameLayout f72877a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FrameLayout f72878b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final CoordinatorLayout f72879c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final MagicIndicator f72880d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final RecyclerView f72881e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AppBarLayout f72882f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final ViewPager2 f72883g;

    private p0(FrameLayout frameLayout, FrameLayout frameLayout2, CoordinatorLayout coordinatorLayout, MagicIndicator magicIndicator, RecyclerView recyclerView, AppBarLayout appBarLayout, ViewPager2 viewPager2) {
        this.f72877a = frameLayout;
        this.f72878b = frameLayout2;
        this.f72879c = coordinatorLayout;
        this.f72880d = magicIndicator;
        this.f72881e = recyclerView;
        this.f72882f = appBarLayout;
        this.f72883g = viewPager2;
    }

    public static p0 a(View view) {
        int i11 = R$id.fl_all_only;
        FrameLayout frameLayout = (FrameLayout) g4.b.a(view, i11);
        if (frameLayout != null) {
            i11 = R$id.ll_content;
            CoordinatorLayout coordinatorLayout = (CoordinatorLayout) g4.b.a(view, i11);
            if (coordinatorLayout != null) {
                i11 = R$id.magicIndicator;
                MagicIndicator magicIndicator = (MagicIndicator) g4.b.a(view, i11);
                if (magicIndicator != null) {
                    i11 = R$id.rv_empty_foryou;
                    RecyclerView recyclerView = (RecyclerView) g4.b.a(view, i11);
                    if (recyclerView != null) {
                        i11 = R$id.ugcDownloadAppBarLayout;
                        AppBarLayout appBarLayout = (AppBarLayout) g4.b.a(view, i11);
                        if (appBarLayout != null) {
                            i11 = R$id.view_pager;
                            ViewPager2 viewPager2 = (ViewPager2) g4.b.a(view, i11);
                            if (viewPager2 != null) {
                                return new p0((FrameLayout) view, frameLayout, coordinatorLayout, magicIndicator, recyclerView, appBarLayout, viewPager2);
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
        View viewInflate = layoutInflater.inflate(R$layout.fragment_ugc_downloaded_app, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public FrameLayout getRoot() {
        return this.f72877a;
    }
}
