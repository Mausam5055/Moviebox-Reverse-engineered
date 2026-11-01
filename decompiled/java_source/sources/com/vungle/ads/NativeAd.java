package com.vungle.ads;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.vungle.ads.internal.AdInternal;
import com.vungle.ads.internal.ImpressionTracker;
import com.vungle.ads.internal.model.AdPayload;
import com.vungle.ads.internal.presenter.NativeAdPresenter;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import com.vungle.ads.internal.ui.WatermarkView;
import com.vungle.ads.internal.ui.view.MediaView;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class NativeAd extends BaseAd {
    public static final int BOTTOM_LEFT = 2;
    public static final int BOTTOM_RIGHT = 3;
    public static final a Companion = new a(null);
    private static final String TAG = "NativeAd";
    public static final int TOP_LEFT = 0;
    public static final int TOP_RIGHT = 1;
    private MediaView adContentView;
    private ImageView adIconView;
    private int adOptionsPosition;
    private NativeAdOptionsView adOptionsView;
    private final NativeAd$adPlayCallback$1 adPlayCallback;
    private FrameLayout adRootView;
    private float aspectRatio;
    private Collection<? extends View> clickableViews;
    private final Lazy executors$delegate;
    private final Lazy imageLoader$delegate;
    private final Lazy impressionTracker$delegate;
    private final AtomicBoolean isInvisibleLogged;
    private Map<String, String> nativeAdAssetMap;
    private NativeAdPresenter presenter;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public static final class b implements ImpressionTracker.b {
        b() {
        }

        @Override // com.vungle.ads.internal.ImpressionTracker.b
        public void onImpression(View view) {
            com.vungle.ads.internal.util.o.Companion.d(NativeAd.TAG, "ImpressionTracker checked the native ad view become visible.");
            NativeAdPresenter nativeAdPresenter = NativeAd.this.presenter;
            if (nativeAdPresenter != null) {
                NativeAdPresenter.processCommand$default(nativeAdPresenter, "videoViewed", null, 2, null);
            }
            NativeAdPresenter nativeAdPresenter2 = NativeAd.this.presenter;
            if (nativeAdPresenter2 != null) {
                nativeAdPresenter2.processCommand("tpat", com.vungle.ads.internal.b.CHECKPOINT_0);
            }
            NativeAdPresenter nativeAdPresenter3 = NativeAd.this.presenter;
            if (nativeAdPresenter3 != null) {
                nativeAdPresenter3.onImpression();
            }
            NativeAd.this.logViewVisibleOnPlay();
        }

        @Override // com.vungle.ads.internal.ImpressionTracker.b
        public void onViewInvisible(View view) {
            if (NativeAd.this.isInvisibleLogged.getAndSet(true)) {
                return;
            }
            com.vungle.ads.internal.util.o.Companion.d(NativeAd.TAG, "ImpressionTracker checked the native ad view invisible on play.");
            AnalyticsClient.INSTANCE.logMetric$vungle_ads_release(new w(Sdk$SDKMetric.SDKMetricType.AD_VISIBILITY), NativeAd.this.getLogEntry$vungle_ads_release(), "1");
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public NativeAd(Context context, String placementId) {
        this(context, placementId, new com.vungle.ads.b());
        Intrinsics.h(context, "context");
        Intrinsics.h(placementId, "placementId");
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [com.vungle.ads.NativeAd$adPlayCallback$1] */
    private NativeAd(final Context context, String str, com.vungle.ads.b bVar) {
        super(context, str, bVar);
        this.imageLoader$delegate = LazyKt.b(new Function0<com.vungle.ads.internal.util.k>() { // from class: com.vungle.ads.NativeAd$imageLoader$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final com.vungle.ads.internal.util.k invoke() {
                com.vungle.ads.internal.util.k aVar = com.vungle.ads.internal.util.k.Companion.getInstance();
                aVar.init(this.this$0.getExecutors().getIoExecutor());
                return aVar;
            }
        });
        ServiceLocator.Companion companion = ServiceLocator.Companion;
        this.executors$delegate = LazyKt.a(LazyThreadSafetyMode.SYNCHRONIZED, new Function0<com.vungle.ads.internal.executor.a>() { // from class: com.vungle.ads.NativeAd$special$$inlined$inject$1
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
        this.impressionTracker$delegate = LazyKt.b(new Function0<ImpressionTracker>() { // from class: com.vungle.ads.NativeAd$impressionTracker$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final ImpressionTracker invoke() {
                return new ImpressionTracker(context);
            }
        });
        this.isInvisibleLogged = new AtomicBoolean(false);
        this.adOptionsPosition = 1;
        this.adOptionsView = new NativeAdOptionsView(context);
        this.adPlayCallback = new com.vungle.ads.internal.presenter.b() { // from class: com.vungle.ads.NativeAd$adPlayCallback$1
            @Override // com.vungle.ads.internal.presenter.b
            public void onAdClick(String str2) {
                com.vungle.ads.internal.util.u uVar = com.vungle.ads.internal.util.u.INSTANCE;
                final NativeAd nativeAd = this.this$0;
                uVar.runOnUiThread(new Function0<Unit>() { // from class: com.vungle.ads.NativeAd$adPlayCallback$1$onAdClick$1
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public /* bridge */ /* synthetic */ Object invoke() {
                        m343invoke();
                        return Unit.f67061a;
                    }

                    /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
                    public final void m343invoke() {
                        h adListener = nativeAd.getAdListener();
                        if (adListener != null) {
                            adListener.onAdClicked(nativeAd);
                        }
                    }
                });
                this.this$0.getDisplayToClickMetric$vungle_ads_release().markEnd();
                AnalyticsClient.logMetric$vungle_ads_release$default(AnalyticsClient.INSTANCE, this.this$0.getDisplayToClickMetric$vungle_ads_release(), this.this$0.getLogEntry$vungle_ads_release(), (String) null, 4, (Object) null);
            }

            @Override // com.vungle.ads.internal.presenter.b
            public void onAdEnd(String str2) {
                this.this$0.getAdInternal$vungle_ads_release().setAdState(AdInternal.AdState.FINISHED);
                com.vungle.ads.internal.util.u uVar = com.vungle.ads.internal.util.u.INSTANCE;
                final NativeAd nativeAd = this.this$0;
                uVar.runOnUiThread(new Function0<Unit>() { // from class: com.vungle.ads.NativeAd$adPlayCallback$1$onAdEnd$1
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public /* bridge */ /* synthetic */ Object invoke() {
                        m344invoke();
                        return Unit.f67061a;
                    }

                    /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
                    public final void m344invoke() {
                        h adListener = nativeAd.getAdListener();
                        if (adListener != null) {
                            adListener.onAdEnd(nativeAd);
                        }
                    }
                });
                this.this$0.getShowToCloseMetric$vungle_ads_release().markEnd();
                AnalyticsClient.logMetric$vungle_ads_release$default(AnalyticsClient.INSTANCE, this.this$0.getShowToCloseMetric$vungle_ads_release(), this.this$0.getLogEntry$vungle_ads_release(), (String) null, 4, (Object) null);
            }

            @Override // com.vungle.ads.internal.presenter.b
            public void onAdImpression(String str2) {
                com.vungle.ads.internal.util.u uVar = com.vungle.ads.internal.util.u.INSTANCE;
                final NativeAd nativeAd = this.this$0;
                uVar.runOnUiThread(new Function0<Unit>() { // from class: com.vungle.ads.NativeAd$adPlayCallback$1$onAdImpression$1
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public /* bridge */ /* synthetic */ Object invoke() {
                        m345invoke();
                        return Unit.f67061a;
                    }

                    /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
                    public final void m345invoke() {
                        h adListener = nativeAd.getAdListener();
                        if (adListener != null) {
                            adListener.onAdImpression(nativeAd);
                        }
                    }
                });
                this.this$0.getPresentToDisplayMetric$vungle_ads_release().markEnd();
                AnalyticsClient.logMetric$vungle_ads_release$default(AnalyticsClient.INSTANCE, this.this$0.getPresentToDisplayMetric$vungle_ads_release(), this.this$0.getLogEntry$vungle_ads_release(), (String) null, 4, (Object) null);
                this.this$0.getDisplayToClickMetric$vungle_ads_release().markStart();
            }

            @Override // com.vungle.ads.internal.presenter.b
            public void onAdLeftApplication(String str2) {
                com.vungle.ads.internal.util.u uVar = com.vungle.ads.internal.util.u.INSTANCE;
                final NativeAd nativeAd = this.this$0;
                uVar.runOnUiThread(new Function0<Unit>() { // from class: com.vungle.ads.NativeAd$adPlayCallback$1$onAdLeftApplication$1
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public /* bridge */ /* synthetic */ Object invoke() {
                        m346invoke();
                        return Unit.f67061a;
                    }

                    /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
                    public final void m346invoke() {
                        h adListener = nativeAd.getAdListener();
                        if (adListener != null) {
                            adListener.onAdLeftApplication(nativeAd);
                        }
                    }
                });
                AnalyticsClient.logMetric$vungle_ads_release$default(AnalyticsClient.INSTANCE, this.this$0.getLeaveApplicationMetric$vungle_ads_release(), this.this$0.getLogEntry$vungle_ads_release(), (String) null, 4, (Object) null);
            }

            @Override // com.vungle.ads.internal.presenter.b
            public void onAdRewarded(String str2) {
            }

            @Override // com.vungle.ads.internal.presenter.b
            public void onAdStart(String str2) {
                this.this$0.getAdInternal$vungle_ads_release().setAdState(AdInternal.AdState.PLAYING);
                this.this$0.getSignalManager$vungle_ads_release().increaseSessionDepthCounter();
                this.this$0.getAdInternal$vungle_ads_release().getValidationToPresentMetric$vungle_ads_release().markEnd();
                AnalyticsClient.logMetric$vungle_ads_release$default(AnalyticsClient.INSTANCE, this.this$0.getAdInternal$vungle_ads_release().getValidationToPresentMetric$vungle_ads_release(), this.this$0.getLogEntry$vungle_ads_release(), (String) null, 4, (Object) null);
                this.this$0.getPresentToDisplayMetric$vungle_ads_release().markStart();
                com.vungle.ads.internal.util.u uVar = com.vungle.ads.internal.util.u.INSTANCE;
                final NativeAd nativeAd = this.this$0;
                uVar.runOnUiThread(new Function0<Unit>() { // from class: com.vungle.ads.NativeAd$adPlayCallback$1$onAdStart$1
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public /* bridge */ /* synthetic */ Object invoke() {
                        m347invoke();
                        return Unit.f67061a;
                    }

                    /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
                    public final void m347invoke() {
                        h adListener = nativeAd.getAdListener();
                        if (adListener != null) {
                            adListener.onAdStart(nativeAd);
                        }
                    }
                });
            }

            @Override // com.vungle.ads.internal.presenter.b
            public void onFailure(final VungleError error) {
                Intrinsics.h(error, "error");
                this.this$0.getAdInternal$vungle_ads_release().setAdState(AdInternal.AdState.ERROR);
                com.vungle.ads.internal.util.u uVar = com.vungle.ads.internal.util.u.INSTANCE;
                final NativeAd nativeAd = this.this$0;
                uVar.runOnUiThread(new Function0<Unit>() { // from class: com.vungle.ads.NativeAd$adPlayCallback$1$onFailure$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public /* bridge */ /* synthetic */ Object invoke() {
                        m348invoke();
                        return Unit.f67061a;
                    }

                    /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
                    public final void m348invoke() {
                        h adListener = nativeAd.getAdListener();
                        if (adListener != null) {
                            adListener.onAdFailedToPlay(nativeAd, error);
                        }
                    }
                });
                this.this$0.getShowToFailMetric$vungle_ads_release().markEnd();
                AnalyticsClient.INSTANCE.logMetric$vungle_ads_release(this.this$0.getShowToFailMetric$vungle_ads_release(), this.this$0.getLogEntry$vungle_ads_release(), String.valueOf(error.getCode()));
            }
        };
    }

    private final void createMediaAspectRatio() {
        getImageLoader().getImageSize(getMainImagePath(), new Function2<Integer, Integer, Unit>() { // from class: com.vungle.ads.NativeAd.createMediaAspectRatio.1
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                invoke(((Number) obj).intValue(), ((Number) obj2).intValue());
                return Unit.f67061a;
            }

            public final void invoke(int i11, int i12) {
                NativeAd.this.aspectRatio = i11 / i12;
            }
        });
    }

    private final void displayImage(String str, final ImageView imageView) {
        getImageLoader().displayImage(str, new Function1<Bitmap, Unit>() { // from class: com.vungle.ads.NativeAd.displayImage.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                invoke((Bitmap) obj);
                return Unit.f67061a;
            }

            public final void invoke(final Bitmap it) {
                Intrinsics.h(it, "it");
                final ImageView imageView2 = imageView;
                if (imageView2 != null) {
                    com.vungle.ads.internal.util.u.INSTANCE.runOnUiThread(new Function0<Unit>() { // from class: com.vungle.ads.NativeAd.displayImage.1.1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(0);
                        }

                        @Override // kotlin.jvm.functions.Function0
                        public /* bridge */ /* synthetic */ Object invoke() {
                            m349invoke();
                            return Unit.f67061a;
                        }

                        /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
                        public final void m349invoke() {
                            imageView2.setImageBitmap(it);
                        }
                    });
                }
            }
        });
    }

    public static /* synthetic */ void getAdOptionsPosition$annotations() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final com.vungle.ads.internal.executor.a getExecutors() {
        return (com.vungle.ads.internal.executor.a) this.executors$delegate.getValue();
    }

    private final com.vungle.ads.internal.util.k getImageLoader() {
        return (com.vungle.ads.internal.util.k) this.imageLoader$delegate.getValue();
    }

    private final ImpressionTracker getImpressionTracker() {
        return (ImpressionTracker) this.impressionTracker$delegate.getValue();
    }

    private final String getMainImagePath() {
        String str;
        Map<String, String> map = this.nativeAdAssetMap;
        return (map == null || (str = map.get(com.vungle.ads.internal.f.TOKEN_MAIN_IMAGE)) == null) ? "" : str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void logViewVisibleOnPlay() {
        String str = this.isInvisibleLogged.get() ? "3" : "2";
        AnalyticsClient.INSTANCE.logMetric$vungle_ads_release(new w(Sdk$SDKMetric.SDKMetricType.AD_VISIBILITY), getLogEntry$vungle_ads_release(), str);
        com.vungle.ads.internal.util.o.Companion.d(TAG, "Log metric AD_VISIBILITY: " + str);
    }

    /* JADX INFO: renamed from: registerViewForInteraction$lambda-1, reason: not valid java name */
    private static final com.vungle.ads.internal.platform.d m340registerViewForInteraction$lambda1(Lazy<? extends com.vungle.ads.internal.platform.d> lazy) {
        return (com.vungle.ads.internal.platform.d) lazy.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: registerViewForInteraction$lambda-2, reason: not valid java name */
    public static final void m341registerViewForInteraction$lambda2(NativeAd this$0, View view) {
        Intrinsics.h(this$0, "this$0");
        NativeAdPresenter nativeAdPresenter = this$0.presenter;
        if (nativeAdPresenter != null) {
            nativeAdPresenter.processCommand("openPrivacy", this$0.getPrivacyUrl$vungle_ads_release());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: registerViewForInteraction$lambda-4$lambda-3, reason: not valid java name */
    public static final void m342registerViewForInteraction$lambda4$lambda3(NativeAd this$0, View view) {
        Intrinsics.h(this$0, "this$0");
        NativeAdPresenter nativeAdPresenter = this$0.presenter;
        if (nativeAdPresenter != null) {
            nativeAdPresenter.processCommand("download", this$0.getCtaUrl$vungle_ads_release());
        }
    }

    @Override // com.vungle.ads.BaseAd
    public com.vungle.ads.internal.f constructAdInternal$vungle_ads_release(Context context) {
        Intrinsics.h(context, "context");
        return new com.vungle.ads.internal.f(context);
    }

    public final String getAdBodyText() {
        String str;
        Map<String, String> map = this.nativeAdAssetMap;
        return (map == null || (str = map.get(com.vungle.ads.internal.f.TOKEN_APP_DESCRIPTION)) == null) ? "" : str;
    }

    public final String getAdCallToActionText() {
        String str;
        Map<String, String> map = this.nativeAdAssetMap;
        return (map == null || (str = map.get(com.vungle.ads.internal.f.TOKEN_CTA_BUTTON_TEXT)) == null) ? "" : str;
    }

    public final int getAdOptionsPosition() {
        return this.adOptionsPosition;
    }

    public final String getAdSponsoredText() {
        String str;
        Map<String, String> map = this.nativeAdAssetMap;
        return (map == null || (str = map.get(com.vungle.ads.internal.f.TOKEN_SPONSORED_BY)) == null) ? "" : str;
    }

    public final Double getAdStarRating() {
        String str;
        Map<String, String> map = this.nativeAdAssetMap;
        if (map == null || (str = map.get(com.vungle.ads.internal.f.TOKEN_APP_RATING_VALUE)) == null) {
            str = "";
        }
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return Double.valueOf(str);
        } catch (Exception unused) {
            return null;
        }
    }

    public final String getAdTitle() {
        String str;
        Map<String, String> map = this.nativeAdAssetMap;
        return (map == null || (str = map.get(com.vungle.ads.internal.f.TOKEN_APP_NAME)) == null) ? "" : str;
    }

    public final String getAppIcon() {
        String str;
        Map<String, String> map = this.nativeAdAssetMap;
        return (map == null || (str = map.get(com.vungle.ads.internal.f.TOKEN_APP_ICON)) == null) ? "" : str;
    }

    public final String getCtaUrl$vungle_ads_release() {
        String str;
        Map<String, String> map = this.nativeAdAssetMap;
        return (map == null || (str = map.get(com.vungle.ads.internal.f.TOKEN_CTA_BUTTON_URL)) == null) ? "" : str;
    }

    public final float getMediaAspectRatio() {
        return this.aspectRatio;
    }

    public final String getPrivacyIconUrl$vungle_ads_release() {
        String str;
        Map<String, String> map = this.nativeAdAssetMap;
        return (map == null || (str = map.get(com.vungle.ads.internal.f.TOKEN_VUNGLE_PRIVACY_ICON_URL)) == null) ? "" : str;
    }

    public final String getPrivacyUrl$vungle_ads_release() {
        String str;
        Map<String, String> map = this.nativeAdAssetMap;
        return (map == null || (str = map.get(com.vungle.ads.internal.f.TOKEN_VUNGLE_PRIVACY_URL)) == null) ? "" : str;
    }

    public final boolean hasCallToAction() {
        return getCtaUrl$vungle_ads_release().length() > 0;
    }

    @Override // com.vungle.ads.BaseAd
    public void onAdLoaded$vungle_ads_release(AdPayload advertisement) {
        Intrinsics.h(advertisement, "advertisement");
        super.onAdLoaded$vungle_ads_release(advertisement);
        this.nativeAdAssetMap = advertisement.getMRAIDArgsInMap();
        createMediaAspectRatio();
    }

    public final void performCTA() {
        NativeAdPresenter nativeAdPresenter = this.presenter;
        if (nativeAdPresenter != null) {
            nativeAdPresenter.processCommand("download", getCtaUrl$vungle_ads_release());
        }
    }

    public final void registerViewForInteraction(FrameLayout rootView, MediaView mediaView, ImageView imageView, Collection<? extends View> collection) {
        String str;
        Intrinsics.h(rootView, "rootView");
        Intrinsics.h(mediaView, "mediaView");
        AnalyticsClient analyticsClient = AnalyticsClient.INSTANCE;
        AnalyticsClient.logMetric$vungle_ads_release$default(analyticsClient, new w(Sdk$SDKMetric.SDKMetricType.PLAY_AD_API), getLogEntry$vungle_ads_release(), (String) null, 4, (Object) null);
        getResponseToShowMetric$vungle_ads_release().markEnd();
        AnalyticsClient.logMetric$vungle_ads_release$default(analyticsClient, getResponseToShowMetric$vungle_ads_release(), getLogEntry$vungle_ads_release(), (String) null, 4, (Object) null);
        getAdInternal$vungle_ads_release().getShowToValidationMetric$vungle_ads_release().markStart();
        getShowToFailMetric$vungle_ads_release().markStart();
        getShowToCloseMetric$vungle_ads_release().markStart();
        VungleError vungleErrorCanPlayAd = getAdInternal$vungle_ads_release().canPlayAd(true);
        if (vungleErrorCanPlayAd != null) {
            if (getAdInternal$vungle_ads_release().isErrorTerminal$vungle_ads_release(vungleErrorCanPlayAd.getCode())) {
                getAdInternal$vungle_ads_release().setAdState(AdInternal.AdState.ERROR);
                Map<String, String> map = this.nativeAdAssetMap;
                if (map != null) {
                    map.clear();
                }
            }
            h adListener = getAdListener();
            if (adListener != null) {
                adListener.onAdFailedToPlay(this, vungleErrorCanPlayAd);
                return;
            }
            return;
        }
        this.adRootView = rootView;
        this.adContentView = mediaView;
        this.adIconView = imageView;
        this.clickableViews = collection;
        ServiceLocator.Companion companion = ServiceLocator.Companion;
        final Context context = getContext();
        Lazy lazyA = LazyKt.a(LazyThreadSafetyMode.SYNCHRONIZED, new Function0<com.vungle.ads.internal.platform.d>() { // from class: com.vungle.ads.NativeAd$registerViewForInteraction$$inlined$inject$1
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
        Context context2 = getContext();
        com.vungle.ads.internal.load.a adInternal$vungle_ads_release = getAdInternal$vungle_ads_release();
        Intrinsics.f(adInternal$vungle_ads_release, "null cannot be cast to non-null type com.vungle.ads.internal.presenter.NativePresenterDelegate");
        this.presenter = new NativeAdPresenter(context2, (com.vungle.ads.internal.presenter.k) adInternal$vungle_ads_release, getAdInternal$vungle_ads_release().getAdvertisement(), m340registerViewForInteraction$lambda1(lazyA));
        Map<String, String> map2 = this.nativeAdAssetMap;
        if (map2 == null || (str = map2.get(com.vungle.ads.internal.f.TOKEN_OM_SDK_DATA)) == null) {
            str = "";
        }
        NativeAdPresenter nativeAdPresenter = this.presenter;
        if (nativeAdPresenter != null) {
            nativeAdPresenter.initOMTracker(str);
        }
        NativeAdPresenter nativeAdPresenter2 = this.presenter;
        if (nativeAdPresenter2 != null) {
            nativeAdPresenter2.startTracking(rootView);
        }
        NativeAdPresenter nativeAdPresenter3 = this.presenter;
        if (nativeAdPresenter3 != null) {
            nativeAdPresenter3.setEventListener(new com.vungle.ads.internal.presenter.a(this.adPlayCallback, getAdInternal$vungle_ads_release().getPlacement()));
        }
        NativeAdOptionsView nativeAdOptionsView = this.adOptionsView;
        if (nativeAdOptionsView != null) {
            nativeAdOptionsView.setOnClickListener(new View.OnClickListener() { // from class: com.vungle.ads.q
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    NativeAd.m341registerViewForInteraction$lambda2(this.f60684a, view);
                }
            });
        }
        if (collection == null) {
            collection = CollectionsKt.e(mediaView);
        }
        Iterator<T> it = collection.iterator();
        while (it.hasNext()) {
            ((View) it.next()).setOnClickListener(new View.OnClickListener() { // from class: com.vungle.ads.r
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    NativeAd.m342registerViewForInteraction$lambda4$lambda3(this.f60685a, view);
                }
            });
        }
        NativeAdOptionsView nativeAdOptionsView2 = this.adOptionsView;
        if (nativeAdOptionsView2 != null) {
            nativeAdOptionsView2.renderTo(rootView, this.adOptionsPosition);
        }
        getImpressionTracker().addView(rootView, new b());
        displayImage(getMainImagePath(), mediaView.getMainImage$vungle_ads_release());
        displayImage(getAppIcon(), imageView);
        String privacyIconUrl$vungle_ads_release = getPrivacyIconUrl$vungle_ads_release();
        NativeAdOptionsView nativeAdOptionsView3 = this.adOptionsView;
        displayImage(privacyIconUrl$vungle_ads_release, nativeAdOptionsView3 != null ? nativeAdOptionsView3.getPrivacyIcon$vungle_ads_release() : null);
        String watermark$vungle_ads_release = getAdConfig().getWatermark$vungle_ads_release();
        if (watermark$vungle_ads_release != null) {
            Context context3 = rootView.getContext();
            Intrinsics.g(context3, "rootView.context");
            WatermarkView watermarkView = new WatermarkView(context3, watermark$vungle_ads_release);
            rootView.addView(watermarkView);
            watermarkView.bringToFront();
        }
        getAdInternal$vungle_ads_release().getShowToValidationMetric$vungle_ads_release().markEnd();
        AnalyticsClient.logMetric$vungle_ads_release$default(AnalyticsClient.INSTANCE, getAdInternal$vungle_ads_release().getShowToValidationMetric$vungle_ads_release(), getLogEntry$vungle_ads_release(), (String) null, 4, (Object) null);
        getAdInternal$vungle_ads_release().getValidationToPresentMetric$vungle_ads_release().markStart();
        NativeAdPresenter nativeAdPresenter4 = this.presenter;
        if (nativeAdPresenter4 != null) {
            nativeAdPresenter4.prepare();
        }
    }

    public final void setAdOptionsPosition(int i11) {
        this.adOptionsPosition = i11;
    }

    public final void unregisterView() {
        if (getAdInternal$vungle_ads_release().getAdState() == AdInternal.AdState.FINISHED) {
            return;
        }
        Collection<? extends View> collection = this.clickableViews;
        if (collection != null) {
            Iterator<T> it = collection.iterator();
            while (it.hasNext()) {
                ((View) it.next()).setOnClickListener(null);
            }
        }
        this.clickableViews = null;
        Map<String, String> map = this.nativeAdAssetMap;
        if (map != null) {
            map.clear();
        }
        getImpressionTracker().destroy();
        MediaView mediaView = this.adContentView;
        if (mediaView != null) {
            mediaView.destroy();
        }
        this.adContentView = null;
        NativeAdOptionsView nativeAdOptionsView = this.adOptionsView;
        if (nativeAdOptionsView != null) {
            nativeAdOptionsView.destroy();
        }
        this.adOptionsView = null;
        try {
            ImageView imageView = this.adIconView;
            Drawable drawable = imageView != null ? imageView.getDrawable() : null;
            if (drawable instanceof BitmapDrawable) {
                Bitmap bitmap = ((BitmapDrawable) drawable).getBitmap();
                if (!bitmap.isRecycled()) {
                    bitmap.recycle();
                }
            }
        } catch (Exception e11) {
            com.vungle.ads.internal.util.o.Companion.w(TAG, "error msg: " + e11.getLocalizedMessage());
        }
        ImageView imageView2 = this.adIconView;
        if (imageView2 != null) {
            imageView2.setImageDrawable(null);
        }
        this.adIconView = null;
        NativeAdPresenter nativeAdPresenter = this.presenter;
        if (nativeAdPresenter != null) {
            nativeAdPresenter.detach();
        }
    }
}
