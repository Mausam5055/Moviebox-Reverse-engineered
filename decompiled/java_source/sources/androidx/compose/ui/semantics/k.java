package androidx.compose.ui.semantics;

import java.util.concurrent.atomic.AtomicInteger;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
public abstract class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static AtomicInteger f6005a = new AtomicInteger(0);

    public static final int a() {
        return f6005a.addAndGet(1);
    }

    public static final androidx.compose.ui.f b(androidx.compose.ui.f fVar, boolean z10, Function1 function1) {
        return fVar.e(new AppendedSemanticsElement(z10, function1));
    }

    public static /* synthetic */ androidx.compose.ui.f c(androidx.compose.ui.f fVar, boolean z10, Function1 function1, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            z10 = false;
        }
        return b(fVar, z10, function1);
    }
}
