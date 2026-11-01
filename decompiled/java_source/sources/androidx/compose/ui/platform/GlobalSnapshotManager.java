package androidx.compose.ui.platform;

import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
public final class GlobalSnapshotManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final GlobalSnapshotManager f5639a = new GlobalSnapshotManager();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final AtomicBoolean f5640b = new AtomicBoolean(false);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final AtomicBoolean f5641c = new AtomicBoolean(false);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int f5642d = 8;

    private GlobalSnapshotManager() {
    }

    public final void b() {
        if (f5640b.compareAndSet(false, true)) {
            final kotlinx.coroutines.channels.d dVarB = kotlinx.coroutines.channels.g.b(1, null, null, 6, null);
            kotlinx.coroutines.k.d(kotlinx.coroutines.o0.a(AndroidUiDispatcher.f5587k.b()), null, null, new GlobalSnapshotManager$ensureStarted$1(dVarB, null), 3, null);
            androidx.compose.runtime.snapshots.j.f4004e.k(new Function1<Object, Unit>() { // from class: androidx.compose.ui.platform.GlobalSnapshotManager$ensureStarted$2
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                    m161invoke(obj);
                    return Unit.f67061a;
                }

                /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
                public final void m161invoke(Object obj) {
                    if (GlobalSnapshotManager.f5641c.compareAndSet(false, true)) {
                        dVarB.c(Unit.f67061a);
                    }
                }
            });
        }
    }
}
