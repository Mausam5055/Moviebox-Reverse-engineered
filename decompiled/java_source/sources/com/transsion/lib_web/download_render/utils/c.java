package com.transsion.lib_web.download_render.utils;

import android.net.Uri;
import com.blankj.utilcode.util.Utils;
import java.io.File;
import java.io.FileFilter;
import java.util.List;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes5.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final c f46187a = new c();

    private c() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean d(File file) {
        return file.isDirectory();
    }

    public final File b(String url, String fileUrl, String fileMd5, String str) {
        int iV0;
        Intrinsics.h(url, "url");
        Intrinsics.h(fileUrl, "fileUrl");
        Intrinsics.h(fileMd5, "fileMd5");
        File file = new File(Utils.a().getFilesDir(), "DownloadRender");
        if (!file.exists()) {
            file.mkdirs();
        }
        File file2 = new File(file, lh.a.f68842a.a(url));
        if (!file2.exists()) {
            file2.mkdirs();
        }
        Uri uri = Uri.parse(fileUrl);
        Intrinsics.g(uri, "parse(this)");
        String lastPathSegment = uri.getLastPathSegment();
        String strQ = "";
        if (lastPathSegment == null) {
            lastPathSegment = "";
        }
        int iV1 = StringsKt.v0(lastPathSegment, ".", 0, false, 6, null);
        if (iV1 != -1) {
            strQ = lastPathSegment.substring(iV1, lastPathSegment.length());
            Intrinsics.g(strQ, "substring(...)");
        }
        if (strQ.length() == 0 && str != null && (iV0 = StringsKt.v0(str, "/", 0, false, 6, null)) != -1) {
            String strSubstring = str.substring(iV0, str.length());
            Intrinsics.g(strSubstring, "substring(...)");
            strQ = StringsKt.Q(strSubstring, "/", ".", false, 4, null);
        }
        return new File(file2, fileMd5 + ((Object) strQ));
    }

    public final List c(String path) {
        List listK0;
        Intrinsics.h(path, "path");
        File file = new File(path);
        if (!file.exists() || !file.isDirectory()) {
            return CollectionsKt.l();
        }
        File[] fileArrListFiles = file.listFiles(new FileFilter() { // from class: com.transsion.lib_web.download_render.utils.b
            @Override // java.io.FileFilter
            public final boolean accept(File file2) {
                return c.d(file2);
            }
        });
        return (fileArrListFiles == null || (listK0 = ArraysKt.K0(fileArrListFiles)) == null) ? CollectionsKt.l() : listK0;
    }
}
