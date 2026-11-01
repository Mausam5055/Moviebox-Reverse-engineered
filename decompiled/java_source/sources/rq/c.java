package rq;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.widget.NestedScrollView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import com.transsion.search.R$id;
import com.transsion.search.R$layout;
import com.transsion.search.ad.SearchHotAdContainerView;
import net.lucode.hackware.magicindicator.MagicIndicator;

/* JADX INFO: loaded from: classes6.dex */
public final class c implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final NestedScrollView f74605a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SearchHotAdContainerView f74606b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final RecyclerView f74607c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final CardView f74608d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ProgressBar f74609e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ConstraintLayout f74610f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final RecyclerView f74611g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ConstraintLayout f74612h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final ImageView f74613i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final TextView f74614j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final View f74615k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final MagicIndicator f74616l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final ImageView f74617m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final RelativeLayout f74618n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final ViewPager2 f74619o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final NestedScrollView f74620p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final TextView f74621q;

    private c(NestedScrollView nestedScrollView, SearchHotAdContainerView searchHotAdContainerView, RecyclerView recyclerView, CardView cardView, ProgressBar progressBar, ConstraintLayout constraintLayout, RecyclerView recyclerView2, ConstraintLayout constraintLayout2, ImageView imageView, TextView textView, View view, MagicIndicator magicIndicator, ImageView imageView2, RelativeLayout relativeLayout, ViewPager2 viewPager2, NestedScrollView nestedScrollView2, TextView textView2) {
        this.f74605a = nestedScrollView;
        this.f74606b = searchHotAdContainerView;
        this.f74607c = recyclerView;
        this.f74608d = cardView;
        this.f74609e = progressBar;
        this.f74610f = constraintLayout;
        this.f74611g = recyclerView2;
        this.f74612h = constraintLayout2;
        this.f74613i = imageView;
        this.f74614j = textView;
        this.f74615k = view;
        this.f74616l = magicIndicator;
        this.f74617m = imageView2;
        this.f74618n = relativeLayout;
        this.f74619o = viewPager2;
        this.f74620p = nestedScrollView2;
        this.f74621q = textView2;
    }

    public static c a(View view) {
        View viewA;
        int i11 = R$id.ad_container_view;
        SearchHotAdContainerView searchHotAdContainerView = (SearchHotAdContainerView) g4.b.a(view, i11);
        if (searchHotAdContainerView != null) {
            i11 = R$id.everyone_search_rv;
            RecyclerView recyclerView = (RecyclerView) g4.b.a(view, i11);
            if (recyclerView != null) {
                i11 = R$id.native_ad_container;
                CardView cardView = (CardView) g4.b.a(view, i11);
                if (cardView != null) {
                    i11 = R$id.progress_bar;
                    ProgressBar progressBar = (ProgressBar) g4.b.a(view, i11);
                    if (progressBar != null) {
                        i11 = R$id.rl_tips;
                        ConstraintLayout constraintLayout = (ConstraintLayout) g4.b.a(view, i11);
                        if (constraintLayout != null) {
                            i11 = R$id.rv_history;
                            RecyclerView recyclerView2 = (RecyclerView) g4.b.a(view, i11);
                            if (recyclerView2 != null) {
                                i11 = R$id.search_hot_everyone_linear;
                                ConstraintLayout constraintLayout2 = (ConstraintLayout) g4.b.a(view, i11);
                                if (constraintLayout2 != null) {
                                    i11 = R$id.search_hot_everyone_title_image;
                                    ImageView imageView = (ImageView) g4.b.a(view, i11);
                                    if (imageView != null) {
                                        i11 = R$id.search_hot_everyone_title_text;
                                        TextView textView = (TextView) g4.b.a(view, i11);
                                        if (textView != null && (viewA = g4.b.a(view, (i11 = R$id.search_hot_rank_indicator_linear))) != null) {
                                            i11 = R$id.search_hot_rank_magic_indicator;
                                            MagicIndicator magicIndicator = (MagicIndicator) g4.b.a(view, i11);
                                            if (magicIndicator != null) {
                                                i11 = R$id.search_hot_rank_magic_indicator_image;
                                                ImageView imageView2 = (ImageView) g4.b.a(view, i11);
                                                if (imageView2 != null) {
                                                    i11 = R$id.search_hot_rank_magic_indicator_ll;
                                                    RelativeLayout relativeLayout = (RelativeLayout) g4.b.a(view, i11);
                                                    if (relativeLayout != null) {
                                                        i11 = R$id.search_hot_rank_view_pager;
                                                        ViewPager2 viewPager2 = (ViewPager2) g4.b.a(view, i11);
                                                        if (viewPager2 != null) {
                                                            NestedScrollView nestedScrollView = (NestedScrollView) view;
                                                            i11 = R$id.tv_clear;
                                                            TextView textView2 = (TextView) g4.b.a(view, i11);
                                                            if (textView2 != null) {
                                                                return new c(nestedScrollView, searchHotAdContainerView, recyclerView, cardView, progressBar, constraintLayout, recyclerView2, constraintLayout2, imageView, textView, viewA, magicIndicator, imageView2, relativeLayout, viewPager2, nestedScrollView, textView2);
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

    public static c c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static c d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_hot_search, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public NestedScrollView getRoot() {
        return this.f74605a;
    }
}
