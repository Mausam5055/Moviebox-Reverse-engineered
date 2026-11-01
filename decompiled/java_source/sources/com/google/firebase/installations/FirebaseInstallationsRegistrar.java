package com.google.firebase.installations;

import androidx.annotation.Keep;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.concurrent.FirebaseExecutors;
import com.google.firebase.installations.FirebaseInstallationsRegistrar;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import mb.b0;
import mb.r;

/* JADX INFO: loaded from: classes.dex */
@Keep
public class FirebaseInstallationsRegistrar implements ComponentRegistrar {
    private static final String LIBRARY_NAME = "fire-installations";

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ jc.e lambda$getComponents$0(mb.e eVar) {
        return new c((com.google.firebase.f) eVar.a(com.google.firebase.f.class), eVar.f(gc.h.class), (ExecutorService) eVar.c(b0.a(lb.a.class, ExecutorService.class)), FirebaseExecutors.b((Executor) eVar.c(b0.a(lb.b.class, Executor.class))));
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    public List<mb.c> getComponents() {
        return Arrays.asList(mb.c.c(jc.e.class).h(LIBRARY_NAME).b(r.k(com.google.firebase.f.class)).b(r.i(gc.h.class)).b(r.l(b0.a(lb.a.class, ExecutorService.class))).b(r.l(b0.a(lb.b.class, Executor.class))).f(new mb.h() { // from class: jc.f
            @Override // mb.h
            public final Object a(mb.e eVar) {
                return FirebaseInstallationsRegistrar.lambda$getComponents$0(eVar);
            }
        }).d(), gc.g.a(), xc.h.b(LIBRARY_NAME, "18.0.0"));
    }
}
