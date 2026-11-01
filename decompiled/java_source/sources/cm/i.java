package cm;

import android.content.Context;
import android.os.Environment;
import android.util.Log;
import java.io.File;
import java.io.IOException;

/* JADX INFO: loaded from: classes5.dex */
public abstract class i {
    public static File a(Context context) {
        return b(context, true);
    }

    public static File b(Context context, boolean z10) {
        String externalStorageState;
        try {
            externalStorageState = Environment.getExternalStorageState();
        } catch (IncompatibleClassChangeError | NullPointerException unused) {
            externalStorageState = "";
        }
        File fileC = (z10 && "mounted".equals(externalStorageState) && d(context)) ? c(context) : null;
        if ((fileC == null || (!fileC.exists() && !fileC.mkdirs())) && ((fileC = com.transsion.core.utils.b.a(context.getApplicationContext())) == null || !fileC.exists())) {
            fileC = context.getFilesDir();
        }
        if (fileC == null || !fileC.exists()) {
            fileC = context.getCacheDir();
        }
        if (fileC != null) {
            return fileC;
        }
        String str = "/data/data/" + context.getPackageName() + "/cache/";
        Log.w("error", "Can't define system cache directory! '%s' will be used." + str);
        return new File(str);
    }

    private static File c(Context context) {
        File file = new File(new File(new File(new File(new File(Environment.getExternalStorageDirectory(), "Android"), "data"), context.getPackageName()), "files"), "images");
        if (!file.exists()) {
            if (!file.mkdirs()) {
                Log.w("error", "Unable to create external cache directory");
                return null;
            }
            try {
                new File(file, ".nomedia").createNewFile();
            } catch (IOException unused) {
            }
        }
        return file;
    }

    private static boolean d(Context context) {
        return context.checkCallingOrSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") == 0;
    }
}
