package com.vungle.ads.internal.network;

import java.io.IOException;

/* JADX INFO: loaded from: classes7.dex */
public interface a {
    void cancel();

    void enqueue(b bVar);

    e execute() throws IOException;

    boolean isCanceled();
}
