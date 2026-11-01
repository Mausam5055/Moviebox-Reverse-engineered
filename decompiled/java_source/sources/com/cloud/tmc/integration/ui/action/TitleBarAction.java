package com.cloud.tmc.integration.ui.action;

/* JADX INFO: loaded from: classes3.dex */
public interface TitleBarAction {
    void changeNavigationBarProgress(int i11, int i12, long j11);

    boolean getNavigationBarProgressUpdateStatus();

    void hideNavigationBarLoading();

    void setCapsuleStyle(boolean z10);

    void setNavigationBarIconStyle(boolean z10);

    void showNavigationBarLoading();
}
