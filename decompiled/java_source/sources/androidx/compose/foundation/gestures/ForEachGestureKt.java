package androidx.compose.foundation.gestures;

import androidx.compose.ui.input.pointer.e0;
import androidx.compose.ui.input.pointer.w;
import java.util.List;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public abstract class ForEachGestureKt {
    public static final boolean a(androidx.compose.ui.input.pointer.c cVar) {
        List listB = cVar.n0().b();
        int size = listB.size();
        boolean z10 = false;
        for (int i11 = 0; i11 < size; i11++) {
            if (((w) listB.get(i11)).i()) {
                z10 = true;
                break;
            }
        }
        return !z10;
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0058  */
    /* JADX WARN: Code duplicated, block: B:24:0x0065 A[LOOP:0: B:20:0x0056->B:24:0x0065, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:27:0x0068 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:28:0x003e A[EDGE_INSN: B:28:0x003e->B:16:0x003e BREAK  A[LOOP:0: B:20:0x0056->B:24:0x0065], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0048 -> B:19:0x004b). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static final java.lang.Object b(androidx.compose.ui.input.pointer.c r6, kotlin.coroutines.Continuation r7) {
        /*
            boolean r0 = r7 instanceof androidx.compose.foundation.gestures.ForEachGestureKt$awaitAllPointersUp$3
            if (r0 == 0) goto L13
            r0 = r7
            androidx.compose.foundation.gestures.ForEachGestureKt$awaitAllPointersUp$3 r0 = (androidx.compose.foundation.gestures.ForEachGestureKt$awaitAllPointersUp$3) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.compose.foundation.gestures.ForEachGestureKt$awaitAllPointersUp$3 r0 = new androidx.compose.foundation.gestures.ForEachGestureKt$awaitAllPointersUp$3
            r0.<init>(r7)
        L18:
            java.lang.Object r7 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.f()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            java.lang.Object r6 = r0.L$0
            androidx.compose.ui.input.pointer.c r6 = (androidx.compose.ui.input.pointer.c) r6
            kotlin.ResultKt.b(r7)
            goto L4b
        L2d:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L35:
            kotlin.ResultKt.b(r7)
            boolean r7 = a(r6)
            if (r7 != 0) goto L68
        L3e:
            androidx.compose.ui.input.pointer.PointerEventPass r7 = androidx.compose.ui.input.pointer.PointerEventPass.Final
            r0.L$0 = r6
            r0.label = r3
            java.lang.Object r7 = r6.m0(r7, r0)
            if (r7 != r1) goto L4b
            return r1
        L4b:
            androidx.compose.ui.input.pointer.o r7 = (androidx.compose.ui.input.pointer.o) r7
            java.util.List r7 = r7.b()
            int r2 = r7.size()
            r4 = 0
        L56:
            if (r4 >= r2) goto L68
            java.lang.Object r5 = r7.get(r4)
            androidx.compose.ui.input.pointer.w r5 = (androidx.compose.ui.input.pointer.w) r5
            boolean r5 = r5.i()
            if (r5 == 0) goto L65
            goto L3e
        L65:
            int r4 = r4 + 1
            goto L56
        L68:
            kotlin.Unit r6 = kotlin.Unit.f67061a
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.ForEachGestureKt.b(androidx.compose.ui.input.pointer.c, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public static final Object c(e0 e0Var, Function2 function2, Continuation continuation) {
        Object objK = e0Var.K(new ForEachGestureKt$awaitEachGesture$2(continuation.getF67179a(), function2, null), continuation);
        return objK == IntrinsicsKt.f() ? objK : Unit.f67061a;
    }
}
