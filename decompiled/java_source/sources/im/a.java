package im;

import android.content.Context;
import android.net.Uri;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import com.alibaba.sdk.android.oss.common.OSSConstants;
import com.transsion.lib_web.LoadUrlData;
import com.transsion.lib_web.download_render.data.FileData;
import com.transsion.lib_web.download_render.data.FileOperateStatus;
import com.transsion.lib_web.download_render.data.PageData;
import com.transsion.lib_web.download_render.utils.CacheType;
import gm.i;
import java.io.File;
import java.io.FileInputStream;
import java.util.HashMap;
import java.util.Map;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class a implements com.transsion.lib_web.zip.loader.c {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final C0790a f65256d = new C0790a(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Context f65257b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final LoadUrlData f65258c;

    /* JADX INFO: renamed from: im.a$a, reason: collision with other inner class name */
    public static final class C0790a {
        private C0790a() {
        }

        public /* synthetic */ C0790a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public a(Context context, LoadUrlData loadUrlData) {
        Intrinsics.h(context, "context");
        Intrinsics.h(loadUrlData, "loadUrlData");
        this.f65257b = context;
        this.f65258c = loadUrlData;
        com.transsion.lib_web.download_render.c.f46167a.v(loadUrlData.getOriginUrl());
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0032 A[Catch: all -> 0x01f2, TRY_ENTER, TryCatch #0 {all -> 0x01f2, blocks: (B:4:0x0005, B:6:0x000b, B:9:0x0013, B:12:0x001d, B:15:0x0032, B:17:0x004c, B:19:0x006e, B:21:0x0091, B:24:0x009e, B:27:0x00ab, B:29:0x00b7, B:31:0x00bf, B:33:0x00c7, B:35:0x00ea, B:37:0x00f2, B:39:0x0125, B:41:0x012b, B:43:0x014e, B:45:0x0159, B:47:0x0188, B:49:0x0199, B:52:0x01a4, B:51:0x019f), top: B:56:0x0005 }] */
    /* JADX WARN: Code duplicated, block: B:17:0x004c A[Catch: all -> 0x01f2, TryCatch #0 {all -> 0x01f2, blocks: (B:4:0x0005, B:6:0x000b, B:9:0x0013, B:12:0x001d, B:15:0x0032, B:17:0x004c, B:19:0x006e, B:21:0x0091, B:24:0x009e, B:27:0x00ab, B:29:0x00b7, B:31:0x00bf, B:33:0x00c7, B:35:0x00ea, B:37:0x00f2, B:39:0x0125, B:41:0x012b, B:43:0x014e, B:45:0x0159, B:47:0x0188, B:49:0x0199, B:52:0x01a4, B:51:0x019f), top: B:56:0x0005 }] */
    /* JADX WARN: Code duplicated, block: B:19:0x006e A[Catch: all -> 0x01f2, TryCatch #0 {all -> 0x01f2, blocks: (B:4:0x0005, B:6:0x000b, B:9:0x0013, B:12:0x001d, B:15:0x0032, B:17:0x004c, B:19:0x006e, B:21:0x0091, B:24:0x009e, B:27:0x00ab, B:29:0x00b7, B:31:0x00bf, B:33:0x00c7, B:35:0x00ea, B:37:0x00f2, B:39:0x0125, B:41:0x012b, B:43:0x014e, B:45:0x0159, B:47:0x0188, B:49:0x0199, B:52:0x01a4, B:51:0x019f), top: B:56:0x0005 }] */
    /* JADX WARN: Code duplicated, block: B:21:0x0091 A[Catch: all -> 0x01f2, TryCatch #0 {all -> 0x01f2, blocks: (B:4:0x0005, B:6:0x000b, B:9:0x0013, B:12:0x001d, B:15:0x0032, B:17:0x004c, B:19:0x006e, B:21:0x0091, B:24:0x009e, B:27:0x00ab, B:29:0x00b7, B:31:0x00bf, B:33:0x00c7, B:35:0x00ea, B:37:0x00f2, B:39:0x0125, B:41:0x012b, B:43:0x014e, B:45:0x0159, B:47:0x0188, B:49:0x0199, B:52:0x01a4, B:51:0x019f), top: B:56:0x0005 }] */
    /* JADX WARN: Code duplicated, block: B:37:0x00f2 A[Catch: all -> 0x01f2, TryCatch #0 {all -> 0x01f2, blocks: (B:4:0x0005, B:6:0x000b, B:9:0x0013, B:12:0x001d, B:15:0x0032, B:17:0x004c, B:19:0x006e, B:21:0x0091, B:24:0x009e, B:27:0x00ab, B:29:0x00b7, B:31:0x00bf, B:33:0x00c7, B:35:0x00ea, B:37:0x00f2, B:39:0x0125, B:41:0x012b, B:43:0x014e, B:45:0x0159, B:47:0x0188, B:49:0x0199, B:52:0x01a4, B:51:0x019f), top: B:56:0x0005 }] */
    /* JADX WARN: Code duplicated, block: B:39:0x0125 A[Catch: all -> 0x01f2, TryCatch #0 {all -> 0x01f2, blocks: (B:4:0x0005, B:6:0x000b, B:9:0x0013, B:12:0x001d, B:15:0x0032, B:17:0x004c, B:19:0x006e, B:21:0x0091, B:24:0x009e, B:27:0x00ab, B:29:0x00b7, B:31:0x00bf, B:33:0x00c7, B:35:0x00ea, B:37:0x00f2, B:39:0x0125, B:41:0x012b, B:43:0x014e, B:45:0x0159, B:47:0x0188, B:49:0x0199, B:52:0x01a4, B:51:0x019f), top: B:56:0x0005 }] */
    /* JADX WARN: Code duplicated, block: B:41:0x012b A[Catch: all -> 0x01f2, TryCatch #0 {all -> 0x01f2, blocks: (B:4:0x0005, B:6:0x000b, B:9:0x0013, B:12:0x001d, B:15:0x0032, B:17:0x004c, B:19:0x006e, B:21:0x0091, B:24:0x009e, B:27:0x00ab, B:29:0x00b7, B:31:0x00bf, B:33:0x00c7, B:35:0x00ea, B:37:0x00f2, B:39:0x0125, B:41:0x012b, B:43:0x014e, B:45:0x0159, B:47:0x0188, B:49:0x0199, B:52:0x01a4, B:51:0x019f), top: B:56:0x0005 }] */
    /* JADX WARN: Code duplicated, block: B:43:0x014e A[Catch: all -> 0x01f2, TryCatch #0 {all -> 0x01f2, blocks: (B:4:0x0005, B:6:0x000b, B:9:0x0013, B:12:0x001d, B:15:0x0032, B:17:0x004c, B:19:0x006e, B:21:0x0091, B:24:0x009e, B:27:0x00ab, B:29:0x00b7, B:31:0x00bf, B:33:0x00c7, B:35:0x00ea, B:37:0x00f2, B:39:0x0125, B:41:0x012b, B:43:0x014e, B:45:0x0159, B:47:0x0188, B:49:0x0199, B:52:0x01a4, B:51:0x019f), top: B:56:0x0005 }] */
    /* JADX WARN: Code duplicated, block: B:45:0x0159 A[Catch: all -> 0x01f2, TryCatch #0 {all -> 0x01f2, blocks: (B:4:0x0005, B:6:0x000b, B:9:0x0013, B:12:0x001d, B:15:0x0032, B:17:0x004c, B:19:0x006e, B:21:0x0091, B:24:0x009e, B:27:0x00ab, B:29:0x00b7, B:31:0x00bf, B:33:0x00c7, B:35:0x00ea, B:37:0x00f2, B:39:0x0125, B:41:0x012b, B:43:0x014e, B:45:0x0159, B:47:0x0188, B:49:0x0199, B:52:0x01a4, B:51:0x019f), top: B:56:0x0005 }] */
    /* JADX WARN: Code duplicated, block: B:47:0x0188 A[Catch: all -> 0x01f2, TryCatch #0 {all -> 0x01f2, blocks: (B:4:0x0005, B:6:0x000b, B:9:0x0013, B:12:0x001d, B:15:0x0032, B:17:0x004c, B:19:0x006e, B:21:0x0091, B:24:0x009e, B:27:0x00ab, B:29:0x00b7, B:31:0x00bf, B:33:0x00c7, B:35:0x00ea, B:37:0x00f2, B:39:0x0125, B:41:0x012b, B:43:0x014e, B:45:0x0159, B:47:0x0188, B:49:0x0199, B:52:0x01a4, B:51:0x019f), top: B:56:0x0005 }] */
    /* JADX WARN: Code duplicated, block: B:51:0x019f A[Catch: all -> 0x01f2, TryCatch #0 {all -> 0x01f2, blocks: (B:4:0x0005, B:6:0x000b, B:9:0x0013, B:12:0x001d, B:15:0x0032, B:17:0x004c, B:19:0x006e, B:21:0x0091, B:24:0x009e, B:27:0x00ab, B:29:0x00b7, B:31:0x00bf, B:33:0x00c7, B:35:0x00ea, B:37:0x00f2, B:39:0x0125, B:41:0x012b, B:43:0x014e, B:45:0x0159, B:47:0x0188, B:49:0x0199, B:52:0x01a4, B:51:0x019f), top: B:56:0x0005 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0010  */
    /* JADX WARN: Instruction removed from duplicated block: B:15:0x0032, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:19:0x006e, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:37:0x00f2, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:41:0x012b, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:45:0x0159, please report this as an issue */
    @Override // com.transsion.lib_web.zip.loader.c
    public WebResourceResponse a(WebResourceRequest webResourceRequest) {
        String string;
        PageData pageDataH;
        com.transsion.lib_web.download_render.utils.a aVar;
        FileData fileData;
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
                    pageDataH = com.transsion.lib_web.download_render.c.f46167a.h(this.f65258c.getOriginUrl());
                    if (pageDataH == null) {
                        i.f63883a.f("DR_WebviewRenderDynamicFileLoader", "<interceptRequest> url:" + string + " pageData is null return");
                        return null;
                    }
                    aVar = com.transsion.lib_web.download_render.utils.a.f46185a;
                    aVar.j(this.f65258c.getOriginUrl());
                    aVar.o(this.f65258c.getOriginUrl(), CacheType.PAGE);
                    fileData = pageDataH.getLocalFileMap().get(string);
                    if (fileData == null) {
                        aVar.e(this.f65258c.getOriginUrl());
                        i.f63883a.f("DR_WebviewRenderDynamicFileLoader", "<interceptRequest> url:" + string + " fileData is null return");
                        return null;
                    }
                    if (!Intrinsics.c(fileData.getMimeType(), OSSConstants.DEFAULT_OBJECT_CONTENT_TYPE) || Intrinsics.c(fileData.isStatic(), Boolean.TRUE)) {
                        return null;
                    }
                    if (!Intrinsics.c(fileData.getMimeType(), "text/html") && this.f65258c.getHtmlUseRemote() && com.transsion.lib_web.download_render.utils.d.f46188a.a()) {
                        aVar.h(this.f65258c.getOriginUrl());
                        i.f63883a.a("DR_WebviewRenderDynamicFileLoader", "<interceptRequest> url:" + string + " is html use remote");
                        return null;
                    }
                    if (fileData.getFileOperateStatus$lib_web_release() != FileOperateStatus.NONE) {
                        aVar.f(this.f65258c.getOriginUrl());
                        i.f63883a.f("DR_WebviewRenderDynamicFileLoader", "<interceptRequest> url:" + string + " fileOperateStatus:" + fileData.getFileOperateStatus$lib_web_release().getType() + " unNormal return");
                        return null;
                    }
                    fileLocalPath$lib_web_release = fileData.getFileLocalPath$lib_web_release();
                    if (fileLocalPath$lib_web_release == null) {
                        aVar.g(this.f65258c.getOriginUrl());
                        i.f63883a.f("DR_WebviewRenderDynamicFileLoader", "<interceptRequest> url:" + string + " fileLocalPath is null return");
                        return null;
                    }
                    file = new File(fileLocalPath$lib_web_release);
                    if (!file.exists()) {
                        aVar.g(this.f65258c.getOriginUrl());
                        i.f63883a.f("DR_WebviewRenderDynamicFileLoader", "<interceptRequest> url:" + string + " file:" + file.getAbsoluteFile() + " is not exist return");
                        return null;
                    }
                    FileInputStream fileInputStream = new FileInputStream(file);
                    String mimeType = fileData.getMimeType();
                    if (webResourceRequest != null || (map = webResourceRequest.getRequestHeaders()) == null) {
                        map = new HashMap<>();
                    }
                    WebResourceResponse webResourceResponse = new WebResourceResponse(mimeType, "UTF-8", 200, "OK", b(map), fileInputStream);
                    aVar.i(this.f65258c.getOriginUrl());
                    i.f63883a.a("DR_WebviewRenderDynamicFileLoader", "<interceptRequest> url:" + string + ", mimeType:" + mimeType + ", length:" + file.length() + ", file:" + file.getAbsoluteFile() + " exist");
                    return webResourceResponse;
                }
            } catch (Throwable unused) {
                com.transsion.lib_web.download_render.utils.a.f46185a.d(this.f65258c.getOriginUrl());
            }
        } else {
            string = null;
            if (string != null) {
                System.currentTimeMillis();
                pageDataH = com.transsion.lib_web.download_render.c.f46167a.h(this.f65258c.getOriginUrl());
                if (pageDataH == null) {
                    i.f63883a.f("DR_WebviewRenderDynamicFileLoader", "<interceptRequest> url:" + string + " pageData is null return");
                    return null;
                }
                aVar = com.transsion.lib_web.download_render.utils.a.f46185a;
                aVar.j(this.f65258c.getOriginUrl());
                aVar.o(this.f65258c.getOriginUrl(), CacheType.PAGE);
                fileData = pageDataH.getLocalFileMap().get(string);
                if (fileData == null) {
                    aVar.e(this.f65258c.getOriginUrl());
                    i.f63883a.f("DR_WebviewRenderDynamicFileLoader", "<interceptRequest> url:" + string + " fileData is null return");
                    return null;
                }
                if (!Intrinsics.c(fileData.getMimeType(), OSSConstants.DEFAULT_OBJECT_CONTENT_TYPE)) {
                    return null;
                }
                if (!Intrinsics.c(fileData.getMimeType(), "text/html")) {
                }
                if (fileData.getFileOperateStatus$lib_web_release() != FileOperateStatus.NONE) {
                    aVar.f(this.f65258c.getOriginUrl());
                    i.f63883a.f("DR_WebviewRenderDynamicFileLoader", "<interceptRequest> url:" + string + " fileOperateStatus:" + fileData.getFileOperateStatus$lib_web_release().getType() + " unNormal return");
                    return null;
                }
                fileLocalPath$lib_web_release = fileData.getFileLocalPath$lib_web_release();
                if (fileLocalPath$lib_web_release == null) {
                    aVar.g(this.f65258c.getOriginUrl());
                    i.f63883a.f("DR_WebviewRenderDynamicFileLoader", "<interceptRequest> url:" + string + " fileLocalPath is null return");
                    return null;
                }
                file = new File(fileLocalPath$lib_web_release);
                if (!file.exists()) {
                    aVar.g(this.f65258c.getOriginUrl());
                    i.f63883a.f("DR_WebviewRenderDynamicFileLoader", "<interceptRequest> url:" + string + " file:" + file.getAbsoluteFile() + " is not exist return");
                    return null;
                }
                FileInputStream fileInputStream2 = new FileInputStream(file);
                String mimeType2 = fileData.getMimeType();
                if (webResourceRequest != null) {
                    map = new HashMap<>();
                } else {
                    map = new HashMap<>();
                }
                WebResourceResponse webResourceResponse2 = new WebResourceResponse(mimeType2, "UTF-8", 200, "OK", b(map), fileInputStream2);
                aVar.i(this.f65258c.getOriginUrl());
                i.f63883a.a("DR_WebviewRenderDynamicFileLoader", "<interceptRequest> url:" + string + ", mimeType:" + mimeType2 + ", length:" + file.length() + ", file:" + file.getAbsoluteFile() + " exist");
                return webResourceResponse2;
            }
        }
        return null;
    }

    public Map b(Map map) {
        return com.transsion.lib_web.zip.loader.c.b.a(this, map);
    }
}
