package kotlinx.coroutines.internal;

import java.util.Collection;
import java.util.ServiceLoader;
import kotlin.sequences.SequencesKt;

/* JADX INFO: loaded from: classes7.dex */
public abstract class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Collection f67852a = SequencesKt.D(SequencesKt.e(ServiceLoader.load(kotlinx.coroutines.j0.class, kotlinx.coroutines.j0.class.getClassLoader()).iterator()));

    public static final Collection a() {
        return f67852a;
    }

    public static final void b(Throwable th2) {
        Thread threadCurrentThread = Thread.currentThread();
        threadCurrentThread.getUncaughtExceptionHandler().uncaughtException(threadCurrentThread, th2);
    }
}
