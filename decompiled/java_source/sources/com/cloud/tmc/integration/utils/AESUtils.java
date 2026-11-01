package com.cloud.tmc.integration.utils;

import android.text.TextUtils;
import com.cloud.tmc.integration.BuildConfig;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.nio.charset.Charset;
import java.security.SecureRandom;
import java.util.Arrays;
import javax.crypto.Cipher;
import javax.crypto.spec.GCMParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.CharsKt;
import kotlin.text.Charsets;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0015\n\u0002\u0010\u0012\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u0004H\u0007J\u0012\u0010\u0014\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0015\u001a\u00020\u0004H\u0007J\b\u0010\u0016\u001a\u00020\u0004H\u0002J\u0018\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u0019\u001a\u00020\u0007H\u0002J\b\u0010\u001a\u001a\u00020\u0004H\u0002J\u0012\u0010\u001b\u001a\u0004\u0018\u00010\u00042\b\u0010\u001c\u001a\u0004\u0018\u00010\u001dJ\u0010\u0010\u001e\u001a\u0004\u0018\u00010\u001d2\u0006\u0010\u001f\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u00020\u00048BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010R\u000e\u0010\u0011\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006 "}, d2 = {"Lcom/cloud/tmc/integration/utils/AESUtils;", "", "()V", "CHARSET", "", "DEFAULT_CIPHER_ALGORITHM", "GCM_IV_LENGTH", "", "GCM_TAG_LENGTH", "KEY_ALGORITHM", "VALUE_01", "VALUE_02", "VALUE_03", "VALUE_04", "bK3", "getBK3", "()Ljava/lang/String;", "key", "decrypt", "encrypted", "encrypt", "privateString", "garbleSalt", "get2PartSelfKey", "x", "y", "get4String", "parseByte2HexStr", "buf", "", "parseHexStr2Byte", "hexStr", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class AESUtils {
    private static final String CHARSET = "UTF8";
    private static final String DEFAULT_CIPHER_ALGORITHM = "AES/GCM/NoPadding";
    public static final int GCM_IV_LENGTH = 12;
    public static final int GCM_TAG_LENGTH = 16;
    private static final String KEY_ALGORITHM = "AES";
    private static final String VALUE_01 = "sOWGI8Lv";
    private static final String VALUE_02 = "FnvyH19r";
    private static final String VALUE_03 = "s2DytdII";
    private static final String VALUE_04 = "rUOL6ott";
    public static final AESUtils INSTANCE = new AESUtils();
    private static String key = "";

    private AESUtils() {
    }

    @JvmStatic
    public static final String encrypt(String privateString) {
        Intrinsics.h(privateString, "privateString");
        AESUtils aESUtils = INSTANCE;
        try {
            byte[] bytes = aESUtils.garbleSalt().getBytes(Charsets.UTF_8);
            Intrinsics.g(bytes, "this as java.lang.String).getBytes(charset)");
            byte[] bArr = new byte[12];
            new SecureRandom().nextBytes(bArr);
            SecretKeySpec secretKeySpec = new SecretKeySpec(bytes, KEY_ALGORITHM);
            Cipher cipher = Cipher.getInstance(DEFAULT_CIPHER_ALGORITHM);
            cipher.init(1, secretKeySpec, new GCMParameterSpec(128, bArr));
            Charset charsetForName = Charset.forName(CHARSET);
            Intrinsics.g(charsetForName, "forName(charsetName)");
            byte[] bytes2 = privateString.getBytes(charsetForName);
            Intrinsics.g(bytes2, "this as java.lang.String).getBytes(charset)");
            byte[] bArrDoFinal = cipher.doFinal(bytes2);
            byte[] bArr2 = new byte[bArrDoFinal.length + 12];
            System.arraycopy(bArr, 0, bArr2, 0, 12);
            System.arraycopy(bArrDoFinal, 0, bArr2, 12, bArrDoFinal.length);
            return aESUtils.parseByte2HexStr(bArr2);
        } catch (Exception e11) {
            e11.printStackTrace();
            return "";
        }
    }

    private final String garbleSalt() {
        if (TextUtils.isEmpty(key)) {
            key = VALUE_01 + get2PartSelfKey(1, 2) + getBK3() + get4String();
        }
        return key;
    }

    private final String get2PartSelfKey(int x10, int y10) {
        int i11 = x10 * y10;
        if (1 <= i11) {
            while (true) {
                int i12 = ((i12 % x10 == 0 && i12 % y10 == 0) || i12 == i11) ? 1 : i12 + 1;
            }
        }
        return VALUE_02;
    }

    private final String get4String() {
        return VALUE_04;
    }

    private final String getBK3() {
        return VALUE_03;
    }

    public final String decrypt(String encrypted) {
        Intrinsics.h(encrypted, "encrypted");
        try {
            byte[] bytes = garbleSalt().getBytes(Charsets.UTF_8);
            Intrinsics.g(bytes, "this as java.lang.String).getBytes(charset)");
            SecretKeySpec secretKeySpec = new SecretKeySpec(bytes, KEY_ALGORITHM);
            byte[] hexStr2Byte = parseHexStr2Byte(encrypted);
            byte[] bArrCopyOfRange = Arrays.copyOfRange(hexStr2Byte, 0, 12);
            Cipher cipher = Cipher.getInstance(DEFAULT_CIPHER_ALGORITHM);
            cipher.init(2, secretKeySpec, new GCMParameterSpec(128, bArrCopyOfRange));
            byte[] ciphertext = cipher.doFinal(hexStr2Byte, 12, hexStr2Byte != null ? hexStr2Byte.length : -12);
            Intrinsics.g(ciphertext, "ciphertext");
            Charset charsetForName = Charset.forName(CHARSET);
            Intrinsics.g(charsetForName, "forName(charsetName)");
            return new String(ciphertext, charsetForName);
        } catch (Exception e11) {
            e11.printStackTrace();
            return "";
        }
    }

    public final String parseByte2HexStr(byte[] buf) {
        if (buf == null) {
            return null;
        }
        StringBuffer stringBuffer = new StringBuffer();
        for (byte b11 : buf) {
            String string = Integer.toString(b11 & 255, CharsKt.a(16));
            Intrinsics.g(string, "toString(this, checkRadix(radix))");
            if (string.length() == 1) {
                string = "0" + string;
            }
            String upperCase = string.toUpperCase();
            Intrinsics.g(upperCase, "this as java.lang.String).toUpperCase()");
            stringBuffer.append(upperCase);
        }
        return stringBuffer.toString();
    }

    public final byte[] parseHexStr2Byte(String hexStr) {
        Intrinsics.h(hexStr, "hexStr");
        if (hexStr.length() < 1) {
            return null;
        }
        byte[] bArr = new byte[hexStr.length() / 2];
        int length = hexStr.length() / 2;
        for (int i11 = 0; i11 < length; i11++) {
            int i12 = i11 * 2;
            int i13 = i12 + 1;
            String strSubstring = hexStr.substring(i12, i13);
            Intrinsics.g(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
            int i14 = Integer.parseInt(strSubstring, CharsKt.a(16));
            String strSubstring2 = hexStr.substring(i13, i12 + 2);
            Intrinsics.g(strSubstring2, "this as java.lang.String…ing(startIndex, endIndex)");
            bArr[i11] = (byte) ((i14 * 16) + Integer.parseInt(strSubstring2, CharsKt.a(16)));
        }
        return bArr;
    }
}
