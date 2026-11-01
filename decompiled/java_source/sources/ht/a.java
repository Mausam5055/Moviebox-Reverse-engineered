package ht;

import android.content.Context;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public abstract class a {
    public static final boolean a(Context context) {
        Intrinsics.h(context, "<this>");
        return (context.getResources().getConfiguration().screenLayout & 15) >= 3;
    }
}
