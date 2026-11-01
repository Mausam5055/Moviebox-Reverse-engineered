package vp;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.cardview.widget.CardView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.widget.NestedScrollView;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.rewardscenter.R$id;
import com.transsion.rewardscenter.R$layout;
import com.transsion.rewardscenter.prize.PrizeListView;
import com.transsion.rewardscenter.redeem.RedeemView;
import com.transsion.rewardscenter.view.PrizeFlowView;
import com.transsion.rewardscenter.view.RewardsCenterTaskView;

/* JADX INFO: loaded from: classes6.dex */
public final class d implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f77364a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppCompatImageView f77365b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppCompatImageView f77366c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AppCompatImageView f77367d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final RecyclerView f77368e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final h f77369f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final PrizeFlowView f77370g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final CardView f77371h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final CardView f77372i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final PrizeListView f77373j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final ConstraintLayout f77374k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final CardView f77375l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final RedeemView f77376m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final CardView f77377n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final RewardsCenterTaskView f77378o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final CardView f77379p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final NestedScrollView f77380q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final AppCompatTextView f77381r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final ConstraintLayout f77382s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final AppCompatTextView f77383t;

    private d(ConstraintLayout constraintLayout, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, AppCompatImageView appCompatImageView3, RecyclerView recyclerView, h hVar, PrizeFlowView prizeFlowView, CardView cardView, CardView cardView2, PrizeListView prizeListView, ConstraintLayout constraintLayout2, CardView cardView3, RedeemView redeemView, CardView cardView4, RewardsCenterTaskView rewardsCenterTaskView, CardView cardView5, NestedScrollView nestedScrollView, AppCompatTextView appCompatTextView, ConstraintLayout constraintLayout3, AppCompatTextView appCompatTextView2) {
        this.f77364a = constraintLayout;
        this.f77365b = appCompatImageView;
        this.f77366c = appCompatImageView2;
        this.f77367d = appCompatImageView3;
        this.f77368e = recyclerView;
        this.f77369f = hVar;
        this.f77370g = prizeFlowView;
        this.f77371h = cardView;
        this.f77372i = cardView2;
        this.f77373j = prizeListView;
        this.f77374k = constraintLayout2;
        this.f77375l = cardView3;
        this.f77376m = redeemView;
        this.f77377n = cardView4;
        this.f77378o = rewardsCenterTaskView;
        this.f77379p = cardView5;
        this.f77380q = nestedScrollView;
        this.f77381r = appCompatTextView;
        this.f77382s = constraintLayout3;
        this.f77383t = appCompatTextView2;
    }

    public static d a(View view) {
        View viewA;
        int i11 = R$id.iv_back;
        AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
        if (appCompatImageView != null) {
            i11 = R$id.iv_banner;
            AppCompatImageView appCompatImageView2 = (AppCompatImageView) g4.b.a(view, i11);
            if (appCompatImageView2 != null) {
                i11 = R$id.iv_prize_triangle;
                AppCompatImageView appCompatImageView3 = (AppCompatImageView) g4.b.a(view, i11);
                if (appCompatImageView3 != null) {
                    i11 = R$id.iv_task_list;
                    RecyclerView recyclerView = (RecyclerView) g4.b.a(view, i11);
                    if (recyclerView != null && (viewA = g4.b.a(view, (i11 = R$id.member_info))) != null) {
                        h hVarA = h.a(viewA);
                        i11 = R$id.prize_flow;
                        PrizeFlowView prizeFlowView = (PrizeFlowView) g4.b.a(view, i11);
                        if (prizeFlowView != null) {
                            i11 = R$id.rc_banner_card;
                            CardView cardView = (CardView) g4.b.a(view, i11);
                            if (cardView != null) {
                                i11 = R$id.rc_prize_card;
                                CardView cardView2 = (CardView) g4.b.a(view, i11);
                                if (cardView2 != null) {
                                    i11 = R$id.rc_prize_list_view;
                                    PrizeListView prizeListView = (PrizeListView) g4.b.a(view, i11);
                                    if (prizeListView != null) {
                                        i11 = R$id.rc_prize_section;
                                        ConstraintLayout constraintLayout = (ConstraintLayout) g4.b.a(view, i11);
                                        if (constraintLayout != null) {
                                            i11 = R$id.rc_redeem_card;
                                            CardView cardView3 = (CardView) g4.b.a(view, i11);
                                            if (cardView3 != null) {
                                                i11 = R$id.rc_redeem_view;
                                                RedeemView redeemView = (RedeemView) g4.b.a(view, i11);
                                                if (redeemView != null) {
                                                    i11 = R$id.rc_task_card;
                                                    CardView cardView4 = (CardView) g4.b.a(view, i11);
                                                    if (cardView4 != null) {
                                                        i11 = R$id.rc_task_view;
                                                        RewardsCenterTaskView rewardsCenterTaskView = (RewardsCenterTaskView) g4.b.a(view, i11);
                                                        if (rewardsCenterTaskView != null) {
                                                            i11 = R$id.rv_task_card;
                                                            CardView cardView5 = (CardView) g4.b.a(view, i11);
                                                            if (cardView5 != null) {
                                                                i11 = R$id.scroll_view;
                                                                NestedScrollView nestedScrollView = (NestedScrollView) g4.b.a(view, i11);
                                                                if (nestedScrollView != null) {
                                                                    i11 = R$id.title;
                                                                    AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
                                                                    if (appCompatTextView != null) {
                                                                        i11 = R$id.titleLayout;
                                                                        ConstraintLayout constraintLayout2 = (ConstraintLayout) g4.b.a(view, i11);
                                                                        if (constraintLayout2 != null) {
                                                                            i11 = R$id.tv_terms;
                                                                            AppCompatTextView appCompatTextView2 = (AppCompatTextView) g4.b.a(view, i11);
                                                                            if (appCompatTextView2 != null) {
                                                                                return new d((ConstraintLayout) view, appCompatImageView, appCompatImageView2, appCompatImageView3, recyclerView, hVarA, prizeFlowView, cardView, cardView2, prizeListView, constraintLayout, cardView3, redeemView, cardView4, rewardsCenterTaskView, cardView5, nestedScrollView, appCompatTextView, constraintLayout2, appCompatTextView2);
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
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

    public static d c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static d d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_rewards_center, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f77364a;
    }
}
