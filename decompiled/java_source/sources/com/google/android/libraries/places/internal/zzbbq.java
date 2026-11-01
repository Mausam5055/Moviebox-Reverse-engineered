package com.google.android.libraries.places.internal;

import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes4.dex */
public final class zzbbq {
    private static final Logger zza = Logger.getLogger(zzbbq.class.getName());
    private static zzbbq zzb;
    private static final Iterable zzc;
    private final LinkedHashSet zzd = new LinkedHashSet();
    private final LinkedHashMap zze = new LinkedHashMap();

    static {
        ArrayList arrayList = new ArrayList();
        try {
            boolean z10 = zzbnq.zza;
            arrayList.add(zzbnq.class);
        } catch (ClassNotFoundException e11) {
            zza.logp(Level.WARNING, "io.grpc.LoadBalancerRegistry", "getHardCodedClasses", "Unable to find pick-first LoadBalancer", (Throwable) e11);
        }
        try {
            int i11 = zzbvo.f28169a;
            arrayList.add(zzbvo.class);
        } catch (ClassNotFoundException e12) {
            zza.logp(Level.FINE, "io.grpc.LoadBalancerRegistry", "getHardCodedClasses", "Unable to find round-robin LoadBalancer", (Throwable) e12);
        }
        zzc = Collections.unmodifiableList(arrayList);
    }

    public static synchronized zzbbq zzb() {
        try {
            if (zzb == null) {
                List<zzbbo> listZza = zzbdi.zza(zzbbo.class, zzc, zzbbo.class.getClassLoader(), new zzbbp());
                zzb = new zzbbq();
                for (zzbbo zzbboVar : listZza) {
                    zza.logp(Level.FINE, "io.grpc.LoadBalancerRegistry", "getDefaultRegistry", "Service loader found ".concat(String.valueOf(zzbboVar)));
                    zzb.zzc(zzbboVar);
                }
                zzb.zzd();
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return zzb;
    }

    private final synchronized void zzc(zzbbo zzbboVar) {
        zzbboVar.zze();
        this.zzd.add(zzbboVar);
    }

    private final synchronized void zzd() {
        try {
            this.zze.clear();
            for (zzbbo zzbboVar : this.zzd) {
                String strZzd = zzbboVar.zzd();
                if (((zzbbo) this.zze.get(strZzd)) != null) {
                    zzbboVar.zzb();
                } else {
                    this.zze.put(strZzd, zzbboVar);
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public final synchronized zzbbo zza(String str) {
        return (zzbbo) this.zze.get(str);
    }
}
