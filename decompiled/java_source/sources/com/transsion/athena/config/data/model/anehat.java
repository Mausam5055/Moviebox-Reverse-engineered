package com.transsion.athena.config.data.model;

import android.content.Context;
import android.os.Build;
import android.os.PowerManager;
import android.util.Log;
import androidx.core.util.j;
import com.cloud.tmc.integration.net.UrlKt;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.transsion.core.log.ObjectLogUtils;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Collection;
import java.util.Iterator;
import java.util.Locale;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class anehat {
    public static <E> int a(Collection<E> collection, j jVar) {
        int i11 = 0;
        if (a((Collection<?>) collection)) {
            return 0;
        }
        Iterator<E> it = collection.iterator();
        while (it.hasNext()) {
            if (jVar.a(it.next())) {
                i11++;
            }
        }
        return i11;
    }

    public static Boolean a(Context context, String str, boolean z10) throws IllegalArgumentException {
        try {
            Class<?> clsLoadClass = context.getClassLoader().loadClass("android.os.SystemProperties");
            return (Boolean) clsLoadClass.getMethod("getBoolean", String.class, Boolean.TYPE).invoke(clsLoadClass, str, Boolean.valueOf(z10));
        } catch (IllegalArgumentException e11) {
            throw e11;
        } catch (Exception unused) {
            return Boolean.valueOf(z10);
        }
    }

    public static Long a(Context context, String str, long j11) throws IllegalArgumentException {
        try {
            Class<?> clsLoadClass = context.getClassLoader().loadClass("android.os.SystemProperties");
            return (Long) clsLoadClass.getMethod("getLong", String.class, Long.TYPE).invoke(clsLoadClass, str, Long.valueOf(j11));
        } catch (IllegalArgumentException e11) {
            throw e11;
        } catch (Exception unused) {
            return Long.valueOf(j11);
        }
    }

    public static String a(InputStream inputStream) {
        try {
            StringBuilder sb2 = new StringBuilder();
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null) {
                    bufferedReader.close();
                    inputStream.close();
                    return sb2.toString();
                }
                sb2.append(line);
            }
        } catch (IOException e11) {
            ObjectLogUtils objectLogUtils = com.transsion.athena.taaneh.aethna.f42798a;
            com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e11));
            return null;
        }
    }

    public static String a(Collection<? extends Object> collection, String str) {
        StringBuilder sb2 = new StringBuilder();
        boolean z10 = true;
        for (Object obj : collection) {
            if (z10) {
                z10 = false;
            } else {
                sb2.append(str);
            }
            sb2.append(obj.toString());
        }
        return sb2.toString();
    }

    public static String a(byte[] bArr) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(bArr);
            byte[] bArrDigest = messageDigest.digest();
            StringBuilder sb2 = new StringBuilder();
            for (byte b11 : bArrDigest) {
                int i11 = b11 & 255;
                if (Integer.toHexString(i11).length() == 1) {
                    sb2.append("0");
                    sb2.append(Integer.toHexString(i11));
                } else {
                    sb2.append(Integer.toHexString(i11));
                }
            }
            return sb2.toString();
        } catch (NoSuchAlgorithmException unused) {
            return "";
        }
    }

    public static JSONObject a(Context context) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("model", Build.MODEL);
            jSONObject.put("brand", Build.BRAND);
            jSONObject.put("appver", String.valueOf(com.transsion.athena.taaneh.athena.i(context)));
            jSONObject.put("anver", Build.VERSION.RELEASE);
            jSONObject.put("apppkg", com.transsion.athena.taaneh.athena.h(context));
            jSONObject.put(UrlKt.KEY_MINI_GAID, com.transsion.athena.taaneh.anehat.a());
            jSONObject.put("mcc", com.transsion.athena.taaneh.athena.f(context));
            jSONObject.put("lang", Locale.getDefault().getLanguage());
            jSONObject.put("installer", com.transsion.athena.taaneh.athena.e(context));
        } catch (Exception e11) {
            com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e11));
        }
        return jSONObject;
    }

    public static void a(StringBuilder sb2, Object obj) {
        if (sb2.length() == 0) {
            sb2.append(obj);
        } else {
            sb2.append(",");
            sb2.append(obj);
        }
    }

    public static void a(JSONObject jSONObject, JSONObject jSONObject2) throws JSONException {
        if (jSONObject == null || jSONObject2 == null) {
            return;
        }
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            Object obj = jSONObject.get(next);
            if (!next.contains(UrlUtils.AND_MARK)) {
                jSONObject2.put(next, obj);
            } else if (!jSONObject2.has(next)) {
                jSONObject2.put(next, obj);
            } else if (next.endsWith("&add")) {
                jSONObject2.put(next, Long.parseLong(obj.toString()) + jSONObject2.getLong(next));
            } else if (next.endsWith("&append")) {
                Object objPut = jSONObject2.get(next);
                if (objPut instanceof JSONArray) {
                    ((JSONArray) objPut).put(obj);
                } else {
                    objPut = new JSONArray().put(objPut).put(obj);
                }
                jSONObject2.put(next, objPut);
            }
        }
    }

    public static boolean a(Collection<?> collection) {
        return collection == null || collection.isEmpty();
    }

    public static byte[] a(String str) {
        if (str.length() < 1) {
            return null;
        }
        byte[] bArr = new byte[str.length() / 2];
        for (int i11 = 0; i11 < str.length() / 2; i11++) {
            int i12 = i11 * 2;
            int i13 = i12 + 1;
            bArr[i11] = (byte) ((Integer.parseInt(str.substring(i12, i13), 16) * 16) + Integer.parseInt(str.substring(i13, i12 + 2), 16));
        }
        return bArr;
    }

    public static int b(Context context) {
        StringBuilder sb2 = new StringBuilder();
        try {
            String strE = com.transsion.athena.taaneh.athena.e(context);
            sb2.append(Build.MODEL);
            sb2.append(Build.BRAND);
            sb2.append(com.transsion.athena.taaneh.athena.i(context));
            sb2.append(Build.VERSION.RELEASE);
            sb2.append(com.transsion.athena.taaneh.athena.h(context));
            sb2.append(com.transsion.athena.taaneh.athena.f(context));
            sb2.append(Locale.getDefault().getLanguage());
            if (strE == null) {
                strE = "";
            }
            sb2.append(strE);
        } catch (Exception e11) {
            com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e11));
        }
        return sb2.toString().hashCode();
    }

    public static boolean b(Collection<?> collection) {
        return (collection == null || collection.isEmpty()) ? false : true;
    }

    public static byte[] b(byte[] bArr) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
            gZIPOutputStream.write(bArr);
            gZIPOutputStream.close();
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            byteArrayOutputStream.close();
            byteArrayOutputStream.reset();
            return byteArray;
        } catch (Exception e11) {
            ObjectLogUtils objectLogUtils = com.transsion.athena.taaneh.aethna.f42798a;
            com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e11));
            return null;
        }
    }

    public static String c(byte[] bArr) {
        if (bArr == null) {
            return "";
        }
        StringBuffer stringBuffer = new StringBuffer();
        for (byte b11 : bArr) {
            String hexString = Integer.toHexString(b11 & 255);
            if (hexString.length() == 1) {
                hexString = '0' + hexString;
            }
            stringBuffer.append(hexString.toUpperCase());
        }
        return stringBuffer.toString();
    }

    public static boolean c(Context context) {
        try {
            PowerManager powerManager = (PowerManager) context.getSystemService("power");
            return powerManager != null && powerManager.isScreenOn();
        } catch (Exception unused) {
            return false;
        }
    }

    /* JADX WARN: Code duplicated, block: B:38:0x0065 A[Catch: Exception -> 0x0069, TRY_LEAVE, TryCatch #2 {Exception -> 0x0069, blocks: (B:36:0x0060, B:38:0x0065), top: B:45:0x0060 }] */
    /* JADX WARN: Not initialized variable reg: 2, insn: 0x0027: MOVE (r0 I:??[OBJECT, ARRAY]) = (r2 I:??[OBJECT, ARRAY]), block:B:15:0x0027 */
    public static byte[] d(byte[] bArr) throws Throwable {
        GZIPInputStream gZIPInputStream;
        GZIPInputStream gZIPInputStream2;
        GZIPInputStream gZIPInputStream3 = null;
        if (bArr == null || bArr.length == 0) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            try {
                gZIPInputStream = new GZIPInputStream(new ByteArrayInputStream(bArr));
                try {
                    byte[] bArr2 = new byte[1024];
                    while (true) {
                        int i11 = gZIPInputStream.read(bArr2);
                        if (i11 < 0) {
                            break;
                        }
                        byteArrayOutputStream.write(bArr2, 0, i11);
                    }
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    try {
                        byteArrayOutputStream.close();
                        gZIPInputStream.close();
                    } catch (Exception e11) {
                        ObjectLogUtils objectLogUtils = com.transsion.athena.taaneh.aethna.f42798a;
                        com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e11));
                    }
                    return byteArray;
                } catch (Exception e12) {
                    e = e12;
                    ObjectLogUtils objectLogUtils2 = com.transsion.athena.taaneh.aethna.f42798a;
                    com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e));
                    try {
                        byteArrayOutputStream.close();
                        if (gZIPInputStream != null) {
                            gZIPInputStream.close();
                        }
                    } catch (Exception e13) {
                        com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e13));
                    }
                    return null;
                }
            } catch (Throwable th2) {
                th = th2;
                gZIPInputStream3 = gZIPInputStream2;
                try {
                    byteArrayOutputStream.close();
                    if (gZIPInputStream3 != null) {
                        gZIPInputStream3.close();
                    }
                } catch (Exception e14) {
                    ObjectLogUtils objectLogUtils3 = com.transsion.athena.taaneh.aethna.f42798a;
                    com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e14));
                }
                throw th;
            }
        } catch (Exception e15) {
            e = e15;
            gZIPInputStream = null;
        } catch (Throwable th3) {
            th = th3;
            byteArrayOutputStream.close();
            if (gZIPInputStream3 != null) {
                gZIPInputStream3.close();
            }
            throw th;
        }
    }
}
