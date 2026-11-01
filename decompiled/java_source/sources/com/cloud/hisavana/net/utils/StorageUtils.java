package com.cloud.hisavana.net.utils;

import android.content.Context;
import android.os.Environment;
import com.cloud.sdk.commonutil.util.c;
import com.cloud.sdk.commonutil.util.e;
import java.io.File;

/* JADX INFO: loaded from: classes.dex */
public final class StorageUtils {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static volatile File f21429a;

    private StorageUtils() {
    }

    public static File a(Context context) {
        return b(context, true);
    }

    public static File b(Context context, boolean z10) {
        File fileB;
        if (z10) {
            fileB = e(context);
            if (fileB != null && fileB.exists()) {
                File file = new File(fileB.getPath() + File.separator + "hisavana_net_cache");
                if (!file.exists() && !file.mkdir()) {
                    c.Log().w("StorageUtils", "can't create cache file");
                }
                fileB = file;
            }
        } else {
            fileB = null;
        }
        if ((fileB == null || (!fileB.exists() && !fileB.mkdirs())) && ((fileB = e.b(context.getApplicationContext())) == null || !fileB.exists())) {
            fileB = context.getFilesDir();
        }
        if (fileB == null || !fileB.exists()) {
            fileB = context.getCacheDir();
        }
        if (fileB != null) {
            return fileB;
        }
        String str = "/data/data/" + context.getPackageName() + File.separator + "hisavana_net_cache";
        c.Log().w("StorageUtils", "Can't define system cache directory! '%s' will be used." + str);
        return new File(str);
    }

    public static File c(Context context, boolean z10) {
        File file;
        if (z10) {
            file = e(context);
            if (file != null) {
                File file2 = new File(file.getPath() + File.separator + "hisavana_default_cache");
                if (!file2.exists() && !file2.mkdir()) {
                    c.Log().e("StorageUtils", "getOfflineCacheDirectory,storage cache is not ready");
                }
                file = file2;
            }
        } else {
            file = null;
        }
        if (file == null) {
            file = new File("/data/data/" + context.getPackageName() + File.separator + "hisavana_default_cache");
            if (!file.exists() && !file.mkdir()) {
                c.Log().e("StorageUtils", "getOfflineCacheDirectory,app cache path is not ready");
            }
        }
        return file;
    }

    public static File d(Context context, boolean z10) {
        File file;
        if (z10) {
            file = e(context);
            if (file != null) {
                File file2 = new File(file.getPath() + File.separator + "hisavana_video_cache");
                if (!file2.exists() && !file2.mkdir()) {
                    c.Log().e("StorageUtils", "getExoCacheDirectory,storage cache is not ready");
                }
                file = file2;
            }
        } else {
            file = null;
        }
        if (file == null) {
            file = new File("/data/data/" + context.getPackageName() + File.separator + "hisavana_video_cache");
            if (!file.exists() && !file.mkdir()) {
                c.Log().e("StorageUtils", "getExoCacheDirectory,app cache path is not ready");
            }
        }
        return file;
    }

    public static File e(Context context) {
        String externalStorageState = "";
        if (f21429a != null) {
            return f21429a;
        }
        File file = new File(Environment.getExternalStorageDirectory() + "/Android/data/" + context.getPackageName() + "/files");
        if (file.exists() || file.mkdir()) {
            f21429a = file;
        } else {
            c.Log().w("StorageUtils", "getExternalFileDir is not exists");
        }
        if (f21429a == null) {
            try {
                externalStorageState = Environment.getExternalStorageState();
            } catch (IncompatibleClassChangeError | NullPointerException unused) {
            }
            if ("mounted".equals(externalStorageState)) {
                f21429a = context.getExternalFilesDir(null);
            }
        }
        return f21429a;
    }

    public static File f(Context context, boolean z10) {
        File file;
        if (z10) {
            file = e(context);
            if (file != null) {
                File file2 = new File(file.getPath() + File.separator + "hisavana_normal_video_cache");
                if (!file2.exists() && !file2.mkdir()) {
                    c.Log().e("StorageUtils", "getVideoCacheDirectory,storage cache is not ready");
                }
                file = file2;
            }
        } else {
            file = null;
        }
        if (file == null) {
            file = new File("/data/data/" + context.getPackageName() + File.separator + "hisavana_normal_video_cache");
            if (!file.exists() && !file.mkdir()) {
                c.Log().e("StorageUtils", "getVideoCacheDirectory,app cache path is not ready");
            }
        }
        return file;
    }
}
