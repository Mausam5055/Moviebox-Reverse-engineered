package com.tencent.tinker.loader;

import android.content.Context;
import android.os.Process;
import android.util.Log;
import com.tencent.tinker.loader.shareutil.SharePatchFileUtil;
import com.tencent.tinker.loader.shareutil.ShareTinkerInternals;
import com.tencent.tinker.loader.shareutil.ShareTinkerLog;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;

/* JADX INFO: loaded from: classes5.dex */
public class TinkerUncaughtHandler implements Thread.UncaughtExceptionHandler {
    private final Context context;
    private final File crashFile;
    private final Thread.UncaughtExceptionHandler ueh = Thread.getDefaultUncaughtExceptionHandler();

    public TinkerUncaughtHandler(Context context) {
        this.context = context;
        this.crashFile = SharePatchFileUtil.getPatchLastCrashFile(context);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v12 */
    /* JADX WARN: Type inference failed for: r0v3, types: [boolean] */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v6, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v9, types: [java.lang.Object] */
    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th2) throws Throwable {
        Throwable th3;
        PrintWriter printWriter;
        IOException e11;
        ShareTinkerLog.e("Tinker.UncaughtHandler", "TinkerUncaughtHandler catch exception:" + Log.getStackTraceString(th2), new Object[0]);
        this.ueh.uncaughtException(thread, th2);
        if (this.crashFile == null || !(Thread.getDefaultUncaughtExceptionHandler() instanceof TinkerUncaughtHandler)) {
            return;
        }
        File parentFile = this.crashFile.getParentFile();
        ?? Exists = parentFile.exists();
        if (Exists == 0 && !parentFile.mkdirs()) {
            ShareTinkerLog.e("Tinker.UncaughtHandler", "print crash file error: create directory fail!", new Object[0]);
            return;
        }
        try {
            try {
                printWriter = new PrintWriter(new FileWriter(this.crashFile, false));
                try {
                    printWriter.println("process:" + ShareTinkerInternals.getProcessName(this.context));
                    printWriter.println(ShareTinkerInternals.getExceptionCauseString(th2));
                    Exists = printWriter;
                } catch (IOException e12) {
                    e11 = e12;
                    ShareTinkerLog.e("Tinker.UncaughtHandler", "print crash file error:" + Log.getStackTraceString(e11), new Object[0]);
                    Exists = printWriter;
                }
            } catch (Throwable th4) {
                th3 = th4;
                SharePatchFileUtil.closeQuietly(Exists);
                throw th3;
            }
        } catch (IOException e13) {
            printWriter = null;
            e11 = e13;
        } catch (Throwable th5) {
            Exists = 0;
            th3 = th5;
            SharePatchFileUtil.closeQuietly(Exists);
            throw th3;
        }
        SharePatchFileUtil.closeQuietly(Exists);
        Process.killProcess(Process.myPid());
    }
}
