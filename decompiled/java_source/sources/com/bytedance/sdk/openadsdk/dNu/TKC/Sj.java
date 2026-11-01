package com.bytedance.sdk.openadsdk.dNu.TKC;

import android.content.Context;
import android.content.SharedPreferences;

/* JADX INFO: loaded from: classes3.dex */
public class Sj {
    private final SharedPreferences Sj;

    public Sj(Context context) {
        this.Sj = context.getSharedPreferences("pag_monitor_record", 0);
    }

    public long Sj() {
        return this.Sj.getLong("last_upload_time", 0L);
    }

    public void Sj(long j11) {
        SharedPreferences.Editor editorEdit = this.Sj.edit();
        editorEdit.putLong("last_upload_time", j11);
        editorEdit.apply();
    }
}
