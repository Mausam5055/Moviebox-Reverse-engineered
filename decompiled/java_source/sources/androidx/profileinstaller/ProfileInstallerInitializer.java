package androidx.profileinstaller;

import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.view.Choreographer;
import java.util.Collections;
import java.util.List;
import java.util.Random;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public class ProfileInstallerInitializer implements e4.a {

    /* JADX INFO: loaded from: classes2.dex */
    private static class a {
        public static Handler a(Looper looper) {
            return Handler.createAsync(looper);
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    public static class b {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void h(Context context, long j11) {
        g(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void k(final Context context) {
        new ThreadPoolExecutor(0, 1, 0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue()).execute(new Runnable() { // from class: androidx.profileinstaller.k
            @Override // java.lang.Runnable
            public final void run() {
                h.i(context);
            }
        });
    }

    @Override // e4.a
    public List a() {
        return Collections.emptyList();
    }

    @Override // e4.a
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public b b(Context context) {
        if (Build.VERSION.SDK_INT < 24) {
            return new b();
        }
        final Context applicationContext = context.getApplicationContext();
        Choreographer.getInstance().postFrameCallback(new Choreographer.FrameCallback() { // from class: androidx.profileinstaller.i
            @Override // android.view.Choreographer.FrameCallback
            public final void doFrame(long j11) {
                this.f14051a.h(applicationContext, j11);
            }
        });
        return new b();
    }

    void g(final Context context) {
        (Build.VERSION.SDK_INT >= 28 ? a.a(Looper.getMainLooper()) : new Handler(Looper.getMainLooper())).postDelayed(new Runnable() { // from class: androidx.profileinstaller.j
            @Override // java.lang.Runnable
            public final void run() {
                ProfileInstallerInitializer.k(context);
            }
        }, new Random().nextInt(Math.max(1000, 1)) + 5000);
    }
}
