package com.cloud.tmc.miniutils.util;

import android.content.ContentValues;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.provider.MediaStore;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.cloud.tmc.integration.utils.share.config.ShareConstant;
import com.cloud.tmc.kernel.constants.TmcConstants;
import java.io.BufferedOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes3.dex */
public final class ImageUtils {

    public enum ImageType {
        TYPE_JPG("jpg"),
        TYPE_PNG("png"),
        TYPE_GIF("gif"),
        TYPE_TIFF("tiff"),
        TYPE_BMP("bmp"),
        TYPE_WEBP("webp"),
        TYPE_ICO("ico"),
        TYPE_UNKNOWN(TmcConstants.ROUTE_UNKNOWN);

        String value;

        ImageType(String str) {
            this.value = str;
        }

        public String getValue() {
            return this.value;
        }
    }

    private ImageUtils() {
        throw new UnsupportedOperationException("u can't instantiate me...");
    }

    public static byte[] bitmap2Bytes(Bitmap bitmap) {
        return bitmap2Bytes(bitmap, Bitmap.CompressFormat.PNG, 100);
    }

    public static byte[] bitmap2Bytes(@Nullable Bitmap bitmap, @NonNull Bitmap.CompressFormat compressFormat, int i11) {
        if (bitmap == null) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        bitmap.compress(compressFormat, i11, byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }

    public static Drawable bitmap2Drawable(@Nullable Bitmap bitmap) {
        if (bitmap == null) {
            return null;
        }
        return new BitmapDrawable(Utils.getApp().getResources(), bitmap);
    }

    public static Bitmap bytes2Bitmap(@Nullable byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            return null;
        }
        return BitmapFactory.decodeByteArray(bArr, 0, bArr.length);
    }

    public static Drawable bytes2Drawable(byte[] bArr) {
        return bitmap2Drawable(bytes2Bitmap(bArr));
    }

    public static int calculateInSampleSize(BitmapFactory.Options options, int i11, int i12) {
        int i13 = options.outHeight;
        int i14 = options.outWidth;
        int i15 = 1;
        while (true) {
            if (i13 <= i12 && i14 <= i11) {
                return i15;
            }
            i13 >>= 1;
            i14 >>= 1;
            i15 <<= 1;
        }
    }

