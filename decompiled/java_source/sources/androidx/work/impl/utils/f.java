package androidx.work.impl.utils;

import android.text.TextUtils;
import androidx.work.ExistingWorkPolicy;
import androidx.work.WorkInfo;
import androidx.work.i0;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.f1;
import androidx.work.impl.model.j0;
import androidx.work.impl.model.k0;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f15960a = androidx.work.t.i("EnqueueRunnable");

    public static boolean a(androidx.work.impl.e0 e0Var) {
        f1 f1VarH = e0Var.h();
        WorkDatabase workDatabaseT = f1VarH.t();
        workDatabaseT.k();
        try {
            g.a(workDatabaseT, f1VarH.m(), e0Var);
            boolean zE = e(e0Var);
            workDatabaseT.e0();
            return zE;
        } finally {
            workDatabaseT.t();
        }
    }

    public static void b(androidx.work.impl.e0 e0Var) {
        if (!e0Var.i()) {
            if (a(e0Var)) {
                f(e0Var);
            }
        } else {
            throw new IllegalStateException("WorkContinuation has cycles (" + e0Var + ")");
        }
    }

    private static boolean c(androidx.work.impl.e0 e0Var) {
        boolean zD = d(e0Var.h(), e0Var.g(), (String[]) androidx.work.impl.e0.n(e0Var).toArray(new String[0]), e0Var.e(), e0Var.c());
        e0Var.m();
        return zD;
    }

    /* JADX WARN: Code duplicated, block: B:84:0x0152  */
    private static boolean d(f1 f1Var, List list, String[] strArr, String str, ExistingWorkPolicy existingWorkPolicy) {
        boolean z10;
        boolean z11;
        boolean z12;
        boolean z13;
        String[] strArr2 = strArr;
        long jCurrentTimeMillis = f1Var.m().a().currentTimeMillis();
        WorkDatabase workDatabaseT = f1Var.t();
        boolean z14 = strArr2 != null && strArr2.length > 0;
        if (z14) {
            z10 = false;
            z11 = false;
            z12 = true;
            for (String str2 : strArr2) {
                j0 j0VarJ = workDatabaseT.l0().j(str2);
                if (j0VarJ == null) {
                    androidx.work.t.e().c(f15960a, "Prerequisite " + str2 + " doesn't exist; not enqueuing");
                    return false;
                }
                WorkInfo.State state = j0VarJ.f15765b;
                z12 &= state == WorkInfo.State.SUCCEEDED;
                if (state == WorkInfo.State.FAILED) {
                    z11 = true;
                } else if (state == WorkInfo.State.CANCELLED) {
                    z10 = true;
                }
            }
        } else {
            z10 = false;
            z11 = false;
            z12 = true;
        }
        boolean zIsEmpty = TextUtils.isEmpty(str);
        if (zIsEmpty || z14) {
            z13 = false;
        } else {
            List<j0.b> listP = workDatabaseT.l0().p(str);
            if (!listP.isEmpty()) {
                if (existingWorkPolicy == ExistingWorkPolicy.APPEND || existingWorkPolicy == ExistingWorkPolicy.APPEND_OR_REPLACE) {
                    androidx.work.impl.model.b bVarG0 = workDatabaseT.g0();
                    List arrayList = new ArrayList();
                    for (j0.b bVar : listP) {
                        if (!bVarG0.d(bVar.f15789a)) {
                            WorkInfo.State state2 = bVar.f15790b;
                            boolean z15 = (state2 == WorkInfo.State.SUCCEEDED) & z12;
                            if (state2 == WorkInfo.State.FAILED) {
                                z11 = true;
                            } else if (state2 == WorkInfo.State.CANCELLED) {
                                z10 = true;
                            }
                            arrayList.add(bVar.f15789a);
                            z12 = z15;
                        }
                        bVarG0 = bVarG0;
                    }
                    if (existingWorkPolicy == ExistingWorkPolicy.APPEND_OR_REPLACE && (z10 || z11)) {
                        k0 k0VarL0 = workDatabaseT.l0();
                        Iterator it = k0VarL0.p(str).iterator();
                        while (it.hasNext()) {
                            k0VarL0.b(((j0.b) it.next()).f15789a);
                        }
                        arrayList = Collections.emptyList();
                        z10 = false;
                        z11 = false;
                    }
                    strArr2 = (String[]) arrayList.toArray(strArr2);
                    z14 = strArr2.length > 0;
                } else {
                    if (existingWorkPolicy == ExistingWorkPolicy.KEEP) {
                        Iterator it2 = listP.iterator();
                        while (it2.hasNext()) {
                            WorkInfo.State state3 = ((j0.b) it2.next()).f15790b;
                            if (state3 == WorkInfo.State.ENQUEUED || state3 == WorkInfo.State.RUNNING) {
                                return false;
                            }
                        }
                    }
                    e.h(str, f1Var);
                    k0 k0VarL1 = workDatabaseT.l0();
                    Iterator it3 = listP.iterator();
                    while (it3.hasNext()) {
                        k0VarL1.b(((j0.b) it3.next()).f15789a);
                    }
                    z13 = true;
                }
            }
            z13 = false;
        }
        Iterator it4 = list.iterator();
        while (it4.hasNext()) {
            i0 i0Var = (i0) it4.next();
            j0 j0VarD = i0Var.d();
            if (!z14 || z12) {
                j0VarD.f15777n = jCurrentTimeMillis;
            } else if (z11) {
                j0VarD.f15765b = WorkInfo.State.FAILED;
            } else if (z10) {
                j0VarD.f15765b = WorkInfo.State.CANCELLED;
            } else {
                j0VarD.f15765b = WorkInfo.State.BLOCKED;
            }
            Iterator it5 = it4;
            if (j0VarD.f15765b == WorkInfo.State.ENQUEUED) {
                z13 = true;
            }
            workDatabaseT.l0().f(g.d(f1Var.r(), j0VarD));
            if (z14) {
                int length = strArr2.length;
                int i11 = 0;
                while (i11 < length) {
                    workDatabaseT.g0().a(new androidx.work.impl.model.a(i0Var.b(), strArr2[i11]));
                    i11++;
                    length = length;
                    strArr2 = strArr2;
                }
            }
            String[] strArr3 = strArr2;
            workDatabaseT.m0().d(i0Var.b(), i0Var.c());
            if (!zIsEmpty) {
                workDatabaseT.j0().a(new androidx.work.impl.model.y(str, i0Var.b()));
            }
            it4 = it5;
            strArr2 = strArr3;
        }
        return z13;
    }

    private static boolean e(androidx.work.impl.e0 e0Var) {
        List<androidx.work.impl.e0> listF = e0Var.f();
        boolean zE = false;
        if (listF != null) {
            for (androidx.work.impl.e0 e0Var2 : listF) {
                if (e0Var2.k()) {
                    androidx.work.t.e().k(f15960a, "Already enqueued work ids (" + TextUtils.join(", ", e0Var2.d()) + ")");
                } else {
                    zE |= e(e0Var2);
                }
            }
        }
        return c(e0Var) | zE;
    }

    public static void f(androidx.work.impl.e0 e0Var) {
        f1 f1VarH = e0Var.h();
        androidx.work.impl.x.h(f1VarH.m(), f1VarH.t(), f1VarH.r());
    }
}
