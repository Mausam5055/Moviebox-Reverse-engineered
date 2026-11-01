package com.google.android.libraries.places.internal;

import java.io.IOException;
import java.util.List;
import java.util.Locale;
import java.util.logging.Level;

/* JADX INFO: loaded from: classes4.dex */
final class zzbse implements Runnable, zzbtq {
    final zzbtr zza;
    final /* synthetic */ zzbsf zzc;
    private final zzbsi zzd = new zzbsi(Level.FINE, zzbsf.class);
    boolean zzb = true;

    zzbse(zzbsf zzbsfVar, zzbtr zzbtrVar) {
        this.zzc = zzbsfVar;
        this.zza = zzbtrVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzbdo zzbdoVarZzg;
        String name = Thread.currentThread().getName();
        Thread.currentThread().setName("OkHttpClientTransport");
        while (this.zza.zza(this)) {
            try {
                zzbsf zzbsfVar = this.zzc;
                if (zzbsfVar.zzK != null) {
                    zzbsfVar.zzK.zza();
                }
            } catch (Throwable th2) {
                try {
                    this.zzc.zzaa(0, zzbtp.PROTOCOL_ERROR, zzbdo.zzo.zzg("error in frame handler").zzf(th2));
                } catch (Throwable th3) {
                    try {
                        this.zza.close();
                    } catch (IOException e11) {
                        zzbsf.zzd.logp(Level.INFO, "io.grpc.okhttp.OkHttpClientTransport$ClientFrameHandler", "run", "Exception closing frame reader", (Throwable) e11);
                    } catch (RuntimeException e12) {
                        if (!"bio == null".equals(e12.getMessage())) {
                            throw e12;
                        }
                    }
                    this.zzc.zzl.zze();
                    Thread.currentThread().setName(name);
                    throw th3;
                }
            }
        }
        synchronized (this.zzc.zzo) {
            zzbdoVarZzg = this.zzc.zzz;
        }
        if (zzbdoVarZzg == null) {
            zzbdoVarZzg = zzbdo.zzp.zzg("End of stream or IOException");
        }
        this.zzc.zzaa(0, zzbtp.INTERNAL_ERROR, zzbdoVarZzg);
        try {
            this.zza.close();
        } catch (IOException e13) {
            zzbsf.zzd.logp(Level.INFO, "io.grpc.okhttp.OkHttpClientTransport$ClientFrameHandler", "run", "Exception closing frame reader", (Throwable) e13);
        } catch (RuntimeException e14) {
            if (!"bio == null".equals(e14.getMessage())) {
                throw e14;
            }
        }
        this.zzc.zzl.zze();
        Thread.currentThread().setName(name);
    }

    @Override // com.google.android.libraries.places.internal.zzbtq
    public final void zza(boolean z10, int i11, zzbwd zzbwdVar, int i12, int i13) throws IOException {
        this.zzd.zza(1, i11, ((zzbwl) zzbwdVar).zzb, i12, z10);
        zzbry zzbryVarZzr = this.zzc.zzr(i11);
        if (zzbryVarZzr != null) {
            long j11 = i12;
            zzbwdVar.zzD(j11);
            zzbwb zzbwbVar = new zzbwb();
            zzbwbVar.zzn(((zzbwl) zzbwdVar).zzb, j11);
            zzbryVarZzr.zzD().zzI();
            int i14 = zzbvr.zza;
            synchronized (this.zzc.zzo) {
                zzbryVarZzr.zzD().zzO(zzbwbVar, z10, i13 - i12);
            }
        } else {
            if (!this.zzc.zzU(i11)) {
                zzbsf zzbsfVar = this.zzc;
                zzbtp zzbtpVar = zzbtp.PROTOCOL_ERROR;
                zzbsfVar.zzaa(0, zzbtpVar, zzbsf.zzm(zzbtpVar).zzc("Received data for unknown stream: " + i11));
                return;
            }
            synchronized (this.zzc.zzo) {
                this.zzc.zzm.zzc(i11, zzbtp.STREAM_CLOSED);
            }
            zzbwdVar.zzF(i12);
        }
        this.zzc.zzw += i13;
        zzbsf zzbsfVar2 = this.zzc;
        if (zzbsfVar2.zzw >= zzbsfVar2.zzj * 0.5f) {
            synchronized (zzbsfVar2.zzo) {
                zzbsf zzbsfVar3 = this.zzc;
                zzbsfVar3.zzm.zzk(0, zzbsfVar3.zzw);
            }
            this.zzc.zzw = 0;
        }
    }