    public static Bitmap drawable2Bitmap(@Nullable Drawable drawable) {
        Bitmap bitmapCreateBitmap;
        if (drawable == null) {
            return null;
        }
        if (drawable instanceof BitmapDrawable) {
            BitmapDrawable bitmapDrawable = (BitmapDrawable) drawable;
            if (bitmapDrawable.getBitmap() != null) {
                return bitmapDrawable.getBitmap();
            }
        }
        if (drawable.getIntrinsicWidth() <= 0 || drawable.getIntrinsicHeight() <= 0) {
            bitmapCreateBitmap = Bitmap.createBitmap(1, 1, drawable.getOpacity() != -1 ? Bitmap.Config.ARGB_8888 : Bitmap.Config.RGB_565);
        } else {
            bitmapCreateBitmap = Bitmap.createBitmap(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), drawable.getOpacity() != -1 ? Bitmap.Config.ARGB_8888 : Bitmap.Config.RGB_565);
        }
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
        drawable.draw(canvas);
        return bitmapCreateBitmap;
    }

    public static byte[] drawable2Bytes(@Nullable Drawable drawable) {
        if (drawable == null) {
            return null;
        }
        return bitmap2Bytes(drawable2Bitmap(drawable));
    }

    public static byte[] drawable2Bytes(Drawable drawable, Bitmap.CompressFormat compressFormat, int i11) {
        if (drawable == null) {
            return null;
        }
        return bitmap2Bytes(drawable2Bitmap(drawable), compressFormat, i11);
    }

    public static Bitmap getBitmap(int i11) {
        Drawable drawable = androidx.core.content.b.getDrawable(Utils.getApp(), i11);
        if (drawable == null) {
            return null;
        }
        Canvas canvas = new Canvas();
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
        canvas.setBitmap(bitmapCreateBitmap);
        drawable.setBounds(0, 0, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
        drawable.draw(canvas);
        return bitmapCreateBitmap;
    }

    public static Bitmap getBitmap(int i11, int i12, int i13) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        Resources resources = Utils.getApp().getResources();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeResource(resources, i11, options);
        options.inSampleSize = calculateInSampleSize(options, i12, i13);
        options.inJustDecodeBounds = false;
        return BitmapFactory.decodeResource(resources, i11, options);
    }

    public static Bitmap getBitmap(File file) {
        if (file == null) {
            return null;
        }
        return BitmapFactory.decodeFile(file.getAbsolutePath());
    }

    public static Bitmap getBitmap(File file, int i11, int i12) {
        if (file == null) {
            return null;
        }
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(file.getAbsolutePath(), options);
        options.inSampleSize = calculateInSampleSize(options, i11, i12);
        options.inJustDecodeBounds = false;
        return BitmapFactory.decodeFile(file.getAbsolutePath(), options);
    }

    public static Bitmap getBitmap(FileDescriptor fileDescriptor) {
        if (fileDescriptor == null) {
            return null;
        }
        return BitmapFactory.decodeFileDescriptor(fileDescriptor);
    }

    public static Bitmap getBitmap(FileDescriptor fileDescriptor, int i11, int i12) {
        if (fileDescriptor == null) {
            return null;
        }
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFileDescriptor(fileDescriptor, null, options);
        options.inSampleSize = calculateInSampleSize(options, i11, i12);
        options.inJustDecodeBounds = false;
        return BitmapFactory.decodeFileDescriptor(fileDescriptor, null, options);
    }

    public static Bitmap getBitmap(InputStream inputStream) {
        if (inputStream == null) {
            return null;
        }
        return BitmapFactory.decodeStream(inputStream);
    }

    public static Bitmap getBitmap(InputStream inputStream, int i11, int i12) {
        if (inputStream == null) {
            return null;
        }
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeStream(inputStream, null, options);
        options.inSampleSize = calculateInSampleSize(options, i11, i12);
        options.inJustDecodeBounds = false;
        return BitmapFactory.decodeStream(inputStream, null, options);
    }

    public static Bitmap getBitmap(String str) {
        if (UtilsBridge.isSpace(str)) {
            return null;
        }
        return BitmapFactory.decodeFile(str);
    }

    public static Bitmap getBitmap(String str, int i11, int i12) {
        if (UtilsBridge.isSpace(str)) {
            return null;
        }
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(str, options);
        options.inSampleSize = calculateInSampleSize(options, i11, i12);
        options.inJustDecodeBounds = false;
        return BitmapFactory.decodeFile(str, options);
    }

    public static Bitmap getBitmap(byte[] bArr, int i11) {
        if (bArr.length == 0) {
            return null;
        }
        return BitmapFactory.decodeByteArray(bArr, i11, bArr.length);
    }

    public static Bitmap getBitmap(byte[] bArr, int i11, int i12, int i13) {
        if (bArr.length == 0) {
            return null;
        }
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeByteArray(bArr, i11, bArr.length, options);
        options.inSampleSize = calculateInSampleSize(options, i12, i13);
        options.inJustDecodeBounds = false;
        return BitmapFactory.decodeByteArray(bArr, i11, bArr.length, options);
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x001d -> B:37:0x0032). Please report as a decompilation issue!!! */
    public static ImageType getImageType(File file) throws Throwable {
        FileInputStream fileInputStream;
        FileInputStream fileInputStream2 = null;
        try {
            try {
                if (file == null) {
                    return null;
                }
                try {
                    fileInputStream = new FileInputStream(file);
                    try {
                        ImageType imageType = getImageType(fileInputStream);
                        if (imageType == null) {
                            fileInputStream.close();
                            return null;
                        }
                        try {
                            fileInputStream.close();
                        } catch (IOException e11) {
                            e11.printStackTrace();
                        }
                        return imageType;
                    } catch (IOException e12) {
                        e = e12;
                        e.printStackTrace();
                        if (fileInputStream != null) {
                            fileInputStream.close();
                        }
                    }
                } catch (IOException e13) {
                    e = e13;
                    fileInputStream = null;
                } catch (Throwable th2) {
                    th = th2;
                    if (fileInputStream2 != null) {
                        try {
                            fileInputStream2.close();
                        } catch (IOException e14) {
                            e14.printStackTrace();
                        }
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                fileInputStream2 = fileInputStream;
            }
        } catch (IOException e15) {
            e15.printStackTrace();
        }
    }

    private static ImageType getImageType(InputStream inputStream) {
        if (inputStream == null) {
            return null;
        }
        try {
            byte[] bArr = new byte[12];
            if (inputStream.read(bArr) != -1) {
                return getImageType(bArr);
            }
            return null;
        } catch (IOException e11) {
            e11.printStackTrace();
            return null;
        }
    }

    public static ImageType getImageType(String str) {
        return getImageType(UtilsBridge.getFileByPath(str));
    }

    private static ImageType getImageType(byte[] bArr) {
        String upperCase = UtilsBridge.bytes2HexString(bArr).toUpperCase();
        if (upperCase.contains("FFD8FF")) {
            return ImageType.TYPE_JPG;
        }
        if (upperCase.contains("89504E47")) {
            return ImageType.TYPE_PNG;
        }
        if (upperCase.contains("47494638")) {
            return ImageType.TYPE_GIF;
        }
        if (upperCase.contains("49492A00") || upperCase.contains("4D4D002A")) {
            return ImageType.TYPE_TIFF;
        }
        if (upperCase.contains("424D")) {
            return ImageType.TYPE_BMP;
        }
        if (upperCase.startsWith("52494646") && upperCase.endsWith("57454250")) {
            return ImageType.TYPE_WEBP;
        }
        return (upperCase.contains("00000100") || upperCase.contains("00000200")) ? ImageType.TYPE_ICO : ImageType.TYPE_UNKNOWN;
    }

    public static int[] getSize(File file) {
        if (file == null) {
            return new int[]{0, 0};
        }
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(file.getAbsolutePath(), options);
        return new int[]{options.outWidth, options.outHeight};
    }

    public static int[] getSize(String str) {
        return getSize(UtilsBridge.getFileByPath(str));
    }

    private static boolean isBMP(byte[] bArr) {
        return bArr.length >= 2 && bArr[0] == 66 && bArr[1] == 77;
    }

    private static boolean isEmptyBitmap(Bitmap bitmap) {
        return bitmap == null || bitmap.getWidth() == 0 || bitmap.getHeight() == 0;
    }

    private static boolean isGIF(byte[] bArr) {
        if (bArr.length < 6 || bArr[0] != 71 || bArr[1] != 73 || bArr[2] != 70 || bArr[3] != 56) {
            return false;
        }
        byte b11 = bArr[4];
        return (b11 == 55 || b11 == 57) && bArr[5] == 97;
    }

    public static boolean isImage(File file) {
        if (file == null || !file.exists()) {
            return false;
        }
        return isImage(file.getPath());
    }

    public static boolean isImage(String str) {
        try {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeFile(str, options);
            return options.outWidth > 0 && options.outHeight > 0;
        } catch (Exception unused) {
            return false;
        }
    }

    private static boolean isJPEG(byte[] bArr) {
        return bArr.length >= 2 && bArr[0] == -1 && bArr[1] == -40;
    }

    private static boolean isPNG(byte[] bArr) {
        return bArr.length >= 8 && bArr[0] == -119 && bArr[1] == 80 && bArr[2] == 78 && bArr[3] == 71 && bArr[4] == 13 && bArr[5] == 10 && bArr[6] == 26 && bArr[7] == 10;
    }

    public static boolean save(Bitmap bitmap, File file, Bitmap.CompressFormat compressFormat) {
        return save(bitmap, file, compressFormat, 100, false);
    }

    public static boolean save(Bitmap bitmap, File file, Bitmap.CompressFormat compressFormat, int i11) {
        return save(bitmap, file, compressFormat, i11, false);
    }

    public static boolean save(Bitmap bitmap, File file, Bitmap.CompressFormat compressFormat, int i11, boolean z10) throws Throwable {
        boolean zCompress = false;
        if (isEmptyBitmap(bitmap)) {
            Log.e("ImageUtils", "bitmap is empty.");
            return false;
        }
        if (bitmap.isRecycled()) {
            Log.e("ImageUtils", "bitmap is recycled.");
            return false;
        }
        if (!UtilsBridge.createFileByDeleteOldFile(file)) {
            Log.e("ImageUtils", "create or delete file <" + file + "> failed.");
            return false;
        }
        BufferedOutputStream bufferedOutputStream = null;
        try {
            try {
                try {
                    BufferedOutputStream bufferedOutputStream2 = new BufferedOutputStream(new FileOutputStream(file));
                    try {
                        zCompress = bitmap.compress(compressFormat, i11, bufferedOutputStream2);
                        if (z10 && !bitmap.isRecycled()) {
                            bitmap.recycle();
                        }
                        bufferedOutputStream2.close();
                    } catch (IOException e11) {
                        e = e11;
                        bufferedOutputStream = bufferedOutputStream2;
                        e.printStackTrace();
                        if (bufferedOutputStream != null) {
                            bufferedOutputStream.close();
                        }
                        return zCompress;
                    } catch (Throwable th2) {
                        th = th2;
                        bufferedOutputStream = bufferedOutputStream2;
                        if (bufferedOutputStream != null) {
                            try {
                                bufferedOutputStream.close();
                            } catch (IOException e12) {
                                e12.printStackTrace();
                            }
                        }
                        throw th;
                    }
                } catch (IOException e13) {
                    e = e13;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (IOException e14) {
            e14.printStackTrace();
        }
        return zCompress;
    }

    public static boolean save(Bitmap bitmap, File file, Bitmap.CompressFormat compressFormat, boolean z10) {
        return save(bitmap, file, compressFormat, 100, z10);
    }

    public static boolean save(Bitmap bitmap, String str, Bitmap.CompressFormat compressFormat) {
        return save(bitmap, str, compressFormat, 100, false);
    }

    public static boolean save(Bitmap bitmap, String str, Bitmap.CompressFormat compressFormat, int i11) {
        return save(bitmap, UtilsBridge.getFileByPath(str), compressFormat, i11, false);
    }

    public static boolean save(Bitmap bitmap, String str, Bitmap.CompressFormat compressFormat, int i11, boolean z10) {
        return save(bitmap, UtilsBridge.getFileByPath(str), compressFormat, i11, z10);
    }

    public static boolean save(Bitmap bitmap, String str, Bitmap.CompressFormat compressFormat, boolean z10) {
        return save(bitmap, str, compressFormat, 100, z10);
    }

    @Nullable
    public static File save2Album(Bitmap bitmap, Bitmap.CompressFormat compressFormat) {
        return save2Album(bitmap, "", compressFormat, 100, false);
    }

    @Nullable
    public static File save2Album(Bitmap bitmap, Bitmap.CompressFormat compressFormat, int i11) {
        return save2Album(bitmap, "", compressFormat, i11, false);
    }

    @Nullable
    public static File save2Album(Bitmap bitmap, Bitmap.CompressFormat compressFormat, int i11, boolean z10) {
        return save2Album(bitmap, "", compressFormat, i11, z10);
    }

    @Nullable
    public static File save2Album(Bitmap bitmap, Bitmap.CompressFormat compressFormat, boolean z10) {
        return save2Album(bitmap, "", compressFormat, 100, z10);
    }

    @Nullable
    public static File save2Album(Bitmap bitmap, String str, Bitmap.CompressFormat compressFormat) {
        return save2Album(bitmap, str, compressFormat, 100, false);
    }

    @Nullable
    public static File save2Album(Bitmap bitmap, String str, Bitmap.CompressFormat compressFormat, int i11) {
        return save2Album(bitmap, str, compressFormat, i11, false);
    }

    /* JADX WARN: Code duplicated, block: B:62:0x012e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Nullable
    public static File save2Album(Bitmap bitmap, String str, Bitmap.CompressFormat compressFormat, int i11, boolean z10) throws Throwable {
        OutputStream outputStreamOpenOutputStream;
        if (TextUtils.isEmpty(str)) {
            str = Utils.getApp().getPackageName();
        }
        String str2 = System.currentTimeMillis() + "_" + i11 + "." + (Bitmap.CompressFormat.JPEG.equals(compressFormat) ? "JPG" : compressFormat.name());
        OutputStream outputStream = null;
        if (Build.VERSION.SDK_INT < 29) {
            if (!UtilsBridge.isGranted("android.permission.WRITE_EXTERNAL_STORAGE")) {
                Log.e("ImageUtils", "save to album need storage permission");
                return null;
            }
            File file = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DCIM), str + "/" + str2);
            if (!save(bitmap, file, compressFormat, i11, z10)) {
                return null;
            }
            UtilsBridge.notifySystemToScan(file);
            return file;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("_display_name", str2);
        contentValues.put("mime_type", ShareConstant.SHARE_TYPE_IMAGE);
        Uri uri = Environment.getExternalStorageState().equals("mounted") ? MediaStore.Images.Media.EXTERNAL_CONTENT_URI : MediaStore.Images.Media.INTERNAL_CONTENT_URI;
        contentValues.put("relative_path", Environment.DIRECTORY_DCIM + "/" + str);
        contentValues.put("is_pending", (Integer) 1);
        Uri uriInsert = Utils.getApp().getContentResolver().insert(uri, contentValues);
        if (uriInsert == null) {
            return null;
        }
        try {
            outputStreamOpenOutputStream = Utils.getApp().getContentResolver().openOutputStream(uriInsert);
            try {
                try {
                    bitmap.compress(compressFormat, i11, outputStreamOpenOutputStream);
                    contentValues.clear();
                    contentValues.put("is_pending", (Integer) 0);
                    Utils.getApp().getContentResolver().update(uriInsert, contentValues, null, null);
                    File fileUri2File = UtilsBridge.uri2File(uriInsert);
                    if (outputStreamOpenOutputStream != null) {
                        try {
                            outputStreamOpenOutputStream.close();
                        } catch (IOException e11) {
                            e11.printStackTrace();
                        }
                    }
                    return fileUri2File;
                } catch (Exception e12) {
                    e = e12;
                    Utils.getApp().getContentResolver().delete(uriInsert, null, null);
                    e.printStackTrace();
                    if (outputStreamOpenOutputStream != null) {
                        try {
                            outputStreamOpenOutputStream.close();
                        } catch (IOException e13) {
                            e13.printStackTrace();
                        }
                    }
                    return null;
                }
            } catch (Throwable th2) {
                th = th2;
                outputStream = outputStreamOpenOutputStream;
                if (outputStream != null) {
                    try {
                        outputStream.close();
                    } catch (IOException e14) {
                        e14.printStackTrace();
                    }
                }
                throw th;
            }
        } catch (Exception e15) {
            e = e15;
            outputStreamOpenOutputStream = null;
        } catch (Throwable th3) {
            th = th3;
            if (outputStream != null) {
                outputStream.close();
            }
            throw th;
        }
    }

    @Nullable
    public static File save2Album(Bitmap bitmap, String str, Bitmap.CompressFormat compressFormat, boolean z10) {
        return save2Album(bitmap, str, compressFormat, 100, z10);
    }

    public static Bitmap view2Bitmap(View view) {
        Bitmap bitmapCreateBitmap;
        if (view == null) {
            return null;
        }
        boolean zIsDrawingCacheEnabled = view.isDrawingCacheEnabled();
        boolean zWillNotCacheDrawing = view.willNotCacheDrawing();
        view.setDrawingCacheEnabled(true);
        view.setWillNotCacheDrawing(false);
        Bitmap drawingCache = view.getDrawingCache();
        if (drawingCache == null || drawingCache.isRecycled()) {
            view.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
            view.layout(0, 0, view.getMeasuredWidth(), view.getMeasuredHeight());
            view.buildDrawingCache();
            Bitmap drawingCache2 = view.getDrawingCache();
            if (drawingCache2 == null || drawingCache2.isRecycled()) {
                bitmapCreateBitmap = Bitmap.createBitmap(view.getMeasuredWidth(), view.getMeasuredHeight(), Bitmap.Config.RGB_565);
                view.draw(new Canvas(bitmapCreateBitmap));
            } else {
                bitmapCreateBitmap = Bitmap.createBitmap(drawingCache2);
            }
        } else {
            bitmapCreateBitmap = Bitmap.createBitmap(drawingCache);
        }
        view.setWillNotCacheDrawing(zWillNotCacheDrawing);
        view.setDrawingCacheEnabled(zIsDrawingCacheEnabled);
        return bitmapCreateBitmap;
    }
}
