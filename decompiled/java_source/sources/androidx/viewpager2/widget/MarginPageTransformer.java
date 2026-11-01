package androidx.viewpager2.widget;

import android.view.View;
import android.view.ViewParent;
import androidx.annotation.NonNull;
import androidx.core.util.i;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes2.dex */
public final class MarginPageTransformer implements ViewPager2.PageTransformer {
    private final int mMarginPx;

    public MarginPageTransformer(int i11) {
        i.e(i11, "Margin must be non-negative");
        this.mMarginPx = i11;
    }

    private ViewPager2 requireViewPager(@NonNull View view) {
        ViewParent parent = view.getParent();
        ViewParent parent2 = parent.getParent();
        if ((parent instanceof RecyclerView) && (parent2 instanceof ViewPager2)) {
            return (ViewPager2) parent2;
        }
        throw new IllegalStateException("Expected the page view to be managed by a ViewPager2 instance.");
    }

    @Override // androidx.viewpager2.widget.ViewPager2.PageTransformer
    public void transformPage(@NonNull View view, float f11) {
        ViewPager2 viewPager2RequireViewPager = requireViewPager(view);
        float f12 = this.mMarginPx * f11;
        if (viewPager2RequireViewPager.getOrientation() != 0) {
            view.setTranslationY(f12);
            return;
        }
        if (viewPager2RequireViewPager.isRtl()) {
            f12 = -f12;
        }
        view.setTranslationX(f12);
    }
}
