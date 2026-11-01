package yc;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public abstract class n {
    public static final com.google.firebase.remoteconfig.a a(com.google.firebase.c cVar) {
        Intrinsics.h(cVar, "<this>");
        com.google.firebase.remoteconfig.a aVarK = com.google.firebase.remoteconfig.a.k();
        Intrinsics.g(aVarK, "getInstance()");
        return aVarK;
    }

    public static final j b(Function1 init) {
        Intrinsics.h(init, "init");
        j.b bVar = new j.b();
        init.invoke(bVar);
        j jVarC = bVar.c();
        Intrinsics.g(jVarC, "builder.build()");
        return jVarC;
    }
}
