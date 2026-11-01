package com.bytedance.sdk.component.vS.Sj.Sj.Sj.Sj;

import android.content.Context;
import com.bytedance.sdk.component.vS.Sj.Dq;

/* JADX INFO: loaded from: classes2.dex */
public class vS extends Jcg {
    public vS(Context context, com.bytedance.sdk.component.vS.Sj.EjP.sP.Sj sj2) {
        super(context, sj2);
    }

    public static String Sj(String str) {
        return "CREATE TABLE IF NOT EXISTS " + str + " (_id INTEGER PRIMARY KEY AUTOINCREMENT,id TEXT UNIQUE,value TEXT ,gen_time TEXT , retry INTEGER default 0 , encrypt INTEGER default 0)";
    }

    @Override // com.bytedance.sdk.component.vS.Sj.Sj.Sj.Sj.Jcg
    public byte Sj() {
        return (byte) 1;
    }

    @Override // com.bytedance.sdk.component.vS.Sj.Sj.Sj.Sj.Jcg
    public byte TKC() {
        return (byte) 3;
    }

    @Override // com.bytedance.sdk.component.vS.Sj.Sj.Sj.Sj.Jcg, com.bytedance.sdk.component.vS.Sj.Sj.Sj.Sj.TKC
    public String sP() {
        return Dq.Jcg().EjP().HiB();
    }
}
