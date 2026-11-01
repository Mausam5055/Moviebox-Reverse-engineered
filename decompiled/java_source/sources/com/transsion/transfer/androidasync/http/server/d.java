package com.transsion.transfer.androidasync.http.server;

import com.transsion.transfer.androidasync.http.Headers;
import java.io.File;

/* JADX INFO: loaded from: classes6.dex */
public interface d extends com.transsion.transfer.androidasync.s, bv.a {
    String E();

    int b();

    d c(int i11);

    @Override // com.transsion.transfer.androidasync.s
    void d();

    Headers getHeaders();

    void n(File file, bv.e eVar);

    void send(String str);

    void x();
}
