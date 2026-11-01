package com.bytedance.adsdk.ugeno.EjP.EjP;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class Dq extends Sj implements com.bytedance.adsdk.ugeno.Jcg.uA.Sj {
    private Handler Fmk;
    private int Ym;

    /* JADX INFO: renamed from: aa, reason: collision with root package name */
    private int f20806aa;
    private int sef;

    public Dq(Context context) {
        super(context);
        this.f20806aa = 0;
        this.Fmk = new com.bytedance.adsdk.ugeno.Jcg.uA(Looper.getMainLooper(), this);
        this.sef = 0;
    }

    @Override // com.bytedance.adsdk.ugeno.Jcg.uA.Sj
    public void Sj(Message message) {
        int i11;
        int i12;
        if (message.what != 1001) {
            return;
        }
        new StringBuilder("handleMsg: execute timer event").append(this.sef);
        this.Sj.Sj(this.sP, this.vS, this.TKC.sP());
        int i13 = this.sef - 1;
        this.sef = i13;
        if (i13 < 0 && (i12 = this.f20806aa) != 0) {
            this.Fmk.sendEmptyMessageDelayed(1001, i12);
        } else if (i13 <= 0 || (i11 = this.f20806aa) == 0) {
            this.Fmk.removeMessages(1001);
        } else {
            this.Fmk.sendEmptyMessageDelayed(1001, i11);
        }
    }

    @Override // com.bytedance.adsdk.ugeno.EjP.EjP.Sj
    public boolean Sj(Object... objArr) {
        Map<String, String> map = this.HiB;
        if (map != null) {
            int iSj = com.bytedance.adsdk.ugeno.Jcg.TKC.Sj(map.get("loop"), 0);
            this.Ym = iSj;
            if (iSj <= 0) {
                this.sef = -1;
            } else {
                this.sef = iSj;
            }
            this.f20806aa = com.bytedance.adsdk.ugeno.Jcg.TKC.Sj(this.HiB.get("duration"), 0);
        }
        this.Fmk.sendEmptyMessageDelayed(1001, this.f20806aa);
        return true;
    }
}
