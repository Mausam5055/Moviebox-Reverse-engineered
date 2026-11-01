package com.transsion.ninegridview.helper;

import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.provider.MediaStore;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.app.ActivityCompat;
import androidx.p009lifecycle.v;
import com.blankj.utilcode.util.Utils;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;
import java.util.ListIterator;
import java.util.Locale;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.io.ByteStreamsKt;
import kotlin.io.CloseableKt;
import kotlin.io.FilesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import kotlinx.coroutines.a2;
import kotlinx.coroutines.i;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.t1;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes6.dex */
public final class FileHelper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final FileHelper f47682a = new FileHelper();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f47683b = Environment.DIRECTORY_PICTURES;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int f47684c = 100;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static t1 f47685d;

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private File f47686a;

        /* JADX WARN: Multi-variable type inference failed */
        public a() {
            this(null, 1, 0 == true ? 1 : 0);
        }

        public a(File file) {
            this.f47686a = file;
        }

        public /* synthetic */ a(File file, int i11, DefaultConstructorMarker defaultConstructorMarker) {
            this((i11 & 1) != 0 ? null : file);
        }

        public final File a() {
            return this.f47686a;
        }

        public final void b(File file) {
            this.f47686a = file;
        }
    }

    private FileHelper() {
    }

    private final void d(AppCompatActivity appCompatActivity, Function0 function0) {
        if (Build.VERSION.SDK_INT >= 29) {
            function0.invoke();
        } else if (androidx.core.content.b.checkSelfPermission(appCompatActivity, "android.permission.WRITE_EXTERNAL_STORAGE") == 0 && androidx.core.content.b.checkSelfPermission(appCompatActivity, "android.permission.READ_EXTERNAL_STORAGE") == 0) {
            function0.invoke();
        } else {
            q(appCompatActivity);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:8:0x0018  */
    public final Object e(File file, Context context, String str, String str2, boolean z10, Continuation continuation) throws Throwable {
        FileHelper$copyToAlbum$1 fileHelper$copyToAlbum$1;
        Closeable closeable;
        Throwable th2;
        if (continuation instanceof FileHelper$copyToAlbum$1) {
            fileHelper$copyToAlbum$1 = (FileHelper$copyToAlbum$1) continuation;
            int i11 = fileHelper$copyToAlbum$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                fileHelper$copyToAlbum$1.label = i11 - Integer.MIN_VALUE;
            } else {
                fileHelper$copyToAlbum$1 = new FileHelper$copyToAlbum$1(this, continuation);
            }
        } else {
            fileHelper$copyToAlbum$1 = new FileHelper$copyToAlbum$1(this, continuation);
        }
        FileHelper$copyToAlbum$1 fileHelper$copyToAlbum$2 = fileHelper$copyToAlbum$1;
        Object obj = fileHelper$copyToAlbum$2.result;
        Object objF = IntrinsicsKt.f();
        int i12 = fileHelper$copyToAlbum$2.label;
        if (i12 == 0) {
            ResultKt.b(obj);
            try {
                if (file.canRead() && file.exists()) {
                    FileInputStream fileInputStream = new FileInputStream(file);
                    try {
                        FileHelper fileHelper = f47682a;
                        fileHelper$copyToAlbum$2.L$0 = fileInputStream;
                        fileHelper$copyToAlbum$2.label = 1;
                        Object objU = fileHelper.u(fileInputStream, context, str, str2, z10, fileHelper$copyToAlbum$2);
                        if (objU == objF) {
                            return objF;
                        }
                        closeable = fileInputStream;
                        obj = objU;
                    } catch (Throwable th3) {
                        th = th3;
                        closeable = fileInputStream;
                        th2 = th;
                        throw th2;
                    }
                }
                lg.a.C0828a.f(lg.a.f68839a, "FileHelper", "check: read file error: " + file, false, 4, null);
                return null;
            } catch (Exception e11) {
                e11.printStackTrace();
                return null;
            }
        }
        if (i12 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        closeable = (Closeable) fileHelper$copyToAlbum$2.L$0;
        try {
            ResultKt.b(obj);
        } catch (Throwable th4) {
            th = th4;
            th2 = th;
            try {
                throw th2;
            } catch (Throwable th5) {
                CloseableKt.a(closeable, th2);
                throw th5;
            }
        }
        Uri uri = (Uri) obj;
        CloseableKt.a(closeable, null);
        return uri;
    }

    public static /* synthetic */ void g(FileHelper fileHelper, File file, Context context, String str, String str2, boolean z10, int i11, Object obj) {
        if ((i11 & 16) != 0) {
            z10 = true;
        }
        fileHelper.f(file, context, str, str2, z10);
    }

    private final void h(Uri uri, Context context, ContentResolver contentResolver, File file) {
        ContentValues contentValues = new ContentValues();
        if (Build.VERSION.SDK_INT >= 29) {
            contentValues.put("is_pending", (Integer) 0);
            contentResolver.update(uri, contentValues, null, null);
        } else {
            if (file != null) {
                contentValues.put("_size", Long.valueOf(file.length()));
            }
            contentResolver.update(uri, contentValues, null, null);
            context.sendBroadcast(new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE", uri));
        }
    }

    private final Bitmap.CompressFormat i(String str) {
        String lowerCase = str.toLowerCase(Locale.ROOT);
        Intrinsics.g(lowerCase, "toLowerCase(...)");
        if (StringsKt.G(lowerCase, ".png", false, 2, null)) {
            return Bitmap.CompressFormat.PNG;
        }
        if (StringsKt.G(lowerCase, ".jpg", false, 2, null) || StringsKt.G(lowerCase, ".jpeg", false, 2, null)) {
            return Bitmap.CompressFormat.JPEG;
        }
        if (StringsKt.G(lowerCase, ".webp", false, 2, null)) {
            return Build.VERSION.SDK_INT >= 30 ? Bitmap.CompressFormat.WEBP_LOSSLESS : Bitmap.CompressFormat.WEBP;
        }
        return Bitmap.CompressFormat.PNG;
    }

    private final String k(String str) {
        String lowerCase = str.toLowerCase(Locale.ROOT);
        Intrinsics.g(lowerCase, "toLowerCase(...)");
        if (StringsKt.G(lowerCase, ".png", false, 2, null)) {
            return "image/png";
        }
        if (StringsKt.G(lowerCase, ".jpg", false, 2, null) || StringsKt.G(lowerCase, ".jpeg", false, 2, null)) {
            return "image/jpeg";
        }
        if (StringsKt.G(lowerCase, ".webp", false, 2, null)) {
            return "image/webp";
        }
        if (StringsKt.G(lowerCase, ".gif", false, 2, null)) {
            return "image/gif";
        }
        return null;
    }

    private final OutputStream o(Uri uri, ContentResolver contentResolver) {
        try {
            return contentResolver.openOutputStream(uri);
        } catch (FileNotFoundException e11) {
            lg.a.C0828a.f(lg.a.f68839a, "FileHelper", "save: open stream error: " + e11, false, 4, null);
            return null;
        }
    }

    private final Uri p(ContentResolver contentResolver, String str) {
        if (Build.VERSION.SDK_INT >= 29) {
            return null;
        }
        File file = new File(str);
        if (file.canRead() && file.exists()) {
            lg.a.C0828a.v(lg.a.f68839a, "FileHelper", "query: path: " + str + " exists", false, 4, null);
            return Uri.fromFile(file);
        }
        Uri uri = MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
        Cursor cursorQuery = contentResolver.query(uri, new String[]{"_id", "_data"}, "_data == ?", new String[]{str}, null);
        if (cursorQuery != null) {
            try {
                if (cursorQuery.moveToNext()) {
                    Uri uriWithAppendedId = ContentUris.withAppendedId(uri, cursorQuery.getLong(cursorQuery.getColumnIndexOrThrow("_id")));
                    Intrinsics.g(uriWithAppendedId, "withAppendedId(...)");
                    lg.a.C0828a.v(lg.a.f68839a, "FileHelper", "query: path: " + str + " exists uri: " + uriWithAppendedId, false, 4, null);
                    CloseableKt.a(cursorQuery, null);
                    return uriWithAppendedId;
                }
                Unit unit = Unit.f67061a;
                CloseableKt.a(cursorQuery, null);
            } catch (Throwable th2) {
                try {
                    throw th2;
                } catch (Throwable th3) {
                    CloseableKt.a(cursorQuery, th2);
                    throw th3;
                }
            }
        }
        return null;
    }

    private final void q(AppCompatActivity appCompatActivity) {
        ActivityCompat.g(appCompatActivity, new String[]{"android.permission.WRITE_EXTERNAL_STORAGE", "android.permission.READ_EXTERNAL_STORAGE"}, f47684c);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit s(AppCompatActivity appCompatActivity, String str, Bitmap bitmap, Function2 function2) {
        t1 t1Var = f47685d;
        if (t1Var != null) {
            t1.a.b(t1Var, null, 1, null);
        }
        f47685d = k.d(v.a(appCompatActivity), y0.b(), null, new FileHelper$saveBitmapToPicture$1$1(str, bitmap, appCompatActivity, function2, null), 2, null);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v0, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r4v1, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r4v13 */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v5 */
    public final Object u(InputStream inputStream, Context context, String str, String str2, boolean z10, Continuation continuation) throws Throwable {
        FileHelper$saveToAlbum$1 fileHelper$saveToAlbum$1;
        Throwable th2;
        Uri uri;
        Closeable closeable;
        Closeable closeable2 = inputStream;
        if (continuation instanceof FileHelper$saveToAlbum$1) {
            fileHelper$saveToAlbum$1 = (FileHelper$saveToAlbum$1) continuation;
            int i11 = fileHelper$saveToAlbum$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                fileHelper$saveToAlbum$1.label = i11 - Integer.MIN_VALUE;
            } else {
                fileHelper$saveToAlbum$1 = new FileHelper$saveToAlbum$1(this, continuation);
            }
        } else {
            fileHelper$saveToAlbum$1 = new FileHelper$saveToAlbum$1(this, continuation);
        }
        Object obj = fileHelper$saveToAlbum$1.result;
        ?? F = IntrinsicsKt.f();
        int i12 = fileHelper$saveToAlbum$1.label;
        int i13 = 1;
        File file = null;
        boolean z11 = false;
        try {
            if (i12 == 0) {
                ResultKt.b(obj);
                ContentResolver contentResolver = context.getContentResolver();
                a aVar = new a(file, i13, z11 ? 1 : 0);
                Intrinsics.e(contentResolver);
                Uri uriN = n(contentResolver, str, str2, aVar);
                if (uriN == null) {
                    lg.a.C0828a.f(lg.a.f68839a, "FileHelper", "insert: error: uri == null", false, 4, null);
                    return null;
                }
                OutputStream outputStreamO = o(uriN, contentResolver);
                if (outputStreamO == null) {
                    return null;
                }
                try {
                    ByteStreamsKt.b(inputStream, outputStreamO, 0, 2, null);
                    f47682a.h(uriN, context, contentResolver, aVar.a());
                    a2 a2VarC = y0.c();
                    FileHelper$saveToAlbum$2$1$1 fileHelper$saveToAlbum$2$1$1 = new FileHelper$saveToAlbum$2$1$1(z10, null);
                    fileHelper$saveToAlbum$1.L$0 = uriN;
                    fileHelper$saveToAlbum$1.L$1 = outputStreamO;
                    fileHelper$saveToAlbum$1.L$2 = closeable2;
                    fileHelper$saveToAlbum$1.label = 1;
                    if (i.g(a2VarC, fileHelper$saveToAlbum$2$1$1, fileHelper$saveToAlbum$1) == F) {
                        return F;
                    }
                    uri = uriN;
                    closeable = outputStreamO;
                } catch (Throwable th3) {
                    th2 = th3;
                    F = outputStreamO;
                    throw th2;
                }
            } else {
                if (i12 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                closeable2 = (Closeable) fileHelper$saveToAlbum$1.L$2;
                closeable = (Closeable) fileHelper$saveToAlbum$1.L$1;
                uri = (Uri) fileHelper$saveToAlbum$1.L$0;
                try {
                    ResultKt.b(obj);
                    closeable = closeable;
                } catch (Throwable th4) {
                    th2 = th4;
                    F = closeable;
                    try {
                        throw th2;
                    } catch (Throwable th5) {
                        CloseableKt.a(closeable2, th2);
                        throw th5;
                    }
                }
            }
            Unit unit = Unit.f67061a;
            CloseableKt.a(closeable2, null);
            CloseableKt.a(closeable, null);
            return uri;
        } catch (Throwable th6) {
            try {
                throw th6;
            } catch (Throwable th7) {
                CloseableKt.a(F, th6);
                throw th7;
            }
        }
    }

    public static /* synthetic */ Uri v(FileHelper fileHelper, Bitmap bitmap, Context context, String str, String str2, int i11, int i12, Object obj) {
        if ((i12 & 4) != 0) {
            str2 = "MovieBox";
        }
        String str3 = str2;
        if ((i12 & 8) != 0) {
            i11 = 75;
        }
        return fileHelper.t(bitmap, context, str, str3, i11);
    }

    public final void f(File file, Context context, String fileName, String str, boolean z10) {
        Intrinsics.h(file, "file");
        Intrinsics.h(context, "context");
        Intrinsics.h(fileName, "fileName");
        try {
            Result.Companion companion = Result.INSTANCE;
            Result.m454constructorimpl(k.d(o0.a(y0.b()), null, null, new FileHelper$copyToAlbumAsync$1$1(this, file, context, fileName, str, z10, null), 3, null));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th2));
        }
    }

    public final String j(String str) {
        List listL;
        List listL2;
        if (str == null) {
            return System.currentTimeMillis() + ".jpg";
        }
        int i11 = Utils.a().getApplicationInfo().uid;
        List<String> listSplit = new Regex("[?]").split(str, 0);
        if (!listSplit.isEmpty()) {
            ListIterator<String> listIterator = listSplit.listIterator(listSplit.size());
            while (true) {
                if (!listIterator.hasPrevious()) {
                    listL = CollectionsKt.l();
                    break;
                }
                if (listIterator.previous().length() != 0) {
                    listL = CollectionsKt.K0(listSplit, listIterator.nextIndex() + 1);
                    break;
                }
            }
        } else {
            listL = CollectionsKt.l();
            break;
        }
        String[] strArr = (String[]) listL.toArray(new String[0]);
        if (!(strArr.length == 0)) {
            List<String> listSplit2 = new Regex("/").split(strArr[0], 0);
            if (!listSplit2.isEmpty()) {
                ListIterator<String> listIterator2 = listSplit2.listIterator(listSplit2.size());
                while (true) {
                    if (!listIterator2.hasPrevious()) {
                        listL2 = CollectionsKt.l();
                        break;
                    }
                    if (listIterator2.previous().length() != 0) {
                        listL2 = CollectionsKt.K0(listSplit2, listIterator2.nextIndex() + 1);
                        break;
                    }
                }
            } else {
                listL2 = CollectionsKt.l();
                break;
            }
            String[] strArr2 = (String[]) listL2.toArray(new String[0]);
            if (!(strArr2.length == 0)) {
                return i11 + "_" + strArr2[strArr2.length - 1];
            }
        }
        return System.currentTimeMillis() + ".jpg";
    }

    public final int l() {
        return f47684c;
    }

    public final File m(String fileName) {
        Intrinsics.h(fileName, "fileName");
        return new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_PICTURES), "MovieBox" + File.separator + fileName);
    }

    public final Uri n(ContentResolver contentResolver, String fileName, String str, a aVar) {
        Uri EXTERNAL_CONTENT_URI;
        String str2;
        Intrinsics.h(contentResolver, "<this>");
        Intrinsics.h(fileName, "fileName");
        ContentValues contentValues = new ContentValues();
        String strK = f47682a.k(fileName);
        if (strK != null) {
            contentValues.put("mime_type", strK);
        }
        long jCurrentTimeMillis = System.currentTimeMillis() / ((long) 1000);
        contentValues.put("date_added", Long.valueOf(jCurrentTimeMillis));
        contentValues.put("date_modified", Long.valueOf(jCurrentTimeMillis));
        int i11 = 1;
        if (Build.VERSION.SDK_INT >= 29) {
            if (str != null) {
                str2 = f47683b + "/" + str;
            } else {
                str2 = f47683b;
            }
            contentValues.put("_display_name", fileName);
            contentValues.put("relative_path", str2);
            contentValues.put("is_pending", (Integer) 1);
            EXTERNAL_CONTENT_URI = MediaStore.Images.Media.getContentUri("external_primary");
            Intrinsics.g(EXTERNAL_CONTENT_URI, "getContentUri(...)");
        } else {
            File externalStoragePublicDirectory = Environment.getExternalStoragePublicDirectory(f47683b);
            if (str != null) {
                externalStoragePublicDirectory = new File(externalStoragePublicDirectory, str);
            }
            if (!externalStoragePublicDirectory.exists() && !externalStoragePublicDirectory.mkdirs()) {
                lg.a.C0828a.f(lg.a.f68839a, "FileHelper", "save: error: can't create Pictures directory", false, 4, null);
                return null;
            }
            File file = new File(externalStoragePublicDirectory, fileName);
            String strX = FilesKt.x(file);
            String strW = FilesKt.w(file);
            String absolutePath = file.getAbsolutePath();
            Intrinsics.g(absolutePath, "getAbsolutePath(...)");
            Uri uriP = p(contentResolver, absolutePath);
            while (uriP != null) {
                int i12 = i11 + 1;
                File file2 = new File(externalStoragePublicDirectory, strX + "(" + i11 + ")." + strW);
                String absolutePath2 = file2.getAbsolutePath();
                Intrinsics.g(absolutePath2, "getAbsolutePath(...)");
                Uri uriP2 = p(contentResolver, absolutePath2);
                i11 = i12;
                file = file2;
                uriP = uriP2;
            }
            contentValues.put("_display_name", file.getName());
            String absolutePath3 = file.getAbsolutePath();
            lg.a.C0828a.v(lg.a.f68839a, "FileHelper", "save file: " + absolutePath3, false, 4, null);
            contentValues.put("_data", absolutePath3);
            if (aVar != null) {
                aVar.b(file);
            }
            EXTERNAL_CONTENT_URI = MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
            Intrinsics.g(EXTERNAL_CONTENT_URI, "EXTERNAL_CONTENT_URI");
        }
        try {
            return contentResolver.insert(EXTERNAL_CONTENT_URI, contentValues);
        } catch (Throwable unused) {
            return null;
        }
    }

    public final void r(final AppCompatActivity activity, final Bitmap bitmap, final String fileName, final Function2 function2) {
        Intrinsics.h(activity, "activity");
        Intrinsics.h(fileName, "fileName");
        if (bitmap == null) {
            return;
        }
        d(activity, new Function0() { // from class: com.transsion.ninegridview.helper.a
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return FileHelper.s(activity, fileName, bitmap, function2);
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Uri t(Bitmap bitmap, Context context, String fileName, String relativePath, int i11) {
        Intrinsics.h(bitmap, "<this>");
        Intrinsics.h(context, "context");
        Intrinsics.h(fileName, "fileName");
        Intrinsics.h(relativePath, "relativePath");
        ContentResolver contentResolver = context.getContentResolver();
        a aVar = new a(null, 1, 0 == true ? 1 : 0);
        Intrinsics.e(contentResolver);
        Uri uriN = n(contentResolver, fileName, relativePath, aVar);
        if (uriN == null) {
            lg.a.C0828a.f(lg.a.f68839a, "FileHelper", "insert: error: uri == null", false, 4, null);
            return null;
        }
        OutputStream outputStreamO = o(uriN, contentResolver);
        if (outputStreamO == null) {
            return null;
        }
        try {
            FileHelper fileHelper = f47682a;
            bitmap.compress(fileHelper.i(fileName), i11, outputStreamO);
            fileHelper.h(uriN, context, contentResolver, aVar.a());
            Unit unit = Unit.f67061a;
            CloseableKt.a(outputStreamO, null);
            return uriN;
        } catch (Throwable th2) {
            try {
                throw th2;
            } catch (Throwable th3) {
                CloseableKt.a(outputStreamO, th2);
                throw th3;
            }
        }
    }
}
