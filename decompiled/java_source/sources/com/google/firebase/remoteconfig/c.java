package com.google.firebase.remoteconfig;

import android.app.Application;
import android.content.Context;
import androidx.compose.animation.core.j0;
import com.google.android.gms.common.api.internal.BackgroundDetector;
import com.google.android.gms.common.util.BiConsumer;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.DefaultClock;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.f;
import com.google.firebase.remoteconfig.internal.ConfigFetchHandler;
import com.google.firebase.remoteconfig.internal.ConfigFetchHttpClient;
import com.google.firebase.remoteconfig.internal.m;
import com.google.firebase.remoteconfig.internal.n;
import com.google.firebase.remoteconfig.internal.o;
import com.google.firebase.remoteconfig.internal.r;
import com.google.firebase.remoteconfig.internal.u;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Random;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.atomic.AtomicReference;
import jc.e;

/* JADX INFO: loaded from: classes4.dex */
public class c implements ad.a {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final Clock f32421j = DefaultClock.getInstance();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final Random f32422k = new Random();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final Map f32423l = new HashMap();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map f32424a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Context f32425b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ScheduledExecutorService f32426c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final f f32427d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final e f32428e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final hb.b f32429f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final ic.b f32430g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final String f32431h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Map f32432i;

    private static class a implements BackgroundDetector.BackgroundStateChangeListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final AtomicReference f32433a = new AtomicReference();

        private a() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void b(Context context) {
            Application application = (Application) context.getApplicationContext();
            AtomicReference atomicReference = f32433a;
            if (atomicReference.get() == null) {
                a aVar = new a();
                if (j0.a(atomicReference, null, aVar)) {
                    BackgroundDetector.initialize(application);
                    BackgroundDetector.getInstance().addListener(aVar);
                }
            }
        }

