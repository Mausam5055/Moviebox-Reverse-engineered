package com.facebook.ads;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class A {
    private static final ExecutorService executor = Executors.newSingleThreadExecutor();
    private static final Handler handler = new Handler(Looper.getMainLooper());

    public static native Handler a();

    private static native void b(Activity activity, boolean z10, String str);

    public static native void c(Activity activity);

    static native JSONObject d();

    private static native int dp(Context context, int i11);

    static native void e(Activity activity, JSONObject jSONObject);
}
