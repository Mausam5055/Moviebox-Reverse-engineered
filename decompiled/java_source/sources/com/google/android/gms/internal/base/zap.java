package com.google.android.gms.internal.base;

import android.os.Build;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes4.dex */
public final class zap {
    public static final int zaa;

    static {
        zaa = Build.VERSION.SDK_INT >= 31 ? ASTNode.PCTX_STORED : 0;
    }
}
