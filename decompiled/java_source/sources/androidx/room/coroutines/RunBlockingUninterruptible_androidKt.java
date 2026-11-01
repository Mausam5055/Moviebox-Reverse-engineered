package androidx.room.coroutines;

import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public abstract class RunBlockingUninterruptible_androidKt {
    public static final Object a(Function2 block) {
        Intrinsics.h(block, "block");
        Thread.interrupted();
        return kotlinx.coroutines.j.b(null, new RunBlockingUninterruptible_androidKt$runBlockingUninterruptible$1(block, null), 1, null);
    }
}
