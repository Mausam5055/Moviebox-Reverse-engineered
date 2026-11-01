package com.cloud.tmc.miniapp.action;

/* JADX INFO: loaded from: classes3.dex */
public interface RefreshAction {
    void enableHeaderTranslationContent(boolean z10);

    void enableLoadMore(boolean z10);

    void enableRefresh(boolean z10);

    void onLoadMoreEvent();

    void onRefreshEvent();

    boolean startRefresh();

    boolean stopLoadMore();

    boolean stopRefresh();
}
