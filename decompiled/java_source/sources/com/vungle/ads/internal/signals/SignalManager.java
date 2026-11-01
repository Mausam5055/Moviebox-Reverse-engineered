package com.vungle.ads.internal.signals;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import com.vungle.ads.ServiceLocator;
import com.vungle.ads.internal.ConfigManager;
import com.vungle.ads.internal.model.j;
import com.vungle.ads.internal.session.UnclosedAdDetector;
import com.vungle.ads.internal.util.o;
import com.vungle.ads.internal.util.p;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.serialization.h;
import kotlinx.serialization.json.d;
import kotlinx.serialization.json.n;

/* JADX INFO: loaded from: classes7.dex */
public final class SignalManager {
    public static final a Companion = new a(null);
    public static final String SESSION_COUNT_KEY = "vungle_signal_session_count";
    private static final int SESSION_COUNT_NOT_SET = -1;
    public static final String SESSION_TIME_KEY = "vungle_signal_session_creation_time";
    public static final int SIGNAL_VERSION = 1;
    private static final String TAG = "SignalManager";
    public static final long TWENTY_FOUR_HOURS_MILLIS = 86400000;
    private final Context context;
    private com.vungle.ads.internal.signals.a currentSession;
    private long enterBackgroundTime;
    private long enterForegroundTime;
    private final Lazy filePreferences$delegate;
    private final kotlinx.serialization.json.a json;
    private ConcurrentHashMap<String, Long> mapOfLastLoadTimes;
    private int sessionCount;
    private long sessionDuration;
    private long sessionSeriesCreatedTime;
    private UnclosedAdDetector unclosedAdDetector;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public static final class b extends com.vungle.ads.internal.util.a.b {
        b() {
        }

        @Override // com.vungle.ads.internal.util.a.b
        public void onBackground() {
            o.Companion.d(SignalManager.TAG, "SignalManager#onBackground()");
            SignalManager.this.setEnterBackgroundTime(System.currentTimeMillis());
            SignalManager signalManager = SignalManager.this;
            signalManager.setSessionDuration(signalManager.getSessionDuration() + (SignalManager.this.getEnterBackgroundTime() - SignalManager.this.getEnterForegroundTime()));
        }

        @Override // com.vungle.ads.internal.util.a.b
        public void onForeground() {
            o.Companion.d(SignalManager.TAG, "SignalManager#onForeground()");
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (jCurrentTimeMillis - SignalManager.this.getEnterBackgroundTime() > ConfigManager.INSTANCE.getSignalsSessionTimeout()) {
                SignalManager.this.createNewSessionData();
            }
            SignalManager.this.setEnterForegroundTime(jCurrentTimeMillis);
            SignalManager.this.setEnterBackgroundTime(0L);
        }
    }

