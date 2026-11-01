package com.transsion.compressor.image;

import android.content.Context;
import android.graphics.BitmapFactory;
import android.util.Log;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes5.dex */
public abstract class j {
    public static int[] a(File file) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        options.inSampleSize = 1;
        BitmapFactory.decodeFile(file.getAbsolutePath(), options);
        return new int[]{options.outWidth, options.outHeight};
    }

    private static boolean b(File file) {
        boolean z10 = true;
        if (file == null || file.exists()) {
            return true;
        }
        File parentFile = file.getParentFile();
        if (parentFile != null && !parentFile.exists()) {
            return b(parentFile);
        }
        if (!file.mkdirs() && !file.exists()) {
            z10 = false;
        }
        if (!z10) {
            Log.e("FileUtil", "createFileDir fail " + file);
        }
        return z10;
    }

    public static void c(File file) {
        b(file);
        if (file.exists() && file.isDirectory()) {
            file.delete();
        }
        if (file.exists()) {
            return;
        }
        try {
            if (file.createNewFile()) {
                return;
            }
            f("create file failure --> file.path = " + file.getAbsolutePath());
        } catch (IOException e11) {
            e11.printStackTrace();
        }
    }

    public static void d(File file) {
        File[] fileArrListFiles;
        if (file.exists() && file.isDirectory() && (fileArrListFiles = file.listFiles()) != null) {
            for (File file2 : fileArrListFiles) {
                if (file2 != null) {
                    if (file2.isFile()) {
                        file2.delete();
                    } else if (file2.isDirectory()) {
                        d(file2);
                    }
                }
            }
        }
    }

    public static File e(Context context) {
        File externalCacheDir = context.getExternalCacheDir();
        if (externalCacheDir == null) {
            f("default disk cache dir is null");
            return null;
        }
        File file = new File(externalCacheDir, "tran_disk_cache");
        if (file.mkdirs() || (file.exists() && file.isDirectory())) {
            return file;
        }
        return null;
    }

    public static void f(String str) {
        if (Log.isLoggable("tran_c", 5)) {
            Log.w("tran_c", str);
        }
    }

    public static byte[] g(InputStream inputStream) {
        if (inputStream == null) {
            return new byte[0];
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[4096];
        while (true) {
            try {
                try {
                    int i11 = inputStream.read(bArr, 0, 4096);
                    if (i11 != -1) {
                        byteArrayOutputStream.write(bArr, 0, i11);
                    } else {
                        try {
                            break;
                        } catch (IOException unused) {
                        }
                    }
                } catch (Throwable th2) {
                    try {
                        byteArrayOutputStream.close();
                    } catch (IOException unused2) {
                    }
                    throw th2;
                }
            } catch (Exception unused3) {
                byte[] bArr2 = new byte[0];
                try {
                    byteArrayOutputStream.close();
                } catch (IOException unused4) {
                }
                return bArr2;
            }
        }
        byteArrayOutputStream.close();
        return byteArrayOutputStream.toByteArray();
    }
}
