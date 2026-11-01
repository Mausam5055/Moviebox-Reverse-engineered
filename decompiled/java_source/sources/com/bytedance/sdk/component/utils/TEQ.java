package com.bytedance.sdk.component.utils;

import java.io.Closeable;

/* JADX INFO: loaded from: classes2.dex */
public class TEQ {
    public static void Sj(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (RuntimeException e11) {
                throw e11;
            } catch (Exception unused) {
            }
        }
    }
}
