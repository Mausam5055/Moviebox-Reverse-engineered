package com.vungle.ads;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.RelativeLayout;
import com.hisavana.common.tracking.TrackingKey;
import com.vungle.ads.internal.ImpressionTracker;
import com.vungle.ads.internal.model.AdPayload;
import com.vungle.ads.internal.model.BidPayload;
import com.vungle.ads.internal.presenter.MRAIDPresenter;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import com.vungle.ads.internal.ui.WatermarkView;
import com.vungle.ads.internal.ui.view.MRAIDAdWidget;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Deprecated;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
@Deprecated
@Metadata(d1 = {"\u0000\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u0000 A2\u00020\u0001:\u0001BBA\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0013\u001a\u00020\u0012H\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u0017\u0010\u0017\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u0015H\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\u0012H\u0002¢\u0006\u0004\b\u0019\u0010\u0014J\u000f\u0010\u001a\u001a\u00020\u0012H\u0002¢\u0006\u0004\b\u001a\u0010\u0014J\u0017\u0010\u001d\u001a\u00020\u00122\u0006\u0010\u001c\u001a\u00020\u001bH\u0014¢\u0006\u0004\b\u001d\u0010\u001eJ\u000f\u0010\u001f\u001a\u00020\u0012H\u0014¢\u0006\u0004\b\u001f\u0010\u0014J\u0015\u0010!\u001a\u00020\u00122\u0006\u0010 \u001a\u00020\u0015¢\u0006\u0004\b!\u0010\u0018R\u0017\u0010\u0005\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010\"\u001a\u0004\b#\u0010$R\u0017\u0010\u0007\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u0007\u0010%\u001a\u0004\b&\u0010'R\u0016\u0010(\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010)R\u0016\u0010*\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b*\u0010)R\u0018\u0010,\u001a\u0004\u0018\u00010+8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b,\u0010-R\u0018\u0010/\u001a\u0004\u0018\u00010.8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b/\u00100R\u0018\u00102\u001a\u0004\u0018\u0001018\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b2\u00103R\u0016\u00104\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b4\u00105R\u0014\u00107\u001a\u0002068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b7\u00108R\u0014\u00109\u001a\u0002068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b9\u00108R\u0014\u0010:\u001a\u0002068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b:\u00108R\u001b\u0010@\u001a\u00020;8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b<\u0010=\u001a\u0004\b>\u0010?¨\u0006I²\u0006\f\u0010D\u001a\u00020C8\nX\u008a\u0084\u0002²\u0006\f\u0010F\u001a\u00020E8\nX\u008a\u0084\u0002²\u0006\f\u0010H\u001a\u00020G8\nX\u008a\u0084\u0002"}, d2 = {"Lcom/vungle/ads/BannerView;", "Landroid/widget/RelativeLayout;", "Landroid/content/Context;", "context", "Lcom/vungle/ads/internal/model/g;", "placement", "Lcom/vungle/ads/internal/model/AdPayload;", "advertisement", "Lcom/vungle/ads/y;", "adSize", "Lcom/vungle/ads/b;", "adConfig", "Lcom/vungle/ads/internal/presenter/b;", "adPlayCallback", "Lcom/vungle/ads/internal/model/BidPayload;", "bidPayload", "<init>", "(Landroid/content/Context;Lcom/vungle/ads/internal/model/g;Lcom/vungle/ads/internal/model/AdPayload;Lcom/vungle/ads/y;Lcom/vungle/ads/b;Lcom/vungle/ads/internal/presenter/b;Lcom/vungle/ads/internal/model/BidPayload;)V", "", "logViewVisibleOnPlay", "()V", "", "isVisible", "setAdVisibility", "(Z)V", "checkHardwareAcceleration", "renderAd", "", "visibility", "onWindowVisibilityChanged", "(I)V", "onAttachedToWindow", "isFinishedByApi", "finishAdInternal", "Lcom/vungle/ads/internal/model/g;", "getPlacement", "()Lcom/vungle/ads/internal/model/g;", "Lcom/vungle/ads/internal/model/AdPayload;", "getAdvertisement", "()Lcom/vungle/ads/internal/model/AdPayload;", "calculatedPixelWidth", "I", "calculatedPixelHeight", "Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget;", "adWidget", "Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget;", "Lcom/vungle/ads/internal/presenter/MRAIDPresenter;", "presenter", "Lcom/vungle/ads/internal/presenter/MRAIDPresenter;", "Lcom/vungle/ads/internal/ui/WatermarkView;", "imageView", "Lcom/vungle/ads/internal/ui/WatermarkView;", "isOnImpressionCalled", "Z", "Ljava/util/concurrent/atomic/AtomicBoolean;", "destroyed", "Ljava/util/concurrent/atomic/AtomicBoolean;", "presenterStarted", "isInvisibleLogged", "Lcom/vungle/ads/internal/ImpressionTracker;", "impressionTracker$delegate", "Lkotlin/Lazy;", "getImpressionTracker", "()Lcom/vungle/ads/internal/ImpressionTracker;", "impressionTracker", "Companion", "c", "Lcom/vungle/ads/internal/executor/a;", "executors", "Lcom/vungle/ads/internal/omsdk/c$b;", "omTrackerFactory", "Lcom/vungle/ads/internal/platform/d;", TrackingKey.PLATFORM, "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class BannerView extends RelativeLayout {
    private static final String TAG = "BannerView";
    private MRAIDAdWidget adWidget;
    private final AdPayload advertisement;
    private int calculatedPixelHeight;
    private int calculatedPixelWidth;
    private final AtomicBoolean destroyed;
    private WatermarkView imageView;

    /* JADX INFO: renamed from: impressionTracker$delegate, reason: from kotlin metadata */
    private final Lazy impressionTracker;
    private final AtomicBoolean isInvisibleLogged;
    private boolean isOnImpressionCalled;
    private final com.vungle.ads.internal.model.g placement;
    private MRAIDPresenter presenter;
    private final AtomicBoolean presenterStarted;

    public static final class a implements MRAIDAdWidget.a {
        a() {
        }

        @Override // com.vungle.ads.internal.ui.view.MRAIDAdWidget.a
        public void close() {
            BannerView.this.finishAdInternal(false);
        }
    }

    public static final class b implements MRAIDAdWidget.c {
        b() {
        }

        @Override // com.vungle.ads.internal.ui.view.MRAIDAdWidget.c
        public boolean onTouch(MotionEvent motionEvent) {
            MRAIDPresenter mRAIDPresenter = BannerView.this.presenter;
            if (mRAIDPresenter == null) {
                return false;
            }
            mRAIDPresenter.onViewTouched(motionEvent);
            return false;
        }
    }

    public static final class d extends com.vungle.ads.internal.presenter.a {
        d(com.vungle.ads.internal.presenter.b bVar, com.vungle.ads.internal.model.g gVar) {
            super(bVar, gVar);
        }
    }

    public static final class e implements ImpressionTracker.b {
        e() {
        }

        @Override // com.vungle.ads.internal.ImpressionTracker.b
        public void onImpression(View view) {
            com.vungle.ads.internal.util.o.Companion.d(BannerView.TAG, "ImpressionTracker checked the banner view become visible.");
            BannerView.this.isOnImpressionCalled = true;
            BannerView.this.logViewVisibleOnPlay();
            BannerView.this.checkHardwareAcceleration();
            MRAIDPresenter mRAIDPresenter = BannerView.this.presenter;
            if (mRAIDPresenter != null) {
                mRAIDPresenter.start();
            }
        }

        @Override // com.vungle.ads.internal.ImpressionTracker.b
        public void onViewInvisible(View view) {
            if (BannerView.this.isInvisibleLogged.getAndSet(true)) {
                return;
            }
            com.vungle.ads.internal.util.o.Companion.d(BannerView.TAG, "ImpressionTracker checked the banner view invisible on play.");
            AnalyticsClient.INSTANCE.logMetric$vungle_ads_release(new w(Sdk$SDKMetric.SDKMetricType.AD_VISIBILITY), BannerView.this.getAdvertisement().getLogEntry$vungle_ads_release(), "1");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BannerView(final Context context, com.vungle.ads.internal.model.g placement, AdPayload advertisement, y adSize, com.vungle.ads.b adConfig, com.vungle.ads.internal.presenter.b adPlayCallback, BidPayload bidPayload) throws InstantiationException {
        super(context);
        Intrinsics.h(context, "context");
        Intrinsics.h(placement, "placement");
        Intrinsics.h(advertisement, "advertisement");
        Intrinsics.h(adSize, "adSize");
        Intrinsics.h(adConfig, "adConfig");
        Intrinsics.h(adPlayCallback, "adPlayCallback");
        this.placement = placement;
        this.advertisement = advertisement;
        this.destroyed = new AtomicBoolean(false);
        this.presenterStarted = new AtomicBoolean(false);
        this.isInvisibleLogged = new AtomicBoolean(false);
        this.impressionTracker = LazyKt.b(new Function0<ImpressionTracker>() { // from class: com.vungle.ads.BannerView$impressionTracker$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final ImpressionTracker invoke() {
                return new ImpressionTracker(context);
            }
        });
        com.vungle.ads.internal.util.w wVar = com.vungle.ads.internal.util.w.INSTANCE;
        this.calculatedPixelHeight = wVar.dpToPixels(context, adSize.getHeight());
        this.calculatedPixelWidth = wVar.dpToPixels(context, adSize.getWidth());
        d dVar = new d(adPlayCallback, placement);
        try {
            MRAIDAdWidget mRAIDAdWidget = new MRAIDAdWidget(context);
            this.adWidget = mRAIDAdWidget;
            mRAIDAdWidget.setCloseDelegate(new a());
            mRAIDAdWidget.setOnViewTouchListener(new b());
            ServiceLocator.Companion companion = ServiceLocator.Companion;
            LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
            Lazy lazyA = LazyKt.a(lazyThreadSafetyMode, new Function0<com.vungle.ads.internal.executor.a>() { // from class: com.vungle.ads.BannerView$special$$inlined$inject$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.executor.a, java.lang.Object] */
                @Override // kotlin.jvm.functions.Function0
                public final com.vungle.ads.internal.executor.a invoke() {
                    return ServiceLocator.Companion.getInstance(context).getService(com.vungle.ads.internal.executor.a.class);
                }
            });
            com.vungle.ads.internal.omsdk.c cVarMake = m329_init_$lambda2(LazyKt.a(lazyThreadSafetyMode, new Function0<com.vungle.ads.internal.omsdk.c.b>() { // from class: com.vungle.ads.BannerView$special$$inlined$inject$2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.omsdk.c$b, java.lang.Object] */
                @Override // kotlin.jvm.functions.Function0
                public final com.vungle.ads.internal.omsdk.c.b invoke() {
                    return ServiceLocator.Companion.getInstance(context).getService(com.vungle.ads.internal.omsdk.c.b.class);
                }
            })).make(advertisement.omEnabled());
            Lazy lazyA2 = LazyKt.a(lazyThreadSafetyMode, new Function0<com.vungle.ads.internal.platform.d>() { // from class: com.vungle.ads.BannerView$special$$inlined$inject$3
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.platform.d, java.lang.Object] */
                @Override // kotlin.jvm.functions.Function0
                public final com.vungle.ads.internal.platform.d invoke() {
                    return ServiceLocator.Companion.getInstance(context).getService(com.vungle.ads.internal.platform.d.class);
                }
            });
            com.vungle.ads.internal.ui.i iVar = new com.vungle.ads.internal.ui.i(advertisement, placement, m328_init_$lambda1(lazyA).getOffloadExecutor(), null, m330_init_$lambda3(lazyA2), 8, null);
            iVar.setWebViewObserver(cVarMake);
            MRAIDPresenter mRAIDPresenter = new MRAIDPresenter(mRAIDAdWidget, advertisement, placement, iVar, m328_init_$lambda1(lazyA).getJobExecutor(), cVarMake, bidPayload, m330_init_$lambda3(lazyA2));
            mRAIDPresenter.setEventListener(dVar);
            this.presenter = mRAIDPresenter;
            String watermark$vungle_ads_release = adConfig.getWatermark$vungle_ads_release();
            if (watermark$vungle_ads_release != null) {
                this.imageView = new WatermarkView(context, watermark$vungle_ads_release);
            }
        } catch (InstantiationException e11) {
            dVar.onError(new AdCantPlayWithoutWebView().setLogEntry$vungle_ads_release(this.advertisement.getLogEntry$vungle_ads_release()).logError$vungle_ads_release(), this.placement.getReferenceId());
            throw e11;
        }
    }

    /* JADX INFO: renamed from: _init_$lambda-1, reason: not valid java name */
    private static final com.vungle.ads.internal.executor.a m328_init_$lambda1(Lazy<? extends com.vungle.ads.internal.executor.a> lazy) {
        return (com.vungle.ads.internal.executor.a) lazy.getValue();
    }

    /* JADX INFO: renamed from: _init_$lambda-2, reason: not valid java name */
    private static final com.vungle.ads.internal.omsdk.c.b m329_init_$lambda2(Lazy<com.vungle.ads.internal.omsdk.c.b> lazy) {
        return (com.vungle.ads.internal.omsdk.c.b) lazy.getValue();
    }

    /* JADX INFO: renamed from: _init_$lambda-3, reason: not valid java name */
    private static final com.vungle.ads.internal.platform.d m330_init_$lambda3(Lazy<? extends com.vungle.ads.internal.platform.d> lazy) {
        return (com.vungle.ads.internal.platform.d) lazy.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void checkHardwareAcceleration() {
        com.vungle.ads.internal.util.o.Companion.w(TAG, "hardwareAccelerated = " + isHardwareAccelerated());
        if (isHardwareAccelerated()) {
            return;
        }
        AnalyticsClient.logMetric$vungle_ads_release$default(AnalyticsClient.INSTANCE, Sdk$SDKMetric.SDKMetricType.HARDWARE_ACCELERATE_DISABLED, 0L, this.advertisement.getLogEntry$vungle_ads_release(), null, 10, null);
    }

    private final ImpressionTracker getImpressionTracker() {
        return (ImpressionTracker) this.impressionTracker.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void logViewVisibleOnPlay() {
        String str = this.isInvisibleLogged.get() ? "3" : "2";
        AnalyticsClient.INSTANCE.logMetric$vungle_ads_release(new w(Sdk$SDKMetric.SDKMetricType.AD_VISIBILITY), this.advertisement.getLogEntry$vungle_ads_release(), str);
        com.vungle.ads.internal.util.o.Companion.d(TAG, "Log metric AD_VISIBILITY: " + str);
    }

    private final void renderAd() {
        MRAIDAdWidget mRAIDAdWidget = this.adWidget;
        if (mRAIDAdWidget != null) {
            if (!Intrinsics.c(mRAIDAdWidget != null ? mRAIDAdWidget.getParent() : null, this)) {
                addView(this.adWidget, this.calculatedPixelWidth, this.calculatedPixelHeight);
                WatermarkView watermarkView = this.imageView;
                if (watermarkView != null) {
                    addView(watermarkView, this.calculatedPixelWidth, this.calculatedPixelHeight);
                    WatermarkView watermarkView2 = this.imageView;
                    if (watermarkView2 != null) {
                        watermarkView2.bringToFront();
                    }
                }
            }
        }
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams != null) {
            layoutParams.height = this.calculatedPixelHeight;
            layoutParams.width = this.calculatedPixelWidth;
            requestLayout();
        }
    }

    private final void setAdVisibility(boolean isVisible) {
        MRAIDPresenter mRAIDPresenter;
        if (!this.isOnImpressionCalled || this.destroyed.get() || (mRAIDPresenter = this.presenter) == null) {
            return;
        }
        mRAIDPresenter.setAdVisibility(isVisible);
    }

    public final void finishAdInternal(boolean isFinishedByApi) {
        if (this.destroyed.get()) {
            return;
        }
        this.destroyed.set(true);
        int i11 = (isFinishedByApi ? 4 : 0) | 2;
        MRAIDPresenter mRAIDPresenter = this.presenter;
        if (mRAIDPresenter != null) {
            mRAIDPresenter.stop();
        }
        MRAIDPresenter mRAIDPresenter2 = this.presenter;
        if (mRAIDPresenter2 != null) {
            mRAIDPresenter2.detach(i11);
        }
        getImpressionTracker().destroy();
        try {
            ViewParent parent = getParent();
            if (parent != null && (parent instanceof ViewGroup)) {
                ((ViewGroup) parent).removeView(this);
            }
            removeAllViews();
        } catch (Exception e11) {
            com.vungle.ads.internal.util.o.Companion.d(TAG, "Removing webView error: " + e11);
        }
    }

    public final AdPayload getAdvertisement() {
        return this.advertisement;
    }

    public final com.vungle.ads.internal.model.g getPlacement() {
        return this.placement;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        com.vungle.ads.internal.util.o.Companion.d(TAG, "onAttachedToWindow()");
        if (!this.presenterStarted.getAndSet(true)) {
            MRAIDPresenter mRAIDPresenter = this.presenter;
            if (mRAIDPresenter != null) {
                mRAIDPresenter.prepare();
            }
            getImpressionTracker().addView(this, new e());
        }
        renderAd();
    }

    @Override // android.view.View
    protected void onWindowVisibilityChanged(int visibility) {
        super.onWindowVisibilityChanged(visibility);
        setAdVisibility(visibility == 0);
    }
}
