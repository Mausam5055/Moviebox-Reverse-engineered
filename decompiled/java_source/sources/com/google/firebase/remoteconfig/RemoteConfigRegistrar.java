package com.google.firebase.remoteconfig;

import android.content.Context;
import androidx.annotation.Keep;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.f;
import com.google.firebase.remoteconfig.RemoteConfigRegistrar;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.ScheduledExecutorService;
import mb.b0;
import mb.e;
import mb.h;
import mb.r;

/* JADX INFO: loaded from: classes.dex */
@Keep
public class RemoteConfigRegistrar implements ComponentRegistrar {
    private static final String LIBRARY_NAME = "fire-rc";

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ c lambda$getComponents$0(b0 b0Var, e eVar) {
        return new c((Context) eVar.a(Context.class), (ScheduledExecutorService) eVar.c(b0Var), (f) eVar.a(f.class), (jc.e) eVar.a(jc.e.class), ((com.google.firebase.abt.component.a) eVar.a(com.google.firebase.abt.component.a.class)).b("frc"), eVar.f(kb.a.class));
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    public List<mb.c> getComponents() {
        final b0 b0VarA = b0.a(lb.b.class, ScheduledExecutorService.class);
        return Arrays.asList(mb.c.d(c.class, ad.a.class).h(LIBRARY_NAME).b(r.k(Context.class)).b(r.l(b0VarA)).b(r.k(f.class)).b(r.k(jc.e.class)).b(r.k(com.google.firebase.abt.component.a.class)).b(r.i(kb.a.class)).f(new h() { // from class: yc.o
            @Override // mb.h
            public final Object a(mb.e eVar) {
                return RemoteConfigRegistrar.lambda$getComponents$0(b0VarA, eVar);
            }
        }).e().d(), xc.h.b(LIBRARY_NAME, "22.0.1"));
    }
}
