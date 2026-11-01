package retrofit2;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes7.dex */
final class a implements Executor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Handler f74338a = new Handler(Looper.getMainLooper());

    a() {
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        this.f74338a.post(runnable);
    }
}
