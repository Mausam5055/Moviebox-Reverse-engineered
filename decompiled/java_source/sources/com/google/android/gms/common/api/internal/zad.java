package com.google.android.gms.common.api.internal;

import android.os.DeadObjectException;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes3.dex */
abstract class zad extends zac {
    protected final TaskCompletionSource zaa;

    public zad(int i11, TaskCompletionSource taskCompletionSource) {
        super(i11);
        this.zaa = taskCompletionSource;
    }

    protected abstract void zac(zabq zabqVar) throws RemoteException;

    @Override // com.google.android.gms.common.api.internal.zai
    public final void zad(@NonNull Status status) {
        this.zaa.trySetException(new ApiException(status));
    }

    @Override // com.google.android.gms.common.api.internal.zai
    public final void zae(@NonNull Exception exc) {
        this.zaa.trySetException(exc);
    }

    @Override // com.google.android.gms.common.api.internal.zai
    public final void zaf(zabq zabqVar) throws DeadObjectException {
        try {
            zac(zabqVar);
        } catch (DeadObjectException e11) {
            zad(zai.zah(e11));
            throw e11;
        } catch (RemoteException e12) {
            zad(zai.zah(e12));
        } catch (RuntimeException e13) {
            this.zaa.trySetException(e13);
        }
    }

    @Override // com.google.android.gms.common.api.internal.zai
    public void zag(@NonNull zaad zaadVar, boolean z10) {
    }
}
