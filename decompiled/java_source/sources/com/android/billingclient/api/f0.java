package com.android.billingclient.api;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.IBinder;
import android.text.TextUtils;
import com.google.android.gms.internal.play_billing.zzb;
import com.google.android.gms.internal.play_billing.zziz;
import com.google.android.gms.internal.play_billing.zzl;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes2.dex */
final class f0 implements ServiceConnection {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f19051a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f19052b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private j f19053c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final /* synthetic */ i f19054d;

    /* synthetic */ f0(i iVar, j jVar, e0 e0Var) {
        this.f19054d = iVar;
        this.f19053c = jVar;
    }

    private final void c(n nVar) {
        synchronized (this.f19051a) {
            try {
                j jVar = this.f19053c;
                if (jVar != null) {
                    jVar.a(nVar);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    final /* synthetic */ Object a() {
        Bundle bundle;
        int i11;
        int iZzv;
        synchronized (this.f19051a) {
            try {
                if (!this.f19052b) {
                    if (TextUtils.isEmpty(null)) {
                        bundle = null;
                    } else {
                        bundle = new Bundle();
                        bundle.putString("accountName", null);
                    }
                    int i12 = 3;
                    try {
                        String packageName = this.f19054d.f19065e.getPackageName();
                        iZzv = 3;
                        int i13 = 21;
                        while (true) {
                            if (i13 < 3) {
                                i13 = 0;
                                break;
                            }
                            if (bundle == null) {
                                try {
                                    iZzv = this.f19054d.f19067g.zzv(i13, packageName, "subs");
                                } catch (Exception e11) {
                                    e = e11;
                                    i12 = iZzv;
                                    zzb.zzl("BillingClient", "Exception while checking if billing is supported; try to reconnect", e);
                                    this.f19054d.f19061a = 0;
                                    this.f19054d.f19067g = null;
                                    i11 = 42;
                                    iZzv = i12;
                                }
                            } else {
                                iZzv = this.f19054d.f19067g.zzc(i13, packageName, "subs", bundle);
                            }
                            if (iZzv == 0) {
                                zzb.zzj("BillingClient", "highestLevelSupportedForSubs: " + i13);
                                break;
                            }
                            i13--;
                        }
                        boolean z10 = true;
                        this.f19054d.f19070j = i13 >= 5;
                        this.f19054d.f19069i = i13 >= 3;
                        if (i13 < 3) {
                            zzb.zzj("BillingClient", "In-app billing API does not support subscription on this device.");
                            i11 = 9;
                        } else {
                            i11 = 1;
                        }
                        for (int i14 = 21; i14 >= 3; i14--) {
                            iZzv = bundle == null ? this.f19054d.f19067g.zzv(i14, packageName, "inapp") : this.f19054d.f19067g.zzc(i14, packageName, "inapp", bundle);
                            if (iZzv == 0) {
                                this.f19054d.f19071k = i14;
                                zzb.zzj("BillingClient", "mHighestLevelSupportedForInApp: " + this.f19054d.f19071k);
                                break;
                            }
                        }
                        i iVar = this.f19054d;
                        iVar.f19084x = iVar.f19071k >= 21;
                        i iVar2 = this.f19054d;
                        iVar2.f19083w = iVar2.f19071k >= 20;
                        i iVar3 = this.f19054d;
                        iVar3.f19082v = iVar3.f19071k >= 19;
                        i iVar4 = this.f19054d;
                        iVar4.f19081u = iVar4.f19071k >= 18;
                        i iVar5 = this.f19054d;
                        iVar5.f19080t = iVar5.f19071k >= 17;
                        i iVar6 = this.f19054d;
                        iVar6.f19079s = iVar6.f19071k >= 16;
                        i iVar7 = this.f19054d;
                        iVar7.f19078r = iVar7.f19071k >= 15;
                        i iVar8 = this.f19054d;
                        iVar8.f19077q = iVar8.f19071k >= 14;
                        i iVar9 = this.f19054d;
                        iVar9.f19076p = iVar9.f19071k >= 12;
                        i iVar10 = this.f19054d;
                        iVar10.f19075o = iVar10.f19071k >= 10;
                        i iVar11 = this.f19054d;
                        iVar11.f19074n = iVar11.f19071k >= 9;
                        i iVar12 = this.f19054d;
                        iVar12.f19073m = iVar12.f19071k >= 8;
                        i iVar13 = this.f19054d;
                        if (iVar13.f19071k < 6) {
                            z10 = false;
                        }
                        iVar13.f19072l = z10;
                        if (this.f19054d.f19071k < 3) {
                            zzb.zzk("BillingClient", "In-app billing API version 3 is not supported on this device.");
                            i11 = 36;
                        }
                        if (iZzv == 0) {
                            this.f19054d.f19061a = 2;
                            if (this.f19054d.f19064d != null) {
                                q1 q1Var = this.f19054d.f19064d;
                                this.f19054d.f19065e.getPackageName();
                                q1Var.e(false);
                            }
                        } else {
                            this.f19054d.f19061a = 0;
                            this.f19054d.f19067g = null;
                        }
                    } catch (Exception e12) {
                        e = e12;
                    }
                    if (iZzv == 0) {
                        this.f19054d.f19066f.c(m0.b(6));
                        c(p0.f19128l);
                    } else {
                        n0 n0Var = this.f19054d.f19066f;
                        n nVar = p0.f19117a;
                        n0Var.a(m0.a(i11, 6, nVar));
                        c(nVar);
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return null;
    }

    final /* synthetic */ void b() {
        this.f19054d.f19061a = 0;
        this.f19054d.f19067g = null;
        n0 n0Var = this.f19054d.f19066f;
        n nVar = p0.f19130n;
        n0Var.a(m0.a(24, 6, nVar));
        c(nVar);
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        zzb.zzj("BillingClient", "Billing service connected.");
        this.f19054d.f19067g = zzl.zzr(iBinder);
        Callable callable = new Callable() { // from class: com.android.billingclient.api.d0
            @Override // java.util.concurrent.Callable
            public final Object call() {
                this.f19047a.a();
                return null;
            }
        };
        Runnable runnable = new Runnable() { // from class: com.android.billingclient.api.zzam
            @Override // java.lang.Runnable
            public final void run() {
                this.zza.b();
            }
        };
        i iVar = this.f19054d;
        if (iVar.K(callable, 30000L, runnable, iVar.F()) == null) {
            i iVar2 = this.f19054d;
            n nVarI = iVar2.I();
            iVar2.f19066f.a(m0.a(25, 6, nVarI));
            c(nVarI);
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        zzb.zzk("BillingClient", "Billing service disconnected.");
        this.f19054d.f19066f.b(zziz.zzw());
        this.f19054d.f19067g = null;
        this.f19054d.f19061a = 0;
        synchronized (this.f19051a) {
            try {
                j jVar = this.f19053c;
                if (jVar != null) {
                    jVar.b();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
