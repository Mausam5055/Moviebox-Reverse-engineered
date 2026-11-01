package com.google.android.gms.internal.measurement;

import android.content.Context;
import com.google.common.base.Optional;
import com.google.common.base.Suppliers;
import com.google.common.base.f;
import com.google.common.base.m;
import com.google.common.base.q;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzhj<T> {
    private static final Object zza = new Object();
    private static volatile zzhu zzb;
    private static volatile boolean zzc;
    private static zzhy zzd;
    private static final AtomicInteger zze;
    private final zzhr zzf;
    private final String zzg;
    private Object zzh;
    private volatile int zzi;
    private volatile T zzj;
    private final boolean zzk;
    private volatile boolean zzl;

    static {
        new AtomicReference();
        zzd = new zzhy(new zzhx() { // from class: com.google.android.gms.internal.measurement.zzho
            @Override // com.google.android.gms.internal.measurement.zzhx
            public final boolean zza() {
                return zzhj.zzd();
            }
        });
        zze = new AtomicInteger();
    }

    private zzhj(zzhr zzhrVar, String str, T t11, boolean z10) {
        this.zzi = -1;
        String str2 = zzhrVar.zza;
        if (str2 == null && zzhrVar.zzb == null) {
            throw new IllegalArgumentException("Must pass a valid SharedPreferences file name or ContentProvider URI");
        }
        if (str2 != null && zzhrVar.zzb != null) {
            throw new IllegalArgumentException("Must pass one of SharedPreferences file name or ContentProvider URI");
        }
        this.zzf = zzhrVar;
        this.zzg = str;
        this.zzh = t11;
        this.zzk = z10;
        this.zzl = false;
    }

    static /* synthetic */ zzhj zza(zzhr zzhrVar, String str, Boolean bool, boolean z10) {
        return new zzhq(zzhrVar, str, bool, true);
    }

    static /* synthetic */ zzhj zza(zzhr zzhrVar, String str, Double d11, boolean z10) {
        return new zzhp(zzhrVar, str, d11, true);
    }

    static /* synthetic */ zzhj zza(zzhr zzhrVar, String str, Long l11, boolean z10) {
        return new zzhn(zzhrVar, str, l11, true);
    }

    static /* synthetic */ zzhj zza(zzhr zzhrVar, String str, String str2, boolean z10) {
        return new zzhs(zzhrVar, str, str2, true);
    }

    private final T zza(zzhu zzhuVar) {
        f fVar;
        zzhr zzhrVar = this.zzf;
        if (!zzhrVar.zze && ((fVar = zzhrVar.zzh) == null || ((Boolean) fVar.apply(zzhuVar.zza())).booleanValue())) {
            zzhc zzhcVarZza = zzhc.zza(zzhuVar.zza());
            zzhr zzhrVar2 = this.zzf;
            Object objZza = zzhcVarZza.zza(zzhrVar2.zze ? null : zza(zzhrVar2.zzc));
            if (objZza != null) {
                return zza(objZza);
            }
        }
        return null;
    }

    private final String zza(String str) {
        if (str != null && str.isEmpty()) {
            return this.zzg;
        }
        return str + this.zzg;
    }

    private final T zzb(zzhu zzhuVar) {
        zzhb zzhbVarZza;
        Object objZza;
        if (this.zzf.zzb == null) {
            zzhbVarZza = zzhw.zza(zzhuVar.zza(), this.zzf.zza, new Runnable() { // from class: com.google.android.gms.internal.measurement.zzhm
                @Override // java.lang.Runnable
                public final void run() {
                    zzhj.zzc();
                }
            });
        } else if (zzhi.zza(zzhuVar.zza(), this.zzf.zzb)) {
            zzhbVarZza = this.zzf.zzg ? zzgu.zza(zzhuVar.zza().getContentResolver(), zzhk.zza(zzhk.zza(zzhuVar.zza(), this.zzf.zzb.getLastPathSegment())), new Runnable() { // from class: com.google.android.gms.internal.measurement.zzhm
                @Override // java.lang.Runnable
                public final void run() {
                    zzhj.zzc();
                }
            }) : zzgu.zza(zzhuVar.zza().getContentResolver(), this.zzf.zzb, new Runnable() { // from class: com.google.android.gms.internal.measurement.zzhm
                @Override // java.lang.Runnable
                public final void run() {
                    zzhj.zzc();
                }
            });
        } else {
            zzhbVarZza = null;
        }
        if (zzhbVarZza == null || (objZza = zzhbVarZza.zza(zzb())) == null) {
            return null;
        }
        return zza(objZza);
    }

    public static void zzb(final Context context) {
        if (zzb != null || context == null) {
            return;
        }
        Object obj = zza;
        synchronized (obj) {
            try {
                if (zzb == null) {
                    synchronized (obj) {
                        try {
                            zzhu zzhuVar = zzb;
                            Context applicationContext = context.getApplicationContext();
                            if (applicationContext != null) {
                                context = applicationContext;
                            }
                            if (zzhuVar == null || zzhuVar.zza() != context) {
                                if (zzhuVar != null) {
                                    zzgu.zzc();
                                    zzhw.zza();
                                    zzhc.zza();
                                }
                                zzb = new zzgv(context, Suppliers.a(new q() { // from class: com.google.android.gms.internal.measurement.zzhl
                                    @Override // com.google.common.base.q
                                    public final Object get() {
                                        return zzhg.zza.zza(context);
                                    }
                                }));
                                zze.incrementAndGet();
                            }
                        } catch (Throwable th2) {
                            throw th2;
                        }
                    }
                }
            } catch (Throwable th3) {
                throw th3;
            }
        }
    }

    public static void zzc() {
        zze.incrementAndGet();
    }

    static /* synthetic */ boolean zzd() {
        return true;
    }

    private final T zze() {
        return (T) this.zzh;
    }

    /* JADX WARN: Code duplicated, block: B:34:0x007c A[Catch: all -> 0x004e, TryCatch #0 {all -> 0x004e, blocks: (B:8:0x001c, B:10:0x0020, B:12:0x0029, B:14:0x0039, B:20:0x0055, B:22:0x0060, B:35:0x0080, B:38:0x0088, B:39:0x008d, B:40:0x0091, B:25:0x0067, B:34:0x007c, B:28:0x006e, B:31:0x0075, B:41:0x0095), top: B:47:0x001c }] */
    public final T zza() {
        T tZzb;
        if (!this.zzk) {
            m.v(zzd.zza(this.zzg), "Attempt to access PhenotypeFlag not via codegen. All new PhenotypeFlags must be accessed through codegen APIs. If you believe you are seeing this error by mistake, you can add your flag to the exemption list located at //java/com/google/android/libraries/phenotype/client/lockdown/flags.textproto. Send the addition CL to ph-reviews@. See go/phenotype-android-codegen for information about generated code. See go/ph-lockdown for more information about this error.");
        }
        int i11 = zze.get();
        if (this.zzi < i11) {
            synchronized (this) {
                try {
                    if (this.zzi < i11) {
                        zzhu zzhuVar = zzb;
                        Optional optionalAbsent = Optional.absent();
                        String strZza = null;
                        if (zzhuVar != null) {
                            optionalAbsent = (Optional) zzhuVar.zzb().get();
                            if (optionalAbsent.isPresent()) {
                                zzhh zzhhVar = (zzhh) optionalAbsent.get();
                                zzhr zzhrVar = this.zzf;
                                strZza = zzhhVar.zza(zzhrVar.zzb, zzhrVar.zza, zzhrVar.zzd, this.zzg);
                            }
                        }
                        m.v(zzhuVar != null, "Must call PhenotypeFlagInitializer.maybeInit() first");
                        if (this.zzf.zzf) {
                            tZzb = zza(zzhuVar);
                            if (tZzb == null && (tZzb = zzb(zzhuVar)) == null) {
                                tZzb = zze();
                            }
                        } else {
                            tZzb = zzb(zzhuVar);
                            if (tZzb == null && (tZzb = zza(zzhuVar)) == null) {
                                tZzb = zze();
                            }
                        }
                        if (optionalAbsent.isPresent()) {
                            tZzb = strZza == null ? zze() : zza((Object) strZza);
                        }
                        this.zzj = tZzb;
                        this.zzi = i11;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return this.zzj;
    }

    abstract T zza(Object obj);

    public final String zzb() {
        return zza(this.zzf.zzd);
    }
}
