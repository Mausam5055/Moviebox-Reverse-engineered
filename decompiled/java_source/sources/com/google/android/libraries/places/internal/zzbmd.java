package com.google.android.libraries.places.internal;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes4.dex */
public final class zzbmd extends zzbbs {
    private static final Method zzp;
    final zzbdb zzc;
    final List zzd;
    final String zze;
    final String zzf;
    final zzazq zzg;
    final zzazd zzh;
    final long zzi;
    final zzbah zzj;
    final zzbqn zzk;
    final zzbqn zzl;
    private final List zzq;
    private final zzbmc zzr;
    private final zzbmb zzs;
    private static final Logger zzm = Logger.getLogger(zzbmd.class.getName());
    static final long zza = TimeUnit.MINUTES.toMillis(30);
    static final long zzb = TimeUnit.SECONDS.toMillis(1);
    private static final zzbqn zzt = zzbqn.zza(zzbjd.zzp);
    private static final zzazq zzn = zzazq.zzb();
    private static final zzazd zzo = zzazd.zza();

    static {
        Method declaredMethod = null;
        try {
            int i11 = zzbea.f28167a;
            Class cls = Boolean.TYPE;
            declaredMethod = zzbea.class.getDeclaredMethod("getClientInterceptor", cls, cls, cls, cls);
        } catch (ClassNotFoundException e11) {
            zzm.logp(Level.FINE, "io.grpc.internal.ManagedChannelImplBuilder", "<clinit>", "Unable to apply census stats", (Throwable) e11);
        } catch (NoSuchMethodException e12) {
            zzm.logp(Level.FINE, "io.grpc.internal.ManagedChannelImplBuilder", "<clinit>", "Unable to apply census stats", (Throwable) e12);
        }
        zzp = declaredMethod;
    }

    public zzbmd(String str, zzayl zzaylVar, zzayf zzayfVar, zzbmc zzbmcVar, zzbmb zzbmbVar) {
        zzbqn zzbqnVar = zzt;
        this.zzk = zzbqnVar;
        this.zzl = zzbqnVar;
        this.zzq = new ArrayList();
        this.zzc = zzbdb.zzb();
        this.zzd = new ArrayList();
        this.zzf = "pick_first";
        this.zzg = zzn;
        this.zzh = zzo;
        this.zzi = zza;
        this.zzj = zzbah.zza();
        zzmt.zzc(str, "target");
        this.zze = str;
        this.zzr = zzbmcVar;
        this.zzs = zzbmbVar;
    }

    @Override // com.google.android.libraries.places.internal.zzbbs
    public final zzbbr zza() {
        zzayp zzaypVar;
        zzbfw zzbfwVarZza = this.zzr.zza();
        zzbij zzbijVar = new zzbij();
        zzbqn zzbqnVarZza = zzbqn.zza(zzbjd.zzp);
        zznc zzncVar = zzbjd.zzr;
        ArrayList arrayList = new ArrayList(this.zzq);
        Method method = zzp;
        zzayp zzaypVar2 = null;
        if (method != null) {
            try {
                Boolean bool = Boolean.TRUE;
                zzaypVar = (zzayp) method.invoke(null, bool, bool, Boolean.FALSE, bool);
            } catch (IllegalAccessException e11) {
                zzm.logp(Level.FINE, "io.grpc.internal.ManagedChannelImplBuilder", "getEffectiveInterceptors", "Unable to apply census stats", (Throwable) e11);
                zzaypVar = null;
            } catch (InvocationTargetException e12) {
                zzm.logp(Level.FINE, "io.grpc.internal.ManagedChannelImplBuilder", "getEffectiveInterceptors", "Unable to apply census stats", (Throwable) e12);
                zzaypVar = null;
            }
        } else {
            zzaypVar = null;
        }
        if (zzaypVar != null) {
            arrayList.add(0, zzaypVar);
        }
        try {
            zzaypVar2 = (zzayp) zzbeb.class.getDeclaredMethod("getClientInterceptor", null).invoke(null, null);
        } catch (ClassNotFoundException e13) {
            zzm.logp(Level.FINE, "io.grpc.internal.ManagedChannelImplBuilder", "getEffectiveInterceptors", "Unable to apply census stats", (Throwable) e13);
        } catch (IllegalAccessException e14) {
            zzm.logp(Level.FINE, "io.grpc.internal.ManagedChannelImplBuilder", "getEffectiveInterceptors", "Unable to apply census stats", (Throwable) e14);
        } catch (NoSuchMethodException e15) {
            zzm.logp(Level.FINE, "io.grpc.internal.ManagedChannelImplBuilder", "getEffectiveInterceptors", "Unable to apply census stats", (Throwable) e15);
        } catch (InvocationTargetException e16) {
            zzm.logp(Level.FINE, "io.grpc.internal.ManagedChannelImplBuilder", "getEffectiveInterceptors", "Unable to apply census stats", (Throwable) e16);
        }
        if (zzaypVar2 != null) {
            arrayList.add(0, zzaypVar2);
        }
        return new zzbmf(new zzbma(this, zzbfwVarZza, zzbijVar, zzbqnVarZza, zzncVar, arrayList, zzbqt.zza));
    }

    final int zzb() {
        this.zzs.zza();
        return 443;
    }
}