    @Override // com.google.android.libraries.places.internal.zzbtq
    public final void zzb(int i11, zzbtp zzbtpVar, zzbwf zzbwfVar) {
        this.zzd.zzb(1, i11, zzbtpVar, zzbwfVar);
        if (zzbtpVar == zzbtp.ENHANCE_YOUR_CALM) {
            String strZzf = zzbwfVar.zzf();
            zzbsf.zzd.logp(Level.WARNING, "io.grpc.okhttp.OkHttpClientTransport$ClientFrameHandler", "goAway", String.format("%s: Received GOAWAY with ENHANCE_YOUR_CALM. Debug data: %s", this, strZzf));
            if ("too_many_pings".equals(strZzf)) {
                ((zzbrs) this.zzc.zzL).zza.zza();
            }
        }
        zzbdo zzbdoVarZzc = zzbjb.zza(zzbtpVar.zzs).zzc("Received Goaway");
        if (zzbwfVar.zzc() > 0) {
            zzbdoVarZzc = zzbdoVarZzc.zzc(zzbwfVar.zzf());
        }
        this.zzc.zzaa(i11, null, zzbdoVarZzc);
    }

    @Override // com.google.android.libraries.places.internal.zzbtq
    public final void zzc(boolean z10, int i11, int i12) {
        zzbjh zzbjhVar;
        long j11 = (((long) i11) << 32) | (((long) i12) & 4294967295L);
        this.zzd.zzd(1, j11);
        if (!z10) {
            synchronized (this.zzc.zzo) {
                this.zzc.zzm.zzb(true, i11, i12);
            }
            return;
        }
        synchronized (this.zzc.zzo) {
            try {
                zzbsf zzbsfVar = this.zzc;
                zzbjhVar = null;
                if (zzbsfVar.zzB == null) {
                    zzbsf.zzd.logp(Level.WARNING, "io.grpc.okhttp.OkHttpClientTransport$ClientFrameHandler", "ping", "Received unexpected ping ack. No ping outstanding");
                } else if (zzbsfVar.zzB.zza() == j11) {
                    zzbsf zzbsfVar2 = this.zzc;
                    zzbjh zzbjhVar2 = zzbsfVar2.zzB;
                    zzbsfVar2.zzB = null;
                    zzbjhVar = zzbjhVar2;
                } else {
                    zzbsf.zzd.logp(Level.WARNING, "io.grpc.okhttp.OkHttpClientTransport$ClientFrameHandler", "ping", String.format(Locale.US, "Received unexpected ping ack. Expecting %d, got %d", Long.valueOf(this.zzc.zzB.zza()), Long.valueOf(j11)));
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (zzbjhVar != null) {
            zzbjhVar.zzc();
        }
    }

    @Override // com.google.android.libraries.places.internal.zzbtq
    public final void zzd(int i11, int i12, List list) throws IOException {
        this.zzd.zzf(1, i11, i12, list);
        synchronized (this.zzc.zzo) {
            this.zzc.zzm.zzc(i11, zzbtp.PROTOCOL_ERROR);
        }
    }

    @Override // com.google.android.libraries.places.internal.zzbtq
    public final void zze(int i11, zzbtp zzbtpVar) {
        boolean z10 = true;
        this.zzd.zzg(1, i11, zzbtpVar);
        zzbdo zzbdoVarZzc = zzbsf.zzm(zzbtpVar).zzc("Rst Stream");
        if (zzbdoVarZzc.zza() != zzbdj.CANCELLED && zzbdoVarZzc.zza() != zzbdj.DEADLINE_EXCEEDED) {
            z10 = false;
        }
        boolean z11 = z10;
        synchronized (this.zzc.zzo) {
            try {
                zzbry zzbryVar = (zzbry) this.zzc.zzr.get(Integer.valueOf(i11));
                if (zzbryVar != null) {
                    zzbryVar.zzD().zzI();
                    int i12 = zzbvr.zza;
                    this.zzc.zzP(i11, zzbdoVarZzc, zzbtpVar == zzbtp.REFUSED_STREAM ? zzbfs.REFUSED : zzbfs.PROCESSED, z11, null, null);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // com.google.android.libraries.places.internal.zzbtq
    public final void zzf(boolean z10, zzbue zzbueVar) {
        boolean zZzh;
        this.zzd.zzh(1, zzbueVar);
        synchronized (this.zzc.zzo) {
            try {
                if (zzbueVar.zzf(4)) {
                    this.zzc.zzH = zzbueVar.zza(4);
                }
                if (zzbueVar.zzf(7)) {
                    zZzh = this.zzc.zzn.zzh(zzbueVar.zza(7));
                } else {
                    zZzh = false;
                }
                if (this.zzb) {
                    zzbsf zzbsfVar = this.zzc;
                    zzbmk zzbmkVar = zzbsfVar.zzl;
                    zzaye zzayeVar = zzbsfVar.zzy;
                    zzbmkVar.zza(zzayeVar);
                    zzbsfVar.zzy = zzayeVar;
                    this.zzc.zzl.zzc();
                    this.zzb = false;
                }
                this.zzc.zzm.zza(zzbueVar);
                if (zZzh) {
                    this.zzc.zzn.zzg();
                }
                this.zzc.zzad();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0050  */
    /* JADX WARN: Code duplicated, block: B:23:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Instruction removed from duplicated block: B:18:0x0050, please report this as an issue */
    @Override // com.google.android.libraries.places.internal.zzbtq
    public final void zzg(int i11, long j11) {
        boolean z10 = true;
        this.zzd.zzj(1, i11, j11);
        synchronized (this.zzc.zzo) {
            try {
                if (i11 == 0) {
                    this.zzc.zzn.zza(null, (int) j11);
                    return;
                }
                zzbry zzbryVar = (zzbry) this.zzc.zzr.get(Integer.valueOf(i11));
                if (zzbryVar == null) {
                    if (this.zzc.zzU(i11)) {
                    }
                    if (z10) {
                        zzbsf zzbsfVar = this.zzc;
                        zzbtp zzbtpVar = zzbtp.PROTOCOL_ERROR;
                        zzbsfVar.zzaa(0, zzbtpVar, zzbsf.zzm(zzbtpVar).zzc("Received window_update for unknown stream: " + i11));
                    }
                }
                this.zzc.zzn.zza(zzbryVar.zzD().zzH(), (int) j11);
                z10 = false;
                if (z10) {
                    zzbsf zzbsfVar2 = this.zzc;
                    zzbtp zzbtpVar2 = zzbtp.PROTOCOL_ERROR;
                    zzbsfVar2.zzaa(0, zzbtpVar2, zzbsf.zzm(zzbtpVar2).zzc("Received window_update for unknown stream: " + i11));
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // com.google.android.libraries.places.internal.zzbtq
    public final void zzh(boolean z10, boolean z11, int i11, int i12, List list, int i13) {
        boolean z12 = true;
        this.zzd.zzc(1, i11, list, z11);
        zzbdo zzbdoVarZzg = null;
        if (this.zzc.zzM != Integer.MAX_VALUE) {
            long jZzc = 0;
            for (int i14 = 0; i14 < list.size(); i14++) {
                zzbtt zzbttVar = (zzbtt) list.get(i14);
                jZzc += (long) (zzbttVar.zzh.zzc() + 32 + zzbttVar.zzi.zzc());
            }
            int iMin = (int) Math.min(jZzc, 2147483647L);
            if (iMin > this.zzc.zzM) {
                zzbdoVarZzg = zzbdo.zzj.zzg(String.format(Locale.US, "Response %s metadata larger than %d: %d", true != z11 ? "header" : "trailer", Integer.valueOf(this.zzc.zzM), Integer.valueOf(iMin)));
            }
        }
        synchronized (this.zzc.zzo) {
            try {
                zzbry zzbryVar = (zzbry) this.zzc.zzr.get(Integer.valueOf(i11));
                if (zzbryVar == null) {
                    if (this.zzc.zzU(i11)) {
                        this.zzc.zzm.zzc(i11, zzbtp.STREAM_CLOSED);
                    }
                } else if (zzbdoVarZzg == null) {
                    zzbryVar.zzD().zzI();
                    int i15 = zzbvr.zza;
                    zzbryVar.zzD().zzP(list, z11);
                } else {
                    if (!z11) {
                        this.zzc.zzm.zzc(i11, zzbtp.CANCEL);
                    }
                    zzbryVar.zzD().zzj(zzbdoVarZzg, zzbfs.PROCESSED, false, new zzbcf());
                }
                z12 = false;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (z12) {
            zzbsf zzbsfVar = this.zzc;
            zzbtp zzbtpVar = zzbtp.PROTOCOL_ERROR;
            zzbsfVar.zzaa(0, zzbtpVar, zzbsf.zzm(zzbtpVar).zzc("Received header for unknown stream: " + i11));
        }
    }
}
