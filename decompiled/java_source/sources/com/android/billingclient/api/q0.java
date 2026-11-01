package com.android.billingclient.api;

import android.content.Context;
import com.google.android.gms.internal.play_billing.zzb;
import com.google.android.gms.internal.play_billing.zzhy;
import com.google.android.gms.internal.play_billing.zzic;
import com.google.android.gms.internal.play_billing.zzio;
import com.google.android.gms.internal.play_billing.zziu;
import com.google.android.gms.internal.play_billing.zziv;
import com.google.android.gms.internal.play_billing.zziz;

/* JADX INFO: loaded from: classes2.dex */
final class q0 implements n0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzio f19149a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final s0 f19150b;

    q0(Context context, zzio zzioVar) {
        this.f19150b = new s0(context);
        this.f19149a = zzioVar;
    }

    @Override // com.android.billingclient.api.n0
    public final void a(zzhy zzhyVar) {
        if (zzhyVar == null) {
            return;
        }
        try {
            zziu zziuVarZzv = zziv.zzv();
            zzio zzioVar = this.f19149a;
            if (zzioVar != null) {
                zziuVarZzv.zzk(zzioVar);
            }
            zziuVarZzv.zzi(zzhyVar);
            this.f19150b.a((zziv) zziuVarZzv.zzc());
        } catch (Throwable unused) {
            zzb.zzk("BillingLogger", "Unable to log.");
        }
    }

    @Override // com.android.billingclient.api.n0
    public final void b(zziz zzizVar) {
        if (zzizVar == null) {
            return;
        }
        try {
            zziu zziuVarZzv = zziv.zzv();
            zzio zzioVar = this.f19149a;
            if (zzioVar != null) {
                zziuVarZzv.zzk(zzioVar);
            }
            zziuVarZzv.zzl(zzizVar);
            this.f19150b.a((zziv) zziuVarZzv.zzc());
        } catch (Throwable unused) {
            zzb.zzk("BillingLogger", "Unable to log.");
        }
    }

    @Override // com.android.billingclient.api.n0
    public final void c(zzic zzicVar) {
        if (zzicVar == null) {
            return;
        }
        try {
            zziu zziuVarZzv = zziv.zzv();
            zzio zzioVar = this.f19149a;
            if (zzioVar != null) {
                zziuVarZzv.zzk(zzioVar);
            }
            zziuVarZzv.zzj(zzicVar);
            this.f19150b.a((zziv) zziuVarZzv.zzc());
        } catch (Throwable unused) {
            zzb.zzk("BillingLogger", "Unable to log.");
        }
    }
}
