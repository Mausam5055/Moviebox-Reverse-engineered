package ji;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import com.transsion.ad.R$id;
import com.transsion.ad.R$layout;
import com.transsion.ad.view.AdCountdownView;
import com.transsion.ad.view.AdTagView;
import com.transsion.ad.view.MemberTagView;

/* JADX INFO: loaded from: classes6.dex */
public final class b implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final FrameLayout f66024a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AdTagView f66025b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final FrameLayout f66026c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final FrameLayout f66027d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final LinearLayout f66028e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AdCountdownView f66029f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final MemberTagView f66030g;

    private b(FrameLayout frameLayout, AdTagView adTagView, FrameLayout frameLayout2, FrameLayout frameLayout3, LinearLayout linearLayout, AdCountdownView adCountdownView, MemberTagView memberTagView) {
        this.f66024a = frameLayout;
        this.f66025b = adTagView;
        this.f66026c = frameLayout2;
        this.f66027d = frameLayout3;
        this.f66028e = linearLayout;
        this.f66029f = adCountdownView;
        this.f66030g = memberTagView;
    }

    public static b a(View view) {
        int i11 = R$id.adIcon;
        AdTagView adTagView = (AdTagView) g4.b.a(view, i11);
        if (adTagView != null) {
            FrameLayout frameLayout = (FrameLayout) view;
            i11 = R$id.flAdContainer;
            FrameLayout frameLayout2 = (FrameLayout) g4.b.a(view, i11);
            if (frameLayout2 != null) {
                i11 = R$id.llControl;
                LinearLayout linearLayout = (LinearLayout) g4.b.a(view, i11);
                if (linearLayout != null) {
                    i11 = R$id.tvCountDown;
                    AdCountdownView adCountdownView = (AdCountdownView) g4.b.a(view, i11);
                    if (adCountdownView != null) {
                        i11 = R$id.viewMember;
                        MemberTagView memberTagView = (MemberTagView) g4.b.a(view, i11);
                        if (memberTagView != null) {
                            return new b(frameLayout, adTagView, frameLayout, frameLayout2, linearLayout, adCountdownView, memberTagView);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static b c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static b d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_bidding_buy_out_h5_ad_source_layout, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public FrameLayout getRoot() {
        return this.f66024a;
    }
}
