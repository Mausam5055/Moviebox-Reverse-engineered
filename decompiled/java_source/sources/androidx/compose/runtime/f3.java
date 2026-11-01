package androidx.compose.runtime;

import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class f3 {
    public static i a(i iVar) {
        return iVar;
    }

    public static final void b(i iVar, Object obj, Function2 function2) {
        if (iVar.e() || !Intrinsics.c(iVar.y(), obj)) {
            iVar.p(obj);
            iVar.k(obj, function2);
        }
    }
}
