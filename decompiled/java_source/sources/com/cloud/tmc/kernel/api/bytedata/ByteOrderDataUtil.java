package com.cloud.tmc.kernel.api.bytedata;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class ByteOrderDataUtil {
    static final int BYTE_127 = 127;
    static final int BYTE_2 = 2;
    static final int BYTE_4 = 4;
    static final int BYTE_8 = 8;
    private static ByteArrayPools.ByteArray2Pool BYTE_ARRAY_2_POOL = new ByteArrayPools.ByteArray2Pool();
    private static ByteArrayPools.ByteArray4Pool BYTE_ARRAY_4_POOL = new ByteArrayPools.ByteArray4Pool();
    private static ByteArrayPools.ByteArray8Pool BYTE_ARRAY_8_POOL = new ByteArrayPools.ByteArray8Pool();
    private static ByteArrayPools.ByteArray127Pool BYTE_ARRAY_127_POOL = new ByteArrayPools.ByteArray127Pool();

    public static boolean readBoolean(BufferedInputStream bufferedInputStream) throws IOException {
        return bufferedInputStream.read() > 0;
    }

    public static boolean readBoolean2(BufferedInputStream bufferedInputStream) throws IOException {
        return readByte(bufferedInputStream) > 0;
    }

    public static byte readByte(BufferedInputStream bufferedInputStream) throws IOException {
        int i11 = bufferedInputStream.read();
        if (i11 != -1) {
            return (byte) i11;
        }
        throw new IOException("end of the stream has been reached");
    }

    public static int readBytes(BufferedInputStream bufferedInputStream, byte[] bArr) throws IOException {
        int i11 = bufferedInputStream.read(bArr);
        if (i11 != -1) {
            return i11;
        }
        throw new IOException("end of the stream has been reached, expect length " + bArr.length + " but got " + i11);
    }

    public static int readBytes(BufferedInputStream bufferedInputStream, byte[] bArr, int i11, int i12) throws IOException {
        int i13 = bufferedInputStream.read(bArr, i11, i12);
        if (i13 != -1) {
            return i13;
        }
        throw new IOException("end of the stream has been reached, expect count " + i12 + " but got " + i13);
    }

    public static double readDouble(BufferedInputStream bufferedInputStream) throws IOException {
        byte[] bArrObtain = BYTE_ARRAY_8_POOL.obtain();
        readBytes(bufferedInputStream, bArrObtain);
        double d11 = ByteOrderValues.getDouble(bArrObtain);
        BYTE_ARRAY_8_POOL.free(bArrObtain);
        return d11;
    }

    public static float readFloat(BufferedInputStream bufferedInputStream) throws IOException {
        byte[] bArrObtain = BYTE_ARRAY_4_POOL.obtain();
        readBytes(bufferedInputStream, bArrObtain);
        float f11 = ByteOrderValues.getFloat(bArrObtain);
        BYTE_ARRAY_4_POOL.free(bArrObtain);
        return f11;
    }

    public static int readInt(BufferedInputStream bufferedInputStream) throws IOException {
        byte[] bArrObtain = BYTE_ARRAY_4_POOL.obtain();
        readBytes(bufferedInputStream, bArrObtain);
        int i11 = ByteOrderValues.getInt(bArrObtain);
        BYTE_ARRAY_4_POOL.free(bArrObtain);
        return i11;
    }

    public static long readLong(BufferedInputStream bufferedInputStream) throws IOException {
        byte[] bArrObtain = BYTE_ARRAY_8_POOL.obtain();
        readBytes(bufferedInputStream, bArrObtain);
        long j11 = ByteOrderValues.getLong(bArrObtain);
        BYTE_ARRAY_8_POOL.free(bArrObtain);
        return j11;
    }

    public static short readShort(BufferedInputStream bufferedInputStream) throws IOException {
        byte[] bArrObtain = BYTE_ARRAY_2_POOL.obtain();
        readBytes(bufferedInputStream, bArrObtain);
        short s11 = ByteOrderValues.getShort(bArrObtain);
        BYTE_ARRAY_2_POOL.free(bArrObtain);
        return s11;
    }

    public static String readString(BufferedInputStream bufferedInputStream) throws IOException {
        int i11 = bufferedInputStream.read();
        if (i11 == 0) {
            return null;
        }
        if (i11 > 127) {
            byte[] bArr = new byte[i11];
            bufferedInputStream.read(bArr);
            return new String(bArr, "utf-8");
        }
        byte[] bArrObtain = BYTE_ARRAY_127_POOL.obtain();
        bufferedInputStream.read(bArrObtain, 0, i11);
        String str = new String(bArrObtain, 0, i11, "utf-8");
        BYTE_ARRAY_127_POOL.free(bArrObtain);
        return str;
    }

    public static String readString2(BufferedInputStream bufferedInputStream) throws IOException {
        String str;
        int i11 = readInt(bufferedInputStream);
        if (i11 < 0) {
            return null;
        }
        if (i11 == 0) {
            return "";
        }
        if (i11 > 127) {
            synchronized (ByteOrderDataUtil.class) {
                byte[] bArr = new byte[i11];
                readBytes(bufferedInputStream, bArr);
                str = new String(bArr, "utf-8");
            }
            return str;
        }
        byte[] bArrObtain = BYTE_ARRAY_127_POOL.obtain();
        readBytes(bufferedInputStream, bArrObtain, 0, i11);
        String str2 = new String(bArrObtain, 0, i11, "utf-8");
        BYTE_ARRAY_127_POOL.free(bArrObtain);
        return str2;
    }

    public static String[] readStringArray(BufferedInputStream bufferedInputStream) throws IOException {
        int i11 = bufferedInputStream.read();
        if (i11 == 0) {
            return null;
        }
        String[] strArr = new String[i11];
        for (int i12 = 0; i12 < i11; i12++) {
            strArr[i12] = readString(bufferedInputStream);
        }
        return strArr;
    }

    public static String[] readStringArray2(BufferedInputStream bufferedInputStream) throws IOException {
        int i11 = readInt(bufferedInputStream);
        if (i11 < 0) {
            return null;
        }
        if (i11 == 0) {
            return new String[0];
        }
        String[] strArr = new String[i11];
        for (int i12 = 0; i12 < i11; i12++) {
            strArr[i12] = readString2(bufferedInputStream);
        }
        return strArr;
    }

    public static List<String> readStringList(BufferedInputStream bufferedInputStream) throws IOException {
        int i11 = bufferedInputStream.read();
        if (i11 <= 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList(i11);
        for (int i12 = 0; i12 < i11; i12++) {
            arrayList.add(readString(bufferedInputStream));
        }
        return arrayList;
    }

    public static List<String> readStringList2(BufferedInputStream bufferedInputStream) throws IOException {
        int i11 = readInt(bufferedInputStream);
        if (i11 < 0) {
            return null;
        }
        if (i11 == 0) {
            return new ArrayList(0);
        }
        ArrayList arrayList = new ArrayList(i11);
        for (int i12 = 0; i12 < i11; i12++) {
            arrayList.add(readString2(bufferedInputStream));
        }
        return arrayList;
    }

    public static void writeBoolean(BufferedOutputStream bufferedOutputStream, boolean z10) throws IOException {
        bufferedOutputStream.write(z10 ? 1 : 0);
    }

    public static void writeBoolean2(BufferedOutputStream bufferedOutputStream, boolean z10) throws IOException {
        writeByte(bufferedOutputStream, z10 ? (byte) 1 : (byte) 0);
    }

    public static void writeByte(BufferedOutputStream bufferedOutputStream, byte b11) throws IOException {
        bufferedOutputStream.write(b11);
    }

    public static void writeDouble(BufferedOutputStream bufferedOutputStream, double d11) throws IOException {
        byte[] bArrObtain = BYTE_ARRAY_8_POOL.obtain();
        ByteOrderValues.putDouble(d11, bArrObtain);
        bufferedOutputStream.write(bArrObtain);
        BYTE_ARRAY_8_POOL.free(bArrObtain);
    }

    public static void writeFloat(BufferedOutputStream bufferedOutputStream, float f11) throws IOException {
        byte[] bArrObtain = BYTE_ARRAY_4_POOL.obtain();
        ByteOrderValues.putFloat(f11, bArrObtain);
        bufferedOutputStream.write(bArrObtain);
        BYTE_ARRAY_4_POOL.free(bArrObtain);
    }

    public static void writeInt(BufferedOutputStream bufferedOutputStream, int i11) throws IOException {
        byte[] bArrObtain = BYTE_ARRAY_4_POOL.obtain();
        ByteOrderValues.putInt(i11, bArrObtain);
        BYTE_ARRAY_4_POOL.free(bArrObtain);
        bufferedOutputStream.write(bArrObtain);
    }

    public static void writeLong(BufferedOutputStream bufferedOutputStream, long j11) throws IOException {
        byte[] bArrObtain = BYTE_ARRAY_8_POOL.obtain();
        ByteOrderValues.putLong(j11, bArrObtain);
        bufferedOutputStream.write(bArrObtain);
        BYTE_ARRAY_8_POOL.free(bArrObtain);
    }

    public static void writeShort(BufferedOutputStream bufferedOutputStream, short s11) throws IOException {
        byte[] bArrObtain = BYTE_ARRAY_2_POOL.obtain();
        ByteOrderValues.putShort(s11, bArrObtain);
        bufferedOutputStream.write(bArrObtain);
        BYTE_ARRAY_2_POOL.free(bArrObtain);
    }

    public static void writeString(BufferedOutputStream bufferedOutputStream, String str) throws IOException {
        if (str == null || str.length() == 0) {
            bufferedOutputStream.write(0);
            return;
        }
        byte[] bytes = str.getBytes();
        bufferedOutputStream.write(bytes.length);
        bufferedOutputStream.write(bytes);
    }

    public static void writeString2(BufferedOutputStream bufferedOutputStream, String str) throws IOException {
        if (str == null) {
            writeInt(bufferedOutputStream, -1);
        } else {
            if (str.length() == 0) {
                writeInt(bufferedOutputStream, 0);
                return;
            }
            byte[] bytes = str.getBytes();
            writeInt(bufferedOutputStream, bytes.length);
            bufferedOutputStream.write(bytes);
        }
    }

    public static void writeStringArray(BufferedOutputStream bufferedOutputStream, String[] strArr) throws IOException {
        if (strArr == null || strArr.length == 0) {
            bufferedOutputStream.write(0);
            return;
        }
        bufferedOutputStream.write(strArr.length);
        for (String str : strArr) {
            writeString(bufferedOutputStream, str);
        }
    }

    public static void writeStringArray2(BufferedOutputStream bufferedOutputStream, String[] strArr) throws IOException {
        if (strArr == null) {
            writeInt(bufferedOutputStream, -1);
            return;
        }
        if (strArr.length == 0) {
            writeInt(bufferedOutputStream, 0);
            return;
        }
        writeInt(bufferedOutputStream, strArr.length);
        for (String str : strArr) {
            writeString2(bufferedOutputStream, str);
        }
    }

    public static void writeStringList(BufferedOutputStream bufferedOutputStream, List<String> list) throws IOException {
        if (list == null || list.isEmpty()) {
            bufferedOutputStream.write(0);
            return;
        }
        bufferedOutputStream.write(list.size());
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            writeString(bufferedOutputStream, it.next());
        }
    }

    public static void writeStringList2(BufferedOutputStream bufferedOutputStream, List<String> list) throws IOException {
        if (list == null) {
            writeInt(bufferedOutputStream, -1);
            return;
        }
        if (list.isEmpty()) {
            writeInt(bufferedOutputStream, 0);
            return;
        }
        writeInt(bufferedOutputStream, list.size());
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            writeString2(bufferedOutputStream, it.next());
        }
    }
}
