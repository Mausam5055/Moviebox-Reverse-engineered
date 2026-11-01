package com.android.billingclient.api;

import android.os.Bundle;
import android.os.ResultReceiver;
import com.google.android.gms.internal.play_billing.zzb;
import com.google.android.gms.internal.play_billing.zzhx;
import com.google.android.gms.internal.play_billing.zzhy;
import com.google.android.gms.internal.play_billing.zzie;
import com.google.android.gms.internal.play_billing.zzih;
import com.google.android.gms.internal.play_billing.zzii;

/* JADX INFO: loaded from: classes2.dex */
final class zzak extends ResultReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ i f19211a;

    @Override // android.os.ResultReceiver
    public final void onReceiveResult(int i11, Bundle bundle) {
        zzhy zzhyVar;
        n.a aVarC = n.c();
        aVarC.c(i11);
        if (i11 != 0) {
            if (bundle == null) {
                this.f19211a.f19066f.a(m0.a(73, 16, p0.f19126j));
                throw null;
            }
            aVarC.b(zzb.zzg(bundle, "BillingClient"));
            int i12 = bundle.getInt("INTERNAL_LOG_ERROR_REASON");
            n0 n0Var = this.f19211a.f19066f;
            int iZza = i12 != 0 ? zzih.zza(i12) : 23;
            n nVarA = aVarC.a();
            String string = bundle.getString("INTERNAL_LOG_ERROR_ADDITIONAL_DETAILS");
            try {
                zzie zzieVarZzv = zzii.zzv();
                zzieVarZzv.zzk(nVarA.b());
                zzieVarZzv.zzj(nVarA.a());
                zzieVarZzv.zzl(iZza);
                if (string != null) {
                    zzieVarZzv.zzi(string);
                }
                zzhx zzhxVarZzv = zzhy.zzv();
                zzhxVarZzv.zzi(zzieVarZzv);
                zzhxVarZzv.zzk(16);
                zzhyVar = (zzhy) zzhxVarZzv.zzc();
            } catch (Exception e11) {
                zzb.zzl("BillingLogger", "Unable to create logging payload", e11);
                zzhyVar = null;
            }
            n0Var.a(zzhyVar);
        }
        aVarC.a();
        throw null;
    }
}
