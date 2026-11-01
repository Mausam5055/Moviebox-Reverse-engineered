package com.cloud.tmc.miniapp.base;

import java.util.Stack;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class ShowPageStore {
    private final Stack<ShowPageData> showPages = new Stack<>();

    public final Stack<ShowPageData> findShowPages() {
        return this.showPages;
    }

    public final void putShowPage(ShowPageData showPageData) {
        Intrinsics.h(showPageData, "showPageData");
        this.showPages.add(showPageData);
    }
}
