package ji;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.ad.R$id;
import com.transsion.ad.R$layout;
import com.transsion.ad.view.AdCountdownView;
import com.transsion.ad.view.AdTagView;
import com.transsion.ad.view.MemberTagView;
import com.transsion.ad.view.SwipeUpOrTapForDetailsView;

/* JADX INFO: loaded from: classes6.dex */
public final class d implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f66039a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AdCountdownView f66040b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AdTagView f66041c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final SwipeUpOrTapForDetailsView f66042d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final FrameLayout f66043e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final FrameLayout f66044f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final LinearLayout f66045g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ConstraintLayout f66046h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final MemberTagView f66047i;

    private d(ConstraintLayout constraintLayout, AdCountdownView adCountdownView, AdTagView adTagView, SwipeUpOrTapForDetailsView swipeUpOrTapForDetailsView, FrameLayout frameLayout, FrameLayout frameLayout2, LinearLayout linearLayout, ConstraintLayout constraintLayout2, MemberTagView memberTagView) {
        this.f66039a = constraintLayout;
        this.f66040b = adCountdownView;
        this.f66041c = adTagView;
        this.f66042d = swipeUpOrTapForDetailsView;
        this.f66043e = frameLayout;
        this.f66044f = frameLayout2;
        this.f66045g = linearLayout;
        this.f66046h = constraintLayout2;
        this.f66047i = memberTagView;
    }

    public static d a(View view) {
        int i11 = R$id.adCountdownView;
        AdCountdownView adCountdownView = (AdCountdownView) g4.b.a(view, i11);
        if (adCountdownView != null) {
            i11 = R$id.adIcon;
            AdTagView adTagView = (AdTagView) g4.b.a(view, i11);
            if (adTagView != null) {
                i11 = R$id.arcEdgeLayout;
                SwipeUpOrTapForDetailsView swipeUpOrTapForDetailsView = (SwipeUpOrTapForDetailsView) g4.b.a(view, i11);
                if (swipeUpOrTapForDetailsView != null) {
                    i11 = R$id.container;
                    FrameLayout frameLayout = (FrameLayout) g4.b.a(view, i11);
                    if (frameLayout != null) {
                        i11 = R$id.flVolumeContainer;
                        FrameLayout frameLayout2 = (FrameLayout) g4.b.a(view, i11);
                        if (frameLayout2 != null) {
                            i11 = R$id.llControl;
                            LinearLayout linearLayout = (LinearLayout) g4.b.a(view, i11);
                            if (linearLayout != null) {
                                ConstraintLayout constraintLayout = (ConstraintLayout) view;
                                i11 = R$id.viewMember;
                                MemberTagView memberTagView = (MemberTagView) g4.b.a(view, i11);
                                if (memberTagView != null) {
                                    return new d(constraintLayout, adCountdownView, adTagView, swipeUpOrTapForDetailsView, frameLayout, frameLayout2, linearLayout, constraintLayout, memberTagView);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static d c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static d d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_bidding_buy_out_interstitial_full_screen_layout, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f66039a;
    }
}
