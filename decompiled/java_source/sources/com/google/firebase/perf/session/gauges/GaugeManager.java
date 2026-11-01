package com.google.firebase.perf.session.gauges;

import android.annotation.SuppressLint;
import android.content.Context;
import androidx.annotation.Keep;
import androidx.annotation.Nullable;
import com.google.firebase.perf.session.PerfSession;
import com.google.firebase.perf.util.Timer;
import com.google.firebase.perf.v1.ApplicationProcessState;
import java.util.concurrent.Executors;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import mb.u;

/* JADX INFO: loaded from: classes.dex */
@Keep
public class GaugeManager {
    private static final long APPROX_NUMBER_OF_DATA_POINTS_PER_GAUGE_METRIC = 20;
    private static final long INVALID_GAUGE_COLLECTION_FREQUENCY = -1;
    private static final long TIME_TO_WAIT_BEFORE_FLUSHING_GAUGES_QUEUE_MS = 20;
    private ApplicationProcessState applicationProcessState;
    private final com.google.firebase.perf.config.a configResolver;
    private final u cpuGaugeCollector;

    @Nullable
    private ScheduledFuture gaugeManagerDataCollectionJob;
    private final u gaugeManagerExecutor;

    @Nullable
    private i gaugeMetadataManager;
    private final u memoryGaugeCollector;

    @Nullable
    private String sessionId;
    private final vc.k transportManager;
    private static final sc.a logger = sc.a.e();
    private static final GaugeManager instance = new GaugeManager();

    /* JADX INFO: loaded from: classes4.dex */
    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f32327a;

