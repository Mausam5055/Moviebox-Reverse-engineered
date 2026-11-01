package com.cloud.tmc.miniapp.performanceanalyse.screen;

import android.os.CountDownTimer;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class OooOO0 extends CountDownTimer {
    public final OooO00o OooO00o;
    public List<Integer> OooO0O0;
    public int OooO0OO;

    public interface OooO00o {
        void OooO00o();

        void OooO0O0();

        void OooO0OO();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OooOO0(long j11, long j12, List<Integer> _timePoints, OooO00o timeCallback) {
        super(j11, j12);
        Intrinsics.h(_timePoints, "_timePoints");
        Intrinsics.h(timeCallback, "timeCallback");
        this.OooO00o = timeCallback;
        this.OooO0O0 = CollectionsKt.U0(_timePoints);
    }

    public final long OooO00o() {
        return ((long) this.OooO0OO) * 1000;
    }

    @Override // android.os.CountDownTimer
    public void onFinish() {
        this.OooO00o.OooO00o();
    }

    @Override // android.os.CountDownTimer
    public void onTick(long j11) {
        this.OooO0OO++;
        if (this.OooO0O0.size() <= 0) {
            return;
        }
        if (this.OooO0OO != this.OooO0O0.get(0).intValue()) {
            this.OooO00o.OooO0O0();
        } else {
            this.OooO0O0.remove(0);
            this.OooO00o.OooO0OO();
        }
    }
}
