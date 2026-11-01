package com.google.android.gms.internal.measurement;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes4.dex */
public final class zzcw {
    public static final int zza;

    static {
        zza = Build.VERSION.SDK_INT >= 31 ? ASTNode.PCTX_STORED : 0;
    }

    public static PendingIntent zza(Context context, int i11, Intent intent, int i12) {
        return PendingIntent.getBroadcast(context, 0, intent, i12);
    }
}
