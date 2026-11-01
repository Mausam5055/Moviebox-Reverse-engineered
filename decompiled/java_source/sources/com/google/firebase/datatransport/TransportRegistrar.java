package com.google.firebase.datatransport;

import android.content.Context;
import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import com.google.android.datatransport.cct.a;
import com.google.android.datatransport.runtime.t;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.datatransport.TransportRegistrar;
import java.util.Arrays;
import java.util.List;
import mb.b0;
import mb.c;
import mb.e;
import mb.h;
import mb.r;
import r8.i;
import zb.b;

/* JADX INFO: loaded from: classes.dex */
@Keep
public class TransportRegistrar implements ComponentRegistrar {
    private static final String LIBRARY_NAME = "fire-transport";

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ i lambda$getComponents$0(e eVar) {
        t.f((Context) eVar.a(Context.class));
        return t.c().g(a.f24184h);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ i lambda$getComponents$1(e eVar) {
        t.f((Context) eVar.a(Context.class));
        return t.c().g(a.f24184h);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ i lambda$getComponents$2(e eVar) {
        t.f((Context) eVar.a(Context.class));
        return t.c().g(a.f24183g);
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    @NonNull
    public List<c> getComponents() {
        return Arrays.asList(c.c(i.class).h(LIBRARY_NAME).b(r.k(Context.class)).f(new h() { // from class: zb.c
            @Override // mb.h
            public final Object a(mb.e eVar) {
                return TransportRegistrar.lambda$getComponents$0(eVar);
            }
        }).d(), c.e(b0.a(zb.a.class, i.class)).b(r.k(Context.class)).f(new h() { // from class: zb.d
            @Override // mb.h
            public final Object a(mb.e eVar) {
                return TransportRegistrar.lambda$getComponents$1(eVar);
            }
        }).d(), c.e(b0.a(b.class, i.class)).b(r.k(Context.class)).f(new h() { // from class: zb.e
            @Override // mb.h
            public final Object a(mb.e eVar) {
                return TransportRegistrar.lambda$getComponents$2(eVar);
            }
        }).d(), xc.h.b(LIBRARY_NAME, "19.0.0"));
    }
}
