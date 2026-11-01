package androidx.compose.runtime;

import java.util.Arrays;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public abstract class CompositionLocalKt {
    public static final void a(final t1 t1Var, final Function2 function2, i iVar, final int i11) {
        i iVarG = iVar.g(-1350970552);
        if (k.H()) {
            k.Q(-1350970552, i11, -1, "androidx.compose.runtime.CompositionLocalProvider (CompositionLocal.kt:398)");
        }
        iVarG.D(t1Var);
        function2.invoke(iVarG, Integer.valueOf((i11 >> 3) & 14));
        iVarG.q();
        if (k.H()) {
            k.P();
        }
        g2 g2VarJ = iVarG.j();
        if (g2VarJ != null) {
            g2VarJ.a(new Function2<i, Integer, Unit>() { // from class: androidx.compose.runtime.CompositionLocalKt$CompositionLocalProvider$2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                    invoke((i) obj, ((Number) obj2).intValue());
                    return Unit.f67061a;
                }

                public final void invoke(i iVar2, int i12) {
                    CompositionLocalKt.a(t1Var, function2, iVar2, v1.a(i11 | 1));
                }
            });
        }
    }

    public static final void b(final t1[] t1VarArr, final Function2 function2, i iVar, final int i11) {
        i iVarG = iVar.g(-1390796515);
        if (k.H()) {
            k.Q(-1390796515, i11, -1, "androidx.compose.runtime.CompositionLocalProvider (CompositionLocal.kt:377)");
        }
        iVarG.Q(t1VarArr);
        function2.invoke(iVarG, Integer.valueOf((i11 >> 3) & 14));
        iVarG.H();
        if (k.H()) {
            k.P();
        }
        g2 g2VarJ = iVarG.j();
        if (g2VarJ != null) {
            g2VarJ.a(new Function2<i, Integer, Unit>() { // from class: androidx.compose.runtime.CompositionLocalKt$CompositionLocalProvider$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                    invoke((i) obj, ((Number) obj2).intValue());
                    return Unit.f67061a;
                }

                public final void invoke(i iVar2, int i12) {
                    t1[] t1VarArr2 = t1VarArr;
                    CompositionLocalKt.b((t1[]) Arrays.copyOf(t1VarArr2, t1VarArr2.length), function2, iVar2, v1.a(i11 | 1));
                }
            });
        }
    }

    public static final s1 c(q2 q2Var, Function0 function0) {
        return new e0(q2Var, function0);
    }

    public static /* synthetic */ s1 d(q2 q2Var, Function0 function0, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            q2Var = r2.j();
        }
        return c(q2Var, function0);
    }

    public static final s1 e(Function1 function1) {
        return new ComputedProvidableCompositionLocal(function1);
    }

    public static final s1 f(Function0 function0) {
        return new b3(function0);
    }
}
