package a4;

import android.content.Context;
import java.io.File;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final b f152a = new b();

    private b() {
    }

    public static final File a(Context context) {
        Intrinsics.h(context, "context");
        File noBackupFilesDir = context.getNoBackupFilesDir();
        Intrinsics.g(noBackupFilesDir, "getNoBackupFilesDir(...)");
        return noBackupFilesDir;
    }
}
