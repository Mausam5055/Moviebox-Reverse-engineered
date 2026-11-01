package com.bytedance.sdk.component.sP.Sj.sP;

import android.support.v4.media.session.PlaybackStateCompat;

/* JADX INFO: loaded from: classes2.dex */
final class vS {
    static HiB Sj;
    static long sP;

    private vS() {
    }

    static HiB Sj() {
        synchronized (vS.class) {
            HiB hiB = Sj;
            if (hiB == null) {
                return new HiB();
            }
            Sj = hiB.vS;
            hiB.vS = null;
            sP -= PlaybackStateCompat.ACTION_PLAY_FROM_URI;
            return hiB;
        }
    }

    static void Sj(HiB hiB) {
        if (hiB.vS != null || hiB.Jcg != null) {
            throw new IllegalArgumentException();
        }
        if (hiB.EjP) {
            return;
        }
        synchronized (vS.class) {
            try {
                long j11 = sP;
                if (j11 + PlaybackStateCompat.ACTION_PLAY_FROM_URI > PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH) {
                    return;
                }
                sP = j11 + PlaybackStateCompat.ACTION_PLAY_FROM_URI;
                hiB.vS = Sj;
                hiB.TKC = 0;
                hiB.sP = 0;
                Sj = hiB;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
