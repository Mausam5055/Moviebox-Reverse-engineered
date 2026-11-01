package com.google.firebase.abt.component;

import android.content.Context;
import androidx.annotation.Keep;
import com.google.firebase.abt.component.AbtRegistrar;
import com.google.firebase.components.ComponentRegistrar;
import java.util.Arrays;
import java.util.List;
import mb.c;
import mb.e;
import mb.h;
import mb.r;

/* JADX INFO: loaded from: classes.dex */
@Keep
public class AbtRegistrar implements ComponentRegistrar {
    private static final String LIBRARY_NAME = "fire-abt";

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ a lambda$getComponents$0(e eVar) {
        return new a((Context) eVar.a(Context.class), eVar.f(kb.a.class));
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    public List<c> getComponents() {
        return Arrays.asList(c.c(a.class).h(LIBRARY_NAME).b(r.k(Context.class)).b(r.i(kb.a.class)).f(new h() { // from class: ib.a
            @Override // mb.h
            public final Object a(e eVar) {
                return AbtRegistrar.lambda$getComponents$0(eVar);
            }
        }).d(), xc.h.b(LIBRARY_NAME, "21.1.1"));
    }
}
