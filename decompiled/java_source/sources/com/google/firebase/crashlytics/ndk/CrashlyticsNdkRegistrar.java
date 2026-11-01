package com.google.firebase.crashlytics.ndk;

import android.content.Context;
import com.google.firebase.components.ComponentRegistrar;
import java.util.Arrays;
import java.util.List;
import mb.e;
import mb.r;

/* JADX INFO: loaded from: classes.dex */
public class CrashlyticsNdkRegistrar implements ComponentRegistrar {
    /* JADX INFO: Access modifiers changed from: private */
    public ob.a b(mb.e eVar) {
        Context context = (Context) eVar.a(Context.class);
        return c.f(context, !ob.f.g(context));
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    public List getComponents() {
        return Arrays.asList(mb.c.c(ob.a.class).h("fire-cls-ndk").b(r.k(Context.class)).f(new mb.h() { // from class: yb.a
            @Override // mb.h
            public final Object a(e eVar) {
                return this.f78968a.b(eVar);
            }
        }).e().d(), xc.h.b("fire-cls-ndk", "19.3.0"));
    }
}
