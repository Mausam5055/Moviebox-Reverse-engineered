package ey;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.cardview.widget.CardView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.ad.view.native_ad.NativeWrapperAdView;
import com.transsion.wrapperad.R$id;
import com.transsion.wrapperad.R$layout;

/* JADX INFO: loaded from: classes7.dex */
public final class f implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f62096a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CardView f62097b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final CardView f62098c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final NativeWrapperAdView f62099d;

    private f(ConstraintLayout constraintLayout, CardView cardView, CardView cardView2, NativeWrapperAdView nativeWrapperAdView) {
        this.f62096a = constraintLayout;
        this.f62097b = cardView;
        this.f62098c = cardView2;
        this.f62099d = nativeWrapperAdView;
    }

    public static f a(View view) {
        int i11 = R$id.ad_detail_arrow;
        CardView cardView = (CardView) g4.b.a(view, i11);
        if (cardView != null) {
            i11 = R$id.ad_detail_btn;
            CardView cardView2 = (CardView) g4.b.a(view, i11);
            if (cardView2 != null) {
                i11 = R$id.adView;
                NativeWrapperAdView nativeWrapperAdView = (NativeWrapperAdView) g4.b.a(view, i11);
                if (nativeWrapperAdView != null) {
                    return new f((ConstraintLayout) view, cardView, cardView2, nativeWrapperAdView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static f c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.second_floor_layout, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f62096a;
    }
}
