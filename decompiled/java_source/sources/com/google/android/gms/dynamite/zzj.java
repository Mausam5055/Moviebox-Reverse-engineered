package com.google.android.gms.dynamite;

import android.content.Context;

/* JADX INFO: loaded from: classes3.dex */
final class zzj implements DynamiteModule.VersionPolicy {
    zzj() {
    }

    @Override // com.google.android.gms.dynamite.DynamiteModule.VersionPolicy
    public final DynamiteModule.VersionPolicy.SelectionResult selectModule(Context context, String str, DynamiteModule.VersionPolicy.IVersions iVersions) throws DynamiteModule.LoadingException {
        int iZzb;
        DynamiteModule.VersionPolicy.SelectionResult selectionResult = new DynamiteModule.VersionPolicy.SelectionResult();
        int iZza = iVersions.zza(context, str);
        selectionResult.localVersion = iZza;
        int i11 = 1;
        int i12 = 0;
        if (iZza != 0) {
            iZzb = iVersions.zzb(context, str, false);
            selectionResult.remoteVersion = iZzb;
        } else {
            iZzb = iVersions.zzb(context, str, true);
            selectionResult.remoteVersion = iZzb;
        }
        int i13 = selectionResult.localVersion;
        if (i13 == 0) {
            if (iZzb == 0) {
                i11 = 0;
            }
            selectionResult.selection = i11;
            return selectionResult;
        }
        i12 = i13;
        if (i12 >= iZzb) {
            i11 = -1;
        }
        selectionResult.selection = i11;
        return selectionResult;
    }
}