        @Override // com.google.android.gms.common.api.internal.BackgroundDetector.BackgroundStateChangeListener
        public void onBackgroundStateChanged(boolean z10) {
            c.r(z10);
        }
    }

    c(Context context, ScheduledExecutorService scheduledExecutorService, f fVar, e eVar, hb.b bVar, ic.b bVar2) {
        this(context, scheduledExecutorService, fVar, eVar, bVar, bVar2, true);
    }

    protected c(Context context, ScheduledExecutorService scheduledExecutorService, f fVar, e eVar, hb.b bVar, ic.b bVar2, boolean z10) {
        this.f32424a = new HashMap();
        this.f32432i = new HashMap();
        this.f32425b = context;
        this.f32426c = scheduledExecutorService;
        this.f32427d = fVar;
        this.f32428e = eVar;
        this.f32429f = bVar;
        this.f32430g = bVar2;
        this.f32431h = fVar.n().c();
        a.b(context);
        if (z10) {
            Tasks.call(scheduledExecutorService, new Callable() { // from class: com.google.firebase.remoteconfig.b
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return this.f32420a.g();
                }
            });
        }
    }

    private com.google.firebase.remoteconfig.internal.e f(String str, String str2) {
        return com.google.firebase.remoteconfig.internal.e.h(this.f32426c, r.c(this.f32425b, String.format("%s_%s_%s_%s.json", "frc", this.f32431h, str, str2)));
    }

    private m j(com.google.firebase.remoteconfig.internal.e eVar, com.google.firebase.remoteconfig.internal.e eVar2) {
        return new m(this.f32426c, eVar, eVar2);
    }

    static n k(Context context, String str, String str2) {
        return new n(context.getSharedPreferences(String.format("%s_%s_%s_%s", "frc", str, str2, "settings"), 0));
    }

    private static u l(f fVar, String str, ic.b bVar) {
        if (p(fVar) && str.equals("firebase")) {
            return new u(bVar);
        }
        return null;
    }

    private zc.e n(com.google.firebase.remoteconfig.internal.e eVar, com.google.firebase.remoteconfig.internal.e eVar2) {
        return new zc.e(eVar, zc.a.a(eVar, eVar2), this.f32426c);
    }

    private static boolean o(f fVar, String str) {
        return str.equals("firebase") && p(fVar);
    }

    private static boolean p(f fVar) {
        return fVar.m().equals("[DEFAULT]");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ kb.a q() {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static synchronized void r(boolean z10) {
        Iterator it = f32423l.values().iterator();
        while (it.hasNext()) {
            ((com.google.firebase.remoteconfig.a) it.next()).x(z10);
        }
    }

    @Override // ad.a
    public void a(String str, bd.f fVar) {
        e(str).o().h(fVar);
    }

    synchronized com.google.firebase.remoteconfig.a d(f fVar, String str, e eVar, hb.b bVar, Executor executor, com.google.firebase.remoteconfig.internal.e eVar2, com.google.firebase.remoteconfig.internal.e eVar3, com.google.firebase.remoteconfig.internal.e eVar4, ConfigFetchHandler configFetchHandler, m mVar, n nVar, zc.e eVar5) {
        try {
            if (!this.f32424a.containsKey(str)) {
                com.google.firebase.remoteconfig.a aVar = new com.google.firebase.remoteconfig.a(this.f32425b, fVar, eVar, o(fVar, str) ? bVar : null, executor, eVar2, eVar3, eVar4, configFetchHandler, mVar, nVar, m(fVar, eVar, configFetchHandler, eVar3, this.f32425b, str, nVar), eVar5);
                aVar.y();
                this.f32424a.put(str, aVar);
                f32423l.put(str, aVar);
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return (com.google.firebase.remoteconfig.a) this.f32424a.get(str);
    }

    public synchronized com.google.firebase.remoteconfig.a e(String str) {
        com.google.firebase.remoteconfig.internal.e eVarF;
        com.google.firebase.remoteconfig.internal.e eVarF2;
        com.google.firebase.remoteconfig.internal.e eVarF3;
        n nVarK;
        m mVarJ;
        try {
            eVarF = f(str, "fetch");
            eVarF2 = f(str, "activate");
            eVarF3 = f(str, "defaults");
            nVarK = k(this.f32425b, this.f32431h, str);
            mVarJ = j(eVarF2, eVarF3);
            final u uVarL = l(this.f32427d, str, this.f32430g);
            if (uVarL != null) {
                mVarJ.b(new BiConsumer() { // from class: yc.l
                    @Override // com.google.android.gms.common.util.BiConsumer
                    public final void accept(Object obj, Object obj2) {
                        uVarL.a((String) obj, (com.google.firebase.remoteconfig.internal.f) obj2);
                    }
                });
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return d(this.f32427d, str, this.f32428e, this.f32429f, this.f32426c, eVarF, eVarF2, eVarF3, h(str, eVarF, nVarK), mVarJ, nVarK, n(eVarF2, eVarF3));
    }

    com.google.firebase.remoteconfig.a g() {
        return e("firebase");
    }

    synchronized ConfigFetchHandler h(String str, com.google.firebase.remoteconfig.internal.e eVar, n nVar) {
        try {
        } catch (Throwable th2) {
            throw th2;
        }
        return new ConfigFetchHandler(this.f32428e, p(this.f32427d) ? this.f32430g : new ic.b() { // from class: yc.m
            @Override // ic.b
            public final Object get() {
                return com.google.firebase.remoteconfig.c.q();
            }
        }, this.f32426c, f32421j, f32422k, eVar, i(this.f32427d.n().b(), str, nVar), nVar, this.f32432i);
    }

    ConfigFetchHttpClient i(String str, String str2, n nVar) {
        return new ConfigFetchHttpClient(this.f32425b, this.f32427d.n().c(), str, str2, nVar.b(), nVar.b());
    }

    synchronized o m(f fVar, e eVar, ConfigFetchHandler configFetchHandler, com.google.firebase.remoteconfig.internal.e eVar2, Context context, String str, n nVar) {
        return new o(fVar, eVar, configFetchHandler, eVar2, context, str, nVar, this.f32426c);
    }
}