    public SignalManager(final Context context) {
        Intrinsics.h(context, "context");
        this.context = context;
        this.json = n.b(null, new Function1<d, Unit>() { // from class: com.vungle.ads.internal.signals.SignalManager$json$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                invoke((d) obj);
                return Unit.f67061a;
            }

            public final void invoke(d Json) {
                Intrinsics.h(Json, "$this$Json");
                Json.f(true);
                Json.d(true);
                Json.e(false);
            }
        }, 1, null);
        this.enterForegroundTime = System.currentTimeMillis();
        this.sessionCount = -1;
        this.mapOfLastLoadTimes = new ConcurrentHashMap<>();
        ServiceLocator.Companion companion = ServiceLocator.Companion;
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
        this.filePreferences$delegate = LazyKt.a(lazyThreadSafetyMode, new Function0<com.vungle.ads.internal.persistence.b>() { // from class: com.vungle.ads.internal.signals.SignalManager$special$$inlined$inject$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.persistence.b, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final com.vungle.ads.internal.persistence.b invoke() {
                return ServiceLocator.Companion.getInstance(context).getService(com.vungle.ads.internal.persistence.b.class);
            }
        });
        registerNotifications();
        this.sessionSeriesCreatedTime = getFilePreferences().getLong(SESSION_TIME_KEY, -1L);
        updateSessionCount();
        this.currentSession = new com.vungle.ads.internal.signals.a(this.sessionCount);
        UnclosedAdDetector unclosedAdDetector = new UnclosedAdDetector(context, this.currentSession.getSessionId(), m431_init_$lambda0(LazyKt.a(lazyThreadSafetyMode, new Function0<com.vungle.ads.internal.executor.a>() { // from class: com.vungle.ads.internal.signals.SignalManager$special$$inlined$inject$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.executor.a, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final com.vungle.ads.internal.executor.a invoke() {
                return ServiceLocator.Companion.getInstance(context).getService(com.vungle.ads.internal.executor.a.class);
            }
        })), m432_init_$lambda1(LazyKt.a(lazyThreadSafetyMode, new Function0<p>() { // from class: com.vungle.ads.internal.signals.SignalManager$special$$inlined$inject$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.util.p, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final p invoke() {
                return ServiceLocator.Companion.getInstance(context).getService(p.class);
            }
        })));
        this.unclosedAdDetector = unclosedAdDetector;
        this.currentSession.setUnclosedAd(unclosedAdDetector.retrieveUnclosedAd());
    }

    /* JADX INFO: renamed from: _init_$lambda-0, reason: not valid java name */
    private static final com.vungle.ads.internal.executor.a m431_init_$lambda0(Lazy<? extends com.vungle.ads.internal.executor.a> lazy) {
        return (com.vungle.ads.internal.executor.a) lazy.getValue();
    }

    /* JADX INFO: renamed from: _init_$lambda-1, reason: not valid java name */
    private static final p m432_init_$lambda1(Lazy<p> lazy) {
        return (p) lazy.getValue();
    }

    public static /* synthetic */ void getCurrentSession$vungle_ads_release$annotations() {
    }

    private final void registerNotifications() {
        com.vungle.ads.internal.util.a.Companion.addLifecycleListener(new b());
    }

    private final void updateSessionCount() {
        if (this.sessionCount == -1) {
            this.sessionCount = getFilePreferences().getInt(SESSION_COUNT_KEY, 0);
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j11 = this.sessionSeriesCreatedTime;
        long j12 = jCurrentTimeMillis - j11;
        if (j11 < 0 || j12 >= 86400000) {
            this.sessionCount = 1;
            getFilePreferences().put(SESSION_TIME_KEY, jCurrentTimeMillis);
            this.sessionSeriesCreatedTime = jCurrentTimeMillis;
        } else {
            this.sessionCount++;
        }
        getFilePreferences().put(SESSION_COUNT_KEY, this.sessionCount);
        getFilePreferences().apply();
    }

    private final void updateSessionDuration() {
        this.currentSession.setSessionDuration((this.sessionDuration + System.currentTimeMillis()) - this.enterForegroundTime);
    }

    public final void createNewSessionData() {
        updateSessionCount();
        this.currentSession = new com.vungle.ads.internal.signals.a(this.sessionCount);
    }

    public final String generateSignals() {
        updateSessionDuration();
        try {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("1:");
            kotlinx.serialization.json.a aVar = this.json;
            com.vungle.ads.internal.signals.a aVar2 = this.currentSession;
            kotlinx.serialization.b bVarB = h.b(aVar.a(), Reflection.m(com.vungle.ads.internal.signals.a.class));
            Intrinsics.f(bVarB, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>");
            sb2.append(aVar.c(bVarB, aVar2));
            return sb2.toString();
        } catch (Error | Exception unused) {
            return null;
        }
    }

    public final Context getContext() {
        return this.context;
    }

    public final com.vungle.ads.internal.signals.a getCurrentSession$vungle_ads_release() {
        return this.currentSession;
    }

    public final long getEnterBackgroundTime() {
        return this.enterBackgroundTime;
    }

    public final long getEnterForegroundTime() {
        return this.enterForegroundTime;
    }

    public final com.vungle.ads.internal.persistence.b getFilePreferences() {
        return (com.vungle.ads.internal.persistence.b) this.filePreferences$delegate.getValue();
    }

    public final ConcurrentHashMap<String, Long> getMapOfLastLoadTimes() {
        return this.mapOfLastLoadTimes;
    }

    public final int getSessionCount() {
        return this.sessionCount;
    }

    public final long getSessionDuration() {
        return this.sessionDuration;
    }

    public final long getSessionSeriesCreatedTime() {
        return this.sessionSeriesCreatedTime;
    }

    public final synchronized com.vungle.ads.internal.signals.b getSignaledAd(String placementId) {
        long jCurrentTimeMillis;
        Long l11;
        try {
            Intrinsics.h(placementId, "placementId");
            jCurrentTimeMillis = System.currentTimeMillis();
            l11 = this.mapOfLastLoadTimes.containsKey(placementId) ? this.mapOfLastLoadTimes.get(placementId) : null;
            this.mapOfLastLoadTimes.put(placementId, Long.valueOf(jCurrentTimeMillis));
        } catch (Throwable th2) {
            throw th2;
        }
        return new com.vungle.ads.internal.signals.b(l11, jCurrentTimeMillis);
    }

    public final String getUuid() {
        return this.currentSession.getSessionId();
    }

    public final synchronized void increaseSessionDepthCounter() {
        com.vungle.ads.internal.signals.a aVar = this.currentSession;
        aVar.setSessionDepthCounter(aVar.getSessionDepthCounter() + 1);
    }

    public final void recordUnclosedAd(j unclosedAd) {
        Intrinsics.h(unclosedAd, "unclosedAd");
        if (ConfigManager.INSTANCE.signalsDisabled()) {
            return;
        }
        this.unclosedAdDetector.addUnclosedAd(unclosedAd);
    }

    public final void registerSignaledAd(Context context, com.vungle.ads.internal.signals.b signaledAd) {
        Intrinsics.h(signaledAd, "signaledAd");
        this.currentSession.getSignaledAd().clear();
        this.currentSession.getSignaledAd().add(signaledAd);
        this.currentSession.getSignaledAd().get(0).setScreenOrientation(screenOrientation(context));
    }

    public final void removeUnclosedAd(j unclosedAd) {
        Intrinsics.h(unclosedAd, "unclosedAd");
        if (ConfigManager.INSTANCE.signalsDisabled()) {
            return;
        }
        this.unclosedAdDetector.removeUnclosedAd(unclosedAd);
    }

    public final int screenOrientation(Context context) {
        Configuration configuration;
        if (context == null) {
            context = this.context;
        }
        Resources resources = context.getResources();
        Integer numValueOf = (resources == null || (configuration = resources.getConfiguration()) == null) ? null : Integer.valueOf(configuration.orientation);
        if (numValueOf != null && numValueOf.intValue() == 2) {
            return 2;
        }
        if (numValueOf != null && numValueOf.intValue() == 1) {
            return 1;
        }
        return (numValueOf != null && numValueOf.intValue() == 0) ? 0 : -1;
    }

    public final void setCurrentSession$vungle_ads_release(com.vungle.ads.internal.signals.a aVar) {
        Intrinsics.h(aVar, "<set-?>");
        this.currentSession = aVar;
    }

    public final void setEnterBackgroundTime(long j11) {
        this.enterBackgroundTime = j11;
    }

    public final void setEnterForegroundTime(long j11) {
        this.enterForegroundTime = j11;
    }

    public final void setMapOfLastLoadTimes(ConcurrentHashMap<String, Long> concurrentHashMap) {
        Intrinsics.h(concurrentHashMap, "<set-?>");
        this.mapOfLastLoadTimes = concurrentHashMap;
    }

    public final void setSessionCount(int i11) {
        this.sessionCount = i11;
    }

    public final void setSessionDuration(long j11) {
        this.sessionDuration = j11;
    }

    public final void setSessionSeriesCreatedTime(long j11) {
        this.sessionSeriesCreatedTime = j11;
    }

    public final void updateTemplateSignals(String str) {
        if (str == null || str.length() == 0 || this.currentSession.getSignaledAd().isEmpty()) {
            return;
        }
        this.currentSession.getSignaledAd().get(0).setTemplateSignals(str);
    }
}
