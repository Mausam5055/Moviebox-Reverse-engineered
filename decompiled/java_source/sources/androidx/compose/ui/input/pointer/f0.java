package androidx.compose.ui.input.pointer;

import android.view.MotionEvent;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
public abstract class f0 {
    public static final void a(long j11, Function1 function1) {
        MotionEvent motionEventObtain = MotionEvent.obtain(j11, j11, 3, 0.0f, 0.0f, 0);
        motionEventObtain.setSource(0);
        function1.invoke(motionEventObtain);
        motionEventObtain.recycle();
    }

    public static final void b(o oVar, long j11, Function1 function1) {
        d(oVar, j11, function1, true);
    }

    public static final void c(o oVar, long j11, Function1 function1) {
        d(oVar, j11, function1, false);
    }

    private static final void d(o oVar, long j11, Function1 function1, boolean z10) {
        MotionEvent motionEventD = oVar.d();
        if (motionEventD == null) {
            throw new IllegalArgumentException("The PointerEvent receiver cannot have a null MotionEvent.");
        }
        int action = motionEventD.getAction();
        if (z10) {
            motionEventD.setAction(3);
        }
        motionEventD.offsetLocation(-y.g.m(j11), -y.g.n(j11));
        function1.invoke(motionEventD);
        motionEventD.offsetLocation(y.g.m(j11), y.g.n(j11));
        motionEventD.setAction(action);
    }
}
