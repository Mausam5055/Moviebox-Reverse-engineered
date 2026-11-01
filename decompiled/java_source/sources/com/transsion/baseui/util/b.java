package com.transsion.baseui.util;

import android.content.Context;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public abstract class b {
    public static final boolean a(Context context) {
        Intrinsics.h(context, "<this>");
        return (context.getResources().getConfiguration().screenLayout & 15) >= 3;
    }
}
