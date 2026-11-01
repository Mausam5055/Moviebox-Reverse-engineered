package mp;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes6.dex */
public class a {
    public static Bitmap a(Bitmap bitmap) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        bitmap.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
        for (int i11 = 90; byteArrayOutputStream.toByteArray().length / 1024 > 100 && i11 > 50; i11 -= 10) {
            byteArrayOutputStream.reset();
            bitmap.compress(Bitmap.CompressFormat.PNG, i11, byteArrayOutputStream);
        }
        return BitmapFactory.decodeStream(new ByteArrayInputStream(byteArrayOutputStream.toByteArray()), null, null);
    }

    /* JADX WARN: Code duplicated, block: B:15:0x002f  */
    /* JADX WARN: Code duplicated, block: B:18:0x0038 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:20:0x003a  */
    public static Bitmap b(String str) {
        int i11;
        float f11;
        Bitmap bitmapDecodeFile;
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(str, options);
        options.inJustDecodeBounds = false;
        int i12 = options.outWidth;
        int i13 = options.outHeight;
        if (i12 <= i13 || i12 <= 480.0f) {
            if (i12 >= i13 || i13 <= 800.0f) {
                i11 = 1;
            } else {
                f11 = i13 / 800.0f;
            }
            options.inSampleSize = i11 > 0 ? i11 : 1;
            bitmapDecodeFile = BitmapFactory.decodeFile(str, options);
            if (bitmapDecodeFile == null) {
                return null;
            }
            return a(bitmapDecodeFile);
        }
        f11 = i12 / 480.0f;
        i11 = (int) f11;
        options.inSampleSize = i11 > 0 ? i11 : 1;
        bitmapDecodeFile = BitmapFactory.decodeFile(str, options);
        if (bitmapDecodeFile == null) {
            return null;
        }
        return a(bitmapDecodeFile);
    }

    public static void c(Bitmap bitmap, File file, int i11) throws Throwable {
        FileOutputStream fileOutputStream = null;
        try {
            try {
                try {
                    FileOutputStream fileOutputStream2 = new FileOutputStream(file);
                    try {
                        try {
                            bitmap.compress(Bitmap.CompressFormat.JPEG, i11, fileOutputStream2);
                            try {
                                fileOutputStream2.flush();
                            } catch (IOException e11) {
                                e11.printStackTrace();
                            }
                            fileOutputStream2.close();
                        } catch (FileNotFoundException e12) {
                            e = e12;
                            fileOutputStream = fileOutputStream2;
                            e.printStackTrace();
                            if (fileOutputStream != null) {
                                fileOutputStream.close();
                            }
                            bitmap.recycle();
                        }
                        bitmap.recycle();
                    } catch (Throwable th2) {
                        th = th2;
                        fileOutputStream = fileOutputStream2;
                        if (fileOutputStream != null) {
                            try {
                                fileOutputStream.close();
                            } catch (IOException e13) {
                                e13.printStackTrace();
                            }
                        }
                        throw th;
                    }
                } catch (IOException e14) {
                    e14.printStackTrace();
                }
            } catch (FileNotFoundException e15) {
                e = e15;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }
}
