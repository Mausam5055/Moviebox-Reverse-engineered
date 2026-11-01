package com.blankj.utilcode.util;

import android.os.Environment;
import java.io.File;

/* JADX INFO: loaded from: classes2.dex */
public abstract class f {
    public static boolean a() {
        return "mounted".equals(Environment.getExternalStorageState()) && e0.c(Utils.a().getExternalCacheDir());
    }

    public static boolean b() {
        return e0.c(Utils.a().getCacheDir());
    }

    public static boolean c() {
        return e0.c(new File(Utils.a().getFilesDir().getParent(), "databases"));
    }

    public static boolean d() {
        return e0.c(new File(Utils.a().getFilesDir().getParent(), "shared_prefs"));
    }
}
