package com.google.android.gms.auth.api.credentials;

import androidx.annotation.Nullable;
import com.google.android.gms.common.api.Result;

/* JADX INFO: loaded from: classes3.dex */
@Deprecated
public interface CredentialRequestResult extends Result {
    @Nullable
    Credential getCredential();
}
