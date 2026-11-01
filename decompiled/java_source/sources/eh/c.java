package eh;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class c implements Executor {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a f61870b = new a(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final c f61871c = new c();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Handler f61872a = new Handler(Looper.getMainLooper());

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final c a() {
            return c.f61871c;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(Runnable runnable) {
        if (runnable != null) {
            runnable.run();
        }
    }

    @Override // java.util.concurrent.Executor
    public void execute(final Runnable runnable) {
        if (Intrinsics.c(Looper.myLooper(), Looper.getMainLooper())) {
            if (runnable != null) {
                runnable.run();
            }
        } else {
            Handler handler = this.f61872a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: eh.b
                    @Override // java.lang.Runnable
                    public final void run() {
                        c.c(runnable);
                    }
                });
            }
        }
    }
}
