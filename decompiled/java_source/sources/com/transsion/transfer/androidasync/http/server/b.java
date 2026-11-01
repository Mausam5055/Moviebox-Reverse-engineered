package com.transsion.transfer.androidasync.http.server;

import com.transsion.transfer.androidasync.http.Headers;
import com.transsion.transfer.androidasync.http.Multimap;

/* JADX INFO: loaded from: classes6.dex */
public interface b extends com.transsion.transfer.androidasync.p {
    String B();

    cv.a D();

    Headers getHeaders();

    String getPath();

    com.transsion.transfer.androidasync.j getSocket();

    Multimap h();
}
