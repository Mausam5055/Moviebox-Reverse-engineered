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
public final class f implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f66071a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AdTagView f66072b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final RoundedCornerLayout f66073c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final FrameLayout f66074d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final FrameLayout f66075e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AppCompatTextView f66076f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final ConstraintLayout f66077g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final AppCompatImageView f66078h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final AppCompatTextView f66079i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final LinearLayoutCompat f66080j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final MemberTagView f66081k;

    private f(ConstraintLayout constraintLayout, AdTagView adTagView, RoundedCornerLayout roundedCornerLayout, FrameLayout frameLayout, FrameLayout frameLayout2, AppCompatTextView appCompatTextView, ConstraintLayout constraintLayout2, AppCompatImageView appCompatImageView, AppCompatTextView appCompatTextView2, LinearLayoutCompat linearLayoutCompat, MemberTagView memberTagView) {
        this.f66071a = constraintLayout;
        this.f66072b = adTagView;
        this.f66073c = roundedCornerLayout;
        this.f66074d = frameLayout;
        this.f66075e = frameLayout2;
        this.f66076f = appCompatTextView;
        this.f66077g = constraintLayout2;
        this.f66078h = appCompatImageView;
        this.f66079i = appCompatTextView2;
        this.f66080j = linearLayoutCompat;
        this.f66081k = memberTagView;
    }

    public static f a(View view) {
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
                        i11 = R$id.learn_more;
                        AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
                        if (appCompatTextView != null) {
                            ConstraintLayout constraintLayout = (ConstraintLayout) view;
                            i11 = R$id.tvAudio;
                            AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
                            if (appCompatImageView != null) {
                                i11 = R$id.tvCd;
                                AppCompatTextView appCompatTextView2 = (AppCompatTextView) g4.b.a(view, i11);
                                if (appCompatTextView2 != null) {
                                    i11 = R$id.viewCd;
                                    LinearLayoutCompat linearLayoutCompat = (LinearLayoutCompat) g4.b.a(view, i11);
                                    if (linearLayoutCompat != null) {
                                        i11 = R$id.viewMember;
                                        MemberTagView memberTagView = (MemberTagView) g4.b.a(view, i11);
                                        if (memberTagView != null) {
                                            return new f(constraintLayout, adTagView, roundedCornerLayout, frameLayout, frameLayout2, appCompatTextView, constraintLayout, appCompatImageView, appCompatTextView2, linearLayoutCompat, memberTagView);
                                        }
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

    public static f c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static f d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_bidding_buy_out_interstitial_land_layout, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f66071a;
    }
}
