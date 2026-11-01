package androidx.work.impl;

import androidx.work.ExistingWorkPolicy;
import androidx.work.WorkInfo;
import androidx.work.WorkManager;
import androidx.work.impl.model.v1;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public abstract class m1 {
    public static final androidx.work.w e(final f1 f1Var, final String name, final androidx.work.i0 workRequest) {
        Intrinsics.h(f1Var, "<this>");
        Intrinsics.h(name, "name");
        Intrinsics.h(workRequest, "workRequest");
        androidx.work.f0 f0VarN = f1Var.m().n();
        String str = "enqueueUniquePeriodic_" + name;
        j4.a aVarC = f1Var.u().c();
        Intrinsics.g(aVarC, "getSerialTaskExecutor(...)");
        return androidx.work.a0.c(f0VarN, str, aVarC, new Function0() { // from class: androidx.work.impl.i1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return m1.f(f1Var, name, workRequest);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit f(final f1 f1Var, final String str, final androidx.work.i0 i0Var) {
        Function0 function0 = new Function0() { // from class: androidx.work.impl.j1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return m1.g(i0Var, f1Var, str);
            }
        };
        androidx.work.impl.model.k0 k0VarL0 = f1Var.t().l0();
        List listP = k0VarL0.p(str);
        if (listP.size() > 1) {
            throw new UnsupportedOperationException("Can't apply UPDATE policy to the chains of work.");
        }
        androidx.work.impl.model.j0.b bVar = (androidx.work.impl.model.j0.b) CollectionsKt.k0(listP);
        if (bVar == null) {
            function0.invoke();
            return Unit.f67061a;
        }
        androidx.work.impl.model.j0 j0VarJ = k0VarL0.j(bVar.f15789a);
        if (j0VarJ == null) {
            throw new IllegalStateException("WorkSpec with " + bVar.f15789a + ", that matches a name \"" + str + "\", wasn't found");
        }
        if (!j0VarJ.o()) {
            throw new UnsupportedOperationException("Can't update OneTimeWorker to Periodic Worker. Update operation must preserve worker's type.");
        }
        if (bVar.f15790b == WorkInfo.State.CANCELLED) {
            k0VarL0.b(bVar.f15789a);
            function0.invoke();
            return Unit.f67061a;
        }
        androidx.work.impl.model.j0 j0VarE = androidx.work.impl.model.j0.e(i0Var.d(), bVar.f15789a, null, null, null, null, null, 0L, 0L, 0L, null, 0, null, 0L, 0L, 0L, 0L, false, null, 0, 0, 0L, 0, 0, null, null, 33554430, null);
        s sVarQ = f1Var.q();
        Intrinsics.g(sVarQ, "getProcessor(...)");
        WorkDatabase workDatabaseT = f1Var.t();
        Intrinsics.g(workDatabaseT, "getWorkDatabase(...)");
        androidx.work.b bVarM = f1Var.m();
        Intrinsics.g(bVarM, "<get-configuration>(...)");
        List listR = f1Var.r();
        Intrinsics.g(listR, "getSchedulers(...)");
        h(sVarQ, workDatabaseT, bVarM, listR, j0VarE, i0Var.c());
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit g(androidx.work.i0 i0Var, f1 f1Var, String str) {
        androidx.work.impl.utils.f.b(new e0(f1Var, str, ExistingWorkPolicy.KEEP, CollectionsKt.e(i0Var)));
        return Unit.f67061a;
    }

    private static final WorkManager.UpdateResult h(s sVar, final WorkDatabase workDatabase, androidx.work.b bVar, final List list, final androidx.work.impl.model.j0 j0Var, final Set set) {
        final String str = j0Var.f15764a;
        final androidx.work.impl.model.j0 j0VarJ = workDatabase.l0().j(str);
        if (j0VarJ == null) {
            throw new IllegalArgumentException("Worker with " + str + " doesn't exist");
        }
        if (j0VarJ.f15765b.isFinished()) {
            return WorkManager.UpdateResult.NOT_APPLIED;
        }
        if (j0VarJ.o() ^ j0Var.o()) {
            Function1 function1 = new Function1() { // from class: androidx.work.impl.k1
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return m1.i((androidx.work.impl.model.j0) obj);
                }
            };
            throw new UnsupportedOperationException("Can't update " + ((String) function1.invoke(j0VarJ)) + " Worker to " + ((String) function1.invoke(j0Var)) + " Worker. Update operation must preserve worker's type.");
        }
        final boolean zK = sVar.k(str);
        if (!zK) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                ((u) it.next()).a(str);
            }
        }
        workDatabase.a0(new Runnable() { // from class: androidx.work.impl.l1
            @Override // java.lang.Runnable
            public final void run() {
                m1.j(workDatabase, j0VarJ, j0Var, list, str, set, zK);
            }
        });
        if (!zK) {
            x.h(bVar, workDatabase, list);
        }
        return zK ? WorkManager.UpdateResult.APPLIED_FOR_NEXT_RUN : WorkManager.UpdateResult.APPLIED_IMMEDIATELY;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String i(androidx.work.impl.model.j0 spec) {
        Intrinsics.h(spec, "spec");
        return spec.o() ? "Periodic" : "OneTime";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j(WorkDatabase workDatabase, androidx.work.impl.model.j0 j0Var, androidx.work.impl.model.j0 j0Var2, List list, String str, Set set, boolean z10) {
        androidx.work.impl.model.k0 k0VarL0 = workDatabase.l0();
        v1 v1VarM0 = workDatabase.m0();
        androidx.work.impl.model.j0 j0VarE = androidx.work.impl.model.j0.e(j0Var2, null, j0Var.f15765b, null, null, null, null, 0L, 0L, 0L, null, j0Var.f15774k, null, 0L, j0Var.f15777n, 0L, 0L, false, null, j0Var.j(), j0Var.g() + 1, j0Var.h(), j0Var.i(), 0, null, null, 29613053, null);
        if (j0Var2.i() == 1) {
            j0VarE.p(j0Var2.h());
            j0VarE.q(j0VarE.i() + 1);
        }
        k0VarL0.c(androidx.work.impl.utils.g.d(list, j0VarE));
        v1VarM0.b(str);
        v1VarM0.d(str, set);
        if (z10) {
            return;
        }
        k0VarL0.o(str, -1L);
        workDatabase.k0().b(str);
    }
}
