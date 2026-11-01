package com.bumptech.glide.integration.cronet;

import android.content.Context;
import org.chromium.net.CronetEngine;

/* JADX INFO: loaded from: classes2.dex */
public final class CronetEngineSingleton {
    private static volatile CronetEngine cronetEngineSingleton;

    private CronetEngineSingleton() {
    }

    private static CronetEngine createEngine(Context context) {
        return new CronetEngine.Builder(context).enableHttpCache(0, 0L).enableHttp2(true).enableQuic(false).build();
    }

    public static CronetEngine getSingleton(Context context) {
        if (cronetEngineSingleton == null) {
            synchronized (CronetEngineSingleton.class) {
                try {
                    if (cronetEngineSingleton == null) {
                        cronetEngineSingleton = createEngine(context);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return cronetEngineSingleton;
    }
}
