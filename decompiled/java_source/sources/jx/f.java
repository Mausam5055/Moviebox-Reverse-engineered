package jx;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.viewpager2.widget.ViewPager2;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.appbar.CollapsingToolbarLayout;
import com.tn.lib.view.bubbleview.BubbleTextView;
import com.transsion.baseui.widget.GradientTextView;
import com.transsion.videodetail.R$id;
import com.transsion.videodetail.R$layout;
import com.transsion.videodetail.music.widget.MusicDetailListOperateView;
import com.transsnet.downloader.widget.DownloadView;
import net.lucode.hackware.magicindicator.MagicIndicator;

/* JADX INFO: loaded from: classes7.dex */
public final class f implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f66367a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final BubbleTextView f66368b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppBarLayout f66369c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final DownloadView f66370d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final CoordinatorLayout f66371e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final FrameLayout f66372f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final FrameLayout f66373g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final FrameLayout f66374h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final FrameLayout f66375i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final FrameLayout f66376j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final AppCompatImageView f66377k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final AppCompatImageView f66378l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final ho.h f66379m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final MagicIndicator f66380n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final MusicDetailListOperateView f66381o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final ViewPager2 f66382p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final FrameLayout f66383q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final FrameLayout f66384r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final FrameLayout f66385s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final CollapsingToolbarLayout f66386t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final GradientTextView f66387u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final View f66388v;

    private f(ConstraintLayout constraintLayout, BubbleTextView bubbleTextView, AppBarLayout appBarLayout, DownloadView downloadView, CoordinatorLayout coordinatorLayout, FrameLayout frameLayout, FrameLayout frameLayout2, FrameLayout frameLayout3, FrameLayout frameLayout4, FrameLayout frameLayout5, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, ho.h hVar, MagicIndicator magicIndicator, MusicDetailListOperateView musicDetailListOperateView, ViewPager2 viewPager2, FrameLayout frameLayout6, FrameLayout frameLayout7, FrameLayout frameLayout8, CollapsingToolbarLayout collapsingToolbarLayout, GradientTextView gradientTextView, View view) {
        this.f66367a = constraintLayout;
        this.f66368b = bubbleTextView;
        this.f66369c = appBarLayout;
        this.f66370d = downloadView;
        this.f66371e = coordinatorLayout;
        this.f66372f = frameLayout;
        this.f66373g = frameLayout2;
        this.f66374h = frameLayout3;
        this.f66375i = frameLayout4;
        this.f66376j = frameLayout5;
        this.f66377k = appCompatImageView;
        this.f66378l = appCompatImageView2;
        this.f66379m = hVar;
        this.f66380n = magicIndicator;
        this.f66381o = musicDetailListOperateView;
        this.f66382p = viewPager2;
        this.f66383q = frameLayout6;
        this.f66384r = frameLayout7;
        this.f66385s = frameLayout8;
        this.f66386t = collapsingToolbarLayout;
        this.f66387u = gradientTextView;
        this.f66388v = view;
    }

    public static f a(View view) {
        View viewA;
        View viewA2;
        int i11 = R$id.activity_tip;
        BubbleTextView bubbleTextView = (BubbleTextView) g4.b.a(view, i11);
        if (bubbleTextView != null) {
            i11 = R$id.appBar;
            AppBarLayout appBarLayout = (AppBarLayout) g4.b.a(view, i11);
            if (appBarLayout != null) {
                i11 = R$id.btn_download;
                DownloadView downloadView = (DownloadView) g4.b.a(view, i11);
                if (downloadView != null) {
                    i11 = R$id.cdl;
                    CoordinatorLayout coordinatorLayout = (CoordinatorLayout) g4.b.a(view, i11);
                    if (coordinatorLayout != null) {
                        i11 = R$id.fl_bottom_dialog_container;
                        FrameLayout frameLayout = (FrameLayout) g4.b.a(view, i11);
                        if (frameLayout != null) {
                            i11 = R$id.flFullPlayerContainer;
                            FrameLayout frameLayout2 = (FrameLayout) g4.b.a(view, i11);
                            if (frameLayout2 != null) {
                                i11 = R$id.flMusicContainer;
                                FrameLayout frameLayout3 = (FrameLayout) g4.b.a(view, i11);
                                if (frameLayout3 != null) {
                                    i11 = R$id.flPlayer;
                                    FrameLayout frameLayout4 = (FrameLayout) g4.b.a(view, i11);
                                    if (frameLayout4 != null) {
                                        i11 = R$id.game_container;
                                        FrameLayout frameLayout5 = (FrameLayout) g4.b.a(view, i11);
                                        if (frameLayout5 != null) {
                                            i11 = R$id.ivBack;
                                            AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
                                            if (appCompatImageView != null) {
                                                i11 = R$id.iv_publish;
                                                AppCompatImageView appCompatImageView2 = (AppCompatImageView) g4.b.a(view, i11);
                                                if (appCompatImageView2 != null && (viewA = g4.b.a(view, (i11 = R$id.layout_sync_adjust))) != null) {
                                                    ho.h hVarA = ho.h.a(viewA);
                                                    i11 = R$id.magic_indicator;
                                                    MagicIndicator magicIndicator = (MagicIndicator) g4.b.a(view, i11);
                                                    if (magicIndicator != null) {
                                                        i11 = R$id.operateView;
                                                        MusicDetailListOperateView musicDetailListOperateView = (MusicDetailListOperateView) g4.b.a(view, i11);
                                                        if (musicDetailListOperateView != null) {
                                                            i11 = R$id.rec_view_pager;
                                                            ViewPager2 viewPager2 = (ViewPager2) g4.b.a(view, i11);
                                                            if (viewPager2 != null) {
                                                                i11 = R$id.resourceDetectorGroup;
                                                                FrameLayout frameLayout6 = (FrameLayout) g4.b.a(view, i11);
                                                                if (frameLayout6 != null) {
                                                                    i11 = R$id.subjectDetailLayout;
                                                                    FrameLayout frameLayout7 = (FrameLayout) g4.b.a(view, i11);
                                                                    if (frameLayout7 != null) {
                                                                        i11 = R$id.subjectDetailLayoutV2;
                                                                        FrameLayout frameLayout8 = (FrameLayout) g4.b.a(view, i11);
                                                                        if (frameLayout8 != null) {
                                                                            i11 = R$id.toolbar_layout;
                                                                            CollapsingToolbarLayout collapsingToolbarLayout = (CollapsingToolbarLayout) g4.b.a(view, i11);
                                                                            if (collapsingToolbarLayout != null) {
                                                                                i11 = R$id.tv_post;
                                                                                GradientTextView gradientTextView = (GradientTextView) g4.b.a(view, i11);
                                                                                if (gradientTextView != null && (viewA2 = g4.b.a(view, (i11 = R$id.vTopSpace))) != null) {
                                                                                    return new f((ConstraintLayout) view, bubbleTextView, appBarLayout, downloadView, coordinatorLayout, frameLayout, frameLayout2, frameLayout3, frameLayout4, frameLayout5, appCompatImageView, appCompatImageView2, hVarA, magicIndicator, musicDetailListOperateView, viewPager2, frameLayout6, frameLayout7, frameLayout8, collapsingToolbarLayout, gradientTextView, viewA2);
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

    public static f c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static f d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_music_detail_layout, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f66367a;
    }
}
