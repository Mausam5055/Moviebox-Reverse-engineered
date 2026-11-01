package mp;

import android.content.Context;
import android.os.Environment;
import java.io.File;
import java.io.IOException;

/* JADX INFO: loaded from: classes6.dex */
public abstract class e {
    public static File a(Context context) {
        File file = new File(new File(new File(new File(Environment.getExternalStorageDirectory(), "Android"), "data"), context.getPackageName()), "cache");
        if (!file.exists()) {
            if (!file.mkdirs()) {
                return null;
            }
            try {
                new File(file, ".nomedia").createNewFile();
            } catch (IOException unused) {
            }
        }
        return file;
    }
}
