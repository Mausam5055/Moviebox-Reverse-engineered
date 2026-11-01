package com.transsnet.downloader;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.media.MediaScannerConnection;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.provider.MediaStore;
import android.util.Log;
import com.cloud.tmc.integration.utils.share.config.ShareConstant;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.transsnet.downloader.util.DocumentsUtils;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes7.dex */
public final class y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final y f60245a = new y();

    private y() {
    }

    private final String b(String str) {
        try {
            if (!new File(str).exists()) {
                lg.a.f68839a.c("resource_save", "是否有相同文件，exists = false", true);
                return str;
            }
            lg.a.f68839a.c("resource_save", "是否有相同文件，exists = true", true);
            String str2 = "." + StringsKt.f1(StringsKt.h1(str, UrlUtils.QUESTION_MARK, null, 2, null), ".", null, 2, null);
            String str3 = "_" + new SimpleDateFormat("yyMMddHHmmss").format(Long.valueOf(System.currentTimeMillis())) + str2;
            lg.a.f68839a.c("resource_save", "有相同文件，加个后缀下载, fileSuffix = " + str2 + ", newFileSuffix = " + str3, true);
            return StringsKt.Q(str, str2, str3, false, 4, null);
        } catch (Throwable th2) {
            lg.a.f68839a.c("resource_save", "是否有相同文件，报错， = " + th2, true);
            th2.printStackTrace();
        }
    }

    private final void c(Context context, ContentResolver contentResolver, File file, Uri uri, Function2 function2) throws IOException {
        if (Build.VERSION.SDK_INT < 29 || context.getApplicationInfo().targetSdkVersion < 29) {
            return;
        }
        Intrinsics.e(uri);
        OutputStream outputStreamOpenOutputStream = contentResolver.openOutputStream(uri);
        FileInputStream fileInputStream = new FileInputStream(file);
        long length = file.length();
        byte[] bArr = new byte[65536];
        long j11 = 0;
        while (true) {
            int i11 = fileInputStream.read(bArr);
            if (i11 <= 0) {
                break;
            }
            if (outputStreamOpenOutputStream != null) {
                outputStreamOpenOutputStream.write(bArr, 0, i11);
            }
            j11 += (long) i11;
            function2.invoke(Long.valueOf(j11), Long.valueOf(length));
        }
        fileInputStream.close();
        if (outputStreamOpenOutputStream != null) {
            outputStreamOpenOutputStream.close();
        }
    }

    private final List f(Context context) {
        ArrayList arrayList = new ArrayList();
        Set<String> externalVolumeNames = MediaStore.getExternalVolumeNames(context);
        Intrinsics.g(externalVolumeNames, "getExternalVolumeNames(...)");
        for (String str : externalVolumeNames) {
            if (!Intrinsics.c(str, "external_primary")) {
                Intrinsics.e(str);
                arrayList.add(0, str);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            Uri contentUri = MediaStore.Downloads.getContentUri((String) it.next());
            Intrinsics.g(contentUri, "getContentUri(...)");
            arrayList2.add(contentUri);
        }
        return arrayList2;
    }

    private final boolean j(Context context, String str, String str2, Function2 function2, Function1 function1) {
        try {
            ContentResolver contentResolver = context.getContentResolver();
            String strQ = StringsKt.Q(str, str2, lj.b.f68866a.a(), false, 4, null);
            try {
                String strB = b(strQ);
                lg.a.f68839a.c("resource_save", "saveVideoToAlbumAfterQ targetPath = " + strQ + ", beforeRootPath = " + str2, true);
                String strF1 = StringsKt.f1(strB, "/", null, 2, null);
                if (function1 != null) {
                    function1.invoke(strB);
                }
                File file = new File(str);
                ContentValues contentValuesH = h(context, file, strF1, System.currentTimeMillis());
                Uri uriInsert = contentResolver.insert(MediaStore.Video.Media.EXTERNAL_CONTENT_URI, contentValuesH);
                Intrinsics.e(contentResolver);
                c(context, contentResolver, file, uriInsert, function2);
                contentValuesH.clear();
                contentValuesH.put("is_pending", (Integer) 0);
                ContentResolver contentResolver2 = context.getContentResolver();
                Intrinsics.e(uriInsert);
                contentResolver2.update(uriInsert, contentValuesH, null, null);
                context.sendBroadcast(new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE", uriInsert));
                return true;
            } catch (Throwable th2) {
                th = th2;
                th.printStackTrace();
                lg.a.f68839a.i("resource_save", "saveVideoToAlbumAfterQ error = " + th, true);
                return false;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    /* JADX WARN: Code duplicated, block: B:101:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:78:0x017c A[Catch: all -> 0x0178, TRY_LEAVE, TryCatch #5 {all -> 0x0178, blocks: (B:74:0x0174, B:78:0x017c), top: B:86:0x0174 }] */
    /* JADX WARN: Code duplicated, block: B:86:0x0174 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    private final boolean k(Context context, String str, Function2 function2, Function1 function1) throws Throwable {
        Throwable th2;
        BufferedOutputStream bufferedOutputStream;
        long length;
        File parentFile;
        File externalStoragePublicDirectory = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DCIM);
        File file = new File(str);
        InputStream inputStream = null;
        boolean zW = StringsKt.W(str, "content", false, 2, null);
        String strF1 = zW ? StringsKt.f1(str, "%2F", null, 2, null) : file.getName();
        String absolutePath = externalStoragePublicDirectory.getAbsolutePath();
        String str2 = File.separator;
        String strB = b(absolutePath + str2 + context.getResources().getString(com.transsion.baseui.R$string.base_app_name) + str2 + strF1);
        if (function1 != null) {
            function1.invoke(strB);
        }
        File file2 = new File(strB);
        lg.a.f68839a.c("resource_save", "saveVideoToAlbumBeforeQ, isUri = " + zW + ",newPath = " + strB, true);
        try {
            File parentFile2 = file2.getParentFile();
            if ((parentFile2 == null || !parentFile2.exists()) && (parentFile = file2.getParentFile()) != null) {
                parentFile.mkdirs();
            }
        } catch (Throwable th3) {
            lg.a.f68839a.x("resource_save", "saveVideoToAlbumBeforeQ, mkdirs fail, e = " + th3, true);
            th3.printStackTrace();
        }
        long j11 = 0;
        try {
            if (zW) {
                k1.a aVarG = k1.a.g(context, Uri.parse(str));
                length = aVarG != null ? aVarG.k() : 0L;
            } else {
                length = file.length();
            }
            InputStream inputStreamOpenInputStream = zW ? context.getContentResolver().openInputStream(Uri.parse(str)) : new FileInputStream(file);
            if (inputStreamOpenInputStream == null) {
                return false;
            }
            try {
                bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file2));
                try {
                    byte[] bArr = new byte[65536];
                    while (true) {
                        int i11 = inputStreamOpenInputStream.read(bArr);
                        if (i11 <= 0) {
                            break;
                        }
                        bufferedOutputStream.write(bArr, 0, i11);
                        j11 += (long) i11;
                        function2.invoke(Long.valueOf(j11), Long.valueOf(length));
                    }
                    MediaScannerConnection.scanFile(context, new String[]{file2.getAbsolutePath()}, new String[]{ShareConstant.SHARE_TYPE_VIDEO}, new MediaScannerConnection.OnScanCompletedListener() { // from class: com.transsnet.downloader.x
                        @Override // android.media.MediaScannerConnection.OnScanCompletedListener
                        public final void onScanCompleted(String str3, Uri uri) {
                            y.l(str3, uri);
                        }
                    });
                    try {
                        inputStreamOpenInputStream.close();
                        bufferedOutputStream.close();
                    } catch (Throwable th4) {
                        th4.printStackTrace();
                    }
                    return true;
                } catch (Exception e11) {
                    e = e11;
                    inputStream = inputStreamOpenInputStream;
                    try {
                        e.printStackTrace();
                        lg.a.f68839a.i("resource_save", "saveVideoToAlbumBeforeQ, save fail, e = " + e, true);
                        if (inputStream != null) {
                            try {
                                inputStream.close();
                            } catch (Throwable th5) {
                                th5.printStackTrace();
                                return false;
                            }
                        }
                        if (bufferedOutputStream == null) {
                            return false;
                        }
                        bufferedOutputStream.close();
                        return false;
                    } catch (Throwable th6) {
                        th2 = th6;
                        if (inputStream != null) {
                            try {
                                inputStream.close();
                            } catch (Throwable th7) {
                                th7.printStackTrace();
                                throw th2;
                            }
                        }
                        if (bufferedOutputStream != null) {
                            throw th2;
                        }
                        bufferedOutputStream.close();
                        throw th2;
                    }
                } catch (Throwable th8) {
                    th2 = th8;
                    inputStream = inputStreamOpenInputStream;
                    if (inputStream != null) {
                        inputStream.close();
                    }
                    if (bufferedOutputStream != null) {
                        throw th2;
                    }
                    bufferedOutputStream.close();
                    throw th2;
                }
            } catch (Exception e12) {
                e = e12;
                bufferedOutputStream = null;
            } catch (Throwable th9) {
                th2 = th9;
                bufferedOutputStream = null;
            }
        } catch (Exception e13) {
            e = e13;
            bufferedOutputStream = null;
        } catch (Throwable th10) {
            th2 = th10;
            bufferedOutputStream = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l(String path, Uri uri) {
        Intrinsics.h(path, "path");
        Intrinsics.h(uri, "uri");
        StringBuilder sb2 = new StringBuilder();
        sb2.append("saveVideoToAlbum: ");
        sb2.append(path);
        sb2.append(" ");
        sb2.append(uri);
    }

    private final boolean n(Context context, String str, String str2, String str3, Function2 function2, Function1 function1) {
        try {
            ContentResolver contentResolver = context.getContentResolver();
            String strQ = StringsKt.Q(str, str2, str3, false, 4, null);
            lg.a.C0828a.f(lg.a.f68839a, "resource_save", "saveVideoToSDCardAfterQ targetPath = " + strQ + ", beforeRootPath = " + str2 + ", targetRootPath = " + str3, false, 4, null);
            try {
                String strB = b(strQ);
                String strF1 = StringsKt.f1(strB, "/", null, 2, null);
                if (function1 != null) {
                    function1.invoke(strB);
                }
                File file = new File(str);
                ContentValues contentValuesG = g(context, file, strF1, System.currentTimeMillis());
                List listF = f(context);
                if (listF == null || !(!listF.isEmpty())) {
                    return false;
                }
                Uri uriInsert = contentResolver.insert((Uri) listF.get(0), contentValuesG);
                Intrinsics.e(contentResolver);
                c(context, contentResolver, file, uriInsert, function2);
                contentValuesG.clear();
                contentValuesG.put("is_pending", (Integer) 0);
                ContentResolver contentResolver2 = context.getContentResolver();
                Intrinsics.e(uriInsert);
                contentResolver2.update(uriInsert, contentValuesG, null, null);
                context.sendBroadcast(new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE", uriInsert));
                return true;
            } catch (Throwable th2) {
                th = th2;
                lg.a.f68839a.i("resource_save", "saveVideoToSDCardAfterQ error = " + th, true);
                th.printStackTrace();
                return false;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    /* JADX WARN: Code duplicated, block: B:59:0x0162 A[DONT_GENERATE, DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:60:0x0164 A[Catch: all -> 0x0160, DONT_GENERATE, TRY_LEAVE, TryCatch #0 {all -> 0x0160, blocks: (B:56:0x015c, B:60:0x0164), top: B:76:0x015c }] */
    /* JADX WARN: Code duplicated, block: B:76:0x015c A[DONT_GENERATE, EXC_TOP_SPLITTER, SYNTHETIC] */
    private final boolean o(Context context, String str, String str2, Function2 function2, Function1 function1) {
        BufferedOutputStream bufferedOutputStream;
        long j11;
        long length;
        InputStream inputStreamOpenInputStream;
        byte[] bArr;
        File parentFile;
        Log.e("resource_save", "videoFile:" + str);
        File file = new File(str);
        InputStream inputStream = null;
        try {
            String name = file.getName();
            Intrinsics.e(name);
            if (StringsKt.c0(name, "%2F", false, 2, null)) {
                name = name.substring(StringsKt.v0(name, "%2F", 0, false, 6, null) + 3);
                Intrinsics.g(name, "substring(...)");
            }
            try {
                String strB = b(str2 + File.separator + name);
                lg.a.f68839a.c("resource_save", "targetRootPath = " + str2 + ", targetPath = " + name + " newPath:" + strB, true);
                File file2 = new File(strB);
                try {
                    try {
                        File parentFile2 = file2.getParentFile();
                        if ((parentFile2 == null || !parentFile2.exists()) && (parentFile = file2.getParentFile()) != null) {
                            parentFile.mkdirs();
                        }
                        while (true) {
                            Intrinsics.e(inputStreamOpenInputStream);
                            int i11 = inputStreamOpenInputStream.read(bArr);
                            if (i11 <= 0) {
                                try {
                                    inputStreamOpenInputStream.close();
                                    bufferedOutputStream.close();
                                    return true;
                                } catch (Throwable th2) {
                                    th2.printStackTrace();
                                    return true;
                                }
                            }
                            bufferedOutputStream.write(bArr, 0, i11);
                            j11 += (long) i11;
                            function2.invoke(Long.valueOf(j11), Long.valueOf(length));
                        }
                    } catch (Throwable th3) {
                        th3.printStackTrace();
                    }
                    bArr = new byte[65536];
                } catch (Throwable th4) {
                    th = th4;
                    inputStream = inputStreamOpenInputStream;
                    try {
                        th.printStackTrace();
                        lg.a.f68839a.x("resource_save", "saveVideoToSDCardBeforeQ, save fail, e = " + th, true);
                        if (inputStream != null) {
                            try {
                            } catch (Throwable th5) {
                                return false;
                            }
                        }
                        return false;
                    } finally {
                        if (inputStream != null) {
                            try {
                                inputStream.close();
                            } catch (Throwable th6) {
                                th6.printStackTrace();
                            }
                        }
                        if (bufferedOutputStream != null) {
                            bufferedOutputStream.close();
                        }
                    }
                }
                j11 = 0;
                if (StringsKt.W(str, "content://", false, 2, null)) {
                    inputStreamOpenInputStream = context.getContentResolver().openInputStream(Uri.parse(str));
                    if (inputStreamOpenInputStream != null) {
                        try {
                            length = inputStreamOpenInputStream.available();
                        } catch (Throwable th7) {
                            th = th7;
                            bufferedOutputStream = null;
                            inputStream = inputStreamOpenInputStream;
                            th.printStackTrace();
                            lg.a.f68839a.x("resource_save", "saveVideoToSDCardBeforeQ, save fail, e = " + th, true);
                            return false;
                        }
                    } else {
                        length = 0;
                    }
                } else {
                    InputStream inputStreamH = DocumentsUtils.f59890a.h(context, file);
                    try {
                        length = file.length();
                        inputStreamOpenInputStream = inputStreamH;
                    } catch (Throwable th8) {
                        th = th8;
                        bufferedOutputStream = null;
                        inputStream = inputStreamH;
                        th.printStackTrace();
                        lg.a.f68839a.x("resource_save", "saveVideoToSDCardBeforeQ, save fail, e = " + th, true);
                        return false;
                    }
                }
                Log.e("resource_save", "videoFile:" + str + "  fileSize:" + length);
                bufferedOutputStream = new BufferedOutputStream(DocumentsUtils.f59890a.i(context, file2, function1));
            } catch (Throwable th9) {
                th = th9;
                bufferedOutputStream = null;
                th.printStackTrace();
                lg.a.f68839a.x("resource_save", "saveVideoToSDCardBeforeQ, save fail, e = " + th, true);
                return false;
            }
        } catch (Throwable th10) {
            th = th10;
        }
    }

    public final boolean d(Context context, String oldPath) {
        Intrinsics.h(context, "context");
        Intrinsics.h(oldPath, "oldPath");
        try {
            ContentResolver contentResolver = context.getContentResolver();
            lg.a.C0828a c0828a = lg.a.f68839a;
            lg.a.C0828a.f(c0828a, "resource_save", "deleteAlbumAfterQ oldPath = " + oldPath + "， where = _data=?", false, 4, null);
            int iDelete = contentResolver.delete(MediaStore.Video.Media.EXTERNAL_CONTENT_URI, "_data=?", new String[]{oldPath});
            StringBuilder sb2 = new StringBuilder();
            sb2.append("deleteAlbumAfterQ row = ");
            sb2.append(iDelete);
            c0828a.c("resource_save", sb2.toString(), true);
            return true;
        } catch (Throwable th2) {
            th2.printStackTrace();
            return false;
        }
    }

    public final boolean e(Context context, String oldPath) {
        Intrinsics.h(context, "context");
        Intrinsics.h(oldPath, "oldPath");
        try {
            lg.a.C0828a c0828a = lg.a.f68839a;
            lg.a.C0828a.f(c0828a, "resource_save", "deleteSDCardAfterQ oldPath = " + oldPath, false, 4, null);
            ContentResolver contentResolver = context.getContentResolver();
            List listF = f(context);
            if (listF != null && (!listF.isEmpty())) {
                c0828a.c("resource_save", "deleteSDCardAfterQ row = " + contentResolver.delete((Uri) listF.get(0), "_data=?", new String[]{oldPath}), true);
                return true;
            }
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
        return false;
    }

    public final ContentValues g(Context context, File paramFile, String newName, long j11) {
        Intrinsics.h(context, "context");
        Intrinsics.h(paramFile, "paramFile");
        Intrinsics.h(newName, "newName");
        ContentValues contentValues = new ContentValues();
        if (Build.VERSION.SDK_INT >= 29) {
            contentValues.put("relative_path", lj.b.f68866a.f());
        }
        if (newName.length() == 0) {
            newName = paramFile.getName();
        }
        contentValues.put(CampaignEx.JSON_KEY_TITLE, newName);
        contentValues.put("_display_name", newName);
        contentValues.put("mime_type", MimeTypes.VIDEO_MP4);
        contentValues.put("datetaken", Long.valueOf(j11));
        contentValues.put("date_modified", Long.valueOf(j11));
        contentValues.put("date_added", Long.valueOf(j11));
        contentValues.put("_size", Long.valueOf(paramFile.length()));
        return contentValues;
    }

    public final ContentValues h(Context context, File paramFile, String newName, long j11) {
        Intrinsics.h(context, "context");
        Intrinsics.h(paramFile, "paramFile");
        Intrinsics.h(newName, "newName");
        ContentValues contentValues = new ContentValues();
        if (Build.VERSION.SDK_INT >= 29) {
            contentValues.put("relative_path", Environment.DIRECTORY_DCIM + File.separator + context.getResources().getString(com.transsion.baseui.R$string.base_app_name));
        }
        if (newName.length() == 0) {
            newName = paramFile.getName();
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("getVideoContentValues title = ");
        sb2.append(newName);
        contentValues.put(CampaignEx.JSON_KEY_TITLE, newName);
        contentValues.put("_display_name", newName);
        contentValues.put("mime_type", MimeTypes.VIDEO_MP4);
        contentValues.put("datetaken", Long.valueOf(j11));
        contentValues.put("date_modified", Long.valueOf(j11));
        contentValues.put("date_added", Long.valueOf(j11));
        contentValues.put("_size", Long.valueOf(paramFile.length()));
        return contentValues;
    }

    public final boolean i(Context context, String videoFile, String beforeRootPath, Function2 callback, Function1 function1) {
        Intrinsics.h(context, "context");
        Intrinsics.h(videoFile, "videoFile");
        Intrinsics.h(beforeRootPath, "beforeRootPath");
        Intrinsics.h(callback, "callback");
        lg.a.f68839a.c("resource_save", "saveVideoToAlbum() videoFile = [" + videoFile + "]", true);
        return Build.VERSION.SDK_INT < 29 ? k(context, videoFile, callback, function1) : j(context, videoFile, beforeRootPath, callback, function1);
    }

    public final boolean m(Context context, String videoFile, String beforeRootPath, String targetRootPath, Function2 callback, Function1 function1) {
        Intrinsics.h(context, "context");
        Intrinsics.h(videoFile, "videoFile");
        Intrinsics.h(beforeRootPath, "beforeRootPath");
        Intrinsics.h(targetRootPath, "targetRootPath");
        Intrinsics.h(callback, "callback");
        lg.a.f68839a.c("resource_save", "saveVideoToSDCard() videoFile = [" + videoFile + "]", true);
        return Build.VERSION.SDK_INT < 29 ? o(context, videoFile, targetRootPath, callback, function1) : n(context, videoFile, beforeRootPath, targetRootPath, callback, function1);
    }
}
