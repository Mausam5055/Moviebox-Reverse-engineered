package com.amazonaws.auth;

import com.amazonaws.Request;

/* JADX INFO: loaded from: classes2.dex */
public interface Signer {
    void b(Request request, AWSCredentials aWSCredentials);
}
