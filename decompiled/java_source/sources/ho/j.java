package ho;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.avery.subtitle.widget.SimpleSubtitleView;
import com.transsion.ad.view.CustomRoundCornerLayout;
import com.transsion.player.longvideo.R$id;
import com.transsion.player.longvideo.R$layout;
import com.transsion.player.longvideo.intercept.PlaybackInterceptAdView;
import com.transsion.player.longvideo.intercept.PlaybackPremiumTipView;
import com.transsion.player.longvideo.intercept.VideoContentInterceptView;
import com.transsion.player.ui.longvideo.ORLongVodPlayerView;

/* JADX INFO: loaded from: classes6.dex */
public final class j implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final View f64611a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ConstraintLayout f64612b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final FrameLayout f64613c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final CustomRoundCornerLayout f64614d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final FrameLayout f64615e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final LinearLayoutCompat f64616f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final View f64617g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final k f64618h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final l f64619i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final i f64620j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final AppCompatImageView f64621k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final View f64622l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final ORLongVodPlayerView f64623m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final VideoContentInterceptView f64624n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final PlaybackPremiumTipView f64625o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final PlaybackInterceptAdView f64626p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final AppCompatTextView f64627q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final AppCompatTextView f64628r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final SimpleSubtitleView f64629s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final SimpleSubtitleView f64630t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final ImageView f64631u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final ViewStub f64632v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final ViewStub f64633w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final ViewStub f64634x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final ViewStub f64635y;

    private j(View view, ConstraintLayout constraintLayout, FrameLayout frameLayout, CustomRoundCornerLayout customRoundCornerLayout, FrameLayout frameLayout2, LinearLayoutCompat linearLayoutCompat, View view2, k kVar, l lVar, i iVar, AppCompatImageView appCompatImageView, View view3, ORLongVodPlayerView oRLongVodPlayerView, VideoContentInterceptView videoContentInterceptView, PlaybackPremiumTipView playbackPremiumTipView, PlaybackInterceptAdView playbackInterceptAdView, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, SimpleSubtitleView simpleSubtitleView, SimpleSubtitleView simpleSubtitleView2, ImageView imageView, ViewStub viewStub, ViewStub viewStub2, ViewStub viewStub3, ViewStub viewStub4) {
        this.f64611a = view;
        this.f64612b = constraintLayout;
        this.f64613c = frameLayout;
        this.f64614d = customRoundCornerLayout;
        this.f64615e = frameLayout2;
        this.f64616f = linearLayoutCompat;
        this.f64617g = view2;
        this.f64618h = kVar;
        this.f64619i = lVar;
        this.f64620j = iVar;
        this.f64621k = appCompatImageView;
        this.f64622l = view3;
        this.f64623m = oRLongVodPlayerView;
        this.f64624n = videoContentInterceptView;
        this.f64625o = playbackPremiumTipView;
        this.f64626p = playbackInterceptAdView;
        this.f64627q = appCompatTextView;
        this.f64628r = appCompatTextView2;
        this.f64629s = simpleSubtitleView;
        this.f64630t = simpleSubtitleView2;
        this.f64631u = imageView;
        this.f64632v = viewStub;
        this.f64633w = viewStub2;
        this.f64634x = viewStub3;
        this.f64635y = viewStub4;
    }

    public static j a(View view) {
        View viewA;
        View viewA2;
        View viewA3;
        int i11 = R$id.clPlayer;
        ConstraintLayout constraintLayout = (ConstraintLayout) g4.b.a(view, i11);
        if (constraintLayout != null) {
            i11 = R$id.flLandscapePremium;
            FrameLayout frameLayout = (FrameLayout) g4.b.a(view, i11);
            if (frameLayout != null) {
                i11 = R$id.flResolution;
                CustomRoundCornerLayout customRoundCornerLayout = (CustomRoundCornerLayout) g4.b.a(view, i11);
                if (customRoundCornerLayout != null) {
                    i11 = R$id.flRootSubtitle;
                    FrameLayout frameLayout2 = (FrameLayout) g4.b.a(view, i11);
                    if (frameLayout2 != null) {
                        i11 = R$id.flSubtitle;
                        LinearLayoutCompat linearLayoutCompat = (LinearLayoutCompat) g4.b.a(view, i11);
                        if (linearLayoutCompat != null && (viewA = g4.b.a(view, (i11 = R$id.guideline))) != null && (viewA2 = g4.b.a(view, (i11 = R$id.layout_land))) != null) {
                            k kVarA = k.a(viewA2);
                            i11 = R$id.layout_middle;
                            View viewA4 = g4.b.a(view, i11);
                            if (viewA4 != null) {
                                l lVarA = l.a(viewA4);
                                i11 = R$id.layout_top_tool_bar;
                                View viewA5 = g4.b.a(view, i11);
                                if (viewA5 != null) {
                                    i iVarA = i.a(viewA5);
                                    i11 = R$id.or_long_vod_iv_bg;
                                    AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
                                    if (appCompatImageView != null && (viewA3 = g4.b.a(view, (i11 = R$id.or_long_vod_player_bg))) != null) {
                                        i11 = R$id.or_long_vod_view;
                                        ORLongVodPlayerView oRLongVodPlayerView = (ORLongVodPlayerView) g4.b.a(view, i11);
                                        if (oRLongVodPlayerView != null) {
                                            i11 = R$id.playbackInterceptView;
                                            VideoContentInterceptView videoContentInterceptView = (VideoContentInterceptView) g4.b.a(view, i11);
                                            if (videoContentInterceptView != null) {
                                                i11 = R$id.premiumTipView;
                                                PlaybackPremiumTipView playbackPremiumTipView = (PlaybackPremiumTipView) g4.b.a(view, i11);
                                                if (playbackPremiumTipView != null) {
                                                    i11 = R$id.startInterceptView;
                                                    PlaybackInterceptAdView playbackInterceptAdView = (PlaybackInterceptAdView) g4.b.a(view, i11);
                                                    if (playbackInterceptAdView != null) {
                                                        i11 = R$id.tv_center_progress;
                                                        AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
                                                        if (appCompatTextView != null) {
                                                            i11 = R$id.tvPressSpeed;
                                                            AppCompatTextView appCompatTextView2 = (AppCompatTextView) g4.b.a(view, i11);
                                                            if (appCompatTextView2 != null) {
                                                                i11 = R$id.vSubtitleBottom;
                                                                SimpleSubtitleView simpleSubtitleView = (SimpleSubtitleView) g4.b.a(view, i11);
                                                                if (simpleSubtitleView != null) {
                                                                    i11 = R$id.vSubtitleTop;
                                                                    SimpleSubtitleView simpleSubtitleView2 = (SimpleSubtitleView) g4.b.a(view, i11);
                                                                    if (simpleSubtitleView2 != null) {
                                                                        i11 = R$id.v_top_space;
                                                                        ImageView imageView = (ImageView) g4.b.a(view, i11);
                                                                        if (imageView != null) {
                                                                            i11 = R$id.vs_load_fail;
                                                                            ViewStub viewStub = (ViewStub) g4.b.a(view, i11);
                                                                            if (viewStub != null) {
                                                                                i11 = R$id.vs_mobile_data;
                                                                                ViewStub viewStub2 = (ViewStub) g4.b.a(view, i11);
                                                                                if (viewStub2 != null) {
                                                                                    i11 = R$id.vs_replay;
                                                                                    ViewStub viewStub3 = (ViewStub) g4.b.a(view, i11);
                                                                                    if (viewStub3 != null) {
                                                                                        i11 = R$id.vs_toast;
                                                                                        ViewStub viewStub4 = (ViewStub) g4.b.a(view, i11);
                                                                                        if (viewStub4 != null) {
                                                                                            return new j(view, constraintLayout, frameLayout, customRoundCornerLayout, frameLayout2, linearLayoutCompat, viewA, kVarA, lVarA, iVarA, appCompatImageView, viewA3, oRLongVodPlayerView, videoContentInterceptView, playbackPremiumTipView, playbackInterceptAdView, appCompatTextView, appCompatTextView2, simpleSubtitleView, simpleSubtitleView2, imageView, viewStub, viewStub2, viewStub3, viewStub4);
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
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static j b(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        if (viewGroup == null) {
            throw new NullPointerException("parent");
        }
        layoutInflater.inflate(R$layout.long_vod_view_player, viewGroup);
        return a(viewGroup);
    }

    @Override // g4.a
    public View getRoot() {
        return this.f64611a;
    }
}
