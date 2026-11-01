package com.cloud.hisavana.net.impl;

import okhttp3.Headers;

/* JADX INFO: loaded from: classes.dex */
public interface IHttpCallback {
    void a();

    void b();

    void c(int i11, byte[] bArr);

    void d(int i11, byte[] bArr, Throwable th2);

    void e(int i11, byte[] bArr, String str);

    void f(int i11, byte[] bArr, Headers headers);
}
