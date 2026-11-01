package com.cloud.tmc.miniutils.util;

import android.annotation.SuppressLint;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.support.v4.media.session.PlaybackStateCompat;
import android.view.View;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public final class ConvertUtils {
    private static final int BUFFER_SIZE = 8192;
    private static final char[] HEX_DIGITS_UPPER = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
    private static final char[] HEX_DIGITS_LOWER = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    private ConvertUtils() {
        throw new UnsupportedOperationException("u can't instantiate me...");
    }

    public static byte[] bitmap2Bytes(Bitmap bitmap) {
        return UtilsBridge.bitmap2Bytes(bitmap);
    }

    public static byte[] bitmap2Bytes(Bitmap bitmap, Bitmap.CompressFormat compressFormat, int i11) {
        return UtilsBridge.bitmap2Bytes(bitmap, compressFormat, i11);
    }

    public static Drawable bitmap2Drawable(Bitmap bitmap) {
        return UtilsBridge.bitmap2Drawable(bitmap);
    }

    public static byte[] bits2Bytes(String str) {
        int length = str.length() % 8;
        int length2 = str.length() / 8;
        if (length != 0) {
            while (length < 8) {
                str = "0" + str;
                length++;
            }
            length2++;
        }
        byte[] bArr = new byte[length2];
        for (int i11 = 0; i11 < length2; i11++) {
            for (int i12 = 0; i12 < 8; i12++) {
                byte b11 = (byte) (bArr[i11] << 1);
                bArr[i11] = b11;
                bArr[i11] = (byte) (b11 | (str.charAt((i11 * 8) + i12) - '0'));
            }
        }
        return bArr;
    }

    @SuppressLint({"DefaultLocale"})
    public static String byte2FitMemorySize(long j11) {
        return byte2FitMemorySize(j11, 3);
    }

    @SuppressLint({"DefaultLocale"})
    public static String byte2FitMemorySize(long j11, int i11) {
        if (i11 < 0) {
            throw new IllegalArgumentException("precision shouldn't be less than zero!");
        }
        if (j11 < 0) {
            throw new IllegalArgumentException("byteSize shouldn't be less than zero!");
        }
        if (j11 < 1024) {
            return String.format("%." + i11 + "fB", Double.valueOf(j11));
        }
        if (j11 < PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED) {
            return String.format("%." + i11 + "fKB", Double.valueOf(j11 / 1024.0d));
        }
        if (j11 < 1073741824) {
            return String.format("%." + i11 + "fMB", Double.valueOf(j11 / 1048576.0d));
        }
        return String.format("%." + i11 + "fGB", Double.valueOf(j11 / 1.073741824E9d));
    }

    public static Bitmap bytes2Bitmap(byte[] bArr) {
        return UtilsBridge.bytes2Bitmap(bArr);
    }

    public static String bytes2Bits(byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            return "";
        }
        StringBuilder sb2 = new StringBuilder();
        for (byte b11 : bArr) {
            for (int i11 = 7; i11 >= 0; i11--) {
                sb2.append(((b11 >> i11) & 1) == 0 ? '0' : '1');
            }
        }
        return sb2.toString();
    }

    public static Drawable bytes2Drawable(byte[] bArr) {
        return UtilsBridge.bytes2Drawable(bArr);
    }

    public static String bytes2HexString(byte[] bArr) {
        return bytes2HexString(bArr, true);
    }

    public static String bytes2HexString(byte[] bArr, boolean z10) {
        if (bArr == null) {
            return "";
        }
        char[] cArr = z10 ? HEX_DIGITS_UPPER : HEX_DIGITS_LOWER;
        int length = bArr.length;
        if (length <= 0) {
            return "";
        }
        char[] cArr2 = new char[length << 1];
        int i11 = 0;
        for (byte b11 : bArr) {
            int i12 = i11 + 1;
            cArr2[i11] = cArr[(b11 >> 4) & 15];
            i11 += 2;
            cArr2[i12] = cArr[b11 & 15];
        }
        return new String(cArr2);
    }

    public static JSONObject bytes2JSONObject(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        try {
            return new JSONObject(new String(bArr));
        } catch (Exception e11) {
            e11.printStackTrace();
            return null;
        }
    }

    public static String bytes2String(byte[] bArr) {
        return bytes2String(bArr, "");
    }

    public static String bytes2String(byte[] bArr, String str) {
        if (bArr == null) {
            return null;
        }
        try {
            return new String(bArr, getSafeCharset(str));
        } catch (UnsupportedEncodingException e11) {
            e11.printStackTrace();
            return new String(bArr);
        }
    }

    public static int dp2px(float f11) {
        return UtilsBridge.dp2px(f11);
    }

    public static Bitmap drawable2Bitmap(Drawable drawable) {
        return UtilsBridge.drawable2Bitmap(drawable);
    }

    public static byte[] drawable2Bytes(Drawable drawable) {
        return UtilsBridge.drawable2Bytes(drawable);
    }

    public static byte[] drawable2Bytes(Drawable drawable, Bitmap.CompressFormat compressFormat, int i11) {
        return UtilsBridge.drawable2Bytes(drawable, compressFormat, i11);
    }

    private static String getSafeCharset(String str) {
        return (UtilsBridge.isSpace(str) || !Charset.isSupported(str)) ? "UTF-8" : str;
    }

    private static int hex2Dec(char c11) {
        if (c11 >= '0' && c11 <= '9') {
            return c11 - '0';
        }
        if (c11 < 'A' || c11 > 'F') {
            throw new IllegalArgumentException();
        }
        return c11 - '7';
    }

    public static byte[] hexString2Bytes(String str) {
        if (UtilsBridge.isSpace(str)) {
            return new byte[0];
        }
        int length = str.length();
        if (length % 2 != 0) {
            str = "0" + str;
            length++;
        }
        char[] charArray = str.toUpperCase().toCharArray();
        byte[] bArr = new byte[length >> 1];
        for (int i11 = 0; i11 < length; i11 += 2) {
            bArr[i11 >> 1] = (byte) ((hex2Dec(charArray[i11]) << 4) | hex2Dec(charArray[i11 + 1]));
        }
        return bArr;
    }

    public static int hexString2Int(String str) {
        return Integer.parseInt(str, 16);
    }

    public static ByteArrayOutputStream input2OutputStream(InputStream inputStream) {
        try {
            if (inputStream == null) {
                return null;
            }
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                try {
                    byte[] bArr = new byte[8192];
                    while (true) {
                        int i11 = inputStream.read(bArr, 0, 8192);
                        if (i11 == -1) {
                            break;
                        }
                        byteArrayOutputStream.write(bArr, 0, i11);
                    }
                    byteArrayOutputStream.close();
                    try {
                        inputStream.close();
                    } catch (IOException e11) {
                        e11.printStackTrace();
                    }
                    return byteArrayOutputStream;
                } catch (Throwable th2) {
                    try {
                        byteArrayOutputStream.close();
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
                return null;
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

    public static byte[] inputStream2Bytes(InputStream inputStream) {
        if (inputStream == null) {
            return new byte[0];
        }
        ByteArrayOutputStream byteArrayOutputStreamInput2OutputStream = input2OutputStream(inputStream);
        return byteArrayOutputStreamInput2OutputStream == null ? new byte[0] : byteArrayOutputStreamInput2OutputStream.toByteArray();
    }

    public static List<String> inputStream2Lines(InputStream inputStream) {
        return inputStream2Lines(inputStream, "");
    }

    public static List<String> inputStream2Lines(InputStream inputStream, String str) throws Throwable {
        BufferedReader bufferedReader = null;
        try {
            try {
                ArrayList arrayList = new ArrayList();
                BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(inputStream, getSafeCharset(str)));
                while (true) {
                    try {
                        String line = bufferedReader2.readLine();
                        if (line != null) {
                            arrayList.add(line);
                        } else {
                            try {
                                break;
                            } catch (IOException e11) {
                                e11.printStackTrace();
                            }
                        }
                    } catch (IOException e12) {
                        e = e12;
                        bufferedReader = bufferedReader2;
                        e.printStackTrace();
                        ArrayList arrayList2 = new ArrayList();
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (IOException e13) {
                                e13.printStackTrace();
                            }
                        }
                        return arrayList2;
                    } catch (Throwable th2) {
                        th = th2;
                        bufferedReader = bufferedReader2;
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (IOException e14) {
                                e14.printStackTrace();
                            }
                        }
                        throw th;
                    }
                }
                bufferedReader2.close();
                return arrayList;
            } catch (IOException e15) {
                e = e15;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public static String int2HexString(int i11) {
        return Integer.toHexString(i11);
    }

    public static int px2dp(float f11) {
        return UtilsBridge.px2dp(f11);
    }

    public static int px2sp(float f11) {
        return UtilsBridge.px2sp(f11);
    }

    public static int sp2px(float f11) {
        return UtilsBridge.sp2px(f11);
    }

    public static Bitmap view2Bitmap(View view) {
        return UtilsBridge.view2Bitmap(view);
    }
}
