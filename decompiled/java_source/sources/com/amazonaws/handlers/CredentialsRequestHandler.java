package com.amazonaws.handlers;

import com.amazonaws.auth.AWSCredentials;

/* JADX INFO: loaded from: classes2.dex */
public abstract class CredentialsRequestHandler extends RequestHandler2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected AWSCredentials f18377a;

    public void e(AWSCredentials aWSCredentials) {
        this.f18377a = aWSCredentials;
    }
}
