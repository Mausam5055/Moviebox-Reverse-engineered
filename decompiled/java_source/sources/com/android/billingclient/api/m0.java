package com.android.billingclient.api;

import com.google.android.gms.internal.play_billing.zzb;
import com.google.android.gms.internal.play_billing.zzhx;
import com.google.android.gms.internal.play_billing.zzhy;
import com.google.android.gms.internal.play_billing.zzib;
import com.google.android.gms.internal.play_billing.zzic;
import com.google.android.gms.internal.play_billing.zzie;
import com.google.android.gms.internal.play_billing.zzii;

/* JADX INFO: loaded from: classes2.dex */
public abstract /* synthetic */ class m0 {
    public static zzhy a(int i11, int i12, n nVar) {
        try {
            zzhx zzhxVarZzv = zzhy.zzv();
            zzie zzieVarZzv = zzii.zzv();
            zzieVarZzv.zzk(nVar.b());
            zzieVarZzv.zzj(nVar.a());
            zzieVarZzv.zzl(i11);
            zzhxVarZzv.zzi(zzieVarZzv);
            zzhxVarZzv.zzk(i12);
            return (zzhy) zzhxVarZzv.zzc();
        } catch (Exception e11) {
            zzb.zzl("BillingLogger", "Unable to create logging payload", e11);
            return null;
        }
    }

    public static zzic b(int i11) {
        try {
            zzib zzibVarZzv = zzic.zzv();
            zzibVarZzv.zzj(i11);
            return (zzic) zzibVarZzv.zzc();
        } catch (Exception e11) {
            zzb.zzl("BillingLogger", "Unable to create logging payload", e11);
            return null;
        }
    }
}
