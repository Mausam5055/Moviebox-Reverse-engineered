package com.cloud.tmc.worker.utils;

import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import android.os.Build;
import android.util.Log;
import androidx.annotation.NonNull;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.RandomAccessFile;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class FileIOUtils {
    private static int sBufferSize = 524288;

    public interface OnProgressUpdateListener {
        void onProgressUpdate(double d11);
    }

    private FileIOUtils() {
        throw new UnsupportedOperationException("u can't instantiate me...");
    }

    public static boolean createOrExistsDir(File file) {
        return file != null && (!file.exists() ? !file.mkdirs() : !file.isDirectory());
    }

    public static boolean createOrExistsDir(String str) {
        return createOrExistsDir(getFileByPath(str));
    }

    public static boolean createOrExistsFile(File file) {
        if (file == null) {
            return false;
        }
        if (file.exists()) {
            return file.isFile();
        }
        if (!createOrExistsDir(file.getParentFile())) {
            return false;
        }
        try {
            return file.createNewFile();
        } catch (IOException e11) {
            e11.printStackTrace();
            return false;
        }
    }

    public static boolean createOrExistsFile(String str) {
        return createOrExistsFile(getFileByPath(str));
    }

    public static File getFileByPath(String str) {
        if (isSpace(str)) {
            return null;
        }
        return new File(str);
    }

    public static boolean isFileExists(File file) {
        if (file == null) {
            return false;
        }
        if (file.exists()) {
            return true;
        }
        return isFileExists(file.getAbsolutePath());
    }

    public static boolean isFileExists(String str) {
        File fileByPath = getFileByPath(str);
        if (fileByPath == null) {
            return false;
        }
        if (fileByPath.exists()) {
            return true;
        }
        return isFileExistsApi29(str);
    }

    private static boolean isFileExistsApi29(String str) {
        if (Build.VERSION.SDK_INT >= 29) {
            try {
                AssetFileDescriptor assetFileDescriptorOpenAssetFileDescriptor = Utils.app.getContentResolver().openAssetFileDescriptor(Uri.parse(str), CampaignEx.JSON_KEY_AD_R);
                if (assetFileDescriptorOpenAssetFileDescriptor == null) {
                    return false;
                }
                try {
                    assetFileDescriptorOpenAssetFileDescriptor.close();
                    return true;
                } catch (IOException unused) {
                    return true;
                }
            } catch (FileNotFoundException unused2) {
            }
        }
        return false;
    }

    public static boolean isSpace(String str) {
        if (str == null) {
            return true;
        }
        int length = str.length();
        for (int i11 = 0; i11 < length; i11++) {
            if (!Character.isWhitespace(str.charAt(i11))) {
                return false;
            }
        }
        return true;
    }

    @NonNull
    public static byte[] readFile2BytesByChannel(File file) {
        if (!isFileExists(file)) {
            return new byte[0];
        }
        try {
            FileChannel channel = new RandomAccessFile(file, CampaignEx.JSON_KEY_AD_R).getChannel();
            try {
                if (channel == null) {
                    Log.e("FileIOUtils", "fc is null.");
                    byte[] bArr = new byte[0];
                    if (channel != null) {
                        channel.close();
                    }
                    return bArr;
                }
                ByteBuffer byteBufferAllocate = ByteBuffer.allocate((int) channel.size());
                while (channel.read(byteBufferAllocate) > 0) {
                }
                byte[] bArrArray = byteBufferAllocate.array();
                channel.close();
                return bArrArray;
            } catch (Throwable th2) {
                if (channel != null) {
                    try {
                        channel.close();
                    } catch (Throwable th3) {
                        th2.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        } catch (IOException e11) {
            e11.printStackTrace();
            return new byte[0];
        }
    }

    public static byte[] readFile2BytesByChannel(String str) {
        return readFile2BytesByChannel(getFileByPath(str));
    }

    @NonNull
    public static byte[] readFile2BytesByMap(File file) {
        if (!isFileExists(file)) {
            return new byte[0];
        }
        try {
            FileChannel channel = new RandomAccessFile(file, CampaignEx.JSON_KEY_AD_R).getChannel();
            try {
                if (channel == null) {
                    Log.e("FileIOUtils", "fc is null.");
                    byte[] bArr = new byte[0];
                    if (channel != null) {
                        channel.close();
                    }
                    return bArr;
                }
                int size = (int) channel.size();
                byte[] bArr2 = new byte[size];
                channel.map(FileChannel.MapMode.READ_ONLY, 0L, size).load().get(bArr2, 0, size);
                channel.close();
                return bArr2;
            } catch (Throwable th2) {
                if (channel != null) {
                    try {
                        channel.close();
                    } catch (Throwable th3) {
                        th2.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        } catch (IOException e11) {
            e11.printStackTrace();
            return new byte[0];
        }
    }

    @NonNull
    public static byte[] readFile2BytesByMap(String str) {
        return readFile2BytesByMap(getFileByPath(str));
    }

    @NonNull
    public static byte[] readFile2BytesByStream(File file) {
        return readFile2BytesByStream(file, (OnProgressUpdateListener) null);
    }

    @NonNull
    public static byte[] readFile2BytesByStream(File file, OnProgressUpdateListener onProgressUpdateListener) {
        if (!isFileExists(file)) {
            return new byte[0];
        }
        try {
            BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(file), sBufferSize);
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                try {
                    byte[] bArr = new byte[sBufferSize];
                    if (onProgressUpdateListener != null) {
                        double dAvailable = bufferedInputStream.available();
                        onProgressUpdateListener.onProgressUpdate(0.0d);
                        int i11 = 0;
                        while (true) {
                            int i12 = bufferedInputStream.read(bArr, 0, sBufferSize);
                            if (i12 == -1) {
                                break;
                            }
                            byteArrayOutputStream.write(bArr, 0, i12);
                            i11 += i12;
                            onProgressUpdateListener.onProgressUpdate(((double) i11) / dAvailable);
                        }
                    } else {
                        while (true) {
                            int i13 = bufferedInputStream.read(bArr, 0, sBufferSize);
                            if (i13 == -1) {
                                break;
                            }
                            byteArrayOutputStream.write(bArr, 0, i13);
                        }
                    }
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    byteArrayOutputStream.close();
                    bufferedInputStream.close();
                    return byteArray;
                } catch (Throwable th2) {
                    try {
                        byteArrayOutputStream.close();
                    } catch (Throwable th3) {
                        th2.addSuppressed(th3);
                    }
                    throw th2;
                }
            } catch (Throwable th4) {
                try {
                    bufferedInputStream.close();
                } catch (Throwable th5) {
                    th4.addSuppressed(th5);
                }
                throw th4;
            }
        } catch (IOException e11) {
            e11.printStackTrace();
            return new byte[0];
        }
    }

    @NonNull
    public static byte[] readFile2BytesByStream(String str) {
        return readFile2BytesByStream(getFileByPath(str), (OnProgressUpdateListener) null);
    }

    @NonNull
    public static byte[] readFile2BytesByStream(String str, OnProgressUpdateListener onProgressUpdateListener) {
        return readFile2BytesByStream(getFileByPath(str), onProgressUpdateListener);
    }

    public static List<String> readFile2List(File file) {
        return readFile2List(file, 0, Integer.MAX_VALUE, (String) null);
    }

    public static List<String> readFile2List(File file, int i11, int i12) {
        return readFile2List(file, i11, i12, (String) null);
    }

    /* JADX WARN: Code duplicated, block: B:51:0x006e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public static List<String> readFile2List(File file, int i11, int i12, String str) throws Throwable {
        BufferedReader bufferedReader;
        BufferedReader bufferedReader2 = null;
        if (!isFileExists(file) || i11 > i12) {
            return null;
        }
        try {
            ArrayList arrayList = new ArrayList();
            int i13 = 1;
            bufferedReader = isSpace(str) ? new BufferedReader(new InputStreamReader(new FileInputStream(file))) : new BufferedReader(new InputStreamReader(new FileInputStream(file), str));
            while (true) {
                try {
                    try {
                        String line = bufferedReader.readLine();
                        if (line == null || i13 > i12) {
                            break;
                            break;
                        }
                        if (i11 <= i13 && i13 <= i12) {
                            arrayList.add(line);
                        }
                        i13++;
                    } catch (IOException e11) {
                        e = e11;
                        e.printStackTrace();
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (IOException e12) {
                                e12.printStackTrace();
                            }
                        }
                        return null;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    bufferedReader2 = bufferedReader;
                    if (bufferedReader2 != null) {
                        try {
                            bufferedReader2.close();
                        } catch (IOException e13) {
                            e13.printStackTrace();
                        }
                    }
                    throw th;
                }
            }
            try {
                bufferedReader.close();
            } catch (IOException e14) {
                e14.printStackTrace();
            }
            return arrayList;
        } catch (IOException e15) {
            e = e15;
            bufferedReader = null;
        } catch (Throwable th3) {
            th = th3;
            if (bufferedReader2 != null) {
                bufferedReader2.close();
            }
            throw th;
        }
    }

    public static List<String> readFile2List(File file, String str) {
        return readFile2List(file, 0, Integer.MAX_VALUE, str);
    }

    public static List<String> readFile2List(String str) {
        return readFile2List(getFileByPath(str), (String) null);
    }

    public static List<String> readFile2List(String str, int i11, int i12) {
        return readFile2List(getFileByPath(str), i11, i12, (String) null);
    }

    public static List<String> readFile2List(String str, int i11, int i12, String str2) {
        return readFile2List(getFileByPath(str), i11, i12, str2);
    }

    public static List<String> readFile2List(String str, String str2) {
        return readFile2List(getFileByPath(str), str2);
    }

    @NonNull
    public static String readFile2String(File file) {
        return readFile2String(file, (String) null);
    }

    @NonNull
    public static String readFile2String(File file, String str) {
        byte[] file2BytesByStream = readFile2BytesByStream(file);
        if (file2BytesByStream.length == 0) {
            return "";
        }
        if (isSpace(str)) {
            return new String(file2BytesByStream);
        }
        try {
            return new String(file2BytesByStream, str);
        } catch (UnsupportedEncodingException e11) {
            e11.printStackTrace();
            return "";
        }
    }

    @NonNull
    public static String readFile2String(String str) {
        return readFile2String(getFileByPath(str), (String) null);
    }

    @NonNull
    public static String readFile2String(String str, String str2) {
        return readFile2String(getFileByPath(str), str2);
    }

    public static void setBufferSize(int i11) {
        sBufferSize = i11;
    }

    public static boolean writeFileFromBytesByChannel(File file, byte[] bArr, boolean z10) {
        return writeFileFromBytesByChannel(file, bArr, false, z10);
    }

    public static boolean writeFileFromBytesByChannel(File file, byte[] bArr, boolean z10, boolean z11) {
        if (bArr == null) {
            Log.e("FileIOUtils", "bytes is null.");
            return false;
        }
        if (!createOrExistsFile(file)) {
            Log.e("FileIOUtils", "create file <" + file + "> failed.");
            return false;
        }
        try {
            FileChannel channel = new FileOutputStream(file, z10).getChannel();
            try {
                if (channel == null) {
                    Log.e("FileIOUtils", "fc is null.");
                    if (channel != null) {
                        channel.close();
                    }
                    return false;
                }
                channel.position(channel.size());
                channel.write(ByteBuffer.wrap(bArr));
                if (z11) {
                    channel.force(true);
                }
                channel.close();
                return true;
            } catch (Throwable th2) {
                if (channel != null) {
                    try {
                        channel.close();
                    } catch (Throwable th3) {
                        th2.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        } catch (IOException e11) {
            e11.printStackTrace();
            return false;
        }
    }

    public static boolean writeFileFromBytesByChannel(String str, byte[] bArr, boolean z10) {
        return writeFileFromBytesByChannel(getFileByPath(str), bArr, false, z10);
    }

    public static boolean writeFileFromBytesByChannel(String str, byte[] bArr, boolean z10, boolean z11) {
        return writeFileFromBytesByChannel(getFileByPath(str), bArr, z10, z11);
    }

    public static boolean writeFileFromBytesByMap(File file, byte[] bArr, boolean z10) {
        return writeFileFromBytesByMap(file, bArr, false, z10);
    }

    public static boolean writeFileFromBytesByMap(File file, byte[] bArr, boolean z10, boolean z11) {
        if (bArr == null || !createOrExistsFile(file)) {
            Log.e("FileIOUtils", "create file <" + file + "> failed.");
            return false;
        }
        try {
            FileChannel channel = new FileOutputStream(file, z10).getChannel();
            try {
                if (channel == null) {
                    Log.e("FileIOUtils", "fc is null.");
                    if (channel != null) {
                        channel.close();
                    }
                    return false;
                }
                MappedByteBuffer map = channel.map(FileChannel.MapMode.READ_WRITE, channel.size(), bArr.length);
                map.put(bArr);
                if (z11) {
                    map.force();
                }
                channel.close();
                return true;
            } catch (Throwable th2) {
                if (channel != null) {
                    try {
                        channel.close();
                    } catch (Throwable th3) {
                        th2.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        } catch (IOException e11) {
            e11.printStackTrace();
            return false;
        }
    }

    public static boolean writeFileFromBytesByMap(String str, byte[] bArr, boolean z10) {
        return writeFileFromBytesByMap(str, bArr, false, z10);
    }

    public static boolean writeFileFromBytesByMap(String str, byte[] bArr, boolean z10, boolean z11) {
        return writeFileFromBytesByMap(getFileByPath(str), bArr, z10, z11);
    }

    public static boolean writeFileFromBytesByStream(File file, byte[] bArr) {
        return writeFileFromBytesByStream(file, bArr, false, (OnProgressUpdateListener) null);
    }

    public static boolean writeFileFromBytesByStream(File file, byte[] bArr, OnProgressUpdateListener onProgressUpdateListener) {
        return writeFileFromBytesByStream(file, bArr, false, onProgressUpdateListener);
    }

    public static boolean writeFileFromBytesByStream(File file, byte[] bArr, boolean z10) {
        return writeFileFromBytesByStream(file, bArr, z10, (OnProgressUpdateListener) null);
    }

    public static boolean writeFileFromBytesByStream(File file, byte[] bArr, boolean z10, OnProgressUpdateListener onProgressUpdateListener) {
        if (bArr == null) {
            return false;
        }
        return writeFileFromIS(file, new ByteArrayInputStream(bArr), z10, onProgressUpdateListener);
    }

    public static boolean writeFileFromBytesByStream(String str, byte[] bArr) {
        return writeFileFromBytesByStream(getFileByPath(str), bArr, false, (OnProgressUpdateListener) null);
    }

    public static boolean writeFileFromBytesByStream(String str, byte[] bArr, OnProgressUpdateListener onProgressUpdateListener) {
        return writeFileFromBytesByStream(getFileByPath(str), bArr, false, onProgressUpdateListener);
    }

    public static boolean writeFileFromBytesByStream(String str, byte[] bArr, boolean z10) {
        return writeFileFromBytesByStream(getFileByPath(str), bArr, z10, (OnProgressUpdateListener) null);
    }

    public static boolean writeFileFromBytesByStream(String str, byte[] bArr, boolean z10, OnProgressUpdateListener onProgressUpdateListener) {
        return writeFileFromBytesByStream(getFileByPath(str), bArr, z10, onProgressUpdateListener);
    }

    public static boolean writeFileFromIS(File file, InputStream inputStream) {
        return writeFileFromIS(file, inputStream, false, (OnProgressUpdateListener) null);
    }

    public static boolean writeFileFromIS(File file, InputStream inputStream, OnProgressUpdateListener onProgressUpdateListener) {
        return writeFileFromIS(file, inputStream, false, onProgressUpdateListener);
    }

    public static boolean writeFileFromIS(File file, InputStream inputStream, boolean z10) {
        return writeFileFromIS(file, inputStream, z10, (OnProgressUpdateListener) null);
    }

    public static boolean writeFileFromIS(File file, InputStream inputStream, boolean z10, OnProgressUpdateListener onProgressUpdateListener) {
        if (inputStream != null) {
            try {
                if (createOrExistsFile(file)) {
                    try {
                        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file, z10), sBufferSize);
                        try {
                            if (onProgressUpdateListener != null) {
                                double dAvailable = inputStream.available();
                                onProgressUpdateListener.onProgressUpdate(0.0d);
                                byte[] bArr = new byte[sBufferSize];
                                int i11 = 0;
                                while (true) {
                                    int i12 = inputStream.read(bArr);
                                    if (i12 == -1) {
                                        break;
                                    }
                                    bufferedOutputStream.write(bArr, 0, i12);
                                    i11 += i12;
                                    onProgressUpdateListener.onProgressUpdate(((double) i11) / dAvailable);
                                }
                            } else {
                                byte[] bArr2 = new byte[sBufferSize];
                                while (true) {
                                    int i13 = inputStream.read(bArr2);
                                    if (i13 == -1) {
                                        break;
                                    }
                                    bufferedOutputStream.write(bArr2, 0, i13);
                                }
                            }
                            bufferedOutputStream.close();
                            try {
                                inputStream.close();
                                return true;
                            } catch (IOException e11) {
                                e11.printStackTrace();
                                return true;
                            }
                        } catch (Throwable th2) {
                            try {
                                bufferedOutputStream.close();
                            } catch (Throwable th3) {
                                th2.addSuppressed(th3);
                            }
                            throw th2;
                        }
                    } catch (IOException e12) {
                        e12.printStackTrace();
                        try {
                            inputStream.close();
                        } catch (IOException e13) {
                            e13.printStackTrace();
                        }
                        return false;
                    }
                }
            } catch (Throwable th4) {
                try {
                    inputStream.close();
                } catch (IOException e14) {
                    e14.printStackTrace();
                }
                throw th4;
            }
        }
        Log.e("FileIOUtils", "create file <" + file + "> failed.");
        return false;
    }

    public static boolean writeFileFromIS(String str, InputStream inputStream) {
        return writeFileFromIS(getFileByPath(str), inputStream, false, (OnProgressUpdateListener) null);
    }

    public static boolean writeFileFromIS(String str, InputStream inputStream, OnProgressUpdateListener onProgressUpdateListener) {
        return writeFileFromIS(getFileByPath(str), inputStream, false, onProgressUpdateListener);
    }

    public static boolean writeFileFromIS(String str, InputStream inputStream, boolean z10) {
        return writeFileFromIS(getFileByPath(str), inputStream, z10, (OnProgressUpdateListener) null);
    }

    public static boolean writeFileFromIS(String str, InputStream inputStream, boolean z10, OnProgressUpdateListener onProgressUpdateListener) {
        return writeFileFromIS(getFileByPath(str), inputStream, z10, onProgressUpdateListener);
    }

    public static boolean writeFileFromString(File file, String str) {
        return writeFileFromString(file, str, false);
    }

    public static boolean writeFileFromString(File file, String str, boolean z10) {
        if (file != null && str != null) {
            if (!createOrExistsFile(file)) {
                Log.e("FileIOUtils", "create file <" + file + "> failed.");
                return false;
            }
            try {
                BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(file, z10));
                try {
                    bufferedWriter.write(str);
                    bufferedWriter.close();
                    return true;
                } catch (Throwable th2) {
                    try {
                        bufferedWriter.close();
                    } catch (Throwable th3) {
                        th2.addSuppressed(th3);
                    }
                    throw th2;
                }
            } catch (IOException e11) {
                e11.printStackTrace();
            }
        }
        return false;
    }

    public static boolean writeFileFromString(String str, String str2) {
        return writeFileFromString(getFileByPath(str), str2, false);
    }

    public static boolean writeFileFromString(String str, String str2, boolean z10) {
        return writeFileFromString(getFileByPath(str), str2, z10);
    }
}
