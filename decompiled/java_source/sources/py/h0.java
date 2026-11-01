package py;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.viewpager2.widget.ViewPager2;
import com.transsnet.downloader.R$id;
import com.transsnet.downloader.R$layout;
import net.lucode.hackware.magicindicator.MagicIndicator;

/* JADX INFO: loaded from: classes7.dex */
public final class h0 implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f72741a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CoordinatorLayout f72742b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final FrameLayout f72743c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final FrameLayout f72744d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final FrameLayout f72745e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final MagicIndicator f72746f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final AppCompatTextView f72747g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ViewPager2 f72748h;

    private h0(ConstraintLayout constraintLayout, CoordinatorLayout coordinatorLayout, FrameLayout frameLayout, FrameLayout frameLayout2, FrameLayout frameLayout3, MagicIndicator magicIndicator, AppCompatTextView appCompatTextView, ViewPager2 viewPager2) {
        this.f72741a = constraintLayout;
        this.f72742b = coordinatorLayout;
        this.f72743c = frameLayout;
        this.f72744d = frameLayout2;
        this.f72745e = frameLayout3;
        this.f72746f = magicIndicator;
        this.f72747g = appCompatTextView;
        this.f72748h = viewPager2;
    }

    public static h0 a(View view) {
        int i11 = R$id.cl_root;
        CoordinatorLayout coordinatorLayout = (CoordinatorLayout) g4.b.a(view, i11);
        if (coordinatorLayout != null) {
            i11 = R$id.flAppDownloadAd;
            FrameLayout frameLayout = (FrameLayout) g4.b.a(view, i11);
            if (frameLayout != null) {
                i11 = R$id.flDownloadingContainer;
                FrameLayout frameLayout2 = (FrameLayout) g4.b.a(view, i11);
                if (frameLayout2 != null) {
                    i11 = R$id.flTopCardAd;
                    FrameLayout frameLayout3 = (FrameLayout) g4.b.a(view, i11);
                    if (frameLayout3 != null) {
                        i11 = R$id.magic_indicator;
                        MagicIndicator magicIndicator = (MagicIndicator) g4.b.a(view, i11);
                        if (magicIndicator != null) {
                            i11 = R$id.tv_available_size;
                            AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
                            if (appCompatTextView != null) {
                                i11 = R$id.view_pager;
                                ViewPager2 viewPager2 = (ViewPager2) g4.b.a(view, i11);
                                if (viewPager2 != null) {
                                    return new h0((ConstraintLayout) view, coordinatorLayout, frameLayout, frameLayout2, frameLayout3, magicIndicator, appCompatTextView, viewPager2);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static h0 c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static h0 d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_file_manager, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f72741a;
    }
}
