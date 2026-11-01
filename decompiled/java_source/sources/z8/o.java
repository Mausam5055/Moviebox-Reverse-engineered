package z8;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.google.android.datatransport.runtime.backends.BackendResponse;
import com.google.android.datatransport.runtime.firebase.transport.LogEventDropped;
import com.google.android.datatransport.runtime.synchronization.SynchronizationException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes4.dex */
public class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f79334a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final t8.d f79335b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final a9.d f79336c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final u f79337d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Executor f79338e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final b9.a f79339f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final c9.a f79340g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final c9.a f79341h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final a9.c f79342i;

    public o(Context context, t8.d dVar, a9.d dVar2, u uVar, Executor executor, b9.a aVar, c9.a aVar2, c9.a aVar3, a9.c cVar) {
        this.f79334a = context;
        this.f79335b = dVar;
        this.f79336c = dVar2;
        this.f79337d = uVar;
        this.f79338e = executor;
        this.f79339f = aVar;
        this.f79340g = aVar2;
        this.f79341h = aVar3;
        this.f79342i = cVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Boolean l(com.google.android.datatransport.runtime.o oVar) {
        return Boolean.valueOf(this.f79336c.P(oVar));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Iterable m(com.google.android.datatransport.runtime.o oVar) {
        return this.f79336c.X(oVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object n(Iterable iterable, com.google.android.datatransport.runtime.o oVar, long j11) {
        this.f79336c.Q(iterable);
        this.f79336c.G(oVar, this.f79340g.getTime() + j11);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object o(Iterable iterable) {
        this.f79336c.C(iterable);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object p() {
        this.f79342i.d();
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object q(Map map) {
        for (Map.Entry entry : map.entrySet()) {
            this.f79342i.i(((Integer) entry.getValue()).intValue(), LogEventDropped.Reason.INVALID_PAYLOD, (String) entry.getKey());
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object r(com.google.android.datatransport.runtime.o oVar, long j11) {
        this.f79336c.G(oVar, this.f79340g.getTime() + j11);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object s(com.google.android.datatransport.runtime.o oVar, int i11) {
        this.f79337d.a(oVar, i11 + 1);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void t(final com.google.android.datatransport.runtime.o oVar, final int i11, Runnable runnable) {
        try {
            try {
                b9.a aVar = this.f79339f;
                final a9.d dVar = this.f79336c;
                Objects.requireNonNull(dVar);
                aVar.b(new b9.a.InterfaceC0142a() { // from class: z8.f
                    @Override // b9.a.InterfaceC0142a
                    public final Object execute() {
                        return Integer.valueOf(dVar.B());
                    }
                });
                if (k()) {
                    u(oVar, i11);
                } else {
                    this.f79339f.b(new b9.a.InterfaceC0142a() { // from class: z8.g
                        @Override // b9.a.InterfaceC0142a
                        public final Object execute() {
                            return this.f79315a.s(oVar, i11);
                        }
                    });
                }
            } catch (SynchronizationException unused) {
                this.f79337d.a(oVar, i11 + 1);
            }
        } finally {
            runnable.run();
        }
    }

    public com.google.android.datatransport.runtime.i j(t8.k kVar) {
        b9.a aVar = this.f79339f;
        final a9.c cVar = this.f79342i;
        Objects.requireNonNull(cVar);
        return kVar.a(com.google.android.datatransport.runtime.i.a().i(this.f79340g.getTime()).o(this.f79341h.getTime()).n("GDT_CLIENT_METRICS").h(new com.google.android.datatransport.runtime.h(r8.c.b("proto"), ((v8.a) aVar.b(new b9.a.InterfaceC0142a() { // from class: z8.e
            @Override // b9.a.InterfaceC0142a
            public final Object execute() {
                return cVar.h();
            }
        })).f())).d());
    }

    boolean k() {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) this.f79334a.getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    public BackendResponse u(final com.google.android.datatransport.runtime.o oVar, int i11) {
        BackendResponse backendResponseB;
        t8.k kVarA = this.f79335b.a(oVar.b());
        long jMax = 0;
        BackendResponse backendResponseE = BackendResponse.e(0L);
        while (true) {
            final long j11 = jMax;
            while (true) {
                if (!((Boolean) this.f79339f.b(new b9.a.InterfaceC0142a() { // from class: z8.h
                    @Override // b9.a.InterfaceC0142a
                    public final Object execute() {
                        return this.f79318a.l(oVar);
                    }
                })).booleanValue()) {
                    this.f79339f.b(new b9.a.InterfaceC0142a() { // from class: z8.n
                        @Override // b9.a.InterfaceC0142a
                        public final Object execute() {
                            return this.f79331a.r(oVar, j11);
                        }
                    });
                    return backendResponseE;
                }
                final Iterable iterable = (Iterable) this.f79339f.b(new b9.a.InterfaceC0142a() { // from class: z8.i
                    @Override // b9.a.InterfaceC0142a
                    public final Object execute() {
                        return this.f79320a.m(oVar);
                    }
                });
                if (!iterable.iterator().hasNext()) {
                    return backendResponseE;
                }
                if (kVarA == null) {
                    w8.a.b("Uploader", "Unknown backend for %s, deleting event batch for it...", oVar);
                    backendResponseB = BackendResponse.a();
                } else {
                    ArrayList arrayList = new ArrayList();
                    Iterator it = iterable.iterator();
                    while (it.hasNext()) {
                        arrayList.add(((a9.k) it.next()).b());
                    }
                    if (oVar.e()) {
                        arrayList.add(j(kVarA));
                    }
                    backendResponseB = kVarA.b(t8.e.a().b(arrayList).c(oVar.c()).a());
                }
                backendResponseE = backendResponseB;
                if (backendResponseE.c() == BackendResponse.Status.TRANSIENT_ERROR) {
                    this.f79339f.b(new b9.a.InterfaceC0142a() { // from class: z8.j
                        @Override // b9.a.InterfaceC0142a
                        public final Object execute() {
                            return this.f79322a.n(iterable, oVar, j11);
                        }
                    });
                    this.f79337d.b(oVar, i11 + 1, true);
                    return backendResponseE;
                }
                this.f79339f.b(new b9.a.InterfaceC0142a() { // from class: z8.k
                    @Override // b9.a.InterfaceC0142a
                    public final Object execute() {
                        return this.f79326a.o(iterable);
                    }
                });
                if (backendResponseE.c() == BackendResponse.Status.OK) {
                    break;
                }
                if (backendResponseE.c() == BackendResponse.Status.INVALID_PAYLOAD) {
                    final HashMap map = new HashMap();
                    Iterator it2 = iterable.iterator();
                    while (it2.hasNext()) {
                        String strN = ((a9.k) it2.next()).b().n();
                        if (map.containsKey(strN)) {
                            map.put(strN, Integer.valueOf(((Integer) map.get(strN)).intValue() + 1));
                        } else {
                            map.put(strN, 1);
                        }
                    }
                    this.f79339f.b(new b9.a.InterfaceC0142a() { // from class: z8.m
                        @Override // b9.a.InterfaceC0142a
                        public final Object execute() {
                            return this.f79329a.q(map);
                        }
                    });
                }
            }
            jMax = Math.max(j11, backendResponseE.b());
            if (oVar.e()) {
                this.f79339f.b(new b9.a.InterfaceC0142a() { // from class: z8.l
                    @Override // b9.a.InterfaceC0142a
                    public final Object execute() {
                        return this.f79328a.p();
                    }
                });
            }
        }
    }

    public void v(final com.google.android.datatransport.runtime.o oVar, final int i11, final Runnable runnable) {
        this.f79338e.execute(new Runnable() { // from class: z8.d
            @Override // java.lang.Runnable
            public final void run() {
                this.f79309a.t(oVar, i11, runnable);
            }
        });
    }
}
