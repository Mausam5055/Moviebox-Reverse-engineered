package com.google.android.gms.internal.p002authapi;

import android.os.Build;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes3.dex */
public final class zbbk {
    public static final int zba;

    static {
        zba = Build.VERSION.SDK_INT >= 31 ? ASTNode.PCTX_STORED : 0;
    }
}
