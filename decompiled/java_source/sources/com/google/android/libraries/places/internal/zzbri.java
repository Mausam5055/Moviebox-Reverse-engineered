package com.google.android.libraries.places.internal;

import java.io.IOException;
import java.net.Socket;

/* JADX INFO: loaded from: classes4.dex */
final class zzbri implements zzbwq {
    private final zzbqe zzc;
    private final zzbrj zzd;
    private zzbwq zzh;
    private Socket zzi;
    private boolean zzj;
    private int zzk;
    private int zzl;
    private final Object zza = new Object();
    private final zzbwb zzb = new zzbwb();
    private boolean zze = false;
    private boolean zzf = false;
    private boolean zzg = false;

    private zzbri(zzbqe zzbqeVar, zzbrj zzbrjVar, int i11) {
        zzmt.zzc(zzbqeVar, "executor");
        this.zzc = zzbqeVar;
        this.zzd = zzbrjVar;
    }

    static zzbri zzc(zzbqe zzbqeVar, zzbrj zzbrjVar, int i11) {
        return new zzbri(zzbqeVar, zzbrjVar, 10000);
    }

    @Override // com.google.android.libraries.places.internal.zzbwq, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        if (this.zzg) {
            return;
        }
        this.zzg = true;
        this.zzc.execute(new zzbre(this));
    }

    @Override // com.google.android.libraries.places.internal.zzbwq, java.io.Flushable
    public final void flush() throws IOException {
        if (this.zzg) {
            throw new IOException("closed");
        }
        int i11 = zzbvr.zza;
        synchronized (this.zza) {
            try {
                if (this.zzf) {
                    return;
                }
                this.zzf = true;
                this.zzc.execute(new zzbrd(this));
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    final void zzm(zzbwq zzbwqVar, Socket socket) {
        zzmt.zzp(this.zzh == null, "AsyncSink's becomeConnected should only be called once.");
        this.zzh = zzbwqVar;
        zzmt.zzc(socket, "socket");
        this.zzi = socket;
    }

    @Override // com.google.android.libraries.places.internal.zzbwq
    public final void zzn(zzbwb zzbwbVar, long j11) throws IOException {
        if (this.zzg) {
            throw new IOException("closed");
        }
        int i11 = zzbvr.zza;
        synchronized (this.zza) {
            try {
                this.zzb.zzn(zzbwbVar, j11);
                int i12 = this.zzl + this.zzk;
                this.zzl = i12;
                boolean z10 = false;
                this.zzk = 0;
                if (this.zzj || i12 <= 10000) {
                    if (!this.zze && !this.zzf && this.zzb.zzf() > 0) {
                        this.zze = true;
                    }
                    return;
                }
                this.zzj = true;
                z10 = true;
                if (!z10) {
                    this.zzc.execute(new zzbrc(this));
                    return;
                }
                try {
                    this.zzi.close();
                } catch (IOException e11) {
                    this.zzd.zzb(e11);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
