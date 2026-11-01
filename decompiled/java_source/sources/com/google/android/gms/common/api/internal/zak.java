package com.google.android.gms.common.api.internal;

import android.util.Log;
import android.util.SparseArray;
import androidx.annotation.Nullable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.internal.Preconditions;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* JADX INFO: loaded from: classes3.dex */
public final class zak extends zap {
    private final SparseArray zad;

    private zak(LifecycleFragment lifecycleFragment) {
        super(lifecycleFragment, GoogleApiAvailability.getInstance());
        this.zad = new SparseArray();
        this.mLifecycleFragment.addCallback("AutoManageHelper", this);
    }

    public static zak zaa(LifecycleActivity lifecycleActivity) {
        LifecycleFragment fragment = LifecycleCallback.getFragment(lifecycleActivity);
        zak zakVar = (zak) fragment.getCallbackOrNull("AutoManageHelper", zak.class);
        return zakVar != null ? zakVar : new zak(fragment);
    }

    @Nullable
    private final zaj zai(int i11) {
        if (this.zad.size() <= i11) {
            return null;
        }
        SparseArray sparseArray = this.zad;
        return (zaj) sparseArray.get(sparseArray.keyAt(i11));
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public final void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        for (int i11 = 0; i11 < this.zad.size(); i11++) {
            zaj zajVarZai = zai(i11);
            if (zajVarZai != null) {
                printWriter.append((CharSequence) str).append("GoogleApiClient #").print(zajVarZai.zaa);
                printWriter.println(":");
                zajVarZai.zab.dump(String.valueOf(str).concat("  "), fileDescriptor, printWriter, strArr);
            }
        }
    }

    @Override // com.google.android.gms.common.api.internal.zap, com.google.android.gms.common.api.internal.LifecycleCallback
    public final void onStart() {
        super.onStart();
        SparseArray sparseArray = this.zad;
        boolean z10 = this.zaa;
        String strValueOf = String.valueOf(sparseArray);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("onStart ");
        sb2.append(z10);
        sb2.append(" ");
        sb2.append(strValueOf);
        if (this.zab.get() == null) {
            for (int i11 = 0; i11 < this.zad.size(); i11++) {
                zaj zajVarZai = zai(i11);
                if (zajVarZai != null) {
                    zajVarZai.zab.connect();
                }
            }
        }
    }

    @Override // com.google.android.gms.common.api.internal.zap, com.google.android.gms.common.api.internal.LifecycleCallback
    public final void onStop() {
        super.onStop();
        for (int i11 = 0; i11 < this.zad.size(); i11++) {
            zaj zajVarZai = zai(i11);
            if (zajVarZai != null) {
                zajVarZai.zab.disconnect();
            }
        }
    }

    @Override // com.google.android.gms.common.api.internal.zap
    protected final void zab(ConnectionResult connectionResult, int i11) {
        Log.w("AutoManageHelper", "Unresolved error while connecting client. Stopping auto-manage.");
        if (i11 < 0) {
            Log.wtf("AutoManageHelper", "AutoManageLifecycleHelper received onErrorResolutionFailed callback but no failing client ID is set", new Exception());
            return;
        }
        zaj zajVar = (zaj) this.zad.get(i11);
        if (zajVar != null) {
            zae(i11);
            GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener = zajVar.zac;
            if (onConnectionFailedListener != null) {
                onConnectionFailedListener.onConnectionFailed(connectionResult);
            }
        }
    }

    @Override // com.google.android.gms.common.api.internal.zap
    protected final void zac() {
        for (int i11 = 0; i11 < this.zad.size(); i11++) {
            zaj zajVarZai = zai(i11);
            if (zajVarZai != null) {
                zajVarZai.zab.connect();
            }
        }
    }

    public final void zad(int i11, GoogleApiClient googleApiClient, @Nullable GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        Preconditions.checkNotNull(googleApiClient, "GoogleApiClient instance cannot be null");
        Preconditions.checkState(this.zad.indexOfKey(i11) < 0, "Already managing a GoogleApiClient with id " + i11);
        zam zamVar = (zam) this.zab.get();
        boolean z10 = this.zaa;
        String strValueOf = String.valueOf(zamVar);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("starting AutoManage for client ");
        sb2.append(i11);
        sb2.append(" ");
        sb2.append(z10);
        sb2.append(" ");
        sb2.append(strValueOf);
        zaj zajVar = new zaj(this, i11, googleApiClient, onConnectionFailedListener);
        googleApiClient.registerConnectionFailedListener(zajVar);
        this.zad.put(i11, zajVar);
        if (this.zaa && zamVar == null) {
            "connecting ".concat(googleApiClient.toString());
            googleApiClient.connect();
        }
    }

    public final void zae(int i11) {
        zaj zajVar = (zaj) this.zad.get(i11);
        this.zad.remove(i11);
        if (zajVar != null) {
            zajVar.zab.unregisterConnectionFailedListener(zajVar);
            zajVar.zab.disconnect();
        }
    }
}
