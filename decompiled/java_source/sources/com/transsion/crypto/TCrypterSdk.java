package com.transsion.crypto;

import android.content.Context;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import sk.e;
import tk.a;

/* JADX INFO: loaded from: classes.dex */
public class TCrypterSdk {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static ExecutorService f44082a = new ThreadPoolExecutor(0, 4, 2, TimeUnit.SECONDS, new SynchronousQueue(), new ThreadPoolExecutor.CallerRunsPolicy());

    public static String a(Context context, String str) {
        return a.a(context).b(str);
    }

    public static void b(final Context context) {
        f44082a.execute(new Runnable() { // from class: com.transsion.crypto.TCrypterSdk.1
            @Override // java.lang.Runnable
            public void run() {
                e.b().a(context);
            }
        });
    }

    public static void c(Context context, String str, String str2) {
        a.a(context).d(str, str2);
    }
}
