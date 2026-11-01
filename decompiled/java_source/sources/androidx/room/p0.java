package androidx.room;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public abstract class p0 {
    public static final Object b(p pVar, String str, Continuation continuation) {
        Object objD = pVar.d(str, new Function1() { // from class: androidx.room.o0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Boolean.valueOf(p0.c((z3.e) obj));
            }
        }, continuation);
        return objD == IntrinsicsKt.f() ? objD : Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean c(z3.e it) {
        Intrinsics.h(it, "it");
        return it.A0();
    }
}
