package com.cloud.hisavana.sdk;

import android.content.Context;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class d4 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final d4 f22372a = new d4();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static volatile Boolean f22373b;

    private d4() {
    }

    public final m4 a(Context context) {
        Intrinsics.h(context, "context");
        if (!b()) {
            e4.b().d("VideoPlayerFactory", "creating NoOpVideoPlayer (ExoPlayer unavailable)");
            return new n();
        }
        try {
            e4.b().d("VideoPlayerFactory", "creating ExoPlayerImpl");
            return new t3(context);
        } catch (Throwable th2) {
            e4.b().w("VideoPlayerFactory", "ExoPlayerImpl init failed, degrading to NoOp: " + th2.getMessage());
            return new n();
        }
    }

    public final boolean b() {
        boolean zBooleanValue;
        boolean z10 = true;
        if (a7.c.k()) {
            return true;
        }
        Boolean bool = f22373b;
        if (bool != null) {
            return bool.booleanValue();
        }
        synchronized (this) {
            try {
                Boolean bool2 = f22373b;
                if (bool2 != null) {
                    zBooleanValue = bool2.booleanValue();
                } else {
                    try {
                        e4.b().d("VideoPlayerFactory", "ExoPlayer is found");
                    } catch (ClassNotFoundException unused) {
                        e4.b().d("VideoPlayerFactory", "ExoPlayer not found, video ads will be degraded gracefully");
                        z10 = false;
                    } catch (Throwable th2) {
                        e4.b().w("VideoPlayerFactory", "ExoPlayer probe failed: " + th2.getMessage());
                        z10 = false;
                    }
                    f22373b = Boolean.valueOf(z10);
                    zBooleanValue = z10;
                }
            } catch (Throwable th3) {
                throw th3;
            }
        }
        return zBooleanValue;
    }
}
