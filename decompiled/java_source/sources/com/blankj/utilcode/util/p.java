package com.blankj.utilcode.util;

import android.content.Intent;
import android.net.Uri;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes2.dex */
public abstract class p {
    private static Intent a(Intent intent, boolean z10) {
        return z10 ? intent.addFlags(ASTNode.DEOP) : intent;
    }

    public static Intent b(String str, boolean z10) {
        Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
        intent.setData(Uri.parse("package:" + str));
        return a(intent, z10);
    }

    public static boolean c(Intent intent) {
        return Utils.a().getPackageManager().queryIntentActivities(intent, 65536).size() > 0;
    }
}
