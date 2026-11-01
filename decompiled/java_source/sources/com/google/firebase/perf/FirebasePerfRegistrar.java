package com.google.firebase.perf;

import androidx.annotation.Keep;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.f;
import com.google.firebase.n;
import com.google.firebase.perf.FirebasePerfRegistrar;
import com.google.firebase.remoteconfig.c;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.Executor;
import lb.d;
import mb.b0;
import mb.e;
import mb.h;
import mb.r;
import pc.b;
import qc.a;
import r8.i;

/* JADX INFO: loaded from: classes.dex */
@Keep
public class FirebasePerfRegistrar implements ComponentRegistrar {
    private static final String EARLY_LIBRARY_NAME = "fire-perf-early";
    private static final String LIBRARY_NAME = "fire-perf";

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ b lambda$getComponents$0(b0 b0Var, e eVar) {
        return new b((f) eVar.a(f.class), (n) eVar.f(n.class).get(), (Executor) eVar.c(b0Var));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static pc.e providesFirebasePerformance(e eVar) {
        eVar.a(b.class);
        return a.a().b(new rc.a((f) eVar.a(f.class), (jc.e) eVar.a(jc.e.class), eVar.f(c.class), eVar.f(i.class))).a().a();
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    @Keep
    public List<mb.c> getComponents() {
        final b0 b0VarA = b0.a(d.class, Executor.class);
        return Arrays.asList(mb.c.c(pc.e.class).h(LIBRARY_NAME).b(r.k(f.class)).b(r.m(c.class)).b(r.k(jc.e.class)).b(r.m(i.class)).b(r.k(b.class)).f(new h() { // from class: pc.c
            @Override // mb.h
            public final Object a(mb.e eVar) {
                return FirebasePerfRegistrar.providesFirebasePerformance(eVar);
            }
        }).d(), mb.c.c(b.class).h(EARLY_LIBRARY_NAME).b(r.k(f.class)).b(r.i(n.class)).b(r.l(b0VarA)).e().f(new h() { // from class: pc.d
            @Override // mb.h
            public final Object a(mb.e eVar) {
                return FirebasePerfRegistrar.lambda$getComponents$0(b0VarA, eVar);
            }
        }).d(), xc.h.b(LIBRARY_NAME, "21.0.3"));
    }
}
