package com.pgl.ssdk.ces;

import android.content.Context;

/* JADX INFO: loaded from: classes5.dex */
public final class a {
    public static native Object meta(int i11, Context context, Object obj);

    public static Object njss(int i11, Object obj) {
        try {
            b bVarH = b.h();
            if (bVarH != null) {
                return bVarH.a(i11, obj);
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }
}
