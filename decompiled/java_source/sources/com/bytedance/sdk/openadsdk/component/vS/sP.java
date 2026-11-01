package com.bytedance.sdk.openadsdk.component.vS;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes3.dex */
public class sP implements Handler.Callback {
    private boolean Jcg;
    private Sj TKC;
    private final com.bytedance.sdk.openadsdk.component.Dq.Sj sP;
    private Handler Sj = new Handler(Looper.myLooper(), this);
    private int EjP = 0;
    private int HiB = 5;
    private int vS = 0;

    public sP(com.bytedance.sdk.openadsdk.component.Dq.Sj sj2) {
        this.sP = sj2;
    }

    public void EjP() {
        Handler handler = this.Sj;
        if (handler != null) {
            handler.removeMessages(100);
        }
    }

    public void HiB() {
        this.Sj.removeCallbacksAndMessages(null);
        this.Sj = null;
    }

    public int Sj() {
        return this.vS;
    }

    public void Sj(float f11) {
        int i11 = (int) f11;
        this.HiB = i11;
        if (i11 <= 0) {
            this.HiB = 5;
        }
    }

    public void Sj(int i11) {
        this.EjP = i11;
        int i12 = this.HiB - i11;
        this.sP.Sj(i12);
        boolean z10 = true;
        if (i11 <= 0) {
            Sj sj2 = this.TKC;
            if (sj2 != null && !this.Jcg) {
                sj2.sP();
                this.Jcg = true;
            }
            i11 = 0;
        }
        Sj sj3 = this.TKC;
        if (sj3 != null) {
            int i13 = this.vS;
            int i14 = i13 - i12;
            if (i11 != 0 && i12 < i13) {
                z10 = false;
            }
            sj3.Sj(i14, z10);
        }
    }

    public void Sj(Sj sj2) {
        this.TKC = sj2;
    }

    public void TKC() {
        if (this.Sj != null) {
            Message messageObtain = Message.obtain();
            messageObtain.what = 100;
            messageObtain.arg1 = this.EjP;
            this.Sj.sendMessage(messageObtain);
        }
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(@NonNull Message message) {
        if (message.what == 100 && this.Sj != null) {
            int i11 = message.arg1;
            Sj(i11);
            if (i11 > 0) {
                Message messageObtain = Message.obtain();
                messageObtain.what = 100;
                messageObtain.arg1 = i11 - 1;
                this.Sj.sendMessageDelayed(messageObtain, 1000L);
            }
        }
        return true;
    }

    public void sP() {
        Handler handler = this.Sj;
        if (handler != null) {
            handler.sendMessage(handler.obtainMessage(100, this.HiB, 0));
        }
    }

    public void sP(int i11) {
        this.vS = Math.min(i11, this.HiB);
    }
}
