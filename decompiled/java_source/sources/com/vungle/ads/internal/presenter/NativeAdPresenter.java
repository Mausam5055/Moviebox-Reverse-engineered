package com.vungle.ads.internal.presenter;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.view.ContextThemeWrapper;
import android.view.View;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.vungle.ads.AnalyticsClient;
import com.vungle.ads.LinkError;
import com.vungle.ads.PrivacyUrlError;
import com.vungle.ads.ServiceLocator;
import com.vungle.ads.TpatError;
import com.vungle.ads.internal.ConfigManager;
import com.vungle.ads.internal.model.AdPayload;
import com.vungle.ads.internal.omsdk.NativeOMTracker;
import com.vungle.ads.internal.privacy.PrivacyConsent;
import com.vungle.ads.internal.privacy.PrivacyManager;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import com.vungle.ads.internal.util.n;
import com.vungle.ads.internal.util.o;
import com.vungle.ads.w;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class NativeAdPresenter {
    public static final String DOWNLOAD = "download";
    public static final String OPEN_PRIVACY = "openPrivacy";
    private static final String TAG = "NativeAdPresenter";
    public static final String TPAT = "tpat";
    public static final String VIDEO_VIEWED = "videoViewed";
    private Long adStartTime;
    private boolean adViewed;
    private final AdPayload advertisement;
    private com.vungle.ads.internal.presenter.a bus;
    private final Context context;
    private Dialog currentDialog;
    private final k delegate;
    private final Lazy logEntry$delegate;
    private NativeOMTracker omTracker;
    private final com.vungle.ads.internal.platform.d platform;
    private final Lazy tpatSender$delegate;
    public static final a Companion = new a(null);
    private static final Map<String, Sdk$SDKMetric.SDKMetricType> eventMap = MapsKt.l(TuplesKt.a(com.vungle.ads.internal.b.CHECKPOINT_0, Sdk$SDKMetric.SDKMetricType.AD_START_EVENT), TuplesKt.a(com.vungle.ads.internal.b.CLICK_URL, Sdk$SDKMetric.SDKMetricType.AD_CLICK_EVENT));

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ void getEventMap$vungle_ads_release$annotations() {
        }

        public final Map<String, Sdk$SDKMetric.SDKMetricType> getEventMap$vungle_ads_release() {
            return NativeAdPresenter.eventMap;
        }
    }

    public static final class b implements com.vungle.ads.internal.ui.b {
        final /* synthetic */ String $deeplinkUrl;
        final /* synthetic */ NativeAdPresenter this$0;

        b(String str, NativeAdPresenter nativeAdPresenter) {
            this.$deeplinkUrl = str;
            this.this$0 = nativeAdPresenter;
        }

        @Override // com.vungle.ads.internal.ui.b
        public void onDeeplinkClick(boolean z10) {
            if (!z10) {
                new LinkError(Sdk$SDKError.Reason.DEEPLINK_OPEN_FAILED, "Fail to open " + this.$deeplinkUrl).setLogEntry$vungle_ads_release(this.this$0.getLogEntry()).logErrorNoReturnValue$vungle_ads_release();
            }
            AdPayload adPayload = this.this$0.advertisement;
            List tpatUrls$default = adPayload != null ? AdPayload.getTpatUrls$default(adPayload, com.vungle.ads.internal.b.DEEPLINK_CLICK, String.valueOf(z10), null, 4, null) : null;
            if (tpatUrls$default != null) {
                NativeAdPresenter nativeAdPresenter = this.this$0;
                Iterator it = tpatUrls$default.iterator();
                while (it.hasNext()) {
                    com.vungle.ads.internal.network.h.sendTpat$default(nativeAdPresenter.getTpatSender(), new com.vungle.ads.internal.network.f.a((String) it.next()).tpatKey(com.vungle.ads.internal.b.DEEPLINK_CLICK).withLogEntry(nativeAdPresenter.getLogEntry()).build(), false, 2, null);
                }
            }
        }
    }

    public NativeAdPresenter(final Context context, k delegate, AdPayload adPayload, com.vungle.ads.internal.platform.d platform) {
        Intrinsics.h(context, "context");
        Intrinsics.h(delegate, "delegate");
        Intrinsics.h(platform, "platform");
        this.context = context;
        this.delegate = delegate;
        this.advertisement = adPayload;
        this.platform = platform;
        ServiceLocator.Companion companion = ServiceLocator.Companion;
        this.tpatSender$delegate = LazyKt.a(LazyThreadSafetyMode.SYNCHRONIZED, new Function0<com.vungle.ads.internal.network.h>() { // from class: com.vungle.ads.internal.presenter.NativeAdPresenter$special$$inlined$inject$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.network.h, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final com.vungle.ads.internal.network.h invoke() {
                return ServiceLocator.Companion.getInstance(context).getService(com.vungle.ads.internal.network.h.class);
            }
        });
        this.logEntry$delegate = LazyKt.b(new Function0<n>() { // from class: com.vungle.ads.internal.presenter.NativeAdPresenter$logEntry$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final n invoke() {
                AdPayload adPayload2 = this.this$0.advertisement;
                if (adPayload2 != null) {
                    return adPayload2.getLogEntry$vungle_ads_release();
                }
                return null;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final n getLogEntry() {
        return (n) this.logEntry$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final com.vungle.ads.internal.network.h getTpatSender() {
        return (com.vungle.ads.internal.network.h) this.tpatSender$delegate.getValue();
    }

    /* JADX INFO: renamed from: initOMTracker$lambda-10, reason: not valid java name */
    private static final com.vungle.ads.internal.omsdk.b m425initOMTracker$lambda10(Lazy<com.vungle.ads.internal.omsdk.b> lazy) {
        return (com.vungle.ads.internal.omsdk.b) lazy.getValue();
    }

    private final boolean needShowGdpr() {
        return ConfigManager.INSTANCE.getGDPRIsCountryDataProtected() && Intrinsics.c(TmcConstants.ROUTE_UNKNOWN, PrivacyManager.INSTANCE.getConsentStatus());
    }

    private final void onDownload(String str) {
        com.vungle.ads.internal.presenter.a aVar;
        AdPayload.c cVarAdUnit;
        AdPayload adPayload = this.advertisement;
        String deeplinkUrl = null;
        List tpatUrls$default = adPayload != null ? AdPayload.getTpatUrls$default(adPayload, com.vungle.ads.internal.b.CLICK_URL, null, null, 6, null) : null;
        List list = tpatUrls$default;
        if (list == null || list.isEmpty()) {
            new TpatError(Sdk$SDKError.Reason.EMPTY_TPAT_ERROR, "Empty tpat key: clickUrl").setLogEntry$vungle_ads_release(getLogEntry()).logErrorNoReturnValue$vungle_ads_release();
        } else {
            Iterator it = tpatUrls$default.iterator();
            while (it.hasNext()) {
                com.vungle.ads.internal.network.h.sendTpat$default(getTpatSender(), new com.vungle.ads.internal.network.f.a((String) it.next()).tpatKey(com.vungle.ads.internal.b.CLICK_URL).withLogEntry(getLogEntry()).build(), false, 2, null);
            }
        }
        if (str != null) {
            com.vungle.ads.internal.network.h.sendTpat$default(getTpatSender(), new com.vungle.ads.internal.network.f.a(str).tpatKey(com.vungle.ads.internal.b.CTA_URL).withLogEntry(getLogEntry()).build(), false, 2, null);
        }
        AdPayload adPayload2 = this.advertisement;
        if (adPayload2 != null && (cVarAdUnit = adPayload2.adUnit()) != null) {
            deeplinkUrl = cVarAdUnit.getDeeplinkUrl();
        }
        boolean zLaunch = com.vungle.ads.internal.util.d.launch(deeplinkUrl, str, this.context, getLogEntry(), new b(deeplinkUrl, this));
        com.vungle.ads.internal.presenter.a aVar2 = this.bus;
        if (aVar2 != null) {
            aVar2.onNext(MRAIDPresenter.OPEN, "adClick", this.delegate.getPlacementRefId());
        }
        if (!zLaunch || (aVar = this.bus) == null) {
            return;
        }
        aVar.onNext(MRAIDPresenter.OPEN, "adLeftApplication", this.delegate.getPlacementRefId());
    }

    private final void onPrivacy(String str) {
        AnalyticsClient.logMetric$vungle_ads_release$default(AnalyticsClient.INSTANCE, new w(Sdk$SDKMetric.SDKMetricType.PRIVACY_URL_OPENED), getLogEntry(), (String) null, 4, (Object) null);
        if (str != null) {
            if (!com.vungle.ads.internal.util.g.INSTANCE.isValidUrl(str)) {
                new PrivacyUrlError(str).setLogEntry$vungle_ads_release(getLogEntry()).logErrorNoReturnValue$vungle_ads_release();
                return;
            }
            if (!com.vungle.ads.internal.util.d.launch$default(null, str, this.context, getLogEntry(), null, 16, null)) {
                new PrivacyUrlError(str).setLogEntry$vungle_ads_release(getLogEntry()).logErrorNoReturnValue$vungle_ads_release();
                return;
            }
            com.vungle.ads.internal.presenter.a aVar = this.bus;
            if (aVar != null) {
                aVar.onNext(MRAIDPresenter.OPEN, "adLeftApplication", this.delegate.getPlacementRefId());
            }
        }
    }

    public static /* synthetic */ void processCommand$default(NativeAdPresenter nativeAdPresenter, String str, String str2, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            str2 = null;
        }
        nativeAdPresenter.processCommand(str, str2);
    }

    private final void showGdpr() {
        PrivacyManager.INSTANCE.updateGdprConsent("opted_out_by_timeout", "vungle_modal", null);
        if (!(this.context instanceof Activity)) {
            o.Companion.w(TAG, "We can not show GDPR dialog with application context.");
            return;
        }
        DialogInterface.OnClickListener onClickListener = new DialogInterface.OnClickListener() { // from class: com.vungle.ads.internal.presenter.i
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i11) {
                NativeAdPresenter.m426showGdpr$lambda8(this.f60657a, dialogInterface, i11);
            }
        };
        ConfigManager configManager = ConfigManager.INSTANCE;
        String gDPRConsentTitle = configManager.getGDPRConsentTitle();
        String gDPRConsentMessage = configManager.getGDPRConsentMessage();
        String gDPRButtonAccept = configManager.getGDPRButtonAccept();
        String gDPRButtonDeny = configManager.getGDPRButtonDeny();
        Context context = this.context;
        AlertDialog.Builder builder = new AlertDialog.Builder(new ContextThemeWrapper(context, ((Activity) context).getApplicationInfo().theme));
        if (gDPRConsentTitle != null && gDPRConsentTitle.length() != 0) {
            builder.setTitle(gDPRConsentTitle);
        }
        if (gDPRConsentMessage != null && gDPRConsentMessage.length() != 0) {
            builder.setMessage(gDPRConsentMessage);
        }
        builder.setPositiveButton(gDPRButtonAccept, onClickListener);
        builder.setNegativeButton(gDPRButtonDeny, onClickListener);
        builder.setCancelable(false);
        AlertDialog alertDialogCreate = builder.create();
        alertDialogCreate.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.vungle.ads.internal.presenter.j
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                NativeAdPresenter.m427showGdpr$lambda9(this.f60658a, dialogInterface);
            }
        });
        this.currentDialog = alertDialogCreate;
        alertDialogCreate.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: showGdpr$lambda-8, reason: not valid java name */
    public static final void m426showGdpr$lambda8(NativeAdPresenter this$0, DialogInterface dialogInterface, int i11) {
        String value;
        Intrinsics.h(this$0, "this$0");
        if (i11 != -2) {
            value = i11 != -1 ? "opted_out_by_timeout" : PrivacyConsent.OPT_IN.getValue();
        } else {
            value = PrivacyConsent.OPT_OUT.getValue();
        }
        PrivacyManager.INSTANCE.updateGdprConsent(value, "vungle_modal", null);
        this$0.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: showGdpr$lambda-9, reason: not valid java name */
    public static final void m427showGdpr$lambda9(NativeAdPresenter this$0, DialogInterface dialogInterface) {
        Intrinsics.h(this$0, "this$0");
        this$0.currentDialog = null;
    }

    private final void start() {
        if (needShowGdpr()) {
            showGdpr();
        }
    }

    private final void triggerEventMetricForTpat(String str) {
        Sdk$SDKMetric.SDKMetricType sDKMetricType = eventMap.get(str);
        if (sDKMetricType != null) {
            AnalyticsClient.logMetric$vungle_ads_release$default(AnalyticsClient.INSTANCE, new w(sDKMetricType), getLogEntry(), (String) null, 4, (Object) null);
        }
    }

    public final void detach() {
        List<String> tpatUrls;
        NativeOMTracker nativeOMTracker = this.omTracker;
        if (nativeOMTracker != null) {
            nativeOMTracker.stop();
        }
        Dialog dialog = this.currentDialog;
        if (dialog != null && dialog.isShowing()) {
            dialog.dismiss();
        }
        Long l11 = this.adStartTime;
        if (l11 != null) {
            long jCurrentTimeMillis = System.currentTimeMillis() - l11.longValue();
            AdPayload adPayload = this.advertisement;
            if (adPayload != null && (tpatUrls = adPayload.getTpatUrls(com.vungle.ads.internal.b.AD_CLOSE, String.valueOf(jCurrentTimeMillis), String.valueOf(this.platform.getVolumeLevel()))) != null) {
                Iterator<T> it = tpatUrls.iterator();
                while (it.hasNext()) {
                    com.vungle.ads.internal.network.h.sendTpat$default(getTpatSender(), new com.vungle.ads.internal.network.f.a((String) it.next()).tpatKey(com.vungle.ads.internal.b.AD_CLOSE).withLogEntry(getLogEntry()).build(), false, 2, null);
                }
            }
        }
        com.vungle.ads.internal.presenter.a aVar = this.bus;
        if (aVar != null) {
            aVar.onNext(TtmlNode.END, null, this.delegate.getPlacementRefId());
        }
    }

    public final void initOMTracker(String omSdkData) {
        Intrinsics.h(omSdkData, "omSdkData");
        AdPayload adPayload = this.advertisement;
        boolean zOmEnabled = adPayload != null ? adPayload.omEnabled() : false;
        if (omSdkData.length() <= 0 || !zOmEnabled) {
            return;
        }
        ServiceLocator.Companion companion = ServiceLocator.Companion;
        final Context context = this.context;
        Lazy lazyA = LazyKt.a(LazyThreadSafetyMode.SYNCHRONIZED, new Function0<com.vungle.ads.internal.omsdk.b>() { // from class: com.vungle.ads.internal.presenter.NativeAdPresenter$initOMTracker$$inlined$inject$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.omsdk.b, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final com.vungle.ads.internal.omsdk.b invoke() {
                return ServiceLocator.Companion.getInstance(context).getService(com.vungle.ads.internal.omsdk.b.class);
            }
        });
        m425initOMTracker$lambda10(lazyA).init();
        String oMSDKJS$vungle_ads_release = m425initOMTracker$lambda10(lazyA).getOMSDKJS$vungle_ads_release();
        if (oMSDKJS$vungle_ads_release != null) {
            this.omTracker = new NativeOMTracker(omSdkData, oMSDKJS$vungle_ads_release);
        }
    }

    public final void onImpression() {
        NativeOMTracker nativeOMTracker = this.omTracker;
        if (nativeOMTracker != null) {
            nativeOMTracker.impressionOccurred();
        }
    }

    public final void prepare() {
        start();
        com.vungle.ads.internal.presenter.a aVar = this.bus;
        if (aVar != null) {
            aVar.onNext("start", null, this.delegate.getPlacementRefId());
        }
        this.adStartTime = Long.valueOf(System.currentTimeMillis());
    }

    /* JADX WARN: Code duplicated, block: B:40:0x00b4  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public final void processCommand(String action, String str) {
        List<String> tpatUrls$default;
        Intrinsics.h(action, "action");
        switch (action.hashCode()) {
            case -511324706:
                if (action.equals("openPrivacy")) {
                    onPrivacy(str);
                    return;
                }
                break;
            case 3566511:
                if (action.equals("tpat")) {
                    if (str == null || str.length() == 0) {
                        new TpatError(Sdk$SDKError.Reason.EMPTY_TPAT_ERROR, "Empty tpat key").setLogEntry$vungle_ads_release(getLogEntry()).logErrorNoReturnValue$vungle_ads_release();
                        return;
                    }
                    triggerEventMetricForTpat(str);
                    if (Intrinsics.c(str, com.vungle.ads.internal.b.CHECKPOINT_0)) {
                        AdPayload adPayload = this.advertisement;
                        if (adPayload != null) {
                            tpatUrls$default = adPayload.getTpatUrls(str, this.platform.getCarrierName(), String.valueOf(this.platform.getVolumeLevel()));
                        } else {
                            tpatUrls$default = null;
                        }
                    } else {
                        AdPayload adPayload2 = this.advertisement;
                        if (adPayload2 != null) {
                            tpatUrls$default = AdPayload.getTpatUrls$default(adPayload2, str, null, null, 6, null);
                        } else {
                            tpatUrls$default = null;
                        }
                    }
                    List<String> list = tpatUrls$default;
                    if (list != null && !list.isEmpty()) {
                        Iterator<T> it = tpatUrls$default.iterator();
                        while (it.hasNext()) {
                            com.vungle.ads.internal.network.h.sendTpat$default(getTpatSender(), new com.vungle.ads.internal.network.f.a((String) it.next()).tpatKey(str).withLogEntry(getLogEntry()).build(), false, 2, null);
                        }
                        return;
                    }
                    new TpatError(Sdk$SDKError.Reason.INVALID_TPAT_KEY, "Empty urls for tpat: " + str).setLogEntry$vungle_ads_release(getLogEntry()).logErrorNoReturnValue$vungle_ads_release();
                    return;
                }
                break;
            case 1118284383:
                if (action.equals("videoViewed")) {
                    com.vungle.ads.internal.presenter.a aVar = this.bus;
                    if (aVar == null || this.adViewed) {
                        return;
                    }
                    this.adViewed = true;
                    if (aVar != null) {
                        aVar.onNext("adViewed", null, this.delegate.getPlacementRefId());
                    }
                    List<String> impressionUrls = this.delegate.getImpressionUrls();
                    if (impressionUrls != null) {
                        Iterator<T> it2 = impressionUrls.iterator();
                        while (it2.hasNext()) {
                            com.vungle.ads.internal.network.h.sendTpat$default(getTpatSender(), new com.vungle.ads.internal.network.f.a((String) it2.next()).tpatKey("impression").withLogEntry(getLogEntry()).build(), false, 2, null);
                        }
                        return;
                    }
                    return;
                }
                break;
            case 1427818632:
                if (action.equals("download")) {
                    onDownload(str);
                    return;
                }
                break;
        }
        o.Companion.w(TAG, "Unknown native ad action: " + action);
    }

    public final void setEventListener(com.vungle.ads.internal.presenter.a aVar) {
        this.bus = aVar;
    }

    public final void startTracking(View rootView) {
        Intrinsics.h(rootView, "rootView");
        NativeOMTracker nativeOMTracker = this.omTracker;
        if (nativeOMTracker != null) {
            nativeOMTracker.start(rootView);
        }
    }
}
