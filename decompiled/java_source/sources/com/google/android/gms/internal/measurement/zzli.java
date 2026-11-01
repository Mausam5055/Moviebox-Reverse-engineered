package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
final class zzli<T> implements zzlu<T> {
    private final zzlc zza;
    private final zzmk<?, ?> zzb;
    private final boolean zzc;
    private final zzji<?> zzd;

    private zzli(zzmk<?, ?> zzmkVar, zzji<?> zzjiVar, zzlc zzlcVar) {
        this.zzb = zzmkVar;
        this.zzc = zzjiVar.zza(zzlcVar);
        this.zzd = zzjiVar;
        this.zza = zzlcVar;
    }

    static <T> zzli<T> zza(zzmk<?, ?> zzmkVar, zzji<?> zzjiVar, zzlc zzlcVar) {
        return new zzli<>(zzmkVar, zzjiVar, zzlcVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzlu
    public final int zza(T t11) {
        zzmk<?, ?> zzmkVar = this.zzb;
        int iZzb = zzmkVar.zzb(zzmkVar.zzd(t11));
        return this.zzc ? iZzb + this.zzd.zza(t11).zza() : iZzb;
    }

    @Override // com.google.android.gms.internal.measurement.zzlu
    public final T zza() {
        zzlc zzlcVar = this.zza;
        return zzlcVar instanceof zzjt ? (T) ((zzjt) zzlcVar).zzce() : (T) zzlcVar.zzci().zzaj();
    }

    /* JADX WARN: Code duplicated, block: B:50:0x0087 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:54:? A[LOOP:0: B:46:0x000c->B:54:?, LOOP_END, SYNTHETIC] */
    @Override // com.google.android.gms.internal.measurement.zzlu
    public final void zza(T t11, zzlr zzlrVar, zzjg zzjgVar) throws IOException {
        boolean zZzt;
        zzmk<?, ?> zzmkVar = this.zzb;
        zzji<?> zzjiVar = this.zzd;
        Object objZzc = zzmkVar.zzc(t11);
        zzjm<T> zzjmVarZzb = zzjiVar.zzb(t11);
        while (zzlrVar.zzc() != Integer.MAX_VALUE) {
            try {
                int iZzd = zzlrVar.zzd();
                int iZzj = 0;
                if (iZzd != 11) {
                    if ((iZzd & 7) == 2) {
                        Object objZza = zzjiVar.zza(zzjgVar, this.zza, iZzd >>> 3);
                        if (objZza != null) {
                            zzjiVar.zza(zzlrVar, objZza, zzjgVar, zzjmVarZzb);
                        } else {
                            zZzt = zzmkVar.zza(objZzc, zzlrVar, 0);
                        }
                    } else {
                        zZzt = zzlrVar.zzt();
                    }
                    if (!zZzt) {
                        zzmkVar.zzb(t11, objZzc);
                        return;
                    }
                } else {
                    Object objZza2 = null;
                    zzik zzikVarZzp = null;
                    while (zzlrVar.zzc() != Integer.MAX_VALUE) {
                        int iZzd2 = zzlrVar.zzd();
                        if (iZzd2 == 16) {
                            iZzj = zzlrVar.zzj();
                            objZza2 = zzjiVar.zza(zzjgVar, this.zza, iZzj);
                        } else if (iZzd2 == 26) {
                            if (objZza2 != null) {
                                zzjiVar.zza(zzlrVar, objZza2, zzjgVar, zzjmVarZzb);
                            } else {
                                zzikVarZzp = zzlrVar.zzp();
                            }
                        } else if (!zzlrVar.zzt()) {
                            break;
                        }
                    }
                    if (zzlrVar.zzd() != 12) {
                        throw zzkb.zzb();
                    }
                    if (zzikVarZzp != null) {
                        if (objZza2 != null) {
                            zzjiVar.zza(zzikVarZzp, objZza2, zzjgVar, zzjmVarZzb);
                        } else {
                            zzmkVar.zza(objZzc, iZzj, zzikVarZzp);
                        }
                    }
                }
                zZzt = true;
                if (!zZzt) {
                    zzmkVar.zzb(t11, objZzc);
                    return;
                }
            } catch (Throwable th2) {
                zzmkVar.zzb(t11, objZzc);
                throw th2;
            }
        }
        zzmkVar.zzb(t11, objZzc);
    }

    @Override // com.google.android.gms.internal.measurement.zzlu
    public final void zza(T t11, zznb zznbVar) throws IOException {
        Iterator itZzd = this.zzd.zza(t11).zzd();
        while (itZzd.hasNext()) {
            Map.Entry entry = (Map.Entry) itZzd.next();
            zzjo zzjoVar = (zzjo) entry.getKey();
            if (zzjoVar.zzc() != zzmz.MESSAGE || zzjoVar.zze() || zzjoVar.zzd()) {
                throw new IllegalStateException("Found invalid MessageSet item.");
            }
            if (entry instanceof zzkf) {
                zznbVar.zza(zzjoVar.zza(), (Object) ((zzkf) entry).zza().zzb());
            } else {
                zznbVar.zza(zzjoVar.zza(), entry.getValue());
            }
        }
        zzmk<?, ?> zzmkVar = this.zzb;
        zzmkVar.zza(zzmkVar.zzd(t11), zznbVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzlu
    public final void zza(T t11, T t12) {
        zzlw.zza(this.zzb, t11, t12);
        if (this.zzc) {
            zzlw.zza(this.zzd, t11, t12);
        }
    }

    /* JADX WARN: Code duplicated, block: B:33:0x0094  */
    /* JADX WARN: Code duplicated, block: B:56:0x0099 A[EDGE_INSN: B:56:0x0099->B:34:0x0099 BREAK  A[LOOP:1: B:18:0x0053->B:61:0x0053], SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.measurement.zzlu
    public final void zza(T t11, byte[] bArr, int i11, int i12, zzij zzijVar) throws IOException {
        zzjt zzjtVar = (zzjt) t11;
        zzmj zzmjVarZzd = zzjtVar.zzb;
        if (zzmjVarZzd == zzmj.zzc()) {
            zzmjVarZzd = zzmj.zzd();
            zzjtVar.zzb = zzmjVarZzd;
        }
        ((zzjt.zzd) t11).zza();
        zzjt.zzf zzfVar = null;
        while (i11 < i12) {
            int iZzc = zzig.zzc(bArr, i11, zzijVar);
            int i13 = zzijVar.zza;
            if (i13 == 11) {
                int i14 = 0;
                zzik zzikVar = null;
                while (iZzc < i12) {
                    iZzc = zzig.zzc(bArr, iZzc, zzijVar);
                    int i15 = zzijVar.zza;
                    int i16 = i15 >>> 3;
                    int i17 = i15 & 7;
                    if (i16 == 2) {
                        if (i17 != 0) {
                            if (i15 != 12) {
                                break;
                                break;
                            }
                            iZzc = zzig.zza(i15, bArr, iZzc, i12, zzijVar);
                        } else {
                            iZzc = zzig.zzc(bArr, iZzc, zzijVar);
                            i14 = zzijVar.zza;
                            zzfVar = (zzjt.zzf) this.zzd.zza(zzijVar.zzd, this.zza, i14);
                        }
                    } else {
                        if (i16 == 3) {
                            if (zzfVar != null) {
                                zzlq.zza();
                                throw new NoSuchMethodError();
                            }
                            if (i17 == 2) {
                                iZzc = zzig.zza(bArr, iZzc, zzijVar);
                                zzikVar = (zzik) zzijVar.zzc;
                            }
                        }
                        if (i15 != 12) {
                            break;
                        } else {
                            iZzc = zzig.zza(i15, bArr, iZzc, i12, zzijVar);
                        }
                    }
                }
                if (zzikVar != null) {
                    zzmjVarZzd.zza((i14 << 3) | 2, zzikVar);
                }
                i11 = iZzc;
            } else if ((i13 & 7) == 2) {
                zzfVar = (zzjt.zzf) this.zzd.zza(zzijVar.zzd, this.zza, i13 >>> 3);
                if (zzfVar != null) {
                    zzlq.zza();
                    throw new NoSuchMethodError();
                }
                i11 = zzig.zza(i13, bArr, iZzc, i12, zzmjVarZzd, zzijVar);
            } else {
                i11 = zzig.zza(i13, bArr, iZzc, i12, zzijVar);
            }
        }
        if (i11 != i12) {
            throw zzkb.zzg();
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzlu
    public final int zzb(T t11) {
        int iHashCode = this.zzb.zzd(t11).hashCode();
        return this.zzc ? (iHashCode * 53) + this.zzd.zza(t11).hashCode() : iHashCode;
    }

    @Override // com.google.android.gms.internal.measurement.zzlu
    public final boolean zzb(T t11, T t12) {
        if (!this.zzb.zzd(t11).equals(this.zzb.zzd(t12))) {
            return false;
        }
        if (this.zzc) {
            return this.zzd.zza(t11).equals(this.zzd.zza(t12));
        }
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzlu
    public final void zzd(T t11) {
        this.zzb.zzf(t11);
        this.zzd.zzc(t11);
    }

    @Override // com.google.android.gms.internal.measurement.zzlu
    public final boolean zze(T t11) {
        return this.zzd.zza(t11).zzg();
    }
}
