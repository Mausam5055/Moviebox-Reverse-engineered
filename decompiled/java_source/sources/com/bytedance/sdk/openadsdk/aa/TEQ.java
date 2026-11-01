package com.bytedance.sdk.openadsdk.aa;

import android.content.Context;
import android.media.AudioManager;
import com.bytedance.sdk.openadsdk.utils.DeviceUtils;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;

/* JADX INFO: loaded from: classes2.dex */
public class TEQ {
    private final AudioManager Sj;
    private int sP = -1;
    private boolean TKC = false;

    public TEQ(Context context) {
        this.Sj = (AudioManager) context.getApplicationContext().getSystemService(MimeTypes.BASE_TYPE_AUDIO);
    }

    private void Sj(int i11, int i12, int i13) {
        try {
            this.Sj.setStreamVolume(i11, i12, i13);
        } catch (Throwable unused) {
        }
    }

    public int Sj() {
        return this.sP;
    }

    public void Sj(boolean z10) {
        Sj(z10, false);
    }

    public void Sj(boolean z10, boolean z11) {
        if (this.Sj == null) {
            return;
        }
        int i11 = 0;
        if (z10) {
            int iJcg = DeviceUtils.Jcg();
            if (iJcg != 0) {
                this.sP = iJcg;
            } else if (!z11) {
                return;
            }
            Sj(3, 0, 0);
            this.TKC = true;
            return;
        }
        int iUA = this.sP;
        if (iUA != 0) {
            if (iUA == -1) {
                if (!z11) {
                    return;
                } else {
                    iUA = DeviceUtils.uA() / 15;
                }
            }
            this.sP = -1;
            Sj(3, iUA, i11);
            this.TKC = true;
        }
        iUA = DeviceUtils.uA() / 15;
        i11 = 1;
        this.sP = -1;
        Sj(3, iUA, i11);
        this.TKC = true;
    }
}
