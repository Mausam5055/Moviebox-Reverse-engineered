package com.google.firebase.perf.metrics;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.firebase.perf.session.PerfSession;
import com.google.firebase.perf.session.SessionManager;
import com.google.firebase.perf.session.gauges.GaugeManager;
import com.google.firebase.perf.util.Timer;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import vc.k;

/* JADX INFO: loaded from: classes.dex */
public class Trace extends com.google.firebase.perf.application.b implements Parcelable, com.google.firebase.perf.session.a {
    private final com.google.firebase.perf.util.a clock;
    private final Map<String, Counter> counterNameToCounterMap;
    private final Map<String, String> customAttributesMap;
    private Timer endTime;
    private final GaugeManager gaugeManager;
    private final String name;
    private final Trace parent;
    private final WeakReference<com.google.firebase.perf.session.a> sessionAwareObject;
    private final List<PerfSession> sessions;
    private Timer startTime;
    private final List<Trace> subtraces;
    private final k transportManager;
    private static final sc.a logger = sc.a.e();
    private static final Map<String, Trace> traceNameToTraceMap = new ConcurrentHashMap();

    @Keep
    public static final Parcelable.Creator<Trace> CREATOR = new a();
    static final Parcelable.Creator<Trace> CREATOR_DATAONLY = new b();

