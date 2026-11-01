package com.google.firebase.crashlytics;

import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.crashlytics.internal.concurrency.CrashlyticsWorkers;
import com.google.firebase.f;
import com.google.firebase.sessions.api.FirebaseSessionsDependencies;
import com.google.firebase.sessions.api.SessionSubscriber;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.ExecutorService;
import lb.a;
import lb.b;
import lb.c;
import mb.b0;
import mb.e;
import mb.h;
import mb.r;
import ob.g;

/* JADX INFO: loaded from: classes.dex */
public class CrashlyticsRegistrar implements ComponentRegistrar {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final b0 f31129a = b0.a(a.class, ExecutorService.class);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final b0 f31130b = b0.a(b.class, ExecutorService.class);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final b0 f31131c = b0.a(c.class, ExecutorService.class);

    static {
        FirebaseSessionsDependencies.a(SessionSubscriber.Name.CRASHLYTICS);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public FirebaseCrashlytics b(e eVar) {
        CrashlyticsWorkers.f(false);
        long jCurrentTimeMillis = System.currentTimeMillis();
        FirebaseCrashlytics firebaseCrashlyticsB = FirebaseCrashlytics.b((f) eVar.a(f.class), (jc.e) eVar.a(jc.e.class), eVar.i(ob.a.class), eVar.i(kb.a.class), eVar.i(ad.a.class), (ExecutorService) eVar.c(this.f31129a), (ExecutorService) eVar.c(this.f31130b), (ExecutorService) eVar.c(this.f31131c));
        long jCurrentTimeMillis2 = System.currentTimeMillis() - jCurrentTimeMillis;
        if (jCurrentTimeMillis2 > 16) {
            g.f().b("Initializing Crashlytics blocked main for " + jCurrentTimeMillis2 + " ms");
        }
        return firebaseCrashlyticsB;
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    public List getComponents() {
        return Arrays.asList(mb.c.c(FirebaseCrashlytics.class).h("fire-cls").b(r.k(f.class)).b(r.k(jc.e.class)).b(r.l(this.f31129a)).b(r.l(this.f31130b)).b(r.l(this.f31131c)).b(r.a(ob.a.class)).b(r.a(kb.a.class)).b(r.a(ad.a.class)).f(new h() { // from class: nb.f
            @Override // mb.h
            public final Object a(mb.e eVar) {
                return this.f70300a.b(eVar);
            }
        }).e().d(), xc.h.b("fire-cls", "19.3.0"));
    }
}
