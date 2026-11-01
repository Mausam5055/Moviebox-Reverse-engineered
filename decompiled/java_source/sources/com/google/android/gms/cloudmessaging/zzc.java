package com.google.android.gms.cloudmessaging;

import android.os.Build;
import android.util.Log;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final class zzc extends ClassLoader {
    @Override // java.lang.ClassLoader
    protected final Class loadClass(String str, boolean z10) throws ClassNotFoundException {
        if (!Objects.equals(str, "com.google.android.gms.iid.MessengerCompat")) {
            return super.loadClass(str, z10);
        }
        if (Log.isLoggable("CloudMessengerCompat", 3) || Build.VERSION.SDK_INT != 23) {
            return zzd.class;
        }
        Log.isLoggable("CloudMessengerCompat", 3);
        return zzd.class;
    }
}