    /* JADX INFO: loaded from: classes4.dex */
    class a implements Parcelable.Creator {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Trace createFromParcel(Parcel parcel) {
            return new Trace(parcel, false, null);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public Trace[] newArray(int i11) {
            return new Trace[i11];
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    class b implements Parcelable.Creator {
        b() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Trace createFromParcel(Parcel parcel) {
            return new Trace(parcel, true, null);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public Trace[] newArray(int i11) {
            return new Trace[i11];
        }
    }

    private Trace(@NonNull Parcel parcel, boolean z10) {
        super(z10 ? null : com.google.firebase.perf.application.a.b());
        this.sessionAwareObject = new WeakReference<>(this);
        this.parent = (Trace) parcel.readParcelable(Trace.class.getClassLoader());
        this.name = parcel.readString();
        ArrayList arrayList = new ArrayList();
        this.subtraces = arrayList;
        parcel.readList(arrayList, Trace.class.getClassLoader());
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        this.counterNameToCounterMap = concurrentHashMap;
        this.customAttributesMap = new ConcurrentHashMap();
        parcel.readMap(concurrentHashMap, Counter.class.getClassLoader());
        this.startTime = (Timer) parcel.readParcelable(Timer.class.getClassLoader());
        this.endTime = (Timer) parcel.readParcelable(Timer.class.getClassLoader());
        List<PerfSession> listSynchronizedList = Collections.synchronizedList(new ArrayList());
        this.sessions = listSynchronizedList;
        parcel.readList(listSynchronizedList, PerfSession.class.getClassLoader());
        if (z10) {
            this.transportManager = null;
            this.clock = null;
            this.gaugeManager = null;
        } else {
            this.transportManager = k.k();
            this.clock = new com.google.firebase.perf.util.a();
            this.gaugeManager = GaugeManager.getInstance();
        }
    }

    /* synthetic */ Trace(Parcel parcel, boolean z10, a aVar) {
        this(parcel, z10);
    }

    private Trace(@NonNull Trace trace, @NonNull String str, Timer timer, Timer timer2, @Nullable List<Trace> list, @Nullable Map<String, Counter> map, @Nullable Map<String, String> map2) {
        this.sessionAwareObject = new WeakReference<>(this);
        this.parent = trace;
        this.name = str.trim();
        this.startTime = timer;
        this.endTime = timer2;
        this.subtraces = list == null ? new ArrayList<>() : list;
        this.counterNameToCounterMap = map == null ? new ConcurrentHashMap<>() : map;
        this.customAttributesMap = map2 == null ? new ConcurrentHashMap<>() : map2;
        this.clock = trace.clock;
        this.transportManager = trace.transportManager;
        this.sessions = Collections.synchronizedList(new ArrayList());
        this.gaugeManager = trace.gaugeManager;
    }

    private Trace(@NonNull String str) {
        this(str, k.k(), new com.google.firebase.perf.util.a(), com.google.firebase.perf.application.a.b(), GaugeManager.getInstance());
    }

    public Trace(@NonNull String str, @NonNull k kVar, @NonNull com.google.firebase.perf.util.a aVar, @NonNull com.google.firebase.perf.application.a aVar2) {
        this(str, kVar, aVar, aVar2, GaugeManager.getInstance());
    }

    public Trace(@NonNull String str, @NonNull k kVar, @NonNull com.google.firebase.perf.util.a aVar, @NonNull com.google.firebase.perf.application.a aVar2, @NonNull GaugeManager gaugeManager) {
        super(aVar2);
        this.sessionAwareObject = new WeakReference<>(this);
        this.parent = null;
        this.name = str.trim();
        this.subtraces = new ArrayList();
        this.counterNameToCounterMap = new ConcurrentHashMap();
        this.customAttributesMap = new ConcurrentHashMap();
        this.clock = aVar;
        this.transportManager = kVar;
        this.sessions = Collections.synchronizedList(new ArrayList());
        this.gaugeManager = gaugeManager;
    }

    private void checkAttribute(@NonNull String str, @NonNull String str2) {
        if (isStopped()) {
            throw new IllegalArgumentException(String.format(Locale.ENGLISH, "Trace '%s' has been stopped", this.name));
        }
        if (!this.customAttributesMap.containsKey(str) && this.customAttributesMap.size() >= 5) {
            throw new IllegalArgumentException(String.format(Locale.ENGLISH, "Exceeds max limit of number of attributes - %d", 5));
        }
        tc.e.d(str, str2);
    }

    @NonNull
    public static Trace create(@NonNull String str) {
        return new Trace(str);
    }

    @NonNull
    static synchronized Trace getTrace(@NonNull String str) {
        Trace trace;
        Map<String, Trace> map = traceNameToTraceMap;
        trace = map.get(str);
        if (trace == null) {
            trace = new Trace(str);
            map.put(str, trace);
        }
        return trace;
    }

    @NonNull
    static synchronized Trace getTrace(@NonNull String str, @NonNull k kVar, @NonNull com.google.firebase.perf.util.a aVar, @NonNull com.google.firebase.perf.application.a aVar2) {
        Trace trace;
        Map<String, Trace> map = traceNameToTraceMap;
        trace = map.get(str);
        if (trace == null) {
            trace = new Trace(str, kVar, aVar, aVar2, GaugeManager.getInstance());
            map.put(str, trace);
        }
        return trace;
    }

    @NonNull
    private Counter obtainOrCreateCounterByName(@NonNull String str) {
        Counter counter = this.counterNameToCounterMap.get(str);
        if (counter != null) {
            return counter;
        }
        Counter counter2 = new Counter(str);
        this.counterNameToCounterMap.put(str, counter2);
        return counter2;
    }

    private void setEndTimeOfLastStage(Timer timer) {
        if (this.subtraces.isEmpty()) {
            return;
        }
        Trace trace = this.subtraces.get(this.subtraces.size() - 1);
        if (trace.endTime == null) {
            trace.endTime = timer;
        }
    }

    @Nullable
    static Trace startTrace(@NonNull String str) {
        Trace trace = traceNameToTraceMap.get(str);
        if (trace != null) {
            trace.start();
        }
        return trace;
    }

    @Nullable
    static Trace stopTrace(@NonNull String str) {
        Map<String, Trace> map = traceNameToTraceMap;
        Trace trace = map.get(str);
        if (trace != null) {
            trace.stop();
            map.remove(str);
        }
        return trace;
    }

    @Override // android.os.Parcelable
    @Keep
    public int describeContents() {
        return 0;
    }

    protected void finalize() throws Throwable {
        try {
            if (isActive()) {
                logger.k("Trace '%s' is started but not stopped when it is destructed!", this.name);
                incrementTsnsCount(1);
            }
        } finally {
            super.finalize();
        }
    }

    @Nullable
    @Keep
    public String getAttribute(@NonNull String str) {
        return this.customAttributesMap.get(str);
    }

    @NonNull
    @Keep
    public Map<String, String> getAttributes() {
        return new HashMap(this.customAttributesMap);
    }

    @NonNull
    Map<String, Counter> getCounters() {
        return this.counterNameToCounterMap;
    }

    Timer getEndTime() {
        return this.endTime;
    }

    @Keep
    public long getLongMetric(@NonNull String str) {
        Counter counter = str != null ? this.counterNameToCounterMap.get(str.trim()) : null;
        if (counter == null) {
            return 0L;
        }
        return counter.getCount();
    }

    @NonNull
    public String getName() {
        return this.name;
    }

    List<PerfSession> getSessions() {
        List<PerfSession> listUnmodifiableList;
        synchronized (this.sessions) {
            try {
                ArrayList arrayList = new ArrayList();
                for (PerfSession perfSession : this.sessions) {
                    if (perfSession != null) {
                        arrayList.add(perfSession);
                    }
                }
                listUnmodifiableList = Collections.unmodifiableList(arrayList);
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return listUnmodifiableList;
    }

    Timer getStartTime() {
        return this.startTime;
    }

    @NonNull
    List<Trace> getSubtraces() {
        return this.subtraces;
    }

    boolean hasStarted() {
        return this.startTime != null;
    }

    @Keep
    public void incrementMetric(@NonNull String str, long j11) {
        String strE = tc.e.e(str);
        if (strE != null) {
            logger.d("Cannot increment metric '%s'. Metric name is invalid.(%s)", str, strE);
            return;
        }
        if (!hasStarted()) {
            logger.k("Cannot increment metric '%s' for trace '%s' because it's not started", str, this.name);
        } else {
            if (isStopped()) {
                logger.k("Cannot increment metric '%s' for trace '%s' because it's been stopped", str, this.name);
                return;
            }
            Counter counterObtainOrCreateCounterByName = obtainOrCreateCounterByName(str.trim());
            counterObtainOrCreateCounterByName.increment(j11);
            logger.b("Incrementing metric '%s' to %d on trace '%s'", str, Long.valueOf(counterObtainOrCreateCounterByName.getCount()), this.name);
        }
    }

    boolean isActive() {
        return hasStarted() && !isStopped();
    }

    boolean isStopped() {
        return this.endTime != null;
    }

    @Keep
    public void putAttribute(@NonNull String str, @NonNull String str2) {
        boolean z10 = true;
        try {
            str = str.trim();
            str2 = str2.trim();
            checkAttribute(str, str2);
            logger.b("Setting attribute '%s' to '%s' on trace '%s'", str, str2, this.name);
        } catch (Exception e11) {
            logger.d("Can not set attribute '%s' with value '%s' (%s)", str, str2, e11.getMessage());
            z10 = false;
        }
        if (z10) {
            this.customAttributesMap.put(str, str2);
        }
    }

    @Keep
    public void putMetric(@NonNull String str, long j11) {
        String strE = tc.e.e(str);
        if (strE != null) {
            logger.d("Cannot set value for metric '%s'. Metric name is invalid.(%s)", str, strE);
            return;
        }
        if (!hasStarted()) {
            logger.k("Cannot set value for metric '%s' for trace '%s' because it's not started", str, this.name);
        } else if (isStopped()) {
            logger.k("Cannot set value for metric '%s' for trace '%s' because it's been stopped", str, this.name);
        } else {
            obtainOrCreateCounterByName(str.trim()).setCount(j11);
            logger.b("Setting metric '%s' to '%s' on trace '%s'", str, Long.valueOf(j11), this.name);
        }
    }

    @Keep
    public void removeAttribute(@NonNull String str) {
        if (isStopped()) {
            logger.c("Can't remove a attribute from a Trace that's stopped.");
        } else {
            this.customAttributesMap.remove(str);
        }
    }

    @Keep
    public void start() {
        if (!com.google.firebase.perf.config.a.g().K()) {
            logger.a("Trace feature is disabled.");
            return;
        }
        String strF = tc.e.f(this.name);
        if (strF != null) {
            logger.d("Cannot start trace '%s'. Trace name is invalid.(%s)", this.name, strF);
            return;
        }
        if (this.startTime != null) {
            logger.d("Trace '%s' has already started, should not start again!", this.name);
            return;
        }
        this.startTime = this.clock.a();
        registerForAppState();
        PerfSession perfSession = SessionManager.getInstance().perfSession();
        SessionManager.getInstance().registerForSessionUpdates(this.sessionAwareObject);
        updateSession(perfSession);
        if (perfSession.isGaugeAndEventCollectionEnabled()) {
            this.gaugeManager.collectGaugeMetricOnce(perfSession.getTimer());
        }
    }

    void startStage(@NonNull String str) {
        Timer timerA = this.clock.a();
        setEndTimeOfLastStage(timerA);
        this.subtraces.add(new Trace(this, str, timerA, null, null, null, null));
    }

    @Keep
    public void stop() {
        if (!hasStarted()) {
            logger.d("Trace '%s' has not been started so unable to stop!", this.name);
            return;
        }
        if (isStopped()) {
            logger.d("Trace '%s' has already stopped, should not stop again!", this.name);
            return;
        }
        SessionManager.getInstance().unregisterForSessionUpdates(this.sessionAwareObject);
        unregisterForAppState();
        Timer timerA = this.clock.a();
        this.endTime = timerA;
        if (this.parent == null) {
            setEndTimeOfLastStage(timerA);
            if (this.name.isEmpty()) {
                logger.c("Trace name is empty, no log is sent to server");
                return;
            }
            this.transportManager.C(new j(this).a(), getAppState());
            if (SessionManager.getInstance().perfSession().isGaugeAndEventCollectionEnabled()) {
                this.gaugeManager.collectGaugeMetricOnce(SessionManager.getInstance().perfSession().getTimer());
            }
        }
    }

    void stopStage() {
        setEndTimeOfLastStage(this.clock.a());
    }

    @Override // com.google.firebase.perf.session.a
    public void updateSession(PerfSession perfSession) {
        if (perfSession == null) {
            logger.j("Unable to add new SessionId to the Trace. Continuing without it.");
        } else {
            if (!hasStarted() || isStopped()) {
                return;
            }
            this.sessions.add(perfSession);
        }
    }

    @Override // android.os.Parcelable
    @Keep
    public void writeToParcel(@NonNull Parcel parcel, int i11) {
        parcel.writeParcelable(this.parent, 0);
        parcel.writeString(this.name);
        parcel.writeList(this.subtraces);
        parcel.writeMap(this.counterNameToCounterMap);
        parcel.writeParcelable(this.startTime, 0);
        parcel.writeParcelable(this.endTime, 0);
        synchronized (this.sessions) {
            parcel.writeList(this.sessions);
        }
    }
}
