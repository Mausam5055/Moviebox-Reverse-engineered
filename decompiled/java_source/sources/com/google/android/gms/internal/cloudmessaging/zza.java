package com.google.android.gms.internal.cloudmessaging;

import android.os.Build;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes4.dex */
public final class zza {
    public static final int zza;

    static {
        zza = Build.VERSION.SDK_INT >= 31 ? ASTNode.PCTX_STORED : 0;
    }
}
