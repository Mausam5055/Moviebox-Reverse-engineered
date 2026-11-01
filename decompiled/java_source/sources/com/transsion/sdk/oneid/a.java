package com.transsion.sdk.oneid;

import android.os.Environment;

/* JADX INFO: loaded from: classes.dex */
public abstract class a {
    public static String a() {
        return Environment.getExternalStorageDirectory().getAbsolutePath() + "/" + Environment.DIRECTORY_DOCUMENTS + "/.sys_id.dat";
    }
}
