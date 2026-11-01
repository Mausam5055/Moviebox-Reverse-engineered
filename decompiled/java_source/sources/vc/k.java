package vc;

import android.content.Context;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import com.cloud.tmc.kernel.utils.NetworkUtil;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.perf.session.SessionManager;
import com.google.firebase.perf.util.Constants$CounterNames;
import com.google.firebase.perf.v1.ApplicationProcessState;
import com.google.firebase.perf.v1.NetworkRequestMetric;
import java.lang.ref.WeakReference;
import java.text.DecimalFormat;
import java.util.Collections;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes5.dex */
public class k implements com.google.firebase.perf.application.a.b {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final sc.a f77243r = sc.a.e();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final k f77244s = new k();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map f77245a;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private com.google.firebase.f f77248d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private pc.e f77249e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private jc.e f77250f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private ic.b f77251g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private b f77252h;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private Context f77254j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private com.google.firebase.perf.config.a f77255k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private d f77256l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private com.google.firebase.perf.application.a f77257m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private com.google.firebase.perf.v1.c.b f77258n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private String f77259o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private String f77260p;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ConcurrentLinkedQueue f77246b = new ConcurrentLinkedQueue();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final AtomicBoolean f77247c = new AtomicBoolean(false);

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f77261q = false;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private ExecutorService f77253i = new ThreadPoolExecutor(0, 1, 10, TimeUnit.SECONDS, new LinkedBlockingQueue());

    private k() {
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        this.f77245a = concurrentHashMap;
        concurrentHashMap.put("KEY_AVAILABLE_TRACES_FOR_CACHING", 50);
        concurrentHashMap.put("KEY_AVAILABLE_NETWORK_REQUESTS_FOR_CACHING", 50);
        concurrentHashMap.put("KEY_AVAILABLE_GAUGES_FOR_CACHING", 50);
    }

    private com.google.firebase.perf.v1.g D(com.google.firebase.perf.v1.g.b bVar, ApplicationProcessState applicationProcessState) {
        G();
        com.google.firebase.perf.v1.c.b bVarM = this.f77258n.m(applicationProcessState);
        if (bVar.e() || bVar.b()) {
            bVarM = ((com.google.firebase.perf.v1.c.b) bVarM.mo292clone()).j(j());
        }
        return (com.google.firebase.perf.v1.g) bVar.d(bVarM).build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void E() {
        Context contextK = this.f77248d.k();
        this.f77254j = contextK;
        this.f77259o = contextK.getPackageName();
        this.f77255k = com.google.firebase.perf.config.a.g();
        this.f77256l = new d(this.f77254j, new com.google.firebase.perf.util.g(100L, 1L, TimeUnit.MINUTES), 500L);
        this.f77257m = com.google.firebase.perf.application.a.b();
        this.f77252h = new b(this.f77251g, this.f77255k.a());
        h();
    }

    private void F(com.google.firebase.perf.v1.g.b bVar, ApplicationProcessState applicationProcessState) {
        if (!u()) {
            if (s(bVar)) {
                f77243r.b("Transport is not initialized yet, %s will be queued for to be dispatched later", o(bVar));
                this.f77246b.add(new c(bVar, applicationProcessState));
                return;
            }
            return;
        }
        com.google.firebase.perf.v1.g gVarD = D(bVar, applicationProcessState);
        if (t(gVarD)) {
            g(gVarD);
            SessionManager.getInstance().stopGaugeCollectionIfSessionRunningTooLong();
        }
    }

    private void G() {
        String str;
        if (this.f77255k.K()) {
            if (!this.f77258n.i() || this.f77261q) {
                try {
                    str = (String) Tasks.await(this.f77250f.getId(), 60000L, TimeUnit.MILLISECONDS);
                } catch (InterruptedException e11) {
                    f77243r.d("Task to retrieve Installation Id is interrupted: %s", e11.getMessage());
                    str = null;
                } catch (ExecutionException e12) {
                    f77243r.d("Unable to retrieve Installation Id: %s", e12.getMessage());
                    str = null;
                } catch (TimeoutException e13) {
                    f77243r.d("Task to retrieve Installation Id is timed out: %s", e13.getMessage());
                    str = null;
                }
                if (TextUtils.isEmpty(str)) {
                    f77243r.j("Firebase Installation Id is empty, contact Firebase Support for debugging.");
                } else {
                    this.f77258n.l(str);
                }
            }
        }
    }

    private void H() {
        if (this.f77249e == null && u()) {
            this.f77249e = pc.e.c();
        }
    }

    private void g(com.google.firebase.perf.v1.g gVar) {
        if (gVar.e()) {
            f77243r.g("Logging %s. In a minute, visit the Firebase console to view your data: %s", o(gVar), i(gVar.f()));
        } else {
            f77243r.g("Logging %s", o(gVar));
        }
        this.f77252h.b(gVar);
    }

    private void h() {
        this.f77257m.k(new WeakReference(f77244s));
        com.google.firebase.perf.v1.c.b bVarU = com.google.firebase.perf.v1.c.u();
        this.f77258n = bVarU;
        bVarU.n(this.f77248d.n().c()).k(com.google.firebase.perf.v1.a.n().d(this.f77259o).i(pc.a.f72408b).j(p(this.f77254j)));
        this.f77247c.set(true);
        while (!this.f77246b.isEmpty()) {
            final c cVar = (c) this.f77246b.poll();
            if (cVar != null) {
                this.f77253i.execute(new Runnable() { // from class: vc.j
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f77241a.v(cVar);
                    }
                });
            }
        }
    }

