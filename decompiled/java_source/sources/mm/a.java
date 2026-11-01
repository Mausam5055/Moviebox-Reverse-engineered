package mm;

import com.transsion.lib_web.download_render.data.FileData;
import com.transsion.lib_web.download_render.data.FileOperateStatus;
import gm.i;
import java.io.File;
import java.util.List;
import kotlin.io.FilesKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class a implements d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f69621a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f69622b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final List f69623c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f69624d;

    public a(String url, String version, List files) {
        Intrinsics.h(url, "url");
        Intrinsics.h(version, "version");
        Intrinsics.h(files, "files");
        this.f69621a = url;
        this.f69622b = version;
        this.f69623c = files;
        this.f69624d = "DR_FileOperateCopy";
    }

    public String a() {
        return this.f69624d;
    }

    @Override // mm.d
    public void invoke() {
        String fileUrl;
        File parentFile;
        for (FileData fileData : this.f69623c) {
            String md5 = fileData.getMd5();
            if (md5 != null && (fileUrl = fileData.getFileUrl()) != null) {
                String fileCopyOriginLocalPath$lib_web_release = fileData.getFileCopyOriginLocalPath$lib_web_release();
                String absolutePath = com.transsion.lib_web.download_render.utils.c.f46187a.b(this.f69621a, fileUrl, md5, fileData.getMimeType()).getAbsolutePath();
                if (fileCopyOriginLocalPath$lib_web_release != null && fileCopyOriginLocalPath$lib_web_release.length() > 0 && new File(fileCopyOriginLocalPath$lib_web_release).exists()) {
                    Intrinsics.e(absolutePath);
                    if (absolutePath.length() > 0) {
                        File file = new File(fileCopyOriginLocalPath$lib_web_release);
                        File file2 = new File(absolutePath);
                        File parentFile2 = file2.getParentFile();
                        if (parentFile2 != null && !parentFile2.exists() && (parentFile = file2.getParentFile()) != null) {
                            parentFile.mkdirs();
                        }
                        try {
                            FilesKt.u(file, file2, true, 0, 4, null);
                            fileData.setFileOperateStatus$lib_web_release(FileOperateStatus.NONE);
                            fileData.setFileLocalPath$lib_web_release(file2.getAbsolutePath());
                            com.transsion.lib_web.download_render.c.f46167a.b(this.f69621a, this.f69622b, fileData);
                            i.f63883a.a(a(), "<FileOperateCopy> copy src:" + file.getAbsoluteFile() + " to dst:" + file2.getAbsoluteFile() + " success, dst:" + file2.getAbsolutePath());
                        } catch (Throwable th2) {
                            i.f63883a.f(a(), "<FileOperateCopy> copy src:" + file.getAbsoluteFile() + " to dst:" + file2.getAbsoluteFile() + " fail, msg:" + th2);
                        }
                    }
                }
                i.f63883a.f(a(), "<FileOperateCopy> copy src:" + fileCopyOriginLocalPath$lib_web_release + " to dst:" + absolutePath + " fail!");
            }
        }
    }
}
