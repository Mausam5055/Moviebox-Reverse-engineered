package py;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.noober.background.view.BLTextView;
import com.tn.lib.widget.TnTextView;
import com.transsion.ad.view.ScrollDetectFrameLayout;
import com.transsion.baseui.widget.GradientTextView;
import com.transsion.wrapperad.view.BiddingFloatingIrregularAnimationView;
import com.transsion.wrapperad.view.DownloadTopIrregularView;
import com.transsnet.downloader.R$id;
import com.transsnet.downloader.R$layout;
import com.transsnet.downloader.lottery.LotteryTipView;

/* JADX INFO: loaded from: classes7.dex */
public final class w implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ScrollDetectFrameLayout f72949a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final BiddingFloatingIrregularAnimationView f72950b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ConstraintLayout f72951c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ScrollDetectFrameLayout f72952d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final FrameLayout f72953e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AppCompatImageView f72954f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final LotteryTipView f72955g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final BLTextView f72956h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final DownloadTopIrregularView f72957i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final TnTextView f72958j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final GradientTextView f72959k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final View f72960l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final ImageView f72961m;

    private w(ScrollDetectFrameLayout scrollDetectFrameLayout, BiddingFloatingIrregularAnimationView biddingFloatingIrregularAnimationView, ConstraintLayout constraintLayout, ScrollDetectFrameLayout scrollDetectFrameLayout2, FrameLayout frameLayout, AppCompatImageView appCompatImageView, LotteryTipView lotteryTipView, BLTextView bLTextView, DownloadTopIrregularView downloadTopIrregularView, TnTextView tnTextView, GradientTextView gradientTextView, View view, ImageView imageView) {
        this.f72949a = scrollDetectFrameLayout;
        this.f72950b = biddingFloatingIrregularAnimationView;
        this.f72951c = constraintLayout;
        this.f72952d = scrollDetectFrameLayout2;
        this.f72953e = frameLayout;
        this.f72954f = appCompatImageView;
        this.f72955g = lotteryTipView;
        this.f72956h = bLTextView;
        this.f72957i = downloadTopIrregularView;
        this.f72958j = tnTextView;
        this.f72959k = gradientTextView;
        this.f72960l = view;
        this.f72961m = imageView;
    }

    public static w a(View view) {
        View viewA;
        int i11 = R$id.adFloatingView;
        BiddingFloatingIrregularAnimationView biddingFloatingIrregularAnimationView = (BiddingFloatingIrregularAnimationView) g4.b.a(view, i11);
        if (biddingFloatingIrregularAnimationView != null) {
            i11 = R$id.clContent;
            ConstraintLayout constraintLayout = (ConstraintLayout) g4.b.a(view, i11);
            if (constraintLayout != null) {
                ScrollDetectFrameLayout scrollDetectFrameLayout = (ScrollDetectFrameLayout) view;
                i11 = R$id.fl_container;
                FrameLayout frameLayout = (FrameLayout) g4.b.a(view, i11);
                if (frameLayout != null) {
                    i11 = R$id.iv_back;
                    AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
                    if (appCompatImageView != null) {
                        i11 = R$id.lotteryTipView;
                        LotteryTipView lotteryTipView = (LotteryTipView) g4.b.a(view, i11);
                        if (lotteryTipView != null) {
                            i11 = R$id.speedUpTip;
                            BLTextView bLTextView = (BLTextView) g4.b.a(view, i11);
                            if (bLTextView != null) {
                                i11 = R$id.topIrregularView;
                                DownloadTopIrregularView downloadTopIrregularView = (DownloadTopIrregularView) g4.b.a(view, i11);
                                if (downloadTopIrregularView != null) {
                                    i11 = R$id.tv_title;
                                    TnTextView tnTextView = (TnTextView) g4.b.a(view, i11);
                                    if (tnTextView != null) {
                                        i11 = R$id.tv_transfer;
                                        GradientTextView gradientTextView = (GradientTextView) g4.b.a(view, i11);
                                        if (gradientTextView != null && (viewA = g4.b.a(view, (i11 = R$id.v_line))) != null) {
                                            i11 = R$id.v_top_bg;
                                            ImageView imageView = (ImageView) g4.b.a(view, i11);
                                            if (imageView != null) {
                                                return new w(scrollDetectFrameLayout, biddingFloatingIrregularAnimationView, constraintLayout, scrollDetectFrameLayout, frameLayout, appCompatImageView, lotteryTipView, bLTextView, downloadTopIrregularView, tnTextView, gradientTextView, viewA, imageView);
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

    public static w c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static w d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_download_main, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ScrollDetectFrameLayout getRoot() {
        return this.f72949a;
    }
}
