package com.google.android.gms.internal.p002authapi;

import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.auth.api.identity.AuthorizationResult;
import com.google.android.gms.common.api.Status;

/* JADX INFO: loaded from: classes3.dex */
public interface zbz extends IInterface {
    void zbb(Status status, AuthorizationResult authorizationResult) throws RemoteException;
}
