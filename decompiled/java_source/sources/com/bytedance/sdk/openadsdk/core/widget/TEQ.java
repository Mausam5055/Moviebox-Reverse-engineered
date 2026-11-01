package com.bytedance.sdk.openadsdk.core.widget;

import android.content.Context;
import android.os.SystemClock;
import androidx.annotation.NonNull;
import com.bytedance.sdk.openadsdk.core.model.sU;

/* JADX INFO: loaded from: classes3.dex */
public class TEQ extends Jcg {
    private long Sj;
    private long sP;

    public TEQ(@NonNull Context context) {
        super(context);
        setVisibility(8);
        setClickable(true);
    }

    public boolean EjP() {
        return this.Sj > 0 && this.sP > 0;
    }

    @Override // com.bytedance.sdk.openadsdk.core.widget.Jcg
    protected boolean Sj() {
        return false;
    }

    public void TKC() {
        setVisibility(8);
        if (this.Sj != 0) {
            this.sP = SystemClock.elapsedRealtime();
        }
    }

    public long getDisplayDuration() {
        if (this.Sj == 0) {
            return 0L;
        }
        if (this.sP == 0) {
            this.sP = SystemClock.elapsedRealtime();
        }
        return this.sP - this.Sj;
    }

    public void sP(sU sUVar, int i11) {
        if (isShown()) {
            return;
        }
        sP();
        setVisibility(0);
        this.Sj = SystemClock.elapsedRealtime();
        Sj(sUVar, i11);
    }
}
