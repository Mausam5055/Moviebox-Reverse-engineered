package vc;

import android.content.Context;
import com.google.firebase.perf.util.Constants$TraceNames;
import com.google.firebase.perf.util.Timer;
import com.google.firebase.perf.v1.SessionVerbosity;
import java.util.List;
import java.util.Random;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes5.dex */
final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.google.firebase.perf.config.a f77212a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final double f77213b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final double f77214c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private a f77215d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private a f77216e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f77217f;

    static class a {

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private static final sc.a f77218k = sc.a.e();

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private static final long f77219l = TimeUnit.SECONDS.toMicros(1);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final com.google.firebase.perf.util.a f77220a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final boolean f77221b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private Timer f77222c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private com.google.firebase.perf.util.g f77223d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private long f77224e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private double f77225f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private com.google.firebase.perf.util.g f77226g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private com.google.firebase.perf.util.g f77227h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private long f77228i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private long f77229j;

        a(com.google.firebase.perf.util.g gVar, long j11, com.google.firebase.perf.util.a aVar, com.google.firebase.perf.config.a aVar2, String str, boolean z10) {
            this.f77220a = aVar;
            this.f77224e = j11;
            this.f77223d = gVar;
            this.f77225f = j11;
            this.f77222c = aVar.a();
            g(aVar2, str, z10);
            this.f77221b = z10;
        }

        private static long c(com.google.firebase.perf.config.a aVar, String str) {
            return str == "Trace" ? aVar.E() : aVar.q();
        }

        private static long d(com.google.firebase.perf.config.a aVar, String str) {
            return str == "Trace" ? aVar.t() : aVar.t();
        }

        private static long e(com.google.firebase.perf.config.a aVar, String str) {
            return str == "Trace" ? aVar.F() : aVar.r();
        }

        private static long f(com.google.firebase.perf.config.a aVar, String str) {
            return str == "Trace" ? aVar.t() : aVar.t();
        }

        private void g(com.google.firebase.perf.config.a aVar, String str, boolean z10) {
            long jF = f(aVar, str);
            long jE = e(aVar, str);
            TimeUnit timeUnit = TimeUnit.SECONDS;
            com.google.firebase.perf.util.g gVar = new com.google.firebase.perf.util.g(jE, jF, timeUnit);
            this.f77226g = gVar;
            this.f77228i = jE;
            if (z10) {
                f77218k.b("Foreground %s logging rate:%f, burst capacity:%d", str, gVar, Long.valueOf(jE));
            }
            long jD = d(aVar, str);
            long jC = c(aVar, str);
            com.google.firebase.perf.util.g gVar2 = new com.google.firebase.perf.util.g(jC, jD, timeUnit);
            this.f77227h = gVar2;
            this.f77229j = jC;
            if (z10) {
                f77218k.b("Background %s logging rate:%f, capacity:%d", str, gVar2, Long.valueOf(jC));
            }
        }

        synchronized void a(boolean z10) {
            try {
                this.f77223d = z10 ? this.f77226g : this.f77227h;
                this.f77224e = z10 ? this.f77228i : this.f77229j;
            } catch (Throwable th2) {
                throw th2;
            }
        }

        synchronized boolean b(com.google.firebase.perf.v1.g gVar) {
            try {
                Timer timerA = this.f77220a.a();
                double durationMicros = (this.f77222c.getDurationMicros(timerA) * this.f77223d.a()) / f77219l;
                if (durationMicros > 0.0d) {
                    this.f77225f = Math.min(this.f77225f + durationMicros, this.f77224e);
                    this.f77222c = timerA;
                }
                double d11 = this.f77225f;
                if (d11 >= 1.0d) {
                    this.f77225f = d11 - 1.0d;
                    return true;
                }
                if (this.f77221b) {
                    f77218k.j("Exceeded log rate limit, dropping the log.");
                }
                return false;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public d(Context context, com.google.firebase.perf.util.g gVar, long j11) {
        this(gVar, j11, new com.google.firebase.perf.util.a(), b(), b(), com.google.firebase.perf.config.a.g());
        this.f77217f = com.google.firebase.perf.util.k.b(context);
    }

    d(com.google.firebase.perf.util.g gVar, long j11, com.google.firebase.perf.util.a aVar, double d11, double d12, com.google.firebase.perf.config.a aVar2) {
        this.f77215d = null;
        this.f77216e = null;
        boolean z10 = false;
        this.f77217f = false;
        com.google.firebase.perf.util.k.a(0.0d <= d11 && d11 < 1.0d, "Sampling bucket ID should be in range [0.0, 1.0).");
        if (0.0d <= d12 && d12 < 1.0d) {
            z10 = true;
        }
        com.google.firebase.perf.util.k.a(z10, "Fragment sampling bucket ID should be in range [0.0, 1.0).");
        this.f77213b = d11;
        this.f77214c = d12;
        this.f77212a = aVar2;
        this.f77215d = new a(gVar, j11, aVar, aVar2, "Trace", this.f77217f);
        this.f77216e = new a(gVar, j11, aVar, aVar2, "Network", this.f77217f);
    }

    static double b() {
        return new Random().nextDouble();
    }

    private boolean c(List list) {
        return list.size() > 0 && ((com.google.firebase.perf.v1.h) list.get(0)).m() > 0 && ((com.google.firebase.perf.v1.h) list.get(0)).l(0) == SessionVerbosity.GAUGES_AND_SYSTEM_EVENTS;
    }

    private boolean d() {
        return this.f77214c < this.f77212a.f();
    }

    private boolean e() {
        return this.f77213b < this.f77212a.s();
    }

    private boolean f() {
        return this.f77213b < this.f77212a.G();
    }

    void a(boolean z10) {
        this.f77215d.a(z10);
        this.f77216e.a(z10);
    }

    boolean g(com.google.firebase.perf.v1.g gVar) {
        if (!j(gVar)) {
            return false;
        }
        if (gVar.b()) {
            return !this.f77216e.b(gVar);
        }
        if (gVar.e()) {
            return !this.f77215d.b(gVar);
        }
        return true;
    }

    boolean h(com.google.firebase.perf.v1.g gVar) {
        if (gVar.e() && !f() && !c(gVar.f().F())) {
            return false;
        }
        if (!i(gVar) || d() || c(gVar.f().F())) {
            return !gVar.b() || e() || c(gVar.c().B());
        }
        return false;
    }

    protected boolean i(com.google.firebase.perf.v1.g gVar) {
        return gVar.e() && gVar.f().E().startsWith("_st_") && gVar.f().u("Hosting_activity");
    }

    boolean j(com.google.firebase.perf.v1.g gVar) {
        return (!gVar.e() || (!(gVar.f().E().equals(Constants$TraceNames.FOREGROUND_TRACE_NAME.toString()) || gVar.f().E().equals(Constants$TraceNames.BACKGROUND_TRACE_NAME.toString())) || gVar.f().x() <= 0)) && !gVar.a();
    }
}
