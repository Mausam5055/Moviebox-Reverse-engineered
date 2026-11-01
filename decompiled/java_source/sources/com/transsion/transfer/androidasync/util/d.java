package com.transsion.transfer.androidasync.util;

import java.io.Closeable;

/* JADX INFO: loaded from: classes6.dex */
public class d {
    public static void a(Closeable... closeableArr) {
        if (closeableArr == null) {
            return;
        }
        for (Closeable closeable : closeableArr) {
            if (closeable != null) {
                try {
                    closeable.close();
                } catch (Exception unused) {
                }
            }
        }
    }
}
