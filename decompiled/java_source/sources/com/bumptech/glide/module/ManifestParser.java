package com.bumptech.glide.module;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.util.Log;
import androidx.annotation.Nullable;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public final class ManifestParser {
    private static final String GLIDE_MODULE_VALUE = "GlideModule";
    private static final String TAG = "ManifestParser";
    private final Context context;

    public ManifestParser(Context context) {
        this.context = context;
    }

    @Nullable
    private ApplicationInfo getOurApplicationInfo() throws PackageManager.NameNotFoundException {
        return this.context.getPackageManager().getApplicationInfo(this.context.getPackageName(), 128);
    }

    private static GlideModule parseModule(String str) {
        try {
            Class<?> cls = Class.forName(str);
            Object objNewInstance = null;
            try {
                objNewInstance = cls.getDeclaredConstructor(null).newInstance(null);
            } catch (IllegalAccessException e11) {
                throwInstantiateGlideModuleException(cls, e11);
            } catch (InstantiationException e12) {
                throwInstantiateGlideModuleException(cls, e12);
            } catch (NoSuchMethodException e13) {
                throwInstantiateGlideModuleException(cls, e13);
            } catch (InvocationTargetException e14) {
                throwInstantiateGlideModuleException(cls, e14);
            }
            if (objNewInstance instanceof GlideModule) {
                return (GlideModule) objNewInstance;
            }
            throw new RuntimeException("Expected instanceof GlideModule, but found: " + objNewInstance);
        } catch (ClassNotFoundException e15) {
            throw new IllegalArgumentException("Unable to find GlideModule implementation", e15);
        }
    }

    private static void throwInstantiateGlideModuleException(Class<?> cls, Exception exc) {
        throw new RuntimeException("Unable to instantiate GlideModule implementation for " + cls, exc);
    }

    public List<GlideModule> parse() {
        Log.isLoggable(TAG, 3);
        ArrayList arrayList = new ArrayList();
        try {
            ApplicationInfo ourApplicationInfo = getOurApplicationInfo();
            if (ourApplicationInfo != null && ourApplicationInfo.metaData != null) {
                if (Log.isLoggable(TAG, 2)) {
                    Log.v(TAG, "Got app info metadata: " + ourApplicationInfo.metaData);
                }
                for (String str : ourApplicationInfo.metaData.keySet()) {
                    if (GLIDE_MODULE_VALUE.equals(ourApplicationInfo.metaData.get(str))) {
                        arrayList.add(parseModule(str));
                        if (Log.isLoggable(TAG, 3)) {
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append("Loaded Glide module: ");
                            sb2.append(str);
                        }
                    }
                }
                Log.isLoggable(TAG, 3);
                return arrayList;
            }
            Log.isLoggable(TAG, 3);
            return arrayList;
        } catch (PackageManager.NameNotFoundException e11) {
            if (Log.isLoggable(TAG, 6)) {
                Log.e(TAG, "Failed to parse glide modules", e11);
            }
        }
    }
}
