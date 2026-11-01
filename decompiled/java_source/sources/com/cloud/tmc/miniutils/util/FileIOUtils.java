package com.cloud.tmc.miniutils.util;

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
import java.util.Collections;
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

    @NonNull
    public static byte[] readFile2BytesByChannel(File file) {
        if (!UtilsBridge.isFileExists(file)) {
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

    @NonNull
    public static byte[] readFile2BytesByChannel(String str) {
        return readFile2BytesByChannel(UtilsBridge.getFileByPath(str));
    }

    @NonNull
    public static byte[] readFile2BytesByMap(File file) {
        if (!UtilsBridge.isFileExists(file)) {
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
        return readFile2BytesByMap(UtilsBridge.getFileByPath(str));
    }

    @NonNull
    public static byte[] readFile2BytesByStream(File file) {
        return readFile2BytesByStream(file, (OnProgressUpdateListener) null);
    }

    @NonNull
    public static byte[] readFile2BytesByStream(File file, OnProgressUpdateListener onProgressUpdateListener) {
        if (!UtilsBridge.isFileExists(file)) {
            return new byte[0];
        }
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(file), sBufferSize);
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
                    bufferedInputStream.close();
                    byteArrayOutputStream.close();
                    return byteArray;
                } catch (Throwable th2) {
                    try {
                        bufferedInputStream.close();
                    } catch (Throwable th3) {
                        th2.addSuppressed(th3);
                    }
                    throw th2;
                }
            } catch (Throwable th4) {
                try {
                    byteArrayOutputStream.close();
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
        return readFile2BytesByStream(UtilsBridge.getFileByPath(str), (OnProgressUpdateListener) null);
    }

    @NonNull
    public static byte[] readFile2BytesByStream(String str, OnProgressUpdateListener onProgressUpdateListener) {
        return readFile2BytesByStream(UtilsBridge.getFileByPath(str), onProgressUpdateListener);
    }

    @NonNull
    public static List<String> readFile2List(File file) {
        return readFile2List(file, 0, Integer.MAX_VALUE, (String) null);
    }

    @NonNull
    public static List<String> readFile2List(File file, int i11, int i12) {
        return readFile2List(file, i11, i12, (String) null);
    }

    @NonNull
    public static List<String> readFile2List(File file, int i11, int i12, String str) {
        if (UtilsBridge.isFileExists(file) && i11 <= i12) {
            BufferedReader bufferedReader = null;
            try {
                try {
                    ArrayList arrayList = new ArrayList();
                    int i13 = 1;
                    bufferedReader = UtilsBridge.isSpace(str) ? new BufferedReader(new InputStreamReader(new FileInputStream(file))) : new BufferedReader(new InputStreamReader(new FileInputStream(file), str));
                    while (true) {
                        String line = bufferedReader.readLine();
                        if (line == null || i13 > i12) {
                            break;
                            break;
                        }
                        if (i11 <= i13 && i13 <= i12) {
                            arrayList.add(line);
                        }
                        i13++;
                    }
                    try {
                        bufferedReader.close();
                    } catch (IOException e11) {
                        e11.printStackTrace();
                    }
                    return arrayList;
                } catch (Throwable th2) {
                    if (bufferedReader != null) {
                        try {
                            bufferedReader.close();
                        } catch (IOException e12) {
                            e12.printStackTrace();
                        }
                    }
                    throw th2;
                }
            } catch (IOException e13) {
                e13.printStackTrace();
                List<String> listEmptyList = Collections.emptyList();
                if (bufferedReader != null) {
                    try {
                        bufferedReader.close();
                    } catch (IOException e14) {
                        e14.printStackTrace();
                    }
                }
                return listEmptyList;
            }
        }
        return Collections.emptyList();
    }

    @NonNull
    public static List<String> readFile2List(File file, String str) {
        return readFile2List(file, 0, Integer.MAX_VALUE, str);
    }

    @NonNull
    public static List<String> readFile2List(String str) {
        return readFile2List(UtilsBridge.getFileByPath(str), (String) null);
    }

    @NonNull
    public static List<String> readFile2List(String str, int i11, int i12) {
        return readFile2List(UtilsBridge.getFileByPath(str), i11, i12, (String) null);
    }

    @NonNull
    public static List<String> readFile2List(String str, int i11, int i12, String str2) {
        return readFile2List(UtilsBridge.getFileByPath(str), i11, i12, str2);
    }

    @NonNull
    public static List<String> readFile2List(String str, String str2) {
        return readFile2List(UtilsBridge.getFileByPath(str), str2);
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
        if (UtilsBridge.isSpace(str)) {
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
        return readFile2String(UtilsBridge.getFileByPath(str), (String) null);
    }

    @NonNull
    public static String readFile2String(String str, String str2) {
        return readFile2String(UtilsBridge.getFileByPath(str), str2);
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
        if (!UtilsBridge.createOrExistsFile(file)) {
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
        return writeFileFromBytesByChannel(UtilsBridge.getFileByPath(str), bArr, false, z10);
    }

    public static boolean writeFileFromBytesByChannel(String str, byte[] bArr, boolean z10, boolean z11) {
        return writeFileFromBytesByChannel(UtilsBridge.getFileByPath(str), bArr, z10, z11);
    }

    public static boolean writeFileFromBytesByMap(File file, byte[] bArr, boolean z10) {
        return writeFileFromBytesByMap(file, bArr, false, z10);
    }

    public static boolean writeFileFromBytesByMap(File file, byte[] bArr, boolean z10, boolean z11) {
        if (bArr == null || !UtilsBridge.createOrExistsFile(file)) {
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
        return writeFileFromBytesByMap(UtilsBridge.getFileByPath(str), bArr, z10, z11);
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
        return writeFileFromBytesByStream(UtilsBridge.getFileByPath(str), bArr, false, (OnProgressUpdateListener) null);
    }

    public static boolean writeFileFromBytesByStream(String str, byte[] bArr, OnProgressUpdateListener onProgressUpdateListener) {
        return writeFileFromBytesByStream(UtilsBridge.getFileByPath(str), bArr, false, onProgressUpdateListener);
    }

    public static boolean writeFileFromBytesByStream(String str, byte[] bArr, boolean z10) {
        return writeFileFromBytesByStream(UtilsBridge.getFileByPath(str), bArr, z10, (OnProgressUpdateListener) null);
    }

    public static boolean writeFileFromBytesByStream(String str, byte[] bArr, boolean z10, OnProgressUpdateListener onProgressUpdateListener) {
        return writeFileFromBytesByStream(UtilsBridge.getFileByPath(str), bArr, z10, onProgressUpdateListener);
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
                if (UtilsBridge.createOrExistsFile(file)) {
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
        return writeFileFromIS(UtilsBridge.getFileByPath(str), inputStream, false, (OnProgressUpdateListener) null);
    }

    public static boolean writeFileFromIS(String str, InputStream inputStream, OnProgressUpdateListener onProgressUpdateListener) {
        return writeFileFromIS(UtilsBridge.getFileByPath(str), inputStream, false, onProgressUpdateListener);
    }

    public static boolean writeFileFromIS(String str, InputStream inputStream, boolean z10) {
        return writeFileFromIS(UtilsBridge.getFileByPath(str), inputStream, z10, (OnProgressUpdateListener) null);
    }

    public static boolean writeFileFromIS(String str, InputStream inputStream, boolean z10, OnProgressUpdateListener onProgressUpdateListener) {
        return writeFileFromIS(UtilsBridge.getFileByPath(str), inputStream, z10, onProgressUpdateListener);
    }

    public static boolean writeFileFromString(File file, String str) {
        return writeFileFromString(file, str, false);
    }

    public static boolean writeFileFromString(File file, String str, boolean z10) {
        if (file != null && str != null) {
            if (!UtilsBridge.createOrExistsFile(file)) {
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
        return writeFileFromString(UtilsBridge.getFileByPath(str), str2, false);
    }

    public static boolean writeFileFromString(String str, String str2, boolean z10) {
        return writeFileFromString(UtilsBridge.getFileByPath(str), str2, z10);
    }
}
