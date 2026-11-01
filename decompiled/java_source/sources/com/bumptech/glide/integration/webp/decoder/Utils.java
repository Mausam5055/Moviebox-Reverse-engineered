package com.bumptech.glide.integration.webp.decoder;

import android.util.Log;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes2.dex */
class Utils {
    private static final String TAG = "Utils";

    Utils() {
    }

    static int getSampleSize(int i11, int i12, int i13, int i14) {
        int iMin = Math.min(i12 / i14, i11 / i13);
        int iMax = Math.max(1, iMin == 0 ? 0 : Integer.highestOneBit(iMin));
        if (Log.isLoggable(TAG, 2) && iMax > 1) {
            Log.v(TAG, "Downsampling WEBP, sampleSize: " + iMax + ", target dimens: [" + i13 + "x" + i14 + "], actual dimens: [" + i11 + "x" + i12 + "]");
        }
        return iMax;
    }

    static byte[] inputStreamToBytes(InputStream inputStream) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(16384);
        try {
            byte[] bArr = new byte[16384];
            while (true) {
                int i11 = inputStream.read(bArr);
                if (i11 == -1) {
                    byteArrayOutputStream.flush();
                    return byteArrayOutputStream.toByteArray();
                }
                byteArrayOutputStream.write(bArr, 0, i11);
            }
        } catch (IOException e11) {
            if (!Log.isLoggable(TAG, 5)) {
                return null;
            }
            Log.w(TAG, "Error reading data from stream", e11);
            return null;
        }
    }
}