    private String i(com.google.firebase.perf.v1.i iVar) {
        String strE = iVar.E();
        return strE.startsWith("_st_") ? sc.b.c(this.f77260p, this.f77259o, strE) : sc.b.a(this.f77260p, this.f77259o, strE);
    }

    private Map j() {
        H();
        pc.e eVar = this.f77249e;
        return eVar != null ? eVar.b() : Collections.emptyMap();
    }

    public static k k() {
        return f77244s;
    }

    private static String l(com.google.firebase.perf.v1.f fVar) {
        return String.format(Locale.ENGLISH, "gauges (hasMetadata: %b, cpuGaugeCount: %d, memoryGaugeCount: %d)", Boolean.valueOf(fVar.t()), Integer.valueOf(fVar.q()), Integer.valueOf(fVar.p()));
    }

    private static String m(NetworkRequestMetric networkRequestMetric) {
        return String.format(Locale.ENGLISH, "network request trace: %s (responseCode: %s, responseTime: %sms)", networkRequestMetric.I(), networkRequestMetric.L() ? String.valueOf(networkRequestMetric.A()) : NetworkUtil.NETWORK_TYPE_UNKNOWN, new DecimalFormat("#.####").format((networkRequestMetric.P() ? networkRequestMetric.G() : 0L) / 1000.0d));
    }

    private static String n(com.google.firebase.perf.v1.i iVar) {
        return String.format(Locale.ENGLISH, "trace metric: %s (duration: %sms)", iVar.E(), new DecimalFormat("#.####").format(iVar.B() / 1000.0d));
    }

    private static String o(wc.a aVar) {
        if (aVar.e()) {
            return n(aVar.f());
        }
        if (aVar.b()) {
            return m(aVar.c());
        }
        return aVar.a() ? l(aVar.g()) : "log";
    }

    private static String p(Context context) {
        try {
            String str = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
            return str == null ? "" : str;
        } catch (PackageManager.NameNotFoundException unused) {
            return "";
        }
    }

    private void q(com.google.firebase.perf.v1.g gVar) {
        if (gVar.e()) {
            this.f77257m.d(Constants$CounterNames.TRACE_EVENT_RATE_LIMITED.toString(), 1L);
        } else if (gVar.b()) {
            this.f77257m.d(Constants$CounterNames.NETWORK_TRACE_EVENT_RATE_LIMITED.toString(), 1L);
        }
    }

