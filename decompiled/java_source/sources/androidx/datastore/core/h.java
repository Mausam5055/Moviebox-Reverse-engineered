package androidx.datastore.core;

import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.j1;
import kotlinx.coroutines.flow.y0;

/* JADX INFO: loaded from: classes.dex */
public final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final y0 f8594a;

    public h() {
        u uVar = u.f8626b;
        Intrinsics.f(uVar, "null cannot be cast to non-null type androidx.datastore.core.State<T of androidx.datastore.core.DataStoreInMemoryCache>");
        this.f8594a = j1.a(uVar);
    }

    public final r a() {
        return (r) this.f8594a.getValue();
    }

    public final kotlinx.coroutines.flow.b b() {
        return this.f8594a;
    }

    /* JADX WARN: Code duplicated, block: B:13:0x002b  */
    public final r c(r newState) {
        Object value;
        r rVar;
        Intrinsics.h(newState, "newState");
        y0 y0Var = this.f8594a;
        do {
            value = y0Var.getValue();
            rVar = (r) value;
            if (rVar instanceof o ? true : Intrinsics.c(rVar, u.f8626b)) {
                rVar = newState;
            } else if (rVar instanceof d) {
                if (newState.a() > rVar.a()) {
                    rVar = newState;
                }
            } else if (!(rVar instanceof i)) {
                throw new NoWhenBranchMatchedException();
            }
        } while (!y0Var.e(value, rVar));
        return rVar;
    }
}
