package androidx.compose.foundation.gestures;

import androidx.compose.ui.input.pointer.e0;
import androidx.compose.ui.input.pointer.h0;
import androidx.compose.ui.input.pointer.v;
import androidx.compose.ui.input.pointer.w;
import androidx.compose.ui.platform.o2;
import java.util.List;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Ref;

/* JADX INFO: loaded from: classes.dex */
public abstract class DragGestureDetectorKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final float f2659a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final float f2660b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final float f2661c;

    static {
        float fG = o0.i.g((float) 0.125d);
        f2659a = fG;
        float fG2 = o0.i.g(18);
        f2660b = fG2;
        f2661c = fG / fG2;
    }

    public static final Object b(e0 e0Var, Function3 function3, Function1 function1, Function0 function0, Function0 function2, Orientation orientation, Function2 function4, Continuation continuation) {
        Object objC = ForEachGestureKt.c(e0Var, new DragGestureDetectorKt$detectDragGestures$9(function2, new Ref.LongRef(), orientation, function3, function4, function0, function1, null), continuation);
        return objC == IntrinsicsKt.f() ? objC : Unit.f67061a;
    }

    /* JADX WARN: Code duplicated, block: B:25:0x0096  */
    /* JADX WARN: Code duplicated, block: B:28:0x00ac A[LOOP:0: B:24:0x0094->B:28:0x00ac, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:74:0x00b6 A[EDGE_INSN: B:74:0x00b6->B:30:0x00b6 BREAK  A[LOOP:0: B:24:0x0094->B:28:0x00ac], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0015  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0083 -> B:23:0x0089). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static final java.lang.Object c(androidx.compose.ui.input.pointer.c r18, long r19, kotlin.jvm.functions.Function1 r21, kotlin.coroutines.Continuation r22) {
        /*
            Method dump skipped, instruction units count: 323
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.DragGestureDetectorKt.c(androidx.compose.ui.input.pointer.c, long, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean d(androidx.compose.ui.input.pointer.o oVar, long j11) {
        Object obj;
        List listB = oVar.b();
        int size = listB.size();
        boolean z10 = false;
        int i11 = 0;
        while (true) {
            if (i11 >= size) {
                obj = null;
                break;
            }
            obj = listB.get(i11);
            if (v.d(((w) obj).f(), j11)) {
                break;
            }
            i11++;
        }
        w wVar = (w) obj;
        if (wVar != null && wVar.i()) {
            z10 = true;
        }
        return true ^ z10;
    }

    public static final float e(o2 o2Var, int i11) {
        return h0.g(i11, h0.f4998a.b()) ? o2Var.f() * f2661c : o2Var.f();
    }
}
