package com.vungle.ads.internal.ui;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.os.Bundle;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.WindowInsetsControllerCompat;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.hisavana.common.tracking.TrackingKey;
import com.vungle.ads.AdCantPlayWithoutWebView;
import com.vungle.ads.AdNotLoadedCantPlay;
import com.vungle.ads.AnalyticsClient;
import com.vungle.ads.ConcurrentPlaybackUnsupported;
import com.vungle.ads.ServiceLocator;
import com.vungle.ads.VungleError;
import com.vungle.ads.internal.ConfigManager;
import com.vungle.ads.internal.executor.VungleThreadPoolExecutor;
import com.vungle.ads.internal.model.AdPayload;
import com.vungle.ads.internal.model.BidPayload;
import com.vungle.ads.internal.model.j;
import com.vungle.ads.internal.presenter.MRAIDPresenter;
import com.vungle.ads.internal.presenter.l;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import com.vungle.ads.internal.signals.SignalManager;
import com.vungle.ads.internal.ui.view.MRAIDAdWidget;
import com.vungle.ads.internal.util.RingerModeReceiver;
import com.vungle.ads.internal.util.n;
import com.vungle.ads.internal.util.o;
import com.vungle.ads.w;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\u0083\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001@\b&\u0018\u0000 C2\u00020\u0001:\u0001DB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\t\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\t\u0010\u0003J\u0019\u0010\f\u001a\u00020\u00062\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0014¢\u0006\u0004\b\f\u0010\rJ\u0017\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u000eH\u0014¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\u0012\u0010\u0003J\u000f\u0010\u0013\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\u0013\u0010\u0003J\u0017\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0018\u0010\u0003J\u0017\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u001a\u001a\u00020\u0019H\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ\u000f\u0010 \u001a\u00020\u001dH\u0011¢\u0006\u0004\b\u001e\u0010\u001fJ\u000f\u0010!\u001a\u00020\u0006H\u0014¢\u0006\u0004\b!\u0010\u0003R(\u0010\"\u001a\u00020\u00048\u0000@\u0000X\u0081\u000e¢\u0006\u0018\n\u0004\b\"\u0010#\u0012\u0004\b'\u0010\u0003\u001a\u0004\b$\u0010%\"\u0004\b&\u0010\bR*\u0010)\u001a\u0004\u0018\u00010(8\u0000@\u0000X\u0081\u000e¢\u0006\u0018\n\u0004\b)\u0010*\u0012\u0004\b/\u0010\u0003\u001a\u0004\b+\u0010,\"\u0004\b-\u0010.R*\u00101\u001a\u0004\u0018\u0001008\u0000@\u0000X\u0081\u000e¢\u0006\u0018\n\u0004\b1\u00102\u0012\u0004\b7\u0010\u0003\u001a\u0004\b3\u00104\"\u0004\b5\u00106R\u0018\u00109\u001a\u0004\u0018\u0001088\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b9\u0010:R\u0014\u0010<\u001a\u00020;8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b<\u0010=R\u0016\u0010>\u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b>\u0010?R\u0014\u0010A\u001a\u00020@8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bA\u0010B¨\u0006M²\u0006\f\u0010F\u001a\u00020E8\nX\u008a\u0084\u0002²\u0006\f\u0010H\u001a\u00020G8\nX\u008a\u0084\u0002²\u0006\f\u0010J\u001a\u00020I8\nX\u008a\u0084\u0002²\u0006\f\u0010L\u001a\u00020K8\nX\u008a\u0084\u0002"}, d2 = {"Lcom/vungle/ads/internal/ui/AdActivity;", "Landroid/app/Activity;", "<init>", "()V", "", "placement", "", "onConcurrentPlaybackError", "(Ljava/lang/String;)V", "hideSystemUi", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/content/Intent;", "intent", "onNewIntent", "(Landroid/content/Intent;)V", "onResume", "onPause", "Landroid/content/res/Configuration;", "newConfig", "onConfigurationChanged", "(Landroid/content/res/Configuration;)V", "onBackPressed", "", "requestedOrientation", "setRequestedOrientation", "(I)V", "", "canRotate$vungle_ads_release", "()Z", "canRotate", "onDestroy", "placementRefId", "Ljava/lang/String;", "getPlacementRefId$vungle_ads_release", "()Ljava/lang/String;", "setPlacementRefId$vungle_ads_release", "getPlacementRefId$vungle_ads_release$annotations", "Lcom/vungle/ads/internal/presenter/MRAIDPresenter;", "mraidPresenter", "Lcom/vungle/ads/internal/presenter/MRAIDPresenter;", "getMraidPresenter$vungle_ads_release", "()Lcom/vungle/ads/internal/presenter/MRAIDPresenter;", "setMraidPresenter$vungle_ads_release", "(Lcom/vungle/ads/internal/presenter/MRAIDPresenter;)V", "getMraidPresenter$vungle_ads_release$annotations", "Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget;", "mraidAdWidget", "Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget;", "getMraidAdWidget$vungle_ads_release", "()Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget;", "setMraidAdWidget$vungle_ads_release", "(Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget;)V", "getMraidAdWidget$vungle_ads_release$annotations", "Lcom/vungle/ads/internal/model/j;", "unclosedAd", "Lcom/vungle/ads/internal/model/j;", "Lcom/vungle/ads/internal/util/RingerModeReceiver;", "ringerModeReceiver", "Lcom/vungle/ads/internal/util/RingerModeReceiver;", "isReceiverRegistered", "Z", "com/vungle/ads/internal/ui/AdActivity$b", "lifeCycleCallback", "Lcom/vungle/ads/internal/ui/AdActivity$b;", "Companion", "a", "Lcom/vungle/ads/internal/signals/SignalManager;", "signalManager", "Lcom/vungle/ads/internal/executor/a;", "executors", "Lcom/vungle/ads/internal/platform/d;", TrackingKey.PLATFORM, "Lcom/vungle/ads/internal/omsdk/c$b;", "omTrackerFactory", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public abstract class AdActivity extends Activity {
    public static final String AD_INVISIBLE_LOGGED_KEY = "ad_invisible_logged";

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final String REQUEST_KEY_EVENT_ID_EXTRA = "request_eventId";
    public static final String REQUEST_KEY_EXTRA = "request";
    private static final String TAG = "AdActivity";
    private static AdPayload advertisement;
    private static BidPayload bidPayload;
    private static com.vungle.ads.internal.presenter.a eventListener;
    private static l presenterDelegate;
    private boolean isReceiverRegistered;
    private MRAIDAdWidget mraidAdWidget;
    private MRAIDPresenter mraidPresenter;
    private j unclosedAd;
    private String placementRefId = "";
    private final RingerModeReceiver ringerModeReceiver = new RingerModeReceiver();
    private final b lifeCycleCallback = new b();

    /* JADX INFO: renamed from: com.vungle.ads.internal.ui.AdActivity$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final String getEventId(Intent intent) {
            try {
                Bundle extras = intent.getExtras();
                if (extras != null) {
                    return extras.getString(AdActivity.REQUEST_KEY_EVENT_ID_EXTRA);
                }
                return null;
            } catch (Exception unused) {
                return null;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final String getPlacement(Intent intent) {
            try {
                Bundle extras = intent.getExtras();
                if (extras != null) {
                    return extras.getString("request");
                }
                return null;
            } catch (Exception unused) {
                return null;
            }
        }

        public static /* synthetic */ void getREQUEST_KEY_EVENT_ID_EXTRA$vungle_ads_release$annotations() {
        }

        public static /* synthetic */ void getREQUEST_KEY_EXTRA$vungle_ads_release$annotations() {
        }

        public final Intent createIntent(Context context, String placement, String str) {
            Intrinsics.h(placement, "placement");
            Intent intent = new Intent(context, (Class<?>) VungleActivity.class);
            if (!(context instanceof Activity)) {
                intent.addFlags(ASTNode.DEOP);
            }
            Bundle bundle = new Bundle();
            bundle.putString("request", placement);
            bundle.putString(AdActivity.REQUEST_KEY_EVENT_ID_EXTRA, str);
            intent.putExtras(bundle);
            return intent;
        }

        public final AdPayload getAdvertisement$vungle_ads_release() {
            return AdActivity.advertisement;
        }

        public final BidPayload getBidPayload$vungle_ads_release() {
            return AdActivity.bidPayload;
        }

        public final com.vungle.ads.internal.presenter.a getEventListener$vungle_ads_release() {
            return AdActivity.eventListener;
        }

        public final l getPresenterDelegate$vungle_ads_release() {
            return AdActivity.presenterDelegate;
        }

        public final void setAdvertisement$vungle_ads_release(AdPayload adPayload) {
            AdActivity.advertisement = adPayload;
        }

        public final void setBidPayload$vungle_ads_release(BidPayload bidPayload) {
            AdActivity.bidPayload = bidPayload;
        }

        public final void setEventListener$vungle_ads_release(com.vungle.ads.internal.presenter.a aVar) {
            AdActivity.eventListener = aVar;
        }

        public final void setPresenterDelegate$vungle_ads_release(l lVar) {
            AdActivity.presenterDelegate = lVar;
        }
    }

    public static final class b extends com.vungle.ads.internal.util.a.b {
        b() {
        }

        @Override // com.vungle.ads.internal.util.a.b
        public void onBackground() {
            MRAIDPresenter mraidPresenter = AdActivity.this.getMraidPresenter();
            Long viewStatus = mraidPresenter != null ? mraidPresenter.getViewStatus() : null;
            o.Companion.d(AdActivity.TAG, "App is in background, status: " + viewStatus);
            if (viewStatus != null) {
                long jLongValue = viewStatus.longValue();
                AnalyticsClient analyticsClient = AnalyticsClient.INSTANCE;
                Sdk$SDKMetric.SDKMetricType sDKMetricType = Sdk$SDKMetric.SDKMetricType.AD_BACKGROUND_BEFORE_IMPRESSION;
                AdPayload advertisement$vungle_ads_release = AdActivity.INSTANCE.getAdvertisement$vungle_ads_release();
                AnalyticsClient.logMetric$vungle_ads_release$default(analyticsClient, sDKMetricType, jLongValue, advertisement$vungle_ads_release != null ? advertisement$vungle_ads_release.getLogEntry$vungle_ads_release() : null, null, 8, null);
            }
        }

        @Override // com.vungle.ads.internal.util.a.b
        public void onForeground() {
        }
    }

    public static final class c implements MRAIDAdWidget.a {
        final /* synthetic */ Lazy<SignalManager> $signalManager$delegate;

        c(Lazy<SignalManager> lazy) {
            this.$signalManager$delegate = lazy;
        }

        @Override // com.vungle.ads.internal.ui.view.MRAIDAdWidget.a
        public void close() {
            MRAIDPresenter mraidPresenter = AdActivity.this.getMraidPresenter();
            Long viewStatus = mraidPresenter != null ? mraidPresenter.getViewStatus() : null;
            if (viewStatus != null) {
                long jLongValue = viewStatus.longValue();
                AnalyticsClient analyticsClient = AnalyticsClient.INSTANCE;
                Sdk$SDKMetric.SDKMetricType sDKMetricType = Sdk$SDKMetric.SDKMetricType.AD_CLOSED_BEFORE_IMPRESSION;
                AdPayload advertisement$vungle_ads_release = AdActivity.INSTANCE.getAdvertisement$vungle_ads_release();
                AnalyticsClient.logMetric$vungle_ads_release$default(analyticsClient, sDKMetricType, jLongValue, advertisement$vungle_ads_release != null ? advertisement$vungle_ads_release.getLogEntry$vungle_ads_release() : null, null, 8, null);
            }
            j jVar = AdActivity.this.unclosedAd;
            if (jVar != null) {
                AdActivity.m436onCreate$lambda0(this.$signalManager$delegate).removeUnclosedAd(jVar);
            }
            AdActivity.this.finish();
        }
    }

    public static final class d implements MRAIDAdWidget.c {
        d() {
        }

        @Override // com.vungle.ads.internal.ui.view.MRAIDAdWidget.c
        public boolean onTouch(MotionEvent motionEvent) {
            MRAIDPresenter mraidPresenter = AdActivity.this.getMraidPresenter();
            if (mraidPresenter == null) {
                return false;
            }
            mraidPresenter.onViewTouched(motionEvent);
            return false;
        }
    }

    public static final class e implements MRAIDAdWidget.d {
        e() {
        }

        @Override // com.vungle.ads.internal.ui.view.MRAIDAdWidget.d
        public void setOrientation(int i11) {
            AdActivity.this.setRequestedOrientation(i11);
        }
    }

    public static /* synthetic */ void getMraidAdWidget$vungle_ads_release$annotations() {
    }

    public static /* synthetic */ void getMraidPresenter$vungle_ads_release$annotations() {
    }

    public static /* synthetic */ void getPlacementRefId$vungle_ads_release$annotations() {
    }

    private final void hideSystemUi() {
        WindowInsetsControllerCompat insetsController = WindowCompat.getInsetsController(getWindow(), getWindow().getDecorView());
        Intrinsics.g(insetsController, "getInsetsController(window, window.decorView)");
        insetsController.setSystemBarsBehavior(2);
        insetsController.hide(WindowInsetsCompat.Type.systemBars());
    }

    private final void onConcurrentPlaybackError(String placement) {
        ConcurrentPlaybackUnsupported concurrentPlaybackUnsupported = new ConcurrentPlaybackUnsupported("Trying to show " + placement + " but " + this.placementRefId + " is already showing");
        AdPayload adPayload = advertisement;
        VungleError vungleErrorLogError$vungle_ads_release = concurrentPlaybackUnsupported.setLogEntry$vungle_ads_release(adPayload != null ? adPayload.getLogEntry$vungle_ads_release() : null).logError$vungle_ads_release();
        com.vungle.ads.internal.presenter.a aVar = eventListener;
        if (aVar != null) {
            aVar.onError(vungleErrorLogError$vungle_ads_release, placement);
        }
        o.Companion.e(TAG, "onConcurrentPlaybackError: " + vungleErrorLogError$vungle_ads_release.getLocalizedMessage());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: onCreate$lambda-0, reason: not valid java name */
    public static final SignalManager m436onCreate$lambda0(Lazy<SignalManager> lazy) {
        return (SignalManager) lazy.getValue();
    }

    /* JADX INFO: renamed from: onCreate$lambda-4, reason: not valid java name */
    private static final com.vungle.ads.internal.executor.a m437onCreate$lambda4(Lazy<? extends com.vungle.ads.internal.executor.a> lazy) {
        return (com.vungle.ads.internal.executor.a) lazy.getValue();
    }

    /* JADX INFO: renamed from: onCreate$lambda-5, reason: not valid java name */
    private static final com.vungle.ads.internal.platform.d m438onCreate$lambda5(Lazy<? extends com.vungle.ads.internal.platform.d> lazy) {
        return (com.vungle.ads.internal.platform.d) lazy.getValue();
    }

    /* JADX INFO: renamed from: onCreate$lambda-6, reason: not valid java name */
    private static final com.vungle.ads.internal.omsdk.c.b m439onCreate$lambda6(Lazy<com.vungle.ads.internal.omsdk.c.b> lazy) {
        return (com.vungle.ads.internal.omsdk.c.b) lazy.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: onCreate$lambda-7, reason: not valid java name */
    public static final WindowInsetsCompat m440onCreate$lambda7(View v11, WindowInsetsCompat insets) {
        Intrinsics.h(v11, "v");
        Intrinsics.h(insets, "insets");
        z0.c insets2 = insets.getInsets(WindowInsetsCompat.Type.systemBars() | WindowInsetsCompat.Type.displayCutout());
        Intrinsics.g(insets2, "insets.getInsets(\n      …utout()\n                )");
        if (insets.isVisible(WindowInsetsCompat.Type.statusBars())) {
            v11.setPadding(insets2.f79125a, insets2.f79126b, insets2.f79127c, insets2.f79128d);
        }
        return insets;
    }

    public boolean canRotate$vungle_ads_release() {
        return false;
    }

    /* JADX INFO: renamed from: getMraidAdWidget$vungle_ads_release, reason: from getter */
    public final MRAIDAdWidget getMraidAdWidget() {
        return this.mraidAdWidget;
    }

    /* JADX INFO: renamed from: getMraidPresenter$vungle_ads_release, reason: from getter */
    public final MRAIDPresenter getMraidPresenter() {
        return this.mraidPresenter;
    }

    /* JADX INFO: renamed from: getPlacementRefId$vungle_ads_release, reason: from getter */
    public final String getPlacementRefId() {
        return this.placementRefId;
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        MRAIDPresenter mRAIDPresenter = this.mraidPresenter;
        if (mRAIDPresenter != null) {
            mRAIDPresenter.handleExit();
        }
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration newConfig) {
        Intrinsics.h(newConfig, "newConfig");
        try {
            super.onConfigurationChanged(newConfig);
            int i11 = newConfig.orientation;
            if (i11 == 2) {
                o.Companion.d(TAG, TmcStartParams.KEY_LANDSCAPE);
            } else if (i11 == 1) {
                o.Companion.d(TAG, "portrait");
            }
            MRAIDPresenter mRAIDPresenter = this.mraidPresenter;
            if (mRAIDPresenter != null) {
                mRAIDPresenter.onViewConfigurationChanged();
            }
        } catch (Exception e11) {
            o.Companion.e(TAG, "onConfigurationChanged: " + e11.getLocalizedMessage());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v1, types: [java.lang.String, kotlin.jvm.internal.DefaultConstructorMarker] */
    /* JADX WARN: Type inference failed for: r2v14 */
    @Override // android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        String watermark$vungle_ads_release;
        super.onCreate(savedInstanceState);
        requestWindowFeature(1);
        getWindow().setFlags(16777216, 16777216);
        Companion companion = INSTANCE;
        Intent intent = getIntent();
        Intrinsics.g(intent, "intent");
        String placement = companion.getPlacement(intent);
        if (placement == null) {
            placement = "";
        }
        this.placementRefId = placement;
        AdPayload adPayload = advertisement;
        com.vungle.ads.internal.model.g placement2 = ConfigManager.INSTANCE.getPlacement(placement);
        n nVar = 0;
        if (placement2 == null || adPayload == null) {
            com.vungle.ads.internal.presenter.a aVar = eventListener;
            if (aVar != null) {
                aVar.onError(new AdNotLoadedCantPlay("Can not play fullscreen ad. placement=" + placement2 + " adv=" + adPayload).setLogEntry$vungle_ads_release(adPayload != null ? adPayload.getLogEntry$vungle_ads_release() : 0).logError$vungle_ads_release(), this.placementRefId);
            }
            finish();
            return;
        }
        getWindow().getDecorView().setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        try {
            MRAIDAdWidget mRAIDAdWidget = new MRAIDAdWidget(this);
            String str = getIntent().getBooleanExtra(AD_INVISIBLE_LOGGED_KEY, false) ? "3" : "2";
            AnalyticsClient.INSTANCE.logMetric$vungle_ads_release(new w(Sdk$SDKMetric.SDKMetricType.AD_VISIBILITY), adPayload.getLogEntry$vungle_ads_release(), str);
            o.Companion.d(TAG, "Log metric AD_VISIBILITY: " + str);
            ServiceLocator.Companion companion2 = ServiceLocator.Companion;
            LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
            Lazy lazyA = LazyKt.a(lazyThreadSafetyMode, new Function0<SignalManager>() { // from class: com.vungle.ads.internal.ui.AdActivity$onCreate$$inlined$inject$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.signals.SignalManager, java.lang.Object] */
                @Override // kotlin.jvm.functions.Function0
                public final SignalManager invoke() {
                    return ServiceLocator.Companion.getInstance(this).getService(SignalManager.class);
                }
            });
            Intent intent2 = getIntent();
            Intrinsics.g(intent2, "intent");
            String eventId = companion.getEventId(intent2);
            j jVar = eventId != null ? new j(eventId, (String) nVar, 2, (DefaultConstructorMarker) nVar) : null;
            this.unclosedAd = jVar;
            if (jVar != null) {
                m436onCreate$lambda0(lazyA).recordUnclosedAd(jVar);
            }
            mRAIDAdWidget.setCloseDelegate(new c(lazyA));
            mRAIDAdWidget.setOnViewTouchListener(new d());
            mRAIDAdWidget.setOrientationDelegate(new e());
            Lazy lazyA2 = LazyKt.a(lazyThreadSafetyMode, new Function0<com.vungle.ads.internal.executor.a>() { // from class: com.vungle.ads.internal.ui.AdActivity$onCreate$$inlined$inject$2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.executor.a, java.lang.Object] */
                @Override // kotlin.jvm.functions.Function0
                public final com.vungle.ads.internal.executor.a invoke() {
                    return ServiceLocator.Companion.getInstance(this).getService(com.vungle.ads.internal.executor.a.class);
                }
            });
            Lazy lazyA3 = LazyKt.a(lazyThreadSafetyMode, new Function0<com.vungle.ads.internal.platform.d>() { // from class: com.vungle.ads.internal.ui.AdActivity$onCreate$$inlined$inject$3
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.platform.d, java.lang.Object] */
                @Override // kotlin.jvm.functions.Function0
                public final com.vungle.ads.internal.platform.d invoke() {
                    return ServiceLocator.Companion.getInstance(this).getService(com.vungle.ads.internal.platform.d.class);
                }
            });
            i iVar = new i(adPayload, placement2, m437onCreate$lambda4(lazyA2).getOffloadExecutor(), m436onCreate$lambda0(lazyA), m438onCreate$lambda5(lazyA3));
            com.vungle.ads.internal.omsdk.c cVarMake = m439onCreate$lambda6(LazyKt.a(lazyThreadSafetyMode, new Function0<com.vungle.ads.internal.omsdk.c.b>() { // from class: com.vungle.ads.internal.ui.AdActivity$onCreate$$inlined$inject$4
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.omsdk.c$b, java.lang.Object] */
                @Override // kotlin.jvm.functions.Function0
                public final com.vungle.ads.internal.omsdk.c.b invoke() {
                    return ServiceLocator.Companion.getInstance(this).getService(com.vungle.ads.internal.omsdk.c.b.class);
                }
            })).make(adPayload.omEnabled());
            VungleThreadPoolExecutor jobExecutor = m437onCreate$lambda4(lazyA2).getJobExecutor();
            iVar.setWebViewObserver(cVarMake);
            this.ringerModeReceiver.setWebClient(iVar);
            MRAIDPresenter mRAIDPresenter = new MRAIDPresenter(mRAIDAdWidget, adPayload, placement2, iVar, jobExecutor, cVarMake, bidPayload, m438onCreate$lambda5(lazyA3));
            mRAIDPresenter.setEventListener(eventListener);
            mRAIDPresenter.setPresenterDelegate$vungle_ads_release(presenterDelegate);
            mRAIDPresenter.prepare();
            setContentView(mRAIDAdWidget, mRAIDAdWidget.getLayoutParams());
            ViewCompat.setOnApplyWindowInsetsListener(mRAIDAdWidget, new OnApplyWindowInsetsListener() { // from class: com.vungle.ads.internal.ui.a
                @Override // androidx.core.view.OnApplyWindowInsetsListener
                public final WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
                    return AdActivity.m440onCreate$lambda7(view, windowInsetsCompat);
                }
            });
            com.vungle.ads.b adConfig = adPayload.getAdConfig();
            if (adConfig != null && (watermark$vungle_ads_release = adConfig.getWatermark$vungle_ads_release()) != null) {
                WatermarkView watermarkView = new WatermarkView(this, watermark$vungle_ads_release);
                ((FrameLayout) getWindow().getDecorView().findViewById(R.id.content)).addView(watermarkView);
                watermarkView.bringToFront();
            }
            this.mraidAdWidget = mRAIDAdWidget;
            this.mraidPresenter = mRAIDPresenter;
            com.vungle.ads.internal.util.a.Companion.addLifecycleListener(this.lifeCycleCallback);
        } catch (InstantiationException unused) {
            com.vungle.ads.internal.presenter.a aVar2 = eventListener;
            if (aVar2 != null) {
                aVar2.onError(new AdCantPlayWithoutWebView().setLogEntry$vungle_ads_release(adPayload.getLogEntry$vungle_ads_release()).logError$vungle_ads_release(), this.placementRefId);
            }
            finish();
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        MRAIDPresenter mRAIDPresenter = this.mraidPresenter;
        if (mRAIDPresenter != null) {
            mRAIDPresenter.detach((isChangingConfigurations() ? 1 : 0) | 2);
        }
        com.vungle.ads.internal.util.a.Companion.removeLifecycleListener(this.lifeCycleCallback);
        super.onDestroy();
    }

    @Override // android.app.Activity
    protected void onNewIntent(Intent intent) {
        Intrinsics.h(intent, "intent");
        super.onNewIntent(intent);
        Companion companion = INSTANCE;
        Intent intent2 = getIntent();
        Intrinsics.g(intent2, "getIntent()");
        String placement = companion.getPlacement(intent2);
        String placement2 = companion.getPlacement(intent);
        Intent intent3 = getIntent();
        Intrinsics.g(intent3, "getIntent()");
        String eventId = companion.getEventId(intent3);
        String eventId2 = companion.getEventId(intent);
        if ((placement == null || placement2 == null || Intrinsics.c(placement, placement2)) && (eventId == null || eventId2 == null || Intrinsics.c(eventId, eventId2))) {
            return;
        }
        o.Companion.d(TAG, "Tried to play another placement " + placement2 + " while playing " + placement);
        onConcurrentPlaybackError(placement2);
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        try {
            if (this.isReceiverRegistered) {
                unregisterReceiver(this.ringerModeReceiver);
                this.isReceiverRegistered = false;
                o.Companion.d(TAG, "unregisterReceiver(): " + this.ringerModeReceiver.hashCode());
            }
        } catch (Exception e11) {
            o.Companion.e(TAG, "unregisterReceiver error: " + e11.getLocalizedMessage());
        }
        MRAIDPresenter mRAIDPresenter = this.mraidPresenter;
        if (mRAIDPresenter != null) {
            mRAIDPresenter.stop();
        }
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        hideSystemUi();
        try {
            if (!this.isReceiverRegistered) {
                registerReceiver(this.ringerModeReceiver, new IntentFilter("android.media.RINGER_MODE_CHANGED"));
                this.isReceiverRegistered = true;
                o.Companion.d(TAG, "registerReceiver(): " + this.ringerModeReceiver.hashCode());
            }
        } catch (Exception e11) {
            o.Companion.e(TAG, "registerReceiver error: " + e11.getLocalizedMessage());
        }
        MRAIDPresenter mRAIDPresenter = this.mraidPresenter;
        if (mRAIDPresenter != null) {
            mRAIDPresenter.start();
        }
    }

    public final void setMraidAdWidget$vungle_ads_release(MRAIDAdWidget mRAIDAdWidget) {
        this.mraidAdWidget = mRAIDAdWidget;
    }

    public final void setMraidPresenter$vungle_ads_release(MRAIDPresenter mRAIDPresenter) {
        this.mraidPresenter = mRAIDPresenter;
    }

    public final void setPlacementRefId$vungle_ads_release(String str) {
        Intrinsics.h(str, "<set-?>");
        this.placementRefId = str;
    }

    @Override // android.app.Activity
    public void setRequestedOrientation(int requestedOrientation) {
        if (canRotate$vungle_ads_release()) {
            super.setRequestedOrientation(requestedOrientation);
        }
    }
}
