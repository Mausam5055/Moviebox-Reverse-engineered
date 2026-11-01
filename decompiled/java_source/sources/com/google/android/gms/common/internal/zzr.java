package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import com.cloud.tmc.kernel.constants.TmcConstants;

/* JADX INFO: loaded from: classes3.dex */
final class zzr implements Handler.Callback {
    final /* synthetic */ zzs zza;

    /* synthetic */ zzr(zzs zzsVar, zzq zzqVar) {
        this.zza = zzsVar;
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        int i11 = message.what;
        if (i11 == 0) {
            synchronized (this.zza.zzb) {
                try {
                    zzo zzoVar = (zzo) message.obj;
                    zzp zzpVar = (zzp) this.zza.zzb.get(zzoVar);
                    if (zzpVar != null && zzpVar.zzi()) {
                        if (zzpVar.zzj()) {
                            zzpVar.zzg("GmsClientSupervisor");
                        }
                        this.zza.zzb.remove(zzoVar);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            return true;
        }
        if (i11 != 1) {
            return false;
        }
        synchronized (this.zza.zzb) {
            try {
                zzo zzoVar2 = (zzo) message.obj;
                zzp zzpVar2 = (zzp) this.zza.zzb.get(zzoVar2);
                if (zzpVar2 != null && zzpVar2.zza() == 3) {
                    Log.e("GmsClientSupervisor", "Timeout waiting for ServiceConnection callback " + String.valueOf(zzoVar2), new Exception());
                    ComponentName componentNameZzb = zzpVar2.zzb();
                    if (componentNameZzb == null) {
                        componentNameZzb = zzoVar2.zza();
                    }
                    if (componentNameZzb == null) {
                        String strZzc = zzoVar2.zzc();
                        Preconditions.checkNotNull(strZzc);
                        componentNameZzb = new ComponentName(strZzc, TmcConstants.ROUTE_UNKNOWN);
                    }
                    zzpVar2.onServiceDisconnected(componentNameZzb);
                }
            } catch (Throwable th3) {
                throw th3;
            }
        }
        return true;
    }
}
