package com.google.firebase.perf.application;

import com.google.firebase.perf.v1.ApplicationProcessState;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes4.dex */
public abstract class b implements a.b {
    private final WeakReference<a.b> appStateCallback;
    private final a appStateMonitor;
    private ApplicationProcessState currentAppState;
    private boolean isRegisteredForAppState;

    protected b() {
        this(a.b());
    }

    protected b(a aVar) {
        this.isRegisteredForAppState = false;
        this.currentAppState = ApplicationProcessState.APPLICATION_PROCESS_STATE_UNKNOWN;
        this.appStateMonitor = aVar;
        this.appStateCallback = new WeakReference<>(this);
    }

    public ApplicationProcessState getAppState() {
        return this.currentAppState;
    }

    public WeakReference<a.b> getAppStateCallback() {
        return this.appStateCallback;
    }

    protected void incrementTsnsCount(int i11) {
        this.appStateMonitor.e(i11);
    }

    @Override // com.google.firebase.perf.application.a.b
    public void onUpdateAppState(ApplicationProcessState applicationProcessState) {
        ApplicationProcessState applicationProcessState2 = this.currentAppState;
        ApplicationProcessState applicationProcessState3 = ApplicationProcessState.APPLICATION_PROCESS_STATE_UNKNOWN;
        if (applicationProcessState2 == applicationProcessState3) {
            this.currentAppState = applicationProcessState;
        } else {
            if (applicationProcessState2 == applicationProcessState || applicationProcessState == applicationProcessState3) {
                return;
            }
            this.currentAppState = ApplicationProcessState.FOREGROUND_BACKGROUND;
        }
    }

    protected void registerForAppState() {
        if (this.isRegisteredForAppState) {
            return;
        }
        this.currentAppState = this.appStateMonitor.a();
        this.appStateMonitor.k(this.appStateCallback);
        this.isRegisteredForAppState = true;
    }

    protected void unregisterForAppState() {
        if (this.isRegisteredForAppState) {
            this.appStateMonitor.p(this.appStateCallback);
            this.isRegisteredForAppState = false;
        }
    }
}
