package ey;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.cardview.widget.CardView;
import com.transsion.wrapperad.R$id;
import com.transsion.wrapperad.R$layout;

/* JADX INFO: loaded from: classes7.dex */
public final class c implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final FrameLayout f62077a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FrameLayout f62078b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final FrameLayout f62079c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final CardView f62080d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AppCompatImageView f62081e;

    private c(FrameLayout frameLayout, FrameLayout frameLayout2, FrameLayout frameLayout3, CardView cardView, AppCompatImageView appCompatImageView) {
        this.f62077a = frameLayout;
        this.f62078b = frameLayout2;
        this.f62079c = frameLayout3;
        this.f62080d = cardView;
        this.f62081e = appCompatImageView;
    }

    public static c a(View view) {
        int i11 = R$id.ad_container;
        FrameLayout frameLayout = (FrameLayout) g4.b.a(view, i11);
        if (frameLayout != null) {
            i11 = R$id.ad_cover;
            FrameLayout frameLayout2 = (FrameLayout) g4.b.a(view, i11);
            if (frameLayout2 != null) {
                i11 = R$id.cardView;
                CardView cardView = (CardView) g4.b.a(view, i11);
                if (cardView != null) {
                    i11 = R$id.swipe_guide;
                    AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
                    if (appCompatImageView != null) {
                        return new c((FrameLayout) view, frameLayout, frameLayout2, cardView, appCompatImageView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static c c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.native_card_page_item, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public FrameLayout getRoot() {
        return this.f62077a;
    }
}
