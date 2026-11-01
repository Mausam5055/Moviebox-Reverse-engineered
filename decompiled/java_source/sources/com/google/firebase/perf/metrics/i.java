package com.google.firebase.perf.metrics;

import com.google.firebase.perf.session.PerfSession;
import com.google.firebase.perf.session.SessionManager;
import com.google.firebase.perf.session.gauges.GaugeManager;
import com.google.firebase.perf.v1.NetworkRequestMetric;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import vc.k;

/* JADX INFO: loaded from: classes4.dex */
public final class i extends com.google.firebase.perf.application.b implements com.google.firebase.perf.session.a {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final sc.a f32301i = sc.a.e();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List f32302a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final GaugeManager f32303b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final k f32304c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final NetworkRequestMetric.b f32305d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final WeakReference f32306e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f32307f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f32308g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f32309h;

    private i(k kVar) {
        this(kVar, com.google.firebase.perf.application.a.b(), GaugeManager.getInstance());
    }

    public i(k kVar, com.google.firebase.perf.application.a aVar, GaugeManager gaugeManager) {
        super(aVar);
        this.f32305d = NetworkRequestMetric.R();
        this.f32306e = new WeakReference(this);
        this.f32304c = kVar;
        this.f32303b = gaugeManager;
        this.f32302a = Collections.synchronizedList(new ArrayList());
        registerForAppState();
    }

    public static i b(k kVar) {
        return new i(kVar);
    }

    private static boolean e(String str) {
        if (str.length() > 128) {
            return false;
        }
        for (int i11 = 0; i11 < str.length(); i11++) {
            char cCharAt = str.charAt(i11);
            if (cCharAt <= 31 || cCharAt > 127) {
                return false;
            }
        }
        return true;
    }

    private boolean hasStarted() {
        return this.f32305d.k();
    }

    private boolean isStopped() {
        return this.f32305d.m();
    }

    public NetworkRequestMetric a() {
        SessionManager.getInstance().unregisterForSessionUpdates(this.f32306e);
        unregisterForAppState();
        com.google.firebase.perf.v1.h[] hVarArrBuildAndSort = PerfSession.buildAndSort(getSessions());
        if (hVarArrBuildAndSort != null) {
            this.f32305d.d(Arrays.asList(hVarArrBuildAndSort));
        }
        NetworkRequestMetric networkRequestMetric = (NetworkRequestMetric) this.f32305d.build();
        if (!uc.f.c(this.f32307f)) {
            f32301i.a("Dropping network request from a 'User-Agent' that is not allowed");
            return networkRequestMetric;
        }
        if (this.f32308g) {
            if (this.f32309h) {
                f32301i.a("This metric has already been queued for transmission.  Please create a new HttpMetric for each request/response");
            }
            return networkRequestMetric;
        }
        this.f32304c.B(networkRequestMetric, getAppState());
        this.f32308g = true;
        return networkRequestMetric;
    }

    public long c() {
        return this.f32305d.j();
    }

    public boolean d() {
        return this.f32305d.l();
    }

    public i f(String str) {
        NetworkRequestMetric.HttpMethod httpMethod;
        if (str != null) {
            NetworkRequestMetric.HttpMethod httpMethod2 = NetworkRequestMetric.HttpMethod.HTTP_METHOD_UNKNOWN;
            String upperCase = str.toUpperCase();
            upperCase.hashCode();
            switch (upperCase) {
                case "OPTIONS":
                    httpMethod = NetworkRequestMetric.HttpMethod.OPTIONS;
                    break;
                case "GET":
                    httpMethod = NetworkRequestMetric.HttpMethod.GET;
                    break;
                case "PUT":
                    httpMethod = NetworkRequestMetric.HttpMethod.PUT;
                    break;
                case "HEAD":
                    httpMethod = NetworkRequestMetric.HttpMethod.HEAD;
                    break;
                case "POST":
                    httpMethod = NetworkRequestMetric.HttpMethod.POST;
                    break;
                case "PATCH":
                    httpMethod = NetworkRequestMetric.HttpMethod.PATCH;
                    break;
                case "TRACE":
                    httpMethod = NetworkRequestMetric.HttpMethod.TRACE;
                    break;
                case "CONNECT":
                    httpMethod = NetworkRequestMetric.HttpMethod.CONNECT;
                    break;
                case "DELETE":
                    httpMethod = NetworkRequestMetric.HttpMethod.DELETE;
                    break;
                default:
                    httpMethod = NetworkRequestMetric.HttpMethod.HTTP_METHOD_UNKNOWN;
                    break;
            }
            this.f32305d.o(httpMethod);
        }
        return this;
    }

    public i g(int i11) {
        this.f32305d.p(i11);
        return this;
    }

    List getSessions() {
        List listUnmodifiableList;
        synchronized (this.f32302a) {
            try {
                ArrayList arrayList = new ArrayList();
                for (PerfSession perfSession : this.f32302a) {
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

    public void h() {
        this.f32309h = true;
    }

    public i i() {
        this.f32305d.q(NetworkRequestMetric.NetworkClientErrorReason.GENERIC_CLIENT_ERROR);
        return this;
    }

    public i j(long j11) {
        this.f32305d.r(j11);
        return this;
    }

    public i k(long j11) {
        PerfSession perfSession = SessionManager.getInstance().perfSession();
        SessionManager.getInstance().registerForSessionUpdates(this.f32306e);
        this.f32305d.n(j11);
        updateSession(perfSession);
        if (perfSession.isGaugeAndEventCollectionEnabled()) {
            this.f32303b.collectGaugeMetricOnce(perfSession.getTimer());
        }
        return this;
    }

    public i l(String str) {
        if (str == null) {
            this.f32305d.i();
            return this;
        }
        if (e(str)) {
            this.f32305d.s(str);
        } else {
            f32301i.j("The content type of the response is not a valid content-type:" + str);
        }
        return this;
    }

    public i m(long j11) {
        this.f32305d.t(j11);
        return this;
    }

    public i n(long j11) {
        this.f32305d.u(j11);
        return this;
    }

    public i o(long j11) {
        this.f32305d.v(j11);
        if (SessionManager.getInstance().perfSession().isGaugeAndEventCollectionEnabled()) {
            this.f32303b.collectGaugeMetricOnce(SessionManager.getInstance().perfSession().getTimer());
        }
        return this;
    }

    public i p(long j11) {
        this.f32305d.w(j11);
        return this;
    }

    public i q(String str) {
        if (str != null) {
            this.f32305d.x(com.google.firebase.perf.util.k.e(com.google.firebase.perf.util.k.d(str), 2000));
        }
        return this;
    }

    public i r(String str) {
        this.f32307f = str;
        return this;
    }

    @Override // com.google.firebase.perf.session.a
    public void updateSession(PerfSession perfSession) {
        if (perfSession == null) {
            f32301i.j("Unable to add new SessionId to the Network Trace. Continuing without it.");
        } else {
            if (!hasStarted() || isStopped()) {
                return;
            }
            this.f32302a.add(perfSession);
        }
    }
}
