package com.cloud.tmc.kernel.utils;

import com.cloud.tmc.kernel.api.classloader.ClassLoaderFactory;
import com.cloud.tmc.kernel.extension.Extension;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;

/* JADX INFO: loaded from: classes3.dex */
public class ClassLoaderUtils {
    private static final String TAG = "TmcKernel:ClassLoaderUtils";

    public static Class<? extends Extension> loadClass(String str, String str2) {
        try {
            return ((ClassLoaderFactory) TmcProxy.get(ClassLoaderFactory.class)).getClassLoader(str).loadClass(str2);
        } catch (Throwable th2) {
            TmcLogger.e(TAG, "failed to load class", th2);
            return null;
        }
    }
}
