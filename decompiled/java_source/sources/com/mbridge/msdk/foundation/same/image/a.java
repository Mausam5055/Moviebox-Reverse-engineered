package com.mbridge.msdk.foundation.same.image;

import android.graphics.Bitmap;
import com.mbridge.msdk.MBridgeConstans;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;

/* JADX INFO: loaded from: classes5.dex */
public class a {
    /* JADX WARN: Code duplicated, block: B:45:0x0049 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public static InputStream a(Bitmap bitmap) throws Throwable {
        ByteArrayOutputStream byteArrayOutputStream;
        ByteArrayOutputStream byteArrayOutputStream2 = null;
        try {
            byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                bitmap.compress(Bitmap.CompressFormat.JPEG, 100, byteArrayOutputStream);
                ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(byteArrayOutputStream.toByteArray());
                try {
                    byteArrayOutputStream.close();
                } catch (Exception e11) {
                    if (MBridgeConstans.DEBUG) {
                        e11.printStackTrace();
                    }
                }
                return byteArrayInputStream;
            } catch (Exception e12) {
                e = e12;
                try {
                    if (MBridgeConstans.DEBUG) {
                        e.printStackTrace();
                    }
                    if (byteArrayOutputStream == null) {
                        return null;
                    }
                    try {
                        byteArrayOutputStream.close();
                        return null;
                    } catch (Exception e13) {
                        if (!MBridgeConstans.DEBUG) {
                            return null;
                        }
                        e13.printStackTrace();
                        return null;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    byteArrayOutputStream2 = byteArrayOutputStream;
                    byteArrayOutputStream = byteArrayOutputStream2;
                    if (byteArrayOutputStream != null) {
                        try {
                            byteArrayOutputStream.close();
                        } catch (Exception e14) {
                            if (MBridgeConstans.DEBUG) {
                                e14.printStackTrace();
                            }
                        }
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                if (byteArrayOutputStream != null) {
                    byteArrayOutputStream.close();
                }
                throw th;
            }
        } catch (Exception e15) {
            e = e15;
            byteArrayOutputStream = null;
        } catch (Throwable th4) {
            th = th4;
            byteArrayOutputStream = byteArrayOutputStream2;
            if (byteArrayOutputStream != null) {
                byteArrayOutputStream.close();
            }
            throw th;
        }
    }
}
