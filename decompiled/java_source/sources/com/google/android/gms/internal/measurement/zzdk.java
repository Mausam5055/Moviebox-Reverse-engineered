package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.util.Log;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes4.dex */
public final class zzdk extends zzdn {
    private final AtomicReference<Bundle> zza = new AtomicReference<>();
    private boolean zzb;

    /* JADX WARN: Code restructure failed: missing block: B:4:0x0003, code lost:
    
        r4 = r4.get(com.mbridge.msdk.foundation.entity.CampaignEx.JSON_KEY_AD_R);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static <T> T zza(Bundle bundle, Class<T> cls) {
        Object obj;
        if (bundle == null || obj == null) {
            return null;
        }
        try {
            return cls.cast(obj);
        } catch (ClassCastException e11) {
            Log.w("AM", String.format("Unexpected object type. Expected, Received: %s, %s", cls.getCanonicalName(), obj.getClass().getCanonicalName()), e11);
            throw e11;
        }
    }

    public final Bundle zza(long j11) {
        Bundle bundle;
        synchronized (this.zza) {
            if (!this.zzb) {
                try {
                    this.zza.wait(j11);
                } catch (InterruptedException unused) {
                    return null;
                }
            }
            bundle = this.zza.get();
        }
        return bundle;
    }

    @Override // com.google.android.gms.internal.measurement.zzdo
    public final void zza(Bundle bundle) {
        synchronized (this.zza) {
            try {
                try {
                    this.zza.set(bundle);
                    this.zzb = true;
                    this.zza.notify();
                } catch (Throwable th2) {
                    this.zza.notify();
                    throw th2;
                }
            } catch (Throwable th3) {
                throw th3;
            }
        }
    }

    public final Long zzb(long j11) {
        return (Long) zza(zza(j11), Long.class);
    }

    public final String zzc(long j11) {
        return (String) zza(zza(j11), String.class);
    }
}
