package bq;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.viewpager2.widget.ViewPager2;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.appbar.CollapsingToolbarLayout;
import com.tn.lib.view.RoomCacheAnimationView;
import com.tn.lib.view.bubbleview.BubbleTextView;
import com.transsion.baseui.widget.GradientTextView;
import com.transsion.baseui.widget.NestedSwipeRefreshLayout;
import com.transsion.room.R$id;
import com.transsion.room.R$layout;
import com.transsion.room.widget.CommunityRoomsView;
import net.lucode.hackware.magicindicator.MagicIndicator;

/* JADX INFO: loaded from: classes5.dex */
public final class q implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final NestedSwipeRefreshLayout f16844a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final BubbleTextView f16845b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppBarLayout f16846c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final RoomCacheAnimationView f16847d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AppCompatImageView f16848e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final MagicIndicator f16849f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final NestedSwipeRefreshLayout f16850g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final CollapsingToolbarLayout f16851h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final GradientTextView f16852i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final CommunityRoomsView f16853j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final ViewPager2 f16854k;

    private q(NestedSwipeRefreshLayout nestedSwipeRefreshLayout, BubbleTextView bubbleTextView, AppBarLayout appBarLayout, RoomCacheAnimationView roomCacheAnimationView, AppCompatImageView appCompatImageView, MagicIndicator magicIndicator, NestedSwipeRefreshLayout nestedSwipeRefreshLayout2, CollapsingToolbarLayout collapsingToolbarLayout, GradientTextView gradientTextView, CommunityRoomsView communityRoomsView, ViewPager2 viewPager2) {
        this.f16844a = nestedSwipeRefreshLayout;
        this.f16845b = bubbleTextView;
        this.f16846c = appBarLayout;
        this.f16847d = roomCacheAnimationView;
        this.f16848e = appCompatImageView;
        this.f16849f = magicIndicator;
        this.f16850g = nestedSwipeRefreshLayout2;
        this.f16851h = collapsingToolbarLayout;
        this.f16852i = gradientTextView;
        this.f16853j = communityRoomsView;
        this.f16854k = viewPager2;
    }

    public static q a(View view) {
        int i11 = R$id.activity_tip;
        BubbleTextView bubbleTextView = (BubbleTextView) g4.b.a(view, i11);
        if (bubbleTextView != null) {
            i11 = R$id.appBar;
            AppBarLayout appBarLayout = (AppBarLayout) g4.b.a(view, i11);
            if (appBarLayout != null) {
                i11 = R$id.iv_cache;
                RoomCacheAnimationView roomCacheAnimationView = (RoomCacheAnimationView) g4.b.a(view, i11);
                if (roomCacheAnimationView != null) {
                    i11 = R$id.iv_publish;
                    AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
                    if (appCompatImageView != null) {
                        i11 = R$id.magic_indicator;
                        MagicIndicator magicIndicator = (MagicIndicator) g4.b.a(view, i11);
                        if (magicIndicator != null) {
                            NestedSwipeRefreshLayout nestedSwipeRefreshLayout = (NestedSwipeRefreshLayout) view;
                            i11 = R$id.toolbar_layout;
                            CollapsingToolbarLayout collapsingToolbarLayout = (CollapsingToolbarLayout) g4.b.a(view, i11);
                            if (collapsingToolbarLayout != null) {
                                i11 = R$id.tv_post;
                                GradientTextView gradientTextView = (GradientTextView) g4.b.a(view, i11);
                                if (gradientTextView != null) {
                                    i11 = R$id.v_recommend_rooms;
                                    CommunityRoomsView communityRoomsView = (CommunityRoomsView) g4.b.a(view, i11);
                                    if (communityRoomsView != null) {
                                        i11 = R$id.view_pager;
                                        ViewPager2 viewPager2 = (ViewPager2) g4.b.a(view, i11);
                                        if (viewPager2 != null) {
                                            return new q(nestedSwipeRefreshLayout, bubbleTextView, appBarLayout, roomCacheAnimationView, appCompatImageView, magicIndicator, nestedSwipeRefreshLayout, collapsingToolbarLayout, gradientTextView, communityRoomsView, viewPager2);
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

    public static q c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static q d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_room_home, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public NestedSwipeRefreshLayout getRoot() {
        return this.f16844a;
    }
}