    private boolean s(wc.a aVar) {
        Integer num = (Integer) this.f77245a.get("KEY_AVAILABLE_TRACES_FOR_CACHING");
        int iIntValue = num.intValue();
        Integer num2 = (Integer) this.f77245a.get("KEY_AVAILABLE_NETWORK_REQUESTS_FOR_CACHING");
        int iIntValue2 = num2.intValue();
        Integer num3 = (Integer) this.f77245a.get("KEY_AVAILABLE_GAUGES_FOR_CACHING");
        int iIntValue3 = num3.intValue();
        if (aVar.e() && iIntValue > 0) {
            this.f77245a.put("KEY_AVAILABLE_TRACES_FOR_CACHING", Integer.valueOf(iIntValue - 1));
            return true;
        }
        if (aVar.b() && iIntValue2 > 0) {
            this.f77245a.put("KEY_AVAILABLE_NETWORK_REQUESTS_FOR_CACHING", Integer.valueOf(iIntValue2 - 1));
            return true;
        }
        if (!aVar.a() || iIntValue3 <= 0) {
            f77243r.b("%s is not allowed to cache. Cache exhausted the limit (availableTracesForCaching: %d, availableNetworkRequestsForCaching: %d, availableGaugesForCaching: %d).", o(aVar), num, num2, num3);
            return false;
        }
        this.f77245a.put("KEY_AVAILABLE_GAUGES_FOR_CACHING", Integer.valueOf(iIntValue3 - 1));
        return true;
    }

    private boolean t(com.google.firebase.perf.v1.g gVar) {
        if (!this.f77255k.K()) {
            f77243r.g("Performance collection is not enabled, dropping %s", o(gVar));
            return false;
        }
        if (!gVar.l().q()) {
            f77243r.k("App Instance ID is null or empty, dropping %s", o(gVar));
            return false;
        }
        if (!tc.e.b(gVar, this.f77254j)) {
            f77243r.k("Unable to process the PerfMetric (%s) due to missing or invalid values. See earlier log statements for additional information on the specific missing/invalid values.", o(gVar));
            return false;
        }
        if (!this.f77256l.h(gVar)) {
            q(gVar);
            f77243r.g("Event dropped due to device sampling - %s", o(gVar));
            return false;
        }
        if (!this.f77256l.g(gVar)) {
            return true;
        }
        q(gVar);
        f77243r.g("Rate limited (per device) - %s", o(gVar));
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void v(c cVar) {
        F(cVar.f77210a, cVar.f77211b);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void w(com.google.firebase.perf.v1.i iVar, ApplicationProcessState applicationProcessState) {
        F(com.google.firebase.perf.v1.g.n().k(iVar), applicationProcessState);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void x(NetworkRequestMetric networkRequestMetric, ApplicationProcessState applicationProcessState) {
        F(com.google.firebase.perf.v1.g.n().j(networkRequestMetric), applicationProcessState);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void y(com.google.firebase.perf.v1.f fVar, ApplicationProcessState applicationProcessState) {
        F(com.google.firebase.perf.v1.g.n().i(fVar), applicationProcessState);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void z() {
        this.f77256l.a(this.f77261q);
    }

    public void A(final com.google.firebase.perf.v1.f fVar, final ApplicationProcessState applicationProcessState) {
        this.f77253i.execute(new Runnable() { // from class: vc.f
            @Override // java.lang.Runnable
            public final void run() {
                this.f77231a.y(fVar, applicationProcessState);
            }
        });
    }

    public void B(final NetworkRequestMetric networkRequestMetric, final ApplicationProcessState applicationProcessState) {
        this.f77253i.execute(new Runnable() { // from class: vc.h
            @Override // java.lang.Runnable
            public final void run() {
                this.f77237a.x(networkRequestMetric, applicationProcessState);
            }
        });
    }

    public void C(final com.google.firebase.perf.v1.i iVar, final ApplicationProcessState applicationProcessState) {
        this.f77253i.execute(new Runnable() { // from class: vc.g
            @Override // java.lang.Runnable
            public final void run() {
                this.f77234a.w(iVar, applicationProcessState);
            }
        });
    }

    @Override // com.google.firebase.perf.application.a.b
    public void onUpdateAppState(ApplicationProcessState applicationProcessState) {
        this.f77261q = applicationProcessState == ApplicationProcessState.FOREGROUND;
        if (u()) {
            this.f77253i.execute(new Runnable() { // from class: vc.e
                @Override // java.lang.Runnable
                public final void run() {
                    this.f77230a.z();
                }
            });
        }
    }

    public void r(com.google.firebase.f fVar, jc.e eVar, ic.b bVar) {
        this.f77248d = fVar;
        this.f77260p = fVar.n().e();
        this.f77250f = eVar;
        this.f77251g = bVar;
        this.f77253i.execute(new Runnable() { // from class: vc.i
            @Override // java.lang.Runnable
            public final void run() {
                this.f77240a.E();
            }
        });
    }

    public boolean u() {
        return this.f77247c.get();
    }
}
