package mm;

import com.transsion.lib_web.download_render.data.FileData;
import gm.i;
import java.io.File;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class b implements d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f69625a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f69626b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final List f69627c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f69628d;

    public b(String url, String version, List files) {
        Intrinsics.h(url, "url");
        Intrinsics.h(version, "version");
        Intrinsics.h(files, "files");
        this.f69625a = url;
        this.f69626b = version;
        this.f69627c = files;
        this.f69628d = "DR_FileOperateDelete";
    }

    public String a() {
        return this.f69628d;
    }

    @Override // mm.d
    public void invoke() {
        for (FileData fileData : this.f69627c) {
            String fileLocalPath$lib_web_release = fileData.getFileLocalPath$lib_web_release();
            if (fileLocalPath$lib_web_release != null) {
                try {
                    File file = new File(fileLocalPath$lib_web_release);
                    if (file.exists()) {
                        file.delete();
                    }
                    com.transsion.lib_web.download_render.c cVar = com.transsion.lib_web.download_render.c.f46167a;
                    String str = this.f69625a;
                    String fileUrl = fileData.getFileUrl();
                    if (fileUrl == null) {
                        fileUrl = "";
                    }
                    cVar.c(str, fileUrl);
                    i.f63883a.a(a(), "<FileOperateDelete> delete path: " + fileLocalPath$lib_web_release + " success!");
                } catch (Throwable th2) {
                    i.f63883a.f(a(), "<FileOperateDelete> delete path: " + fileLocalPath$lib_web_release + " fail, msg:" + th2);
                }
            }
        }
    }
}
