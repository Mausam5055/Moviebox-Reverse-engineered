package com.vungle.ads;

import android.content.Context;
import android.content.IntentFilter;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.RelativeLayout;
import com.cloud.tmc.integration.ui.p001native.NativeImgComponent;
import com.hisavana.common.tracking.TrackingKey;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.vungle.ads.internal.AdInternal;
import com.vungle.ads.internal.BannerAdImpl;
import com.vungle.ads.internal.ImpressionTracker;
import com.vungle.ads.internal.model.AdPayload;
import com.vungle.ads.internal.presenter.MRAIDPresenter;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import com.vungle.ads.internal.ui.WatermarkView;
import com.vungle.ads.internal.ui.view.MRAIDAdWidget;
import com.vungle.ads.internal.util.RingerModeReceiver;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000¤\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 c2\u00020\u0001:\u0001dB\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\nH\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\fH\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\fH\u0002¢\u0006\u0004\b\u0011\u0010\u0010J\u000f\u0010\u0012\u001a\u00020\fH\u0002¢\u0006\u0004\b\u0012\u0010\u0010J\u0017\u0010\u0014\u001a\u00020\f2\u0006\u0010\u0013\u001a\u00020\nH\u0002¢\u0006\u0004\b\u0014\u0010\u000eJ\u000f\u0010\u0015\u001a\u00020\fH\u0002¢\u0006\u0004\b\u0015\u0010\u0010J\u0017\u0010\u0018\u001a\u00020\f2\u0006\u0010\u0017\u001a\u00020\u0016H\u0002¢\u0006\u0004\b\u0018\u0010\u0019J'\u0010\u001f\u001a\u00020\f2\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u001e\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u001f\u0010 J\r\u0010!\u001a\u00020\u0006¢\u0006\u0004\b!\u0010\"J\u0019\u0010$\u001a\u00020\f2\n\b\u0002\u0010#\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b$\u0010%J\r\u0010&\u001a\u00020\f¢\u0006\u0004\b&\u0010\u0010J\u0017\u0010)\u001a\u00020\f2\u0006\u0010(\u001a\u00020'H\u0014¢\u0006\u0004\b)\u0010*J\u000f\u0010+\u001a\u00020\fH\u0014¢\u0006\u0004\b+\u0010\u0010J\u000f\u0010,\u001a\u00020\fH\u0014¢\u0006\u0004\b,\u0010\u0010R\u0017\u0010\u0005\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010-\u001a\u0004\b.\u0010/R\u0017\u0010\u0007\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u0007\u00100\u001a\u0004\b1\u0010\"R\u0014\u00103\u001a\u0002028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b3\u00104R$\u00106\u001a\u0004\u0018\u0001058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b6\u00107\u001a\u0004\b8\u00109\"\u0004\b:\u0010;R\u0014\u0010=\u001a\u00020<8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b=\u0010>R\u0016\u0010?\u001a\u00020'8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b?\u0010@R\u0016\u0010A\u001a\u00020'8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bA\u0010@R\u0018\u0010C\u001a\u0004\u0018\u00010B8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bC\u0010DR\u0018\u0010F\u001a\u0004\u0018\u00010E8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bF\u0010GR\u0018\u0010I\u001a\u0004\u0018\u00010H8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bI\u0010JR\u0016\u0010K\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bK\u0010LR\u0014\u0010N\u001a\u00020M8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bN\u0010OR\u0014\u0010P\u001a\u00020M8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bP\u0010OR\u0014\u0010Q\u001a\u00020M8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bQ\u0010OR\u0014\u0010R\u001a\u00020M8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bR\u0010OR\u0014\u0010S\u001a\u00020M8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bS\u0010OR\u001b\u0010Y\u001a\u00020T8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bU\u0010V\u001a\u0004\bW\u0010XR\u0016\u0010Z\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bZ\u0010LR\u0011\u0010^\u001a\u00020[8F¢\u0006\u0006\u001a\u0004\b\\\u0010]R\u0013\u0010`\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0006\u001a\u0004\b_\u0010/R\u0013\u0010b\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0006\u001a\u0004\ba\u0010/¨\u0006k²\u0006\f\u0010f\u001a\u00020e8\nX\u008a\u0084\u0002²\u0006\f\u0010h\u001a\u00020g8\nX\u008a\u0084\u0002²\u0006\f\u0010j\u001a\u00020i8\nX\u008a\u0084\u0002"}, d2 = {"Lcom/vungle/ads/VungleBannerView;", "Landroid/widget/RelativeLayout;", "Landroid/content/Context;", "context", "", "placementId", "Lcom/vungle/ads/y;", "adSize", "<init>", "(Landroid/content/Context;Ljava/lang/String;Lcom/vungle/ads/y;)V", "", "isVisible", "", "setAdVisibility", "(Z)V", "checkHardwareAcceleration", "()V", "logViewVisibleOnPlay", "logViewInvisibleOnPlay", "isFinishedByApi", "finishAdInternal", "renderAd", "Lcom/vungle/ads/BaseAd;", "baseAd", "onBannerAdLoaded", "(Lcom/vungle/ads/BaseAd;)V", "Lcom/vungle/ads/internal/model/AdPayload;", "advertisement", "Lcom/vungle/ads/internal/model/g;", "placement", "fixedAdSize", "willPresentAdView", "(Lcom/vungle/ads/internal/model/AdPayload;Lcom/vungle/ads/internal/model/g;Lcom/vungle/ads/y;)V", "getAdViewSize", "()Lcom/vungle/ads/y;", "adMarkup", NativeImgComponent.EVENT_LOAD, "(Ljava/lang/String;)V", "finishAd", "", "visibility", "onWindowVisibilityChanged", "(I)V", "onAttachedToWindow", "onDetachedFromWindow", "Ljava/lang/String;", "getPlacementId", "()Ljava/lang/String;", "Lcom/vungle/ads/y;", "getAdSize", "Lcom/vungle/ads/internal/util/RingerModeReceiver;", "ringerModeReceiver", "Lcom/vungle/ads/internal/util/RingerModeReceiver;", "Lcom/vungle/ads/g;", "adListener", "Lcom/vungle/ads/g;", "getAdListener", "()Lcom/vungle/ads/g;", "setAdListener", "(Lcom/vungle/ads/g;)V", "Lcom/vungle/ads/internal/BannerAdImpl;", "adViewImpl", "Lcom/vungle/ads/internal/BannerAdImpl;", "calculatedPixelWidth", "I", "calculatedPixelHeight", "Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget;", "adWidget", "Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget;", "Lcom/vungle/ads/internal/presenter/MRAIDPresenter;", "presenter", "Lcom/vungle/ads/internal/presenter/MRAIDPresenter;", "Lcom/vungle/ads/internal/ui/WatermarkView;", "imageView", "Lcom/vungle/ads/internal/ui/WatermarkView;", "isOnImpressionCalled", "Z", "Ljava/util/concurrent/atomic/AtomicBoolean;", "destroyed", "Ljava/util/concurrent/atomic/AtomicBoolean;", "presenterStarted", "isAdDownloaded", "isAdAttachedToWindow", "isInvisibleLogged", "Lcom/vungle/ads/internal/ImpressionTracker;", "impressionTracker$delegate", "Lkotlin/Lazy;", "getImpressionTracker", "()Lcom/vungle/ads/internal/ImpressionTracker;", "impressionTracker", "isReceiverRegistered", "Lcom/vungle/ads/b;", "getAdConfig", "()Lcom/vungle/ads/b;", "adConfig", "getCreativeId", "creativeId", "getEventId", "eventId", "Companion", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lcom/vungle/ads/internal/executor/a;", "executors", "Lcom/vungle/ads/internal/omsdk/c$b;", "omTrackerFactory", "Lcom/vungle/ads/internal/platform/d;", TrackingKey.PLATFORM, "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class VungleBannerView extends RelativeLayout {
    private static final String TAG = "VungleBannerView";
    private g adListener;
    private final y adSize;
    private final BannerAdImpl adViewImpl;
    private MRAIDAdWidget adWidget;
    private int calculatedPixelHeight;
    private int calculatedPixelWidth;
    private final AtomicBoolean destroyed;
    private WatermarkView imageView;

    /* JADX INFO: renamed from: impressionTracker$delegate, reason: from kotlin metadata */
    private final Lazy impressionTracker;
    private final AtomicBoolean isAdAttachedToWindow;
    private final AtomicBoolean isAdDownloaded;
    private final AtomicBoolean isInvisibleLogged;
    private boolean isOnImpressionCalled;
    private boolean isReceiverRegistered;
    private final String placementId;
    private MRAIDPresenter presenter;
    private final AtomicBoolean presenterStarted;
    private final RingerModeReceiver ringerModeReceiver;

    public static final class a implements g {
        a() {
        }

        @Override // com.vungle.ads.g, com.vungle.ads.h
        public void onAdClicked(BaseAd baseAd) {
            Intrinsics.h(baseAd, "baseAd");
            g adListener = VungleBannerView.this.getAdListener();
            if (adListener != null) {
                adListener.onAdClicked(baseAd);
            }
        }

        @Override // com.vungle.ads.g, com.vungle.ads.h
        public void onAdEnd(BaseAd baseAd) {
            Intrinsics.h(baseAd, "baseAd");
            g adListener = VungleBannerView.this.getAdListener();
            if (adListener != null) {
                adListener.onAdEnd(baseAd);
            }
        }

        @Override // com.vungle.ads.g, com.vungle.ads.h
        public void onAdFailedToLoad(BaseAd baseAd, VungleError adError) {
            Intrinsics.h(baseAd, "baseAd");
            Intrinsics.h(adError, "adError");
            g adListener = VungleBannerView.this.getAdListener();
            if (adListener != null) {
                adListener.onAdFailedToLoad(baseAd, adError);
            }
        }

        @Override // com.vungle.ads.g, com.vungle.ads.h
        public void onAdFailedToPlay(BaseAd baseAd, VungleError adError) {
            Intrinsics.h(baseAd, "baseAd");
            Intrinsics.h(adError, "adError");
            g adListener = VungleBannerView.this.getAdListener();
            if (adListener != null) {
                adListener.onAdFailedToPlay(baseAd, adError);
            }
        }

        @Override // com.vungle.ads.g, com.vungle.ads.h
        public void onAdImpression(BaseAd baseAd) {
            Intrinsics.h(baseAd, "baseAd");
            g adListener = VungleBannerView.this.getAdListener();
            if (adListener != null) {
                adListener.onAdImpression(baseAd);
            }
        }

        @Override // com.vungle.ads.g, com.vungle.ads.h
        public void onAdLeftApplication(BaseAd baseAd) {
            Intrinsics.h(baseAd, "baseAd");
            g adListener = VungleBannerView.this.getAdListener();
            if (adListener != null) {
                adListener.onAdLeftApplication(baseAd);
            }
        }

        @Override // com.vungle.ads.g, com.vungle.ads.h
        public void onAdLoaded(BaseAd baseAd) {
            Intrinsics.h(baseAd, "baseAd");
            VungleBannerView.this.onBannerAdLoaded(baseAd);
        }

        @Override // com.vungle.ads.g, com.vungle.ads.h
        public void onAdStart(BaseAd baseAd) {
            Intrinsics.h(baseAd, "baseAd");
            g adListener = VungleBannerView.this.getAdListener();
            if (adListener != null) {
                adListener.onAdStart(baseAd);
            }
        }
    }

    public static final class c implements ImpressionTracker.b {
        c() {
        }

        @Override // com.vungle.ads.internal.ImpressionTracker.b
        public void onImpression(View view) {
            com.vungle.ads.internal.util.o.Companion.d(VungleBannerView.TAG, "ImpressionTracker checked the banner view become visible.");
            VungleBannerView.this.isOnImpressionCalled = true;
            VungleBannerView.this.logViewVisibleOnPlay();
            VungleBannerView.this.checkHardwareAcceleration();
            MRAIDPresenter mRAIDPresenter = VungleBannerView.this.presenter;
            if (mRAIDPresenter != null) {
                mRAIDPresenter.start();
            }
        }

        @Override // com.vungle.ads.internal.ImpressionTracker.b
        public void onViewInvisible(View view) {
            VungleBannerView.this.logViewInvisibleOnPlay();
        }
    }

    public static final class d implements MRAIDAdWidget.a {
        d() {
        }

        @Override // com.vungle.ads.internal.ui.view.MRAIDAdWidget.a
        public void close() {
            VungleBannerView.this.finishAdInternal(false);
        }
    }

    public static final class e implements MRAIDAdWidget.c {
        e() {
        }

        @Override // com.vungle.ads.internal.ui.view.MRAIDAdWidget.c
        public boolean onTouch(MotionEvent motionEvent) {
            MRAIDPresenter mRAIDPresenter = VungleBannerView.this.presenter;
            if (mRAIDPresenter == null) {
                return false;
            }
            mRAIDPresenter.onViewTouched(motionEvent);
            return false;
        }
    }

    public static final class f extends com.vungle.ads.internal.presenter.a {
        f(com.vungle.ads.internal.presenter.c cVar, com.vungle.ads.internal.model.g gVar) {
            super(cVar, gVar);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VungleBannerView(final Context context, String placementId, y adSize) {
        super(context);
        Intrinsics.h(context, "context");
        Intrinsics.h(placementId, "placementId");
        Intrinsics.h(adSize, "adSize");
        this.placementId = placementId;
        this.adSize = adSize;
        this.ringerModeReceiver = new RingerModeReceiver();
        BannerAdImpl bannerAdImpl = new BannerAdImpl(context, placementId, adSize, new b());
        this.adViewImpl = bannerAdImpl;
        this.destroyed = new AtomicBoolean(false);
        this.presenterStarted = new AtomicBoolean(false);
        this.isAdDownloaded = new AtomicBoolean(false);
        this.isAdAttachedToWindow = new AtomicBoolean(false);
        this.isInvisibleLogged = new AtomicBoolean(false);
        this.impressionTracker = LazyKt.b(new Function0<ImpressionTracker>() { // from class: com.vungle.ads.VungleBannerView$impressionTracker$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final ImpressionTracker invoke() {
                return new ImpressionTracker(context);
            }
        });
        bannerAdImpl.setAdListener(new a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void checkHardwareAcceleration() {
        com.vungle.ads.internal.util.o.Companion.w(TAG, "hardwareAccelerated = " + isHardwareAccelerated());
        if (isHardwareAccelerated()) {
            return;
        }
        AnalyticsClient.logMetric$vungle_ads_release$default(AnalyticsClient.INSTANCE, Sdk$SDKMetric.SDKMetricType.HARDWARE_ACCELERATE_DISABLED, 0L, this.adViewImpl.getLogEntry$vungle_ads_release(), null, 10, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
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

    private final ImpressionTracker getImpressionTracker() {
        return (ImpressionTracker) this.impressionTracker.getValue();
    }

    public static /* synthetic */ void load$default(VungleBannerView vungleBannerView, String str, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = null;
        }
        vungleBannerView.load(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void logViewInvisibleOnPlay() {
        if (this.isInvisibleLogged.getAndSet(true)) {
            return;
        }
        com.vungle.ads.internal.util.o.Companion.d(TAG, "ImpressionTracker checked the banner view invisible on play. " + hashCode());
        AnalyticsClient.INSTANCE.logMetric$vungle_ads_release(new w(Sdk$SDKMetric.SDKMetricType.AD_VISIBILITY), this.adViewImpl.getLogEntry$vungle_ads_release(), "1");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void logViewVisibleOnPlay() {
        String str = this.isInvisibleLogged.get() ? "3" : "2";
        AnalyticsClient.INSTANCE.logMetric$vungle_ads_release(new w(Sdk$SDKMetric.SDKMetricType.AD_VISIBILITY), this.adViewImpl.getLogEntry$vungle_ads_release(), str);
        com.vungle.ads.internal.util.o.Companion.d(TAG, "Log metric AD_VISIBILITY: " + str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onBannerAdLoaded(BaseAd baseAd) {
        AnalyticsClient analyticsClient = AnalyticsClient.INSTANCE;
        AnalyticsClient.logMetric$vungle_ads_release$default(analyticsClient, new w(Sdk$SDKMetric.SDKMetricType.PLAY_AD_API), this.adViewImpl.getLogEntry$vungle_ads_release(), (String) null, 4, (Object) null);
        this.adViewImpl.getAdInternal$vungle_ads_release().getShowToValidationMetric$vungle_ads_release().markStart();
        VungleError vungleErrorCanPlayAd = this.adViewImpl.getAdInternal$vungle_ads_release().canPlayAd(true);
        if (vungleErrorCanPlayAd != null) {
            if (this.adViewImpl.getAdInternal$vungle_ads_release().isErrorTerminal$vungle_ads_release(vungleErrorCanPlayAd.getCode())) {
                this.adViewImpl.getAdInternal$vungle_ads_release().setAdState(AdInternal.AdState.ERROR);
            }
            g gVar = this.adListener;
            if (gVar != null) {
                gVar.onAdFailedToPlay(baseAd, vungleErrorCanPlayAd);
                return;
            }
            return;
        }
        AdPayload advertisement = this.adViewImpl.getAdInternal$vungle_ads_release().getAdvertisement();
        com.vungle.ads.internal.model.g placement = this.adViewImpl.getAdInternal$vungle_ads_release().getPlacement();
        if (advertisement == null || placement == null) {
            g gVar2 = this.adListener;
            if (gVar2 != null) {
                gVar2.onAdFailedToPlay(baseAd, new AdNotLoadedCantPlay("Ad or Placement is null").setLogEntry$vungle_ads_release(this.adViewImpl.getLogEntry$vungle_ads_release()).logError$vungle_ads_release());
                return;
            }
            return;
        }
        this.adViewImpl.getAdInternal$vungle_ads_release().cancelDownload$vungle_ads_release();
        try {
            willPresentAdView(advertisement, placement, getAdViewSize());
            this.adViewImpl.getResponseToShowMetric$vungle_ads_release().markEnd();
            AnalyticsClient.logMetric$vungle_ads_release$default(analyticsClient, this.adViewImpl.getResponseToShowMetric$vungle_ads_release(), this.adViewImpl.getLogEntry$vungle_ads_release(), (String) null, 4, (Object) null);
            this.adViewImpl.getShowToCloseMetric$vungle_ads_release().markStart();
            this.adViewImpl.getShowToFailMetric$vungle_ads_release().markStart();
            this.isAdDownloaded.set(true);
            g gVar3 = this.adListener;
            if (gVar3 != null) {
                gVar3.onAdLoaded(baseAd);
            }
            renderAd();
        } catch (InstantiationException unused) {
        }
    }

    private final void renderAd() {
        if (this.destroyed.get()) {
            com.vungle.ads.internal.util.o.Companion.w(TAG, "renderAd() - destroyed");
            return;
        }
        if (!this.isAdDownloaded.get()) {
            com.vungle.ads.internal.util.o.Companion.d(TAG, "renderAd() - not ready: not downloaded.");
            return;
        }
        if (!this.isAdAttachedToWindow.get()) {
            com.vungle.ads.internal.util.o.Companion.d(TAG, "renderAd() - not ready: not attached.");
            logViewInvisibleOnPlay();
            return;
        }
        if (!this.presenterStarted.getAndSet(true)) {
            this.adViewImpl.getAdInternal$vungle_ads_release().getShowToValidationMetric$vungle_ads_release().markEnd();
            AnalyticsClient.logMetric$vungle_ads_release$default(AnalyticsClient.INSTANCE, this.adViewImpl.getAdInternal$vungle_ads_release().getShowToValidationMetric$vungle_ads_release(), this.adViewImpl.getLogEntry$vungle_ads_release(), (String) null, 4, (Object) null);
            this.adViewImpl.getAdInternal$vungle_ads_release().getValidationToPresentMetric$vungle_ads_release().markStart();
            MRAIDPresenter mRAIDPresenter = this.presenter;
            if (mRAIDPresenter != null) {
                mRAIDPresenter.prepare();
            }
            getImpressionTracker().addView(this, new c());
        }
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

    private final void willPresentAdView(AdPayload advertisement, com.vungle.ads.internal.model.g placement, y fixedAdSize) throws InstantiationException {
        com.vungle.ads.internal.util.w wVar = com.vungle.ads.internal.util.w.INSTANCE;
        Context context = getContext();
        Intrinsics.g(context, "context");
        this.calculatedPixelHeight = wVar.dpToPixels(context, fixedAdSize.getHeight());
        Context context2 = getContext();
        Intrinsics.g(context2, "context");
        this.calculatedPixelWidth = wVar.dpToPixels(context2, fixedAdSize.getWidth());
        f fVar = new f(this.adViewImpl.getAdPlayCallback$vungle_ads_release(), this.adViewImpl.getAdInternal$vungle_ads_release().getPlacement());
        try {
            Context context3 = getContext();
            Intrinsics.g(context3, "context");
            MRAIDAdWidget mRAIDAdWidget = new MRAIDAdWidget(context3);
            this.adWidget = mRAIDAdWidget;
            mRAIDAdWidget.setCloseDelegate(new d());
            mRAIDAdWidget.setOnViewTouchListener(new e());
            ServiceLocator.Companion companion = ServiceLocator.Companion;
            final Context context4 = getContext();
            Intrinsics.g(context4, "context");
            LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
            Lazy lazyA = LazyKt.a(lazyThreadSafetyMode, new Function0<com.vungle.ads.internal.executor.a>() { // from class: com.vungle.ads.VungleBannerView$willPresentAdView$$inlined$inject$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.executor.a, java.lang.Object] */
                @Override // kotlin.jvm.functions.Function0
                public final com.vungle.ads.internal.executor.a invoke() {
                    return ServiceLocator.Companion.getInstance(context4).getService(com.vungle.ads.internal.executor.a.class);
                }
            });
            final Context context5 = getContext();
            Intrinsics.g(context5, "context");
            com.vungle.ads.internal.omsdk.c cVarMake = m351willPresentAdView$lambda2(LazyKt.a(lazyThreadSafetyMode, new Function0<com.vungle.ads.internal.omsdk.c.b>() { // from class: com.vungle.ads.VungleBannerView$willPresentAdView$$inlined$inject$2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.omsdk.c$b, java.lang.Object] */
                @Override // kotlin.jvm.functions.Function0
                public final com.vungle.ads.internal.omsdk.c.b invoke() {
                    return ServiceLocator.Companion.getInstance(context5).getService(com.vungle.ads.internal.omsdk.c.b.class);
                }
            })).make(advertisement.omEnabled());
            final Context context6 = getContext();
            Intrinsics.g(context6, "context");
            Lazy lazyA2 = LazyKt.a(lazyThreadSafetyMode, new Function0<com.vungle.ads.internal.platform.d>() { // from class: com.vungle.ads.VungleBannerView$willPresentAdView$$inlined$inject$3
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.platform.d, java.lang.Object] */
                @Override // kotlin.jvm.functions.Function0
                public final com.vungle.ads.internal.platform.d invoke() {
                    return ServiceLocator.Companion.getInstance(context6).getService(com.vungle.ads.internal.platform.d.class);
                }
            });
            com.vungle.ads.internal.ui.i iVar = new com.vungle.ads.internal.ui.i(advertisement, placement, m350willPresentAdView$lambda1(lazyA).getOffloadExecutor(), null, m352willPresentAdView$lambda3(lazyA2), 8, null);
            this.ringerModeReceiver.setWebClient(iVar);
            iVar.setWebViewObserver(cVarMake);
            MRAIDPresenter mRAIDPresenter = new MRAIDPresenter(mRAIDAdWidget, advertisement, placement, iVar, m350willPresentAdView$lambda1(lazyA).getJobExecutor(), cVarMake, this.adViewImpl.getAdInternal$vungle_ads_release().getBidPayload(), m352willPresentAdView$lambda3(lazyA2));
            mRAIDPresenter.setEventListener(fVar);
            this.presenter = mRAIDPresenter;
            String watermark$vungle_ads_release = getAdConfig().getWatermark$vungle_ads_release();
            if (watermark$vungle_ads_release != null) {
                Context context7 = getContext();
                Intrinsics.g(context7, "context");
                this.imageView = new WatermarkView(context7, watermark$vungle_ads_release);
            }
        } catch (InstantiationException e11) {
            fVar.onError(new AdCantPlayWithoutWebView().setLogEntry$vungle_ads_release(this.adViewImpl.getLogEntry$vungle_ads_release()).logError$vungle_ads_release(), this.placementId);
            throw e11;
        }
    }

    /* JADX INFO: renamed from: willPresentAdView$lambda-1, reason: not valid java name */
    private static final com.vungle.ads.internal.executor.a m350willPresentAdView$lambda1(Lazy<? extends com.vungle.ads.internal.executor.a> lazy) {
        return (com.vungle.ads.internal.executor.a) lazy.getValue();
    }

    /* JADX INFO: renamed from: willPresentAdView$lambda-2, reason: not valid java name */
    private static final com.vungle.ads.internal.omsdk.c.b m351willPresentAdView$lambda2(Lazy<com.vungle.ads.internal.omsdk.c.b> lazy) {
        return (com.vungle.ads.internal.omsdk.c.b) lazy.getValue();
    }

    /* JADX INFO: renamed from: willPresentAdView$lambda-3, reason: not valid java name */
    private static final com.vungle.ads.internal.platform.d m352willPresentAdView$lambda3(Lazy<? extends com.vungle.ads.internal.platform.d> lazy) {
        return (com.vungle.ads.internal.platform.d) lazy.getValue();
    }

    public final void finishAd() {
        com.vungle.ads.internal.util.u.INSTANCE.runOnUiThread(new Function0<Unit>() { // from class: com.vungle.ads.VungleBannerView.finishAd.1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Object invoke() {
                m353invoke();
                return Unit.f67061a;
            }

            /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
            public final void m353invoke() {
                VungleBannerView.this.finishAdInternal(true);
            }
        });
    }

    public final b getAdConfig() {
        return this.adViewImpl.getAdConfig();
    }

    public final g getAdListener() {
        return this.adListener;
    }

    public final y getAdSize() {
        return this.adSize;
    }

    public final y getAdViewSize() {
        return this.adViewImpl.getAdViewSize();
    }

    public final String getCreativeId() {
        return this.adViewImpl.getCreativeId();
    }

    public final String getEventId() {
        return this.adViewImpl.getEventId();
    }

    public final String getPlacementId() {
        return this.placementId;
    }

    public final void load(String adMarkup) {
        this.adViewImpl.load(adMarkup);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        com.vungle.ads.internal.util.o.a aVar = com.vungle.ads.internal.util.o.Companion;
        aVar.d(TAG, "onAttachedToWindow(): " + hashCode());
        this.isAdAttachedToWindow.set(true);
        if (this.adViewImpl.getAdInternal$vungle_ads_release().getPlacement() != null) {
            try {
                if (!this.isReceiverRegistered) {
                    getContext().registerReceiver(this.ringerModeReceiver, new IntentFilter("android.media.RINGER_MODE_CHANGED"));
                    this.isReceiverRegistered = true;
                    aVar.d(TAG, "registerReceiver(): " + this.ringerModeReceiver.hashCode());
                }
            } catch (Exception e11) {
                com.vungle.ads.internal.util.o.Companion.e(TAG, "registerReceiver error: " + e11.getLocalizedMessage());
            }
        }
        renderAd();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        com.vungle.ads.internal.util.o.Companion.d(TAG, "onDetachedFromWindow(): " + hashCode());
        this.isAdAttachedToWindow.set(false);
        if (this.adViewImpl.getAdInternal$vungle_ads_release().getPlacement() != null) {
            try {
                if (this.isReceiverRegistered) {
                    getContext().unregisterReceiver(this.ringerModeReceiver);
                    this.isReceiverRegistered = false;
                }
            } catch (Exception e11) {
                com.vungle.ads.internal.util.o.Companion.e(TAG, "unregisterReceiver error: " + e11.getLocalizedMessage());
            }
        }
    }

    @Override // android.view.View
    protected void onWindowVisibilityChanged(int visibility) {
        super.onWindowVisibilityChanged(visibility);
        setAdVisibility(visibility == 0);
    }

    public final void setAdListener(g gVar) {
        this.adListener = gVar;
    }
}
