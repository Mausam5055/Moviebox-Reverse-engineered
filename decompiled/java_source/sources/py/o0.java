package py;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.viewpager2.widget.ViewPager2;
import com.transsnet.downloader.R$id;
import com.transsnet.downloader.R$layout;
import net.lucode.hackware.magicindicator.MagicIndicator;

/* JADX INFO: loaded from: classes7.dex */
public final class o0 implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f72865a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CoordinatorLayout f72866b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final FrameLayout f72867c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final FrameLayout f72868d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final LinearLayout f72869e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final MagicIndicator f72870f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final AppCompatTextView f72871g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ViewPager2 f72872h;

    private o0(ConstraintLayout constraintLayout, CoordinatorLayout coordinatorLayout, FrameLayout frameLayout, FrameLayout frameLayout2, LinearLayout linearLayout, MagicIndicator magicIndicator, AppCompatTextView appCompatTextView, ViewPager2 viewPager2) {
        this.f72865a = constraintLayout;
        this.f72866b = coordinatorLayout;
        this.f72867c = frameLayout;
        this.f72868d = frameLayout2;
        this.f72869e = linearLayout;
        this.f72870f = magicIndicator;
        this.f72871g = appCompatTextView;
        this.f72872h = viewPager2;
    }

    public static o0 a(View view) {
        int i11 = R$id.cl_root;
        CoordinatorLayout coordinatorLayout = (CoordinatorLayout) g4.b.a(view, i11);
        if (coordinatorLayout != null) {
            i11 = R$id.flAppDownloadAd;
            FrameLayout frameLayout = (FrameLayout) g4.b.a(view, i11);
            if (frameLayout != null) {
                i11 = R$id.flTopCardAd;
                FrameLayout frameLayout2 = (FrameLayout) g4.b.a(view, i11);
                if (frameLayout2 != null) {
                    i11 = R$id.llTabLayout;
                    LinearLayout linearLayout = (LinearLayout) g4.b.a(view, i11);
                    if (linearLayout != null) {
                        i11 = R$id.magic_indicator;
                        MagicIndicator magicIndicator = (MagicIndicator) g4.b.a(view, i11);
                        if (magicIndicator != null) {
                            i11 = R$id.tvTitleAll;
                            AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
                            if (appCompatTextView != null) {
                                i11 = R$id.view_pager;
                                ViewPager2 viewPager2 = (ViewPager2) g4.b.a(view, i11);
                                if (viewPager2 != null) {
                                    return new o0((ConstraintLayout) view, coordinatorLayout, frameLayout, frameLayout2, linearLayout, magicIndicator, appCompatTextView, viewPager2);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static o0 c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static o0 d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_ugc_download_manager, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f72865a;
    }
}
