package com.bytedance.sdk.component.utils;

import android.content.Context;
import android.text.TextUtils;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class Jcg {

    /* JADX INFO: renamed from: com.bytedance.sdk.component.utils.Jcg$1, reason: invalid class name */
    static class AnonymousClass1 implements Comparator<File> {
        @Override // java.util.Comparator
        public /* bridge */ /* synthetic */ int compare(File file, File file2) {
            throw null;
        }
    }

    private static final class Sj implements Comparator<File> {
        private Sj() {
        }

        /* synthetic */ Sj(AnonymousClass1 anonymousClass1) {
            this();
        }

        private int Sj(long j11, long j12) {
            if (j11 < j12) {
                return -1;
            }
            return j11 == j12 ? 0 : 1;
        }

        @Override // java.util.Comparator
        /* JADX INFO: renamed from: Sj, reason: merged with bridge method [inline-methods] */
        public int compare(File file, File file2) {
            return Sj(file.lastModified(), file2.lastModified());
        }
    }

    public static byte[] EjP(File file) {
        FileInputStream fileInputStream;
        if (file != null && file.isFile() && file.exists() && file.canRead() && file.length() > 0) {
            try {
                long length = file.length();
                Long lValueOf = Long.valueOf(length);
                fileInputStream = new FileInputStream(file);
                try {
                    byte[] bArr = new byte[lValueOf.intValue()];
                    if (fileInputStream.read(bArr) == length) {
                        try {
                            fileInputStream.close();
                        } catch (Throwable unused) {
                        }
                        return bArr;
                    }
                } catch (Throwable unused2) {
                    if (fileInputStream != null) {
                    }
                    return null;
                }
            } catch (Throwable unused3) {
                fileInputStream = null;
            }
            try {
                fileInputStream.close();
            } catch (Throwable unused4) {
            }
        }
        return null;
    }

    private static void HiB(File file) throws IOException {
        RandomAccessFile randomAccessFile;
        long length = file.length();
        if (length == 0) {
            vS(file);
            return;
        }
        try {
            randomAccessFile = new RandomAccessFile(file, "rwd");
            long j11 = length - 1;
            try {
                randomAccessFile.seek(j11);
                byte b11 = randomAccessFile.readByte();
                randomAccessFile.seek(j11);
                randomAccessFile.write(b11);
                randomAccessFile.close();
            } catch (Throwable unused) {
                if (randomAccessFile != null) {
                    randomAccessFile.close();
                }
            }
        } catch (Throwable unused2) {
            randomAccessFile = null;
        }
    }

    public static File Sj(Context context, boolean z10, String str) {
        String absolutePath = context.getCacheDir().getAbsolutePath();
        if (z10) {
            str = Sj(context) + "-" + str;
        }
        if (absolutePath != null) {
            String str2 = File.separator;
            if (!absolutePath.endsWith(str2)) {
                absolutePath = absolutePath + str2;
            }
        }
        File file = new File(absolutePath + str);
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    public static File Sj(Context context, boolean z10, String str, String str2) {
        String strSP = sP(context);
        if (z10) {
            str = Sj(context) + "-" + str;
        }
        if (strSP != null) {
            String str3 = File.separator;
            if (!strSP.endsWith(str3)) {
                strSP = strSP + str3;
            }
        }
        String str4 = strSP + str;
        File file = new File(str4);
        if (!file.exists()) {
            file.mkdirs();
        }
        return new File(str4, str2);
    }

    public static String Sj(Context context) {
        String strSj = zR.Sj(context);
        return (TextUtils.isEmpty(strSj) || !strSj.contains(":")) ? strSj : strSj.replace(":", "-");
    }

    public static List<File> Sj(File file) {
        LinkedList linkedList = new LinkedList();
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles == null) {
            return linkedList;
        }
        List<File> listAsList = Arrays.asList(fileArrListFiles);
        Collections.sort(listAsList, new Sj(null));
        return listAsList;
    }

    public static void TKC(File file) {
        if (file == null || !file.exists()) {
            return;
        }
        if (file.isFile()) {
            try {
                file.delete();
                return;
            } catch (Throwable unused) {
                return;
            }
        }
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles != null && fileArrListFiles.length > 0) {
            for (File file2 : fileArrListFiles) {
                if (file2.isDirectory()) {
                    TKC(file2);
                } else {
                    try {
                        file2.delete();
                    } catch (Throwable unused2) {
                    }
                }
            }
        }
        try {
            file.delete();
        } catch (Throwable unused3) {
        }
    }

    private static String sP(Context context) {
        File cacheDir;
        if (context == null || (cacheDir = context.getCacheDir()) == null) {
            return null;
        }
        return cacheDir.getPath();
    }

    public static void sP(File file) throws IOException {
        if (file.exists()) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (file.setLastModified(jCurrentTimeMillis)) {
                return;
            }
            HiB(file);
            if (file.lastModified() < jCurrentTimeMillis) {
                new Date(file.lastModified()).toString();
                file.getAbsolutePath();
            }
        }
    }

    private static void vS(File file) throws IOException {
        if (!file.delete() || !file.createNewFile()) {
            throw new IOException("Error recreate zero-size file ".concat(String.valueOf(file)));
        }
    }
}
