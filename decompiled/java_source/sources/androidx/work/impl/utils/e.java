package androidx.work.impl.utils;

import androidx.work.WorkInfo;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.f1;
import androidx.work.impl.model.k0;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class e {
    private static final void d(f1 f1Var, String str) {
        WorkDatabase workDatabaseT = f1Var.t();
        Intrinsics.g(workDatabaseT, "getWorkDatabase(...)");
        j(workDatabaseT, str);
        androidx.work.impl.s sVarQ = f1Var.q();
        Intrinsics.g(sVarQ, "getProcessor(...)");
        sVarQ.s(str, 1);
        Iterator it = f1Var.r().iterator();
        while (it.hasNext()) {
            ((androidx.work.impl.u) it.next()).a(str);
        }
    }

    public static final androidx.work.w e(final UUID id2, final f1 workManagerImpl) {
        Intrinsics.h(id2, "id");
        Intrinsics.h(workManagerImpl, "workManagerImpl");
        androidx.work.f0 f0VarN = workManagerImpl.m().n();
        j4.a aVarC = workManagerImpl.u().c();
        Intrinsics.g(aVarC, "getSerialTaskExecutor(...)");
        return androidx.work.a0.c(f0VarN, "CancelWorkById", aVarC, new Function0() { // from class: androidx.work.impl.utils.b
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return e.f(workManagerImpl, id2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit f(final f1 f1Var, final UUID uuid) {
        WorkDatabase workDatabaseT = f1Var.t();
        Intrinsics.g(workDatabaseT, "getWorkDatabase(...)");
        workDatabaseT.a0(new Runnable() { // from class: androidx.work.impl.utils.d
            @Override // java.lang.Runnable
            public final void run() {
                e.g(f1Var, uuid);
            }
        });
        k(f1Var);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g(f1 f1Var, UUID uuid) {
        String string = uuid.toString();
        Intrinsics.g(string, "toString(...)");
        d(f1Var, string);
    }

    public static final void h(final String name, final f1 workManagerImpl) {
        Intrinsics.h(name, "name");
        Intrinsics.h(workManagerImpl, "workManagerImpl");
        final WorkDatabase workDatabaseT = workManagerImpl.t();
        Intrinsics.g(workDatabaseT, "getWorkDatabase(...)");
        workDatabaseT.a0(new Runnable() { // from class: androidx.work.impl.utils.c
            @Override // java.lang.Runnable
            public final void run() {
                e.i(workDatabaseT, name, workManagerImpl);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i(WorkDatabase workDatabase, String str, f1 f1Var) {
        Iterator it = workDatabase.l0().h(str).iterator();
        while (it.hasNext()) {
            d(f1Var, (String) it.next());
        }
    }

    private static final void j(WorkDatabase workDatabase, String str) {
        k0 k0VarL0 = workDatabase.l0();
        androidx.work.impl.model.b bVarG0 = workDatabase.g0();
        List listQ = CollectionsKt.q(str);
        while (!listQ.isEmpty()) {
            String str2 = (String) CollectionsKt.L(listQ);
            WorkInfo.State stateI = k0VarL0.i(str2);
            if (stateI != WorkInfo.State.SUCCEEDED && stateI != WorkInfo.State.FAILED) {
                k0VarL0.k(str2);
            }
            listQ.addAll(bVarG0.b(str2));
        }
    }

    private static final void k(f1 f1Var) {
        androidx.work.impl.x.h(f1Var.m(), f1Var.t(), f1Var.r());
    }
}
