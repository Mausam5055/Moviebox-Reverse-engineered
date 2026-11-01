package androidx.compose.ui;

import androidx.compose.ui.platform.InspectableValueKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class ComposedModifierKt {
    public static final f b(f fVar, Function1 function1, Function3 function3) {
        return fVar.e(new d(function1, function3));
    }

    public static /* synthetic */ f c(f fVar, Function1 function1, Function3 function3, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            function1 = InspectableValueKt.a();
        }
        return b(fVar, function1, function3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final f d(final androidx.compose.runtime.i iVar, f fVar) {
        if (fVar.c(new Function1<f.b, Boolean>() { // from class: androidx.compose.ui.ComposedModifierKt$materializeImpl$1
            @Override // kotlin.jvm.functions.Function1
            public final Boolean invoke(f.b bVar) {
                return Boolean.valueOf(!(bVar instanceof d));
            }
        })) {
            return fVar;
        }
        iVar.x(1219399079);
        f fVar2 = (f) fVar.b(f.f4178a, new Function2<f, f.b, f>() { // from class: androidx.compose.ui.ComposedModifierKt$materializeImpl$result$1
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public final f invoke(f fVar3, f.b bVar) {
                boolean z10 = bVar instanceof d;
                f fVarD = bVar;
                if (z10) {
                    Function3 function3A = ((d) bVar).a();
                    Intrinsics.f(function3A, "null cannot be cast to non-null type @[ExtensionFunctionType] kotlin.Function3<androidx.compose.ui.Modifier, androidx.compose.runtime.Composer, kotlin.Int, androidx.compose.ui.Modifier>");
                    fVarD = ComposedModifierKt.d(iVar, (f) ((Function3) TypeIntrinsics.e(function3A, 3)).invoke(f.f4178a, iVar, 0));
                }
                return fVar3.e(fVarD);
            }
        });
        iVar.N();
        return fVar2;
    }

    public static final f e(androidx.compose.runtime.i iVar, f fVar) {
        iVar.P(439770924);
        f fVarD = d(iVar, fVar);
        iVar.K();
        return fVarD;
    }
}
