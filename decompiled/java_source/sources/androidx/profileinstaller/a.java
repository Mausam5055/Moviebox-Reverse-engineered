package androidx.profileinstaller;

import android.content.Context;
import android.os.Build;
import java.io.File;

/* JADX INFO: loaded from: classes2.dex */
abstract class a {

    /* JADX INFO: renamed from: androidx.profileinstaller.a$a, reason: collision with other inner class name */
    private static class C0110a {
        static File a(Context context) {
            return context.getCodeCacheDir();
        }
    }

    private static class b {
        static Context a(Context context) {
            return context.createDeviceProtectedStorageContext();
        }
    }

    static boolean a(File file) {
        if (!file.isDirectory()) {
            file.delete();
            return true;
        }
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles == null) {
            return false;
        }
        boolean z10 = true;
        for (File file2 : fileArrListFiles) {
            z10 = a(file2) && z10;
        }
        return z10;
    }

    static void b(Context context, ProfileInstallReceiver.a aVar) {
        File fileA;
        int i11 = Build.VERSION.SDK_INT;
        if (i11 >= 34) {
            fileA = b.a(context).getCacheDir();
        } else if (i11 >= 24) {
            fileA = C0110a.a(b.a(context));
        } else {
            fileA = i11 == 23 ? C0110a.a(context) : context.getCacheDir();
        }
        if (a(fileA)) {
            aVar.a(14, null);
        } else {
            aVar.a(15, null);
        }
    }
}
