package gz;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.concurrent.TimeUnit;
import kotlin.Unit;
import kotlin.io.CloseableKt;
import kotlin.io.FilesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;

/* JADX INFO: loaded from: classes7.dex */
public final class e {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a f64040b = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final OkHttpClient f64041a;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public e() {
        OkHttpClient.Builder builder = new OkHttpClient.Builder();
        TimeUnit timeUnit = TimeUnit.SECONDS;
        this.f64041a = builder.connectTimeout(30L, timeUnit).readTimeout(60L, timeUnit).writeTimeout(60L, timeUnit).build();
    }

    /* JADX WARN: Code duplicated, block: B:101:0x0217 A[PHI: r11
  0x0217: PHI (r11v5 java.io.File) = (r11v4 java.io.File), (r11v6 java.io.File) binds: [B:100:0x0215, B:110:0x024d] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:126:0x0206 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public final boolean a(String downloadUrl, File targetFile) throws Throwable {
        File parentFile;
        File file;
        Exception exc;
        IOException iOException;
        Intrinsics.h(downloadUrl, "downloadUrl");
        Intrinsics.h(targetFile, "targetFile");
        File parentFile2 = targetFile.getParentFile();
        if ((parentFile2 == null || !parentFile2.exists()) && (parentFile = targetFile.getParentFile()) != null) {
            parentFile.mkdirs();
        }
        FileOutputStream fileOutputStream = null;
        try {
            try {
                lg.a.C0828a c0828a = lg.a.f68839a;
                lg.a.C0828a.f(c0828a, "SoDownloader", "开始下载: " + downloadUrl + " -> " + targetFile.getAbsolutePath(), false, 4, null);
                file = new File(targetFile.getParent(), targetFile.getName() + ".tmp");
                try {
                    try {
                        Response responseExecute = this.f64041a.newCall(new Request.Builder().url(downloadUrl).build()).execute();
                        if (!responseExecute.isSuccessful()) {
                            lg.a.C0828a.l(c0828a, "SoDownloader", "下载失败，HTTP状态码: " + responseExecute.code(), false, 4, null);
                            if (file.exists() && !Intrinsics.c(file, targetFile)) {
                                file.delete();
                            }
                            return false;
                        }
                        ResponseBody responseBodyBody = responseExecute.body();
                        if (responseBodyBody == null) {
                            lg.a.C0828a.l(c0828a, "SoDownloader", "响应体为空", false, 4, null);
                            if (file.exists() && !Intrinsics.c(file, targetFile)) {
                                file.delete();
                            }
                            return false;
                        }
                        FileOutputStream fileOutputStream2 = new FileOutputStream(file);
                        try {
                            InputStream inputStreamByteStream = responseBodyBody.byteStream();
                            try {
                                byte[] bArr = new byte[8192];
                                while (true) {
                                    int i11 = inputStreamByteStream.read(bArr);
                                    if (i11 == -1) {
                                        break;
                                    }
                                    fileOutputStream2.write(bArr, 0, i11);
                                    iOException = e;
                                    fileOutputStream = fileOutputStream2;
                                    lg.a.C0828a.k(lg.a.f68839a, "SoDownloader", "下载异常: " + iOException.getMessage(), iOException, false, 8, null);
                                    if (fileOutputStream != null) {
                                        try {
                                            fileOutputStream.close();
                                        } catch (Exception unused) {
                                        }
                                    }
                                    if (file != null && file.exists() && !Intrinsics.c(file, targetFile)) {
                                        file.delete();
                                    }
                                    return false;
                                }
                                Unit unit = Unit.f67061a;
                                CloseableKt.a(inputStreamByteStream, null);
                                fileOutputStream2.close();
                                if (file.length() == 0) {
                                    lg.a.C0828a.l(lg.a.f68839a, "SoDownloader", "下载的文件大小为0", false, 4, null);
                                    file.delete();
                                    if (file.exists() && !Intrinsics.c(file, targetFile)) {
                                        file.delete();
                                    }
                                    return false;
                                }
                                if (targetFile.exists()) {
                                    targetFile.delete();
                                }
                                if (!file.renameTo(targetFile)) {
                                    lg.a.C0828a.l(lg.a.f68839a, "SoDownloader", "重命名临时文件失败", false, 4, null);
                                    FilesKt.u(file, targetFile, true, 0, 4, null);
                                    file.delete();
                                }
                                lg.a.C0828a.f(lg.a.f68839a, "SoDownloader", "下载成功: " + targetFile.getAbsolutePath() + ", 大小: " + targetFile.length(), false, 4, null);
                                if (!file.exists() || Intrinsics.c(file, targetFile)) {
                                    return true;
                                }
                                file.delete();
                                return true;
                            } catch (Throwable th2) {
                                try {
                                    throw th2;
                                } catch (Throwable th3) {
                                    CloseableKt.a(inputStreamByteStream, th2);
                                    throw th3;
                                }
                            }
                        } catch (IOException e11) {
                            iOException = e11;
                            fileOutputStream = fileOutputStream2;
                        } catch (Exception e12) {
                            exc = e12;
                            fileOutputStream = fileOutputStream2;
                            lg.a.C0828a.k(lg.a.f68839a, "SoDownloader", "下载异常: " + exc.getMessage(), exc, false, 8, null);
                            if (fileOutputStream != null) {
                                try {
                                    fileOutputStream.close();
                                } catch (Exception unused2) {
                                }
                            }
                            if (file != null && file.exists() && !Intrinsics.c(file, targetFile)) {
                                file.delete();
                            }
                            return false;
                        } catch (Throwable th4) {
                            th = th4;
                            fileOutputStream = fileOutputStream2;
                            if (fileOutputStream != null) {
                                try {
                                    fileOutputStream.close();
                                } catch (Exception unused3) {
                                }
                            }
                            if (file == null || !file.exists() || Intrinsics.c(file, targetFile)) {
                                throw th;
                            }
                            file.delete();
                            throw th;
                        }
                    } catch (IOException e13) {
                        e = e13;
                        iOException = e;
                    } catch (Exception e14) {
                        e = e14;
                        exc = e;
                        lg.a.C0828a.k(lg.a.f68839a, "SoDownloader", "下载异常: " + exc.getMessage(), exc, false, 8, null);
                        if (fileOutputStream != null) {
                            fileOutputStream.close();
                        }
                        if (file != null) {
                            file.delete();
                        }
                        return false;
                    }
                } catch (IOException e15) {
                    e = e15;
                } catch (Exception e16) {
                    e = e16;
                } catch (Throwable th5) {
                    th = th5;
                }
            } catch (Throwable th6) {
                th = th6;
            }
        } catch (IOException e17) {
            iOException = e17;
            file = null;
        } catch (Exception e18) {
            exc = e18;
            file = null;
        } catch (Throwable th7) {
            th = th7;
            file = null;
        }
    }

    public final boolean b(String downloadUrl, File targetFile) {
        Intrinsics.h(downloadUrl, "downloadUrl");
        Intrinsics.h(targetFile, "targetFile");
        return a(downloadUrl, targetFile);
    }
}
