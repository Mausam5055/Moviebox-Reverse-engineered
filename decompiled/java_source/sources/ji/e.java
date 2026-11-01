package ji;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.ad.R$id;
import com.transsion.ad.R$layout;
import com.transsion.ad.view.AdTagView;
import com.transsion.ad.view.MemberTagView;
import com.transsion.ad.view.RoundedCornerLayout;

/* JADX INFO: loaded from: classes6.dex */
public final class e implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f66052a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AdTagView f66053b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final RoundedCornerLayout f66054c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final FrameLayout f66055d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final FrameLayout f66056e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ConstraintLayout f66057f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final AppCompatImageView f66058g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final AppCompatTextView f66059h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final LinearLayoutCompat f66060i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final MemberTagView f66061j;

    private e(ConstraintLayout constraintLayout, AdTagView adTagView, RoundedCornerLayout roundedCornerLayout, FrameLayout frameLayout, FrameLayout frameLayout2, ConstraintLayout constraintLayout2, AppCompatImageView appCompatImageView, AppCompatTextView appCompatTextView, LinearLayoutCompat linearLayoutCompat, MemberTagView memberTagView) {
        this.f66052a = constraintLayout;
        this.f66053b = adTagView;
        this.f66054c = roundedCornerLayout;
        this.f66055d = frameLayout;
        this.f66056e = frameLayout2;
        this.f66057f = constraintLayout2;
        this.f66058g = appCompatImageView;
        this.f66059h = appCompatTextView;
        this.f66060i = linearLayoutCompat;
        this.f66061j = memberTagView;
    }

    public static e a(View view) {
        int i11 = R$id.adIcon;
        AdTagView adTagView = (AdTagView) g4.b.a(view, i11);
        if (adTagView != null) {
            i11 = R$id.container;
            RoundedCornerLayout roundedCornerLayout = (RoundedCornerLayout) g4.b.a(view, i11);
            if (roundedCornerLayout != null) {
                i11 = R$id.flCloseContainer;
                FrameLayout frameLayout = (FrameLayout) g4.b.a(view, i11);
                if (frameLayout != null) {
                    i11 = R$id.flVolumeContainer;
                    FrameLayout frameLayout2 = (FrameLayout) g4.b.a(view, i11);
                    if (frameLayout2 != null) {
                        ConstraintLayout constraintLayout = (ConstraintLayout) view;
                        i11 = R$id.tvAudio;
                        AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
                        if (appCompatImageView != null) {
                            i11 = R$id.tvCd;
                            AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
                            if (appCompatTextView != null) {
                                i11 = R$id.viewCd;
                                LinearLayoutCompat linearLayoutCompat = (LinearLayoutCompat) g4.b.a(view, i11);
                                if (linearLayoutCompat != null) {
                                    i11 = R$id.viewMember;
                                    MemberTagView memberTagView = (MemberTagView) g4.b.a(view, i11);
                                    if (memberTagView != null) {
                                        return new e(constraintLayout, adTagView, roundedCornerLayout, frameLayout, frameLayout2, constraintLayout, appCompatImageView, appCompatTextView, linearLayoutCompat, memberTagView);
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static e c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static e d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_bidding_buy_out_interstitial_half_screen_layout, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f66052a;
    }
}
