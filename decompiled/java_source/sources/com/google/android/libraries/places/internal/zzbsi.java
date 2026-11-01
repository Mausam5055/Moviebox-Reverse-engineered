package com.google.android.libraries.places.internal;

import com.cloud.tmc.integration.permission.PermissionConstant;
import java.util.EnumMap;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes4.dex */
final class zzbsi {
    private final Logger zza;
    private final Level zzb;

    zzbsi(Level level, Class cls) {
        Logger logger = Logger.getLogger(cls.getName());
        zzmt.zzc(level, PermissionConstant.level);
        this.zzb = level;
        zzmt.zzc(logger, "logger");
        this.zza = logger;
    }

    private static String zzk(zzbwb zzbwbVar) {
        return zzbwbVar.zzg() <= 64 ? zzbwbVar.zzz().zze() : String.valueOf(zzbwbVar.zzA((int) Math.min(zzbwbVar.zzg(), 64L)).zze()).concat("...");
    }

    private final boolean zzl() {
        return this.zza.isLoggable(this.zzb);
    }

    final void zza(int i11, int i12, zzbwb zzbwbVar, int i13, boolean z10) {
        if (zzl()) {
            this.zza.logp(this.zzb, "io.grpc.okhttp.OkHttpFrameLogger", "logData", zzbsg.zza(i11) + " DATA: streamId=" + i12 + " endStream=" + z10 + " length=" + i13 + " bytes=" + zzk(zzbwbVar));
        }
    }

    final void zzb(int i11, int i12, zzbtp zzbtpVar, zzbwf zzbwfVar) {
        if (zzl()) {
            Logger logger = this.zza;
            Level level = this.zzb;
            String strZza = zzbsg.zza(i11);
            String strValueOf = String.valueOf(zzbtpVar);
            int iZzc = zzbwfVar.zzc();
            zzbwb zzbwbVar = new zzbwb();
            zzbwbVar.zzk(zzbwfVar);
            logger.logp(level, "io.grpc.okhttp.OkHttpFrameLogger", "logGoAway", strZza + " GO_AWAY: lastStreamId=" + i12 + " errorCode=" + strValueOf + " length=" + iZzc + " bytes=" + zzk(zzbwbVar));
        }
    }

    final void zzc(int i11, int i12, List list, boolean z10) {
        if (zzl()) {
            this.zza.logp(this.zzb, "io.grpc.okhttp.OkHttpFrameLogger", "logHeaders", "INBOUND HEADERS: streamId=" + i12 + " headers=" + list.toString() + " endStream=" + z10);
        }
    }

    final void zzd(int i11, long j11) {
        if (zzl()) {
            this.zza.logp(this.zzb, "io.grpc.okhttp.OkHttpFrameLogger", "logPing", zzbsg.zza(i11) + " PING: ack=false bytes=" + j11);
        }
    }

    final void zze(int i11, long j11) {
        if (zzl()) {
            this.zza.logp(this.zzb, "io.grpc.okhttp.OkHttpFrameLogger", "logPingAck", zzbsg.zza(2) + " PING: ack=true bytes=" + j11);
        }
    }

    final void zzf(int i11, int i12, int i13, List list) {
        if (zzl()) {
            this.zza.logp(this.zzb, "io.grpc.okhttp.OkHttpFrameLogger", "logPushPromise", "INBOUND PUSH_PROMISE: streamId=" + i12 + " promisedStreamId=" + i13 + " headers=" + list.toString());
        }
    }

    final void zzg(int i11, int i12, zzbtp zzbtpVar) {
        if (zzl()) {
            this.zza.logp(this.zzb, "io.grpc.okhttp.OkHttpFrameLogger", "logRstStream", zzbsg.zza(i11) + " RST_STREAM: streamId=" + i12 + " errorCode=" + String.valueOf(zzbtpVar));
        }
    }

    final void zzh(int i11, zzbue zzbueVar) {
        if (zzl()) {
            Logger logger = this.zza;
            Level level = this.zzb;
            String strZza = zzbsg.zza(i11);
            EnumMap enumMap = new EnumMap(zzbsh.class);
            for (zzbsh zzbshVar : zzbsh.values()) {
                if (zzbueVar.zzf(zzbshVar.zza())) {
                    enumMap.put(zzbshVar, Integer.valueOf(zzbueVar.zza(zzbshVar.zza())));
                }
            }
            logger.logp(level, "io.grpc.okhttp.OkHttpFrameLogger", "logSettings", strZza + " SETTINGS: ack=false settings=" + enumMap.toString());
        }
    }

    final void zzi(int i11) {
        if (zzl()) {
            this.zza.logp(this.zzb, "io.grpc.okhttp.OkHttpFrameLogger", "logSettingsAck", zzbsg.zza(2).concat(" SETTINGS: ack=true"));
        }
    }

    final void zzj(int i11, int i12, long j11) {
        if (zzl()) {
            this.zza.logp(this.zzb, "io.grpc.okhttp.OkHttpFrameLogger", "logWindowsUpdate", zzbsg.zza(i11) + " WINDOW_UPDATE: streamId=" + i12 + " windowSizeIncrement=" + j11);
        }
    }
}
