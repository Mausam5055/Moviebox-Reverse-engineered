package mm;

import com.transsion.lib_web.download_render.FileDownloadTaskManager;
import com.transsion.lib_web.download_render.data.FileData;
import com.transsion.lib_web.download_render.data.FileOperateStatus;
import com.transsion.lib_web.download_render.utils.e;
import gm.i;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Iterator;
import java.util.List;
import kotlin.Unit;
import kotlin.io.ByteStreamsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;

/* JADX INFO: loaded from: classes6.dex */
public final class c implements d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f69629a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f69630b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final List f69631c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Function4 f69632d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f69633e;

    public c(String url, String version, List files, Function4 callback) {
        Intrinsics.h(url, "url");
        Intrinsics.h(version, "version");
        Intrinsics.h(files, "files");
        Intrinsics.h(callback, "callback");
        this.f69629a = url;
        this.f69630b = version;
        this.f69631c = files;
        this.f69632d = callback;
        this.f69633e = "DR_FileOperateDownload";
    }

    public String a() {
        return this.f69633e;
    }

    @Override // mm.d
    public void invoke() {
        Iterator it;
        String md5;
        File parentFile;
        int i11 = 0;
        String str = "";
        long jLongValue = 0;
        for (Iterator it2 = this.f69631c.iterator(); it2.hasNext(); it2 = it) {
            FileData fileData = (FileData) it2.next();
            String strI = FileDownloadTaskManager.f46147a.i();
            if (strI == null) {
                strI = "";
            }
            e eVar = e.f46190a;
            if (Intrinsics.c(eVar.a(strI), eVar.a(this.f69629a))) {
                i.f63883a.f(a(), "<FileOperateDownload> current webview is loading:" + ((Object) strI) + ", downloading:" + this.f69629a + ", are the same, so intercept!");
                this.f69632d.invoke(Boolean.TRUE, strI, Integer.valueOf(i11), Long.valueOf(jLongValue));
                return;
            }
            String fileUrl = fileData.getFileUrl();
            if (fileUrl == null || (md5 = fileData.getMd5()) == null) {
                it = it2;
            } else {
                try {
                    Response responseExecute = com.transsion.lib_web.zip.loader.b.f46200a.d().newCall(new Request.Builder().url(fileUrl).build()).execute();
                    try {
                        if (!responseExecute.isSuccessful()) {
                            throw new IOException("Unexpected code " + responseExecute);
                        }
                        File fileB = com.transsion.lib_web.download_render.utils.c.f46187a.b(this.f69629a, fileUrl, md5, fileData.getMimeType());
                        File parentFile2 = fileB.getParentFile();
                        if (parentFile2 != null && !parentFile2.exists() && (parentFile = fileB.getParentFile()) != null) {
                            parentFile.mkdirs();
                        }
                        ResponseBody responseBodyBody = responseExecute.body();
                        InputStream inputStreamByteStream = responseBodyBody != null ? responseBodyBody.byteStream() : null;
                        try {
                            FileOutputStream fileOutputStream = new FileOutputStream(fileB);
                            if (inputStreamByteStream != null) {
                                it = it2;
                                try {
                                    ByteStreamsKt.b(inputStreamByteStream, fileOutputStream, 0, 2, null);
                                } catch (Throwable th2) {
                                    try {
                                        throw th2;
                                    } catch (Throwable th3) {
                                        CloseableKt.a(fileOutputStream, th2);
                                        throw th3;
                                    }
                                }
                            } else {
                                it = it2;
                            }
                            try {
                                CloseableKt.a(fileOutputStream, null);
                                try {
                                    CloseableKt.a(inputStreamByteStream, null);
                                    fileData.setFileOperateStatus$lib_web_release(FileOperateStatus.NONE);
                                    fileData.setFileLocalPath$lib_web_release(fileB.getAbsolutePath());
                                    com.transsion.lib_web.download_render.c.f46167a.b(this.f69629a, this.f69630b, fileData);
                                    i11++;
                                    Long size = fileData.getSize();
                                    jLongValue += size != null ? size.longValue() : 0L;
                                    i.f63883a.a(a(), "<FileOperateDownload> download: " + fileUrl + " success, dst:" + fileB.getAbsolutePath());
                                    Unit unit = Unit.f67061a;
                                    try {
                                        CloseableKt.a(responseExecute, null);
                                    } catch (Throwable th4) {
                                        th = th4;
                                        i.f63883a.f(a(), "<FileOperateDownload> download: " + fileUrl + " fail, msg:" + th);
                                        str = strI;
                                    }
                                } catch (Throwable th5) {
                                    th = th5;
                                    Throwable th6 = th;
                                    try {
                                        throw th6;
                                    } catch (Throwable th7) {
                                        CloseableKt.a(responseExecute, th6);
                                        throw th7;
                                    }
                                }
                            } catch (Throwable th8) {
                                th = th8;
                                Throwable th9 = th;
                                try {
                                    throw th9;
                                } catch (Throwable th10) {
                                    CloseableKt.a(inputStreamByteStream, th9);
                                    throw th10;
                                }
                            }
                        } catch (Throwable th11) {
                            th = th11;
                            it = it2;
                        }
                    } catch (Throwable th12) {
                        th = th12;
                        it = it2;
                    }
                } catch (Throwable th13) {
                    th = th13;
                    it = it2;
                }
            }
            str = strI;
        }
        this.f69632d.invoke(Boolean.FALSE, str, Integer.valueOf(i11), Long.valueOf(jLongValue));
    }
}
