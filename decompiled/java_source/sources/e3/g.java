package e3;

import com.mbridge.msdk.playercommon.exoplayer2.C;
import l2.m0;

/* JADX INFO: loaded from: classes2.dex */
interface g extends m0 {

    public static class a extends m0.b implements g {
        public a() {
            super(C.TIME_UNSET);
        }

        @Override // e3.g
        public long a() {
            return -1L;
        }

        @Override // e3.g
        public int g() {
            return -2147483647;
        }

        @Override // e3.g
        public long getTimeUs(long j11) {
            return 0L;
        }
    }

    long a();

    int g();

    long getTimeUs(long j11);
}
