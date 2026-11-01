package ji;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.ad.R$id;
import com.transsion.ad.R$layout;
import com.transsion.ad.view.native_ad.BiddingFloatingIrregularAnimationView;

/* JADX INFO: loaded from: classes6.dex */
public final class o implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final FrameLayout f66149a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final BiddingFloatingIrregularAnimationView f66150b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final RecyclerView f66151c;

    private o(FrameLayout frameLayout, BiddingFloatingIrregularAnimationView biddingFloatingIrregularAnimationView, RecyclerView recyclerView) {
        this.f66149a = frameLayout;
        this.f66150b = biddingFloatingIrregularAnimationView;
        this.f66151c = recyclerView;
    }

    public static o a(View view) {
        int i11 = R$id.irregularView;
        BiddingFloatingIrregularAnimationView biddingFloatingIrregularAnimationView = (BiddingFloatingIrregularAnimationView) g4.b.a(view, i11);
        if (biddingFloatingIrregularAnimationView != null) {
            i11 = R$id.f41778rv;
            RecyclerView recyclerView = (RecyclerView) g4.b.a(view, i11);
            if (recyclerView != null) {
                return new o((FrameLayout) view, biddingFloatingIrregularAnimationView, recyclerView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static o c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static o d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_test_ad_irregular_layout, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public FrameLayout getRoot() {
        return this.f66149a;
    }
}
