package ms;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.shorttv.R$id;
import com.transsion.shorttv.R$layout;
import com.transsion.shorttv.ui.widget.ShortTVBannerView;

/* JADX INFO: loaded from: classes7.dex */
public final class q0 implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f69898a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ShortTVBannerView f69899b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ConstraintLayout f69900c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final View f69901d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final View f69902e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final View f69903f;

    private q0(ConstraintLayout constraintLayout, ShortTVBannerView shortTVBannerView, ConstraintLayout constraintLayout2, View view, View view2, View view3) {
        this.f69898a = constraintLayout;
        this.f69899b = shortTVBannerView;
        this.f69900c = constraintLayout2;
        this.f69901d = view;
        this.f69902e = view2;
        this.f69903f = view3;
    }

    public static q0 a(View view) {
        View viewA;
        View viewA2;
        int i11 = R$id.banner;
        ShortTVBannerView shortTVBannerView = (ShortTVBannerView) g4.b.a(view, i11);
        if (shortTVBannerView != null) {
            ConstraintLayout constraintLayout = (ConstraintLayout) view;
            i11 = R$id.v_banner_bg;
            View viewA3 = g4.b.a(view, i11);
            if (viewA3 != null && (viewA = g4.b.a(view, (i11 = R$id.v_bar_space))) != null && (viewA2 = g4.b.a(view, (i11 = R$id.v_top_space))) != null) {
                return new q0(constraintLayout, shortTVBannerView, constraintLayout, viewA3, viewA, viewA2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static q0 c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static q0 d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.short_tv_view_banner, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f69898a;
    }
}
