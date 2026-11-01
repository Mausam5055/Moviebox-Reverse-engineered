package com.google.android.gms.internal.p002authapi;

import androidx.annotation.Nullable;
import com.google.android.gms.auth.api.credentials.Credential;
import com.google.android.gms.auth.api.credentials.CredentialRequestResult;
import com.google.android.gms.common.api.Status;

/* JADX INFO: loaded from: classes3.dex */
public final class zbe implements CredentialRequestResult {
    private final Status zba;

    @Nullable
    private final Credential zbb;

    public zbe(Status status, @Nullable Credential credential) {
        this.zba = status;
        this.zbb = credential;
    }

    @Override // com.google.android.gms.auth.api.credentials.CredentialRequestResult
    @Nullable
    public final Credential getCredential() {
        return this.zbb;
    }

    @Override // com.google.android.gms.common.api.Result
    public final Status getStatus() {
        return this.zba;
    }
}
