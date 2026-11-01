package ji;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatImageView;
import com.transsion.ad.R$id;
import com.transsion.ad.R$layout;
import com.transsion.ad.view.RoundedCornerLayout;

/* JADX INFO: loaded from: classes6.dex */
public final class c implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LinearLayout f66033a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppCompatImageView f66034b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final RoundedCornerLayout f66035c;

    private c(LinearLayout linearLayout, AppCompatImageView appCompatImageView, RoundedCornerLayout roundedCornerLayout) {
        this.f66033a = linearLayout;
        this.f66034b = appCompatImageView;
        this.f66035c = roundedCornerLayout;
    }

    public static c a(View view) {
        int i11 = R$id.ivClose;
        AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
        if (appCompatImageView != null) {
            i11 = R$id.mediaContain;
            RoundedCornerLayout roundedCornerLayout = (RoundedCornerLayout) g4.b.a(view, i11);
            if (roundedCornerLayout != null) {
                return new c((LinearLayout) view, appCompatImageView, roundedCornerLayout);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static c c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static c d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_bidding_buy_out_interstitial_action_layout, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f66033a;
    }
}
