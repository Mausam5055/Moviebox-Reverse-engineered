package im;

import android.content.Context;
import android.net.Uri;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import com.alibaba.sdk.android.oss.common.OSSConstants;
import com.transsion.lib_web.LoadUrlData;
import com.transsion.lib_web.download_render.data.FileData;
import com.transsion.lib_web.download_render.data.FileOperateStatus;
import com.transsion.lib_web.download_render.utils.CacheType;
import gm.i;
import java.io.File;
import java.io.FileInputStream;
import java.util.HashMap;
import java.util.Map;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class c implements com.transsion.lib_web.zip.loader.c {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final a f65262d = new a(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Context f65263b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final LoadUrlData f65264c;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public c(Context context, LoadUrlData loadUrlData) {
        Intrinsics.h(context, "context");
        Intrinsics.h(loadUrlData, "loadUrlData");
        this.f65263b = context;
        this.f65264c = loadUrlData;
        com.transsion.lib_web.download_render.c.f46167a.v(loadUrlData.getOriginUrl());
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0032 A[Catch: all -> 0x01d6, TRY_ENTER, TryCatch #0 {all -> 0x01d6, blocks: (B:4:0x0005, B:6:0x000b, B:9:0x0013, B:12:0x001d, B:15:0x0032, B:17:0x004c, B:19:0x0052, B:21:0x006c, B:24:0x0079, B:26:0x009b, B:28:0x00a3, B:30:0x00ab, B:32:0x00ce, B:34:0x00d6, B:36:0x0109, B:38:0x010f, B:40:0x0132, B:42:0x013d, B:44:0x016c, B:46:0x017d, B:49:0x0188, B:48:0x0183), top: B:53:0x0005 }] */
    /* JADX WARN: Code duplicated, block: B:17:0x004c A[Catch: all -> 0x01d6, TryCatch #0 {all -> 0x01d6, blocks: (B:4:0x0005, B:6:0x000b, B:9:0x0013, B:12:0x001d, B:15:0x0032, B:17:0x004c, B:19:0x0052, B:21:0x006c, B:24:0x0079, B:26:0x009b, B:28:0x00a3, B:30:0x00ab, B:32:0x00ce, B:34:0x00d6, B:36:0x0109, B:38:0x010f, B:40:0x0132, B:42:0x013d, B:44:0x016c, B:46:0x017d, B:49:0x0188, B:48:0x0183), top: B:53:0x0005 }] */
    /* JADX WARN: Code duplicated, block: B:19:0x0052 A[Catch: all -> 0x01d6, TryCatch #0 {all -> 0x01d6, blocks: (B:4:0x0005, B:6:0x000b, B:9:0x0013, B:12:0x001d, B:15:0x0032, B:17:0x004c, B:19:0x0052, B:21:0x006c, B:24:0x0079, B:26:0x009b, B:28:0x00a3, B:30:0x00ab, B:32:0x00ce, B:34:0x00d6, B:36:0x0109, B:38:0x010f, B:40:0x0132, B:42:0x013d, B:44:0x016c, B:46:0x017d, B:49:0x0188, B:48:0x0183), top: B:53:0x0005 }] */
    /* JADX WARN: Code duplicated, block: B:21:0x006c A[Catch: all -> 0x01d6, TryCatch #0 {all -> 0x01d6, blocks: (B:4:0x0005, B:6:0x000b, B:9:0x0013, B:12:0x001d, B:15:0x0032, B:17:0x004c, B:19:0x0052, B:21:0x006c, B:24:0x0079, B:26:0x009b, B:28:0x00a3, B:30:0x00ab, B:32:0x00ce, B:34:0x00d6, B:36:0x0109, B:38:0x010f, B:40:0x0132, B:42:0x013d, B:44:0x016c, B:46:0x017d, B:49:0x0188, B:48:0x0183), top: B:53:0x0005 }] */
    /* JADX WARN: Code duplicated, block: B:23:0x0078 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:24:0x0079 A[Catch: all -> 0x01d6, TryCatch #0 {all -> 0x01d6, blocks: (B:4:0x0005, B:6:0x000b, B:9:0x0013, B:12:0x001d, B:15:0x0032, B:17:0x004c, B:19:0x0052, B:21:0x006c, B:24:0x0079, B:26:0x009b, B:28:0x00a3, B:30:0x00ab, B:32:0x00ce, B:34:0x00d6, B:36:0x0109, B:38:0x010f, B:40:0x0132, B:42:0x013d, B:44:0x016c, B:46:0x017d, B:49:0x0188, B:48:0x0183), top: B:53:0x0005 }] */
    /* JADX WARN: Code duplicated, block: B:34:0x00d6 A[Catch: all -> 0x01d6, TryCatch #0 {all -> 0x01d6, blocks: (B:4:0x0005, B:6:0x000b, B:9:0x0013, B:12:0x001d, B:15:0x0032, B:17:0x004c, B:19:0x0052, B:21:0x006c, B:24:0x0079, B:26:0x009b, B:28:0x00a3, B:30:0x00ab, B:32:0x00ce, B:34:0x00d6, B:36:0x0109, B:38:0x010f, B:40:0x0132, B:42:0x013d, B:44:0x016c, B:46:0x017d, B:49:0x0188, B:48:0x0183), top: B:53:0x0005 }] */
    /* JADX WARN: Code duplicated, block: B:36:0x0109 A[Catch: all -> 0x01d6, TryCatch #0 {all -> 0x01d6, blocks: (B:4:0x0005, B:6:0x000b, B:9:0x0013, B:12:0x001d, B:15:0x0032, B:17:0x004c, B:19:0x0052, B:21:0x006c, B:24:0x0079, B:26:0x009b, B:28:0x00a3, B:30:0x00ab, B:32:0x00ce, B:34:0x00d6, B:36:0x0109, B:38:0x010f, B:40:0x0132, B:42:0x013d, B:44:0x016c, B:46:0x017d, B:49:0x0188, B:48:0x0183), top: B:53:0x0005 }] */
    /* JADX WARN: Code duplicated, block: B:38:0x010f A[Catch: all -> 0x01d6, TryCatch #0 {all -> 0x01d6, blocks: (B:4:0x0005, B:6:0x000b, B:9:0x0013, B:12:0x001d, B:15:0x0032, B:17:0x004c, B:19:0x0052, B:21:0x006c, B:24:0x0079, B:26:0x009b, B:28:0x00a3, B:30:0x00ab, B:32:0x00ce, B:34:0x00d6, B:36:0x0109, B:38:0x010f, B:40:0x0132, B:42:0x013d, B:44:0x016c, B:46:0x017d, B:49:0x0188, B:48:0x0183), top: B:53:0x0005 }] */
    /* JADX WARN: Code duplicated, block: B:40:0x0132 A[Catch: all -> 0x01d6, TryCatch #0 {all -> 0x01d6, blocks: (B:4:0x0005, B:6:0x000b, B:9:0x0013, B:12:0x001d, B:15:0x0032, B:17:0x004c, B:19:0x0052, B:21:0x006c, B:24:0x0079, B:26:0x009b, B:28:0x00a3, B:30:0x00ab, B:32:0x00ce, B:34:0x00d6, B:36:0x0109, B:38:0x010f, B:40:0x0132, B:42:0x013d, B:44:0x016c, B:46:0x017d, B:49:0x0188, B:48:0x0183), top: B:53:0x0005 }] */
    /* JADX WARN: Code duplicated, block: B:42:0x013d A[Catch: all -> 0x01d6, TryCatch #0 {all -> 0x01d6, blocks: (B:4:0x0005, B:6:0x000b, B:9:0x0013, B:12:0x001d, B:15:0x0032, B:17:0x004c, B:19:0x0052, B:21:0x006c, B:24:0x0079, B:26:0x009b, B:28:0x00a3, B:30:0x00ab, B:32:0x00ce, B:34:0x00d6, B:36:0x0109, B:38:0x010f, B:40:0x0132, B:42:0x013d, B:44:0x016c, B:46:0x017d, B:49:0x0188, B:48:0x0183), top: B:53:0x0005 }] */
    /* JADX WARN: Code duplicated, block: B:44:0x016c A[Catch: all -> 0x01d6, TryCatch #0 {all -> 0x01d6, blocks: (B:4:0x0005, B:6:0x000b, B:9:0x0013, B:12:0x001d, B:15:0x0032, B:17:0x004c, B:19:0x0052, B:21:0x006c, B:24:0x0079, B:26:0x009b, B:28:0x00a3, B:30:0x00ab, B:32:0x00ce, B:34:0x00d6, B:36:0x0109, B:38:0x010f, B:40:0x0132, B:42:0x013d, B:44:0x016c, B:46:0x017d, B:49:0x0188, B:48:0x0183), top: B:53:0x0005 }] */
    /* JADX WARN: Code duplicated, block: B:48:0x0183 A[Catch: all -> 0x01d6, TryCatch #0 {all -> 0x01d6, blocks: (B:4:0x0005, B:6:0x000b, B:9:0x0013, B:12:0x001d, B:15:0x0032, B:17:0x004c, B:19:0x0052, B:21:0x006c, B:24:0x0079, B:26:0x009b, B:28:0x00a3, B:30:0x00ab, B:32:0x00ce, B:34:0x00d6, B:36:0x0109, B:38:0x010f, B:40:0x0132, B:42:0x013d, B:44:0x016c, B:46:0x017d, B:49:0x0188, B:48:0x0183), top: B:53:0x0005 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0010  */
    /* JADX WARN: Instruction removed from duplicated block: B:15:0x0032, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:19:0x0052, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:34:0x00d6, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:38:0x010f, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:42:0x013d, please report this as an issue */
    @Override // com.transsion.lib_web.zip.loader.c
    public WebResourceResponse a(WebResourceRequest webResourceRequest) {
        String string;
        com.transsion.lib_web.download_render.c cVar;
        FileData fileDataF;
        com.transsion.lib_web.download_render.utils.a aVar;
        String fileLocalPath$lib_web_release;
        File file;
        Map<String, String> map;
        if (webResourceRequest != null) {
            try {
                Uri url = webResourceRequest.getUrl();
                if (url != null) {
                    string = url.toString();
                } else {
                    string = null;
                }
                if (string != null && !Intrinsics.c(string, "yy://__QUEUE_MESSAGE__")) {
                    System.currentTimeMillis();
                    cVar = com.transsion.lib_web.download_render.c.f46167a;
                    if (cVar.h(this.f65264c.getOriginUrl()) != null) {
                        i.f63883a.f("DR_WebviewRenderIgnorePageUrlFileLoader", "<interceptRequest> url:" + string + " pageData is not null return");
                        return null;
                    }
                    fileDataF = cVar.f(string);
                    if (fileDataF == null) {
                        i.f63883a.f("DR_WebviewRenderIgnorePageUrlFileLoader", "<interceptRequest> url:" + string + " fileData is null return");
                        return null;
                    }
                    if (Intrinsics.c(fileDataF.getMimeType(), OSSConstants.DEFAULT_OBJECT_CONTENT_TYPE)) {
                        return null;
                    }
                    aVar = com.transsion.lib_web.download_render.utils.a.f46185a;
                    aVar.j(this.f65264c.getOriginUrl());
                    aVar.o(this.f65264c.getOriginUrl(), CacheType.ALL);
                    if (!Intrinsics.c(fileDataF.getMimeType(), "text/html") && this.f65264c.getHtmlUseRemote() && com.transsion.lib_web.download_render.utils.d.f46188a.a()) {
                        aVar.h(this.f65264c.getOriginUrl());
                        i.f63883a.a("DR_WebviewRenderIgnorePageUrlFileLoader", "<interceptRequest> url:" + string + " is html use remote");
                        return null;
                    }
                    if (fileDataF.getFileOperateStatus$lib_web_release() != FileOperateStatus.NONE) {
                        aVar.f(this.f65264c.getOriginUrl());
                        i.f63883a.f("DR_WebviewRenderIgnorePageUrlFileLoader", "<interceptRequest> url:" + string + " fileOperateStatus:" + fileDataF.getFileOperateStatus$lib_web_release().getType() + " unNormal return");
                        return null;
                    }
                    fileLocalPath$lib_web_release = fileDataF.getFileLocalPath$lib_web_release();
                    if (fileLocalPath$lib_web_release == null) {
                        aVar.g(this.f65264c.getOriginUrl());
                        i.f63883a.f("DR_WebviewRenderIgnorePageUrlFileLoader", "<interceptRequest> url:" + string + " fileLocalPath is null return");
                        return null;
                    }
                    file = new File(fileLocalPath$lib_web_release);
                    if (!file.exists()) {
                        aVar.g(this.f65264c.getOriginUrl());
                        i.f63883a.f("DR_WebviewRenderIgnorePageUrlFileLoader", "<interceptRequest> url:" + string + " file:" + file.getAbsoluteFile() + " is not exist return");
                        return null;
                    }
                    FileInputStream fileInputStream = new FileInputStream(file);
                    String mimeType = fileDataF.getMimeType();
                    if (webResourceRequest != null || (map = webResourceRequest.getRequestHeaders()) == null) {
                        map = new HashMap<>();
                    }
                    WebResourceResponse webResourceResponse = new WebResourceResponse(mimeType, "UTF-8", 200, "OK", b(map), fileInputStream);
                    aVar.i(this.f65264c.getOriginUrl());
                    i.f63883a.a("DR_WebviewRenderIgnorePageUrlFileLoader", "<interceptRequest> url:" + string + ", mimeType:" + mimeType + ", length:" + file.length() + ", file:" + file.getAbsoluteFile() + " exist");
                    return webResourceResponse;
                }
            } catch (Throwable unused) {
                com.transsion.lib_web.download_render.utils.a.f46185a.d(this.f65264c.getOriginUrl());
            }
        } else {
            string = null;
            if (string != null) {
                System.currentTimeMillis();
                cVar = com.transsion.lib_web.download_render.c.f46167a;
                if (cVar.h(this.f65264c.getOriginUrl()) != null) {
                    i.f63883a.f("DR_WebviewRenderIgnorePageUrlFileLoader", "<interceptRequest> url:" + string + " pageData is not null return");
                    return null;
                }
                fileDataF = cVar.f(string);
                if (fileDataF == null) {
                    i.f63883a.f("DR_WebviewRenderIgnorePageUrlFileLoader", "<interceptRequest> url:" + string + " fileData is null return");
                    return null;
                }
                if (Intrinsics.c(fileDataF.getMimeType(), OSSConstants.DEFAULT_OBJECT_CONTENT_TYPE)) {
                    return null;
                }
                aVar = com.transsion.lib_web.download_render.utils.a.f46185a;
                aVar.j(this.f65264c.getOriginUrl());
                aVar.o(this.f65264c.getOriginUrl(), CacheType.ALL);
                if (!Intrinsics.c(fileDataF.getMimeType(), "text/html")) {
                }
                if (fileDataF.getFileOperateStatus$lib_web_release() != FileOperateStatus.NONE) {
                    aVar.f(this.f65264c.getOriginUrl());
                    i.f63883a.f("DR_WebviewRenderIgnorePageUrlFileLoader", "<interceptRequest> url:" + string + " fileOperateStatus:" + fileDataF.getFileOperateStatus$lib_web_release().getType() + " unNormal return");
                    return null;
                }
                fileLocalPath$lib_web_release = fileDataF.getFileLocalPath$lib_web_release();
                if (fileLocalPath$lib_web_release == null) {
                    aVar.g(this.f65264c.getOriginUrl());
                    i.f63883a.f("DR_WebviewRenderIgnorePageUrlFileLoader", "<interceptRequest> url:" + string + " fileLocalPath is null return");
                    return null;
                }
                file = new File(fileLocalPath$lib_web_release);
                if (!file.exists()) {
                    aVar.g(this.f65264c.getOriginUrl());
                    i.f63883a.f("DR_WebviewRenderIgnorePageUrlFileLoader", "<interceptRequest> url:" + string + " file:" + file.getAbsoluteFile() + " is not exist return");
                    return null;
                }
                FileInputStream fileInputStream2 = new FileInputStream(file);
                String mimeType2 = fileDataF.getMimeType();
                if (webResourceRequest != null) {
                    map = new HashMap<>();
                } else {
                    map = new HashMap<>();
                }
                WebResourceResponse webResourceResponse2 = new WebResourceResponse(mimeType2, "UTF-8", 200, "OK", b(map), fileInputStream2);
                aVar.i(this.f65264c.getOriginUrl());
                i.f63883a.a("DR_WebviewRenderIgnorePageUrlFileLoader", "<interceptRequest> url:" + string + ", mimeType:" + mimeType2 + ", length:" + file.length() + ", file:" + file.getAbsoluteFile() + " exist");
                return webResourceResponse2;
            }
        }
        return null;
    }

    public Map b(Map map) {
        return com.transsion.lib_web.zip.loader.c.b.a(this, map);
    }
}
