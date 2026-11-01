package androidx.compose.foundation.gestures;

import kotlin.jvm.functions.Function3;
import o0.a0;
import o0.z;

/* JADX INFO: loaded from: classes.dex */
public abstract class DraggableKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Function3 f2671a = new DraggableKt$NoOpOnDragStarted$1(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Function3 f2672b = new DraggableKt$NoOpOnDragStopped$1(null);

    /* JADX INFO: Access modifiers changed from: private */
    public static final long b(long j11) {
        return a0.a(Float.isNaN(z.h(j11)) ? 0.0f : z.h(j11), Float.isNaN(z.i(j11)) ? 0.0f : z.i(j11));
    }
}
