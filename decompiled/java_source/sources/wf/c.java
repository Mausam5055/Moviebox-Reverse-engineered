package wf;

import android.content.Context;
import android.content.Intent;
import com.tencent.tinker.lib.service.TinkerPatchService;
import com.tencent.tinker.loader.shareutil.SharePatchFileUtil;
import com.tencent.tinker.loader.shareutil.ShareTinkerLog;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

/* JADX INFO: loaded from: classes5.dex */
public class c {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static c f77663f;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private File f77665b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private File f77666c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Context f77667d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f77664a = true;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f77668e = 20;

    static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        String f77669a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        String f77670b;

        a(String str, String str2) {
            this.f77669a = str;
            this.f77670b = str2;
        }

        static a a(File file) throws Throwable {
            String property;
            InputStream fileInputStream;
            Properties properties = new Properties();
            String property2 = null;
            try {
                fileInputStream = new FileInputStream(file);
                try {
                    try {
                        properties.load(fileInputStream);
                        property = properties.getProperty("md5");
                        try {
                            property2 = properties.getProperty("times");
                        } catch (IOException e11) {
                            e = e11;
                            ShareTinkerLog.e("Tinker.UpgradePatchRetry", "fail to readRetryProperty:" + e, new Object[0]);
                        }
                    } catch (IOException e12) {
                        e = e12;
                        property = null;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    property2 = fileInputStream;
                    pf.b.a(property2);
                    throw th;
                }
            } catch (IOException e13) {
                e = e13;
                property = null;
                fileInputStream = null;
            } catch (Throwable th3) {
                th = th3;
                pf.b.a(property2);
                throw th;
            }
            pf.b.a(fileInputStream);
            return new a(property, property2);
        }

        static void b(File file, a aVar) throws Throwable {
            if (aVar == null) {
                return;
            }
            File parentFile = file.getParentFile();
            if (!parentFile.exists()) {
                parentFile.mkdirs();
            }
            Properties properties = new Properties();
            properties.put("md5", aVar.f77669a);
            properties.put("times", aVar.f77670b);
            FileOutputStream fileOutputStream = null;
            try {
                try {
                    FileOutputStream fileOutputStream2 = new FileOutputStream(file, false);
                    try {
                        properties.store(fileOutputStream2, (String) null);
                        pf.b.a(fileOutputStream2);
                    } catch (Exception e11) {
                        e = e11;
                        fileOutputStream = fileOutputStream2;
                        ShareTinkerLog.printErrStackTrace("Tinker.UpgradePatchRetry", e, "retry write property fail", new Object[0]);
                        pf.b.a(fileOutputStream);
                    } catch (Throwable th2) {
                        th = th2;
                        fileOutputStream = fileOutputStream2;
                        pf.b.a(fileOutputStream);
                        throw th;
                    }
                } catch (Exception e12) {
                    e = e12;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        }
    }

    public c(Context context) {
        this.f77665b = null;
        this.f77666c = null;
        this.f77667d = context;
        this.f77665b = new File(SharePatchFileUtil.getPatchTempDirectory(context), "patch.retry");
        this.f77666c = new File(SharePatchFileUtil.getPatchTempDirectory(context), "temp.apk");
    }

    private void a(File file) throws Throwable {
        if (file.getAbsolutePath().equals(this.f77666c.getAbsolutePath())) {
            return;
        }
        ShareTinkerLog.w("Tinker.UpgradePatchRetry", "try copy file: %s to %s", file.getAbsolutePath(), this.f77666c.getAbsolutePath());
        try {
            SharePatchFileUtil.copyFileUsingStream(file, this.f77666c);
        } catch (IOException unused) {
            ShareTinkerLog.e("Tinker.UpgradePatchRetry", "fail to copy file: %s to %s", file.getAbsolutePath(), this.f77666c.getAbsolutePath());
        }
    }

    public static c b(Context context) {
        if (f77663f == null) {
            f77663f = new c(context);
        }
        return f77663f;
    }

    public boolean c(String str) throws Throwable {
        int i11;
        if (!this.f77664a) {
            ShareTinkerLog.w("Tinker.UpgradePatchRetry", "onPatchListenerCheck retry disabled, just return", new Object[0]);
            return true;
        }
        if (!this.f77665b.exists()) {
            ShareTinkerLog.w("Tinker.UpgradePatchRetry", "onPatchListenerCheck retry file is not exist, just return", new Object[0]);
            return true;
        }
        if (str == null) {
            ShareTinkerLog.w("Tinker.UpgradePatchRetry", "onPatchListenerCheck md5 is null, just return", new Object[0]);
            return true;
        }
        a aVarA = a.a(this.f77665b);
        if (!str.equals(aVarA.f77669a) || (i11 = Integer.parseInt(aVarA.f77670b)) < this.f77668e) {
            return true;
        }
        ShareTinkerLog.w("Tinker.UpgradePatchRetry", "onPatchListenerCheck, retry count %d must exceed than max retry count", Integer.valueOf(i11));
        SharePatchFileUtil.safeDeleteFile(this.f77666c);
        return false;
    }

    public boolean d(String str) throws Throwable {
        if (!this.f77664a) {
            ShareTinkerLog.w("Tinker.UpgradePatchRetry", "onPatchResetMaxCheck retry disabled, just return", new Object[0]);
            return true;
        }
        if (!this.f77665b.exists()) {
            ShareTinkerLog.w("Tinker.UpgradePatchRetry", "onPatchResetMaxCheck retry file is not exist, just return", new Object[0]);
            return true;
        }
        if (str == null) {
            ShareTinkerLog.w("Tinker.UpgradePatchRetry", "onPatchResetMaxCheck md5 is null, just return", new Object[0]);
            return true;
        }
        a aVarA = a.a(this.f77665b);
        if (str.equals(aVarA.f77669a)) {
            ShareTinkerLog.i("Tinker.UpgradePatchRetry", "onPatchResetMaxCheck, reset max check to 1", new Object[0]);
            aVarA.f77670b = "1";
            a.b(this.f77665b, aVarA);
        }
        return true;
    }

    public void e() {
        if (!this.f77664a) {
            ShareTinkerLog.w("Tinker.UpgradePatchRetry", "onPatchServiceResult retry disabled, just return", new Object[0]);
        } else if (this.f77666c.exists()) {
            SharePatchFileUtil.safeDeleteFile(this.f77666c);
        }
    }

    public void f(Intent intent) throws Throwable {
        a aVar;
        if (!this.f77664a) {
            ShareTinkerLog.w("Tinker.UpgradePatchRetry", "onPatchServiceStart retry disabled, just return", new Object[0]);
            return;
        }
        if (intent == null) {
            ShareTinkerLog.e("Tinker.UpgradePatchRetry", "onPatchServiceStart intent is null, just return", new Object[0]);
            return;
        }
        String strC = TinkerPatchService.c(intent);
        if (strC == null) {
            ShareTinkerLog.w("Tinker.UpgradePatchRetry", "onPatchServiceStart patch path is null, just return", new Object[0]);
            return;
        }
        File file = new File(strC);
        String md5 = SharePatchFileUtil.getMD5(file);
        if (md5 == null) {
            ShareTinkerLog.w("Tinker.UpgradePatchRetry", "onPatchServiceStart patch md5 is null, just return", new Object[0]);
            return;
        }
        if (this.f77665b.exists()) {
            aVar = a.a(this.f77665b);
            String str = aVar.f77669a;
            if (str == null || aVar.f77670b == null || !md5.equals(str)) {
                a(file);
                aVar.f77669a = md5;
                aVar.f77670b = "1";
            } else {
                int i11 = Integer.parseInt(aVar.f77670b);
                if (i11 >= this.f77668e) {
                    SharePatchFileUtil.safeDeleteFile(this.f77666c);
                    ShareTinkerLog.w("Tinker.UpgradePatchRetry", "onPatchServiceStart retry more than max count, delete retry info file!", new Object[0]);
                    return;
                }
                aVar.f77670b = String.valueOf(i11 + 1);
            }
        } else {
            a(file);
            aVar = new a(md5, "1");
        }
        a.b(this.f77665b, aVar);
    }
}
