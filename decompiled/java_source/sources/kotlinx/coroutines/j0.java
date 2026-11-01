package kotlinx.coroutines;

import kotlin.coroutines.CoroutineContext;

/* JADX INFO: loaded from: classes6.dex */
public interface j0 extends CoroutineContext.Element {

    /* JADX INFO: renamed from: k1, reason: collision with root package name */
    public static final a f67892k1 = a.f67893a;

    /* JADX INFO: loaded from: classes7.dex */
    public static final class a implements CoroutineContext.Key {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ a f67893a = new a();

        private a() {
        }
    }

    void o(CoroutineContext coroutineContext, Throwable th2);
}
