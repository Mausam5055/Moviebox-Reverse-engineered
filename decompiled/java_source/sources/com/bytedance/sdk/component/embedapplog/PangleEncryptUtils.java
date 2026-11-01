package com.bytedance.sdk.component.embedapplog;

import android.util.Log;

/* JADX INFO: loaded from: classes2.dex */
class PangleEncryptUtils {
    static {
        try {
            System.loadLibrary("tobEmbedPagEncrypt");
        } catch (UnsatisfiedLinkError e11) {
            Log.e("pangle-encrypt", e11.getMessage());
        }
    }

    PangleEncryptUtils() {
    }

    static byte[] decrypt(byte[] bArr, int i11) {
        try {
            return ttDecrypt(bArr, i11);
        } catch (Throwable th2) {
            Log.e("pangle-encrypt", "decrypt exception " + th2.getMessage());
            return null;
        }
    }

    static byte[] encrypt(byte[] bArr, int i11) {
        try {
            return ttEncrypt(bArr, i11);
        } catch (Throwable th2) {
            Log.e("pangle-encrypt", "encrypt exception " + th2.getMessage());
            return null;
        }
    }

    private static native byte[] ttDecrypt(byte[] bArr, int i11);

    private static native byte[] ttEncrypt(byte[] bArr, int i11);
}
