package com.cloud.tmc.kernel.scheduler.internal;

import com.cloud.tmc.kernel.scheduler.Interruptor;

/* JADX INFO: loaded from: classes3.dex */
public class DefaultInterruptor implements Interruptor {
    private boolean isInterrupted = false;

    @Override // com.cloud.tmc.kernel.scheduler.Interruptor
    public void interrupt() {
        this.isInterrupted = true;
    }

    public boolean isInterrupted() {
        return this.isInterrupted;
    }

    public void setInterrupted(boolean z10) {
        this.isInterrupted = z10;
    }
}
