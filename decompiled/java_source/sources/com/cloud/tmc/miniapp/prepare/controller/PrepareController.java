package com.cloud.tmc.miniapp.prepare.controller;

import com.cloud.tmc.miniapp.prepare.steps.PrepareException;

/* JADX INFO: loaded from: classes3.dex */
public interface PrepareController {

    public enum Status {
        INIT,
        EXECUTING,
        ERROR,
        FINISH;

        public boolean canContinue() {
            return this == INIT || this == EXECUTING;
        }
    }

    void finish();

    void lock(Object obj);

    void moveToError(PrepareException prepareException);

    void moveToNext();

    void start();

    void unlock(Object obj);
}
