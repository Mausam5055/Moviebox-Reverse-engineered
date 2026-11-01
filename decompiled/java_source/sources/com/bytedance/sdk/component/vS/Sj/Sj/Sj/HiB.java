package com.bytedance.sdk.component.vS.Sj.Sj.Sj;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;

/* JADX INFO: loaded from: classes2.dex */
public class HiB implements com.bytedance.sdk.component.vS.Sj.Sj.HiB {
    public static final HiB Sj = new HiB();
    private volatile SQLiteDatabase sP;

    @Override // com.bytedance.sdk.component.vS.Sj.Sj.HiB
    public String EjP() {
        return "logstats";
    }

    @Override // com.bytedance.sdk.component.vS.Sj.Sj.HiB
    public String HiB() {
        return "logstatsbatch";
    }

    @Override // com.bytedance.sdk.component.vS.Sj.Sj.HiB
    public SQLiteDatabase Sj(Context context) {
        if (this.sP == null) {
            synchronized (this) {
                try {
                    if (this.sP == null) {
                        this.sP = new EjP(context).getWritableDatabase();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return this.sP;
    }

    @Override // com.bytedance.sdk.component.vS.Sj.Sj.HiB
    public String Sj() {
        return "loghighpriority";
    }

    @Override // com.bytedance.sdk.component.vS.Sj.Sj.HiB
    public String TKC() {
        return null;
    }

    @Override // com.bytedance.sdk.component.vS.Sj.Sj.HiB
    public String sP() {
        return "adevent";
    }

    @Override // com.bytedance.sdk.component.vS.Sj.Sj.HiB
    public String vS() {
        return null;
    }
}