        static {
            int[] iArr = new int[ApplicationProcessState.values().length];
            f32327a = iArr;
            try {
                iArr[ApplicationProcessState.BACKGROUND.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f32327a[ApplicationProcessState.FOREGROUND.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    @SuppressLint({"ThreadPoolCreation"})
    private GaugeManager() {
        this(new u(new ic.b() { // from class: com.google.firebase.perf.session.gauges.f
            @Override // ic.b
            public final Object get() {
                return Executors.newSingleThreadScheduledExecutor();
            }
        }), vc.k.k(), com.google.firebase.perf.config.a.g(), null, new u(new ic.b() { // from class: com.google.firebase.perf.session.gauges.g
            @Override // ic.b
            public final Object get() {
                return GaugeManager.lambda$new$0();
            }
        }), new u(new ic.b() { // from class: com.google.firebase.perf.session.gauges.h
            @Override // ic.b
            public final Object get() {
                return GaugeManager.lambda$new$1();
            }
        }));
    }

    GaugeManager(u uVar, vc.k kVar, com.google.firebase.perf.config.a aVar, i iVar, u uVar2, u uVar3) {
        this.gaugeManagerDataCollectionJob = null;
        this.sessionId = null;
        this.applicationProcessState = ApplicationProcessState.APPLICATION_PROCESS_STATE_UNKNOWN;
        this.gaugeManagerExecutor = uVar;
        this.transportManager = kVar;
        this.configResolver = aVar;
        this.gaugeMetadataManager = iVar;
        this.cpuGaugeCollector = uVar2;
        this.memoryGaugeCollector = uVar3;
    }

    private static void collectGaugeMetricOnce(c cVar, l lVar, Timer timer) {
        cVar.c(timer);
        lVar.c(timer);
    }

    private long getCpuGaugeCollectionFrequencyMs(ApplicationProcessState applicationProcessState) {
        long jY;
        int i11 = a.f32327a[applicationProcessState.ordinal()];
        if (i11 != 1) {
            jY = i11 != 2 ? -1L : this.configResolver.z();
        } else {
            jY = this.configResolver.y();
        }
        if (c.f(jY)) {
            return -1L;
        }
        return jY;
    }

    private com.google.firebase.perf.v1.e getGaugeMetadata() {
        return (com.google.firebase.perf.v1.e) com.google.firebase.perf.v1.e.m().d(this.gaugeMetadataManager.a()).i(this.gaugeMetadataManager.b()).j(this.gaugeMetadataManager.c()).build();
    }

    public static synchronized GaugeManager getInstance() {
        return instance;
    }

    private long getMemoryGaugeCollectionFrequencyMs(ApplicationProcessState applicationProcessState) {
        long jB;
        int i11 = a.f32327a[applicationProcessState.ordinal()];
        if (i11 != 1) {
            jB = i11 != 2 ? -1L : this.configResolver.C();
        } else {
            jB = this.configResolver.B();
        }
        if (l.e(jB)) {
            return -1L;
        }
        return jB;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ c lambda$new$0() {
        return new c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ l lambda$new$1() {
        return new l();
    }

    private boolean startCollectingCpuMetrics(long j11, Timer timer) {
        if (j11 == -1) {
            logger.a("Invalid Cpu Metrics collection frequency. Did not collect Cpu Metrics.");
            return false;
        }
        ((c) this.cpuGaugeCollector.get()).k(j11, timer);
        return true;
    }

    private long startCollectingGauges(ApplicationProcessState applicationProcessState, Timer timer) {
        long cpuGaugeCollectionFrequencyMs = getCpuGaugeCollectionFrequencyMs(applicationProcessState);
        if (!startCollectingCpuMetrics(cpuGaugeCollectionFrequencyMs, timer)) {
            cpuGaugeCollectionFrequencyMs = -1;
        }
        long memoryGaugeCollectionFrequencyMs = getMemoryGaugeCollectionFrequencyMs(applicationProcessState);
        if (startCollectingMemoryMetrics(memoryGaugeCollectionFrequencyMs, timer)) {
            return cpuGaugeCollectionFrequencyMs == -1 ? memoryGaugeCollectionFrequencyMs : Math.min(cpuGaugeCollectionFrequencyMs, memoryGaugeCollectionFrequencyMs);
        }
        return cpuGaugeCollectionFrequencyMs;
    }

    private boolean startCollectingMemoryMetrics(long j11, Timer timer) {
        if (j11 == -1) {
            logger.a("Invalid Memory Metrics collection frequency. Did not collect Memory Metrics.");
            return false;
        }
        ((l) this.memoryGaugeCollector.get()).j(j11, timer);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: syncFlush, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public void lambda$stopCollectingGauges$3(String str, ApplicationProcessState applicationProcessState) {
        com.google.firebase.perf.v1.f.b bVarV = com.google.firebase.perf.v1.f.v();
        while (!((c) this.cpuGaugeCollector.get()).f32334a.isEmpty()) {
            bVarV.i((com.google.firebase.perf.v1.d) ((c) this.cpuGaugeCollector.get()).f32334a.poll());
        }
        while (!((l) this.memoryGaugeCollector.get()).f32357b.isEmpty()) {
            bVarV.d((com.google.firebase.perf.v1.b) ((l) this.memoryGaugeCollector.get()).f32357b.poll());
        }
        bVarV.k(str);
        this.transportManager.A((com.google.firebase.perf.v1.f) bVarV.build(), applicationProcessState);
    }

    public void collectGaugeMetricOnce(Timer timer) {
        collectGaugeMetricOnce((c) this.cpuGaugeCollector.get(), (l) this.memoryGaugeCollector.get(), timer);
    }

    public void initializeGaugeMetadataManager(Context context) {
        this.gaugeMetadataManager = new i(context);
    }

    public boolean logGaugeMetadata(String str, ApplicationProcessState applicationProcessState) {
        if (this.gaugeMetadataManager == null) {
            return false;
        }
        this.transportManager.A((com.google.firebase.perf.v1.f) com.google.firebase.perf.v1.f.v().k(str).j(getGaugeMetadata()).build(), applicationProcessState);
        return true;
    }

    public void startCollectingGauges(PerfSession perfSession, final ApplicationProcessState applicationProcessState) {
        if (this.sessionId != null) {
            stopCollectingGauges();
        }
        long jStartCollectingGauges = startCollectingGauges(applicationProcessState, perfSession.getTimer());
        if (jStartCollectingGauges == -1) {
            logger.j("Invalid gauge collection frequency. Unable to start collecting Gauges.");
            return;
        }
        final String strSessionId = perfSession.sessionId();
        this.sessionId = strSessionId;
        this.applicationProcessState = applicationProcessState;
        try {
            long j11 = jStartCollectingGauges * 20;
            this.gaugeManagerDataCollectionJob = ((ScheduledExecutorService) this.gaugeManagerExecutor.get()).scheduleAtFixedRate(new Runnable() { // from class: com.google.firebase.perf.session.gauges.e
                @Override // java.lang.Runnable
                public final void run() {
                    this.f32343a.lambda$startCollectingGauges$2(strSessionId, applicationProcessState);
                }
            }, j11, j11, TimeUnit.MILLISECONDS);
        } catch (RejectedExecutionException e11) {
            logger.j("Unable to start collecting Gauges: " + e11.getMessage());
        }
    }

    public void stopCollectingGauges() {
        final String str = this.sessionId;
        if (str == null) {
            return;
        }
        final ApplicationProcessState applicationProcessState = this.applicationProcessState;
        ((c) this.cpuGaugeCollector.get()).l();
        ((l) this.memoryGaugeCollector.get()).k();
        ScheduledFuture scheduledFuture = this.gaugeManagerDataCollectionJob;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(false);
        }
        ((ScheduledExecutorService) this.gaugeManagerExecutor.get()).schedule(new Runnable() { // from class: com.google.firebase.perf.session.gauges.d
            @Override // java.lang.Runnable
            public final void run() {
                this.f32340a.lambda$stopCollectingGauges$3(str, applicationProcessState);
            }
        }, 20L, TimeUnit.MILLISECONDS);
        this.sessionId = null;
        this.applicationProcessState = ApplicationProcessState.APPLICATION_PROCESS_STATE_UNKNOWN;
    }
}
