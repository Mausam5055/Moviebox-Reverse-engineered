package androidx.work.impl.workers;

import androidx.work.impl.model.j0;
import androidx.work.impl.model.o;
import androidx.work.impl.model.q;
import androidx.work.impl.model.s1;
import androidx.work.impl.model.v1;
import androidx.work.impl.model.z;
import androidx.work.t;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f16016a;

    static {
        String strI = t.i("DiagnosticsWrkr");
        Intrinsics.g(strI, "tagWithPrefix(...)");
        f16016a = strI;
    }

    private static final String c(j0 j0Var, String str, Integer num, String str2) {
        return '\n' + j0Var.f15764a + "\t " + j0Var.f15766c + "\t " + num + "\t " + j0Var.f15765b.name() + "\t " + str + "\t " + str2 + '\t';
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String d(z zVar, v1 v1Var, q qVar, List list) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("\n Id \t Class Name\t Job Id\t State\t Unique Name\t Tags\t");
        Iterator it = list.iterator();
        while (it.hasNext()) {
            j0 j0Var = (j0) it.next();
            o oVarA = qVar.a(s1.a(j0Var));
            sb2.append(c(j0Var, CollectionsKt.s0(zVar.b(j0Var.f15764a), ",", null, null, 0, null, null, 62, null), oVarA != null ? Integer.valueOf(oVarA.f15827c) : null, CollectionsKt.s0(v1Var.a(j0Var.f15764a), ",", null, null, 0, null, null, 62, null)));
        }
        return sb2.toString();
    }
}
