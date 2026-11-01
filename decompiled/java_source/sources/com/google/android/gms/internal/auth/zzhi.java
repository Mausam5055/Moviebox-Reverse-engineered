package com.google.android.gms.internal.auth;

import com.google.android.libraries.places.api.model.PlaceTypes;
import java.lang.reflect.Field;
import java.nio.Buffer;
import java.nio.ByteOrder;
import java.security.AccessController;
import java.util.logging.Level;
import java.util.logging.Logger;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes4.dex */
final class zzhi {
    static final boolean zza;
    private static final Unsafe zzb;
    private static final Class zzc;
    private static final boolean zzd;
    private static final zzhh zze;
    private static final boolean zzf;
    private static final boolean zzg;

    /* JADX WARN: Code duplicated, block: B:11:0x003f  */
    static {
        boolean z10;
        boolean z11;
        zzhh zzhhVar;
        Unsafe unsafeZzg = zzg();
        zzb = unsafeZzg;
        zzc = zzdr.zza();
        Class<?> cls = Long.TYPE;
        boolean zZzs = zzs(cls);
        zzd = zZzs;
        boolean zZzs2 = zzs(Integer.TYPE);
        zzhh zzhfVar = null;
        if (unsafeZzg != null) {
            if (zZzs) {
                zzhfVar = new zzhg(unsafeZzg);
            } else if (zZzs2) {
                zzhfVar = new zzhf(unsafeZzg);
            }
        }
        zze = zzhfVar;
        if (zzhfVar == null) {
            z10 = false;
        } else {
            try {
                Class<?> cls2 = zzhfVar.zza.getClass();
                cls2.getMethod("objectFieldOffset", Field.class);
                cls2.getMethod("getLong", Object.class, cls);
                if (zzy() == null) {
                    z10 = false;
                } else {
                    z10 = true;
                }
            } catch (Throwable th2) {
                zzh(th2);
            }
        }
        zzf = z10;
        zzhh zzhhVar2 = zze;
        if (zzhhVar2 == null) {
            z11 = false;
        } else {
            try {
                Class<?> cls3 = zzhhVar2.zza.getClass();
                cls3.getMethod("objectFieldOffset", Field.class);
                cls3.getMethod("arrayBaseOffset", Class.class);
                cls3.getMethod("arrayIndexScale", Class.class);
                Class<?> cls4 = Long.TYPE;
                cls3.getMethod("getInt", Object.class, cls4);
                cls3.getMethod("putInt", Object.class, cls4, Integer.TYPE);
                cls3.getMethod("getLong", Object.class, cls4);
                cls3.getMethod("putLong", Object.class, cls4, cls4);
                cls3.getMethod("getObject", Object.class, cls4);
                cls3.getMethod("putObject", Object.class, cls4, Object.class);
                z11 = true;
            } catch (Throwable th3) {
                zzh(th3);
                z11 = false;
            }
        }
        zzg = z11;
        zzw(byte[].class);
        zzw(boolean[].class);
        zzx(boolean[].class);
        zzw(int[].class);
        zzx(int[].class);
        zzw(long[].class);
        zzx(long[].class);
        zzw(float[].class);
        zzx(float[].class);
        zzw(double[].class);
        zzx(double[].class);
        zzw(Object[].class);
        zzx(Object[].class);
        Field fieldZzy = zzy();
        if (fieldZzy != null && (zzhhVar = zze) != null) {
            zzhhVar.zzk(fieldZzy);
        }
        zza = ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN;
    }

    private zzhi() {
    }

    static double zza(Object obj, long j11) {
        return zze.zza(obj, j11);
    }

    static float zzb(Object obj, long j11) {
        return zze.zzb(obj, j11);
    }

    static int zzc(Object obj, long j11) {
        return zze.zzi(obj, j11);
    }

    static long zzd(Object obj, long j11) {
        return zze.zzj(obj, j11);
    }

    static Object zze(Class cls) {
        try {
            return zzb.allocateInstance(cls);
        } catch (InstantiationException e11) {
            throw new IllegalStateException(e11);
        }
    }

    static Object zzf(Object obj, long j11) {
        return zze.zzl(obj, j11);
    }

    static Unsafe zzg() {
        try {
            return (Unsafe) AccessController.doPrivileged(new zzhe());
        } catch (Throwable unused) {
            return null;
        }
    }

    static /* bridge */ /* synthetic */ void zzh(Throwable th2) {
        Logger.getLogger(zzhi.class.getName()).logp(Level.WARNING, "com.google.protobuf.UnsafeUtil", "logMissingMethod", "platform method missing - proto runtime falling back to safer methods: ".concat(th2.toString()));
    }

    static /* synthetic */ void zzi(Object obj, long j11, boolean z10) {
        long j12 = (-4) & j11;
        zzhh zzhhVar = zze;
        int iZzi = zzhhVar.zzi(obj, j12);
        int i11 = ((~((int) j11)) & 3) << 3;
        zzhhVar.zzm(obj, j12, ((z10 ? 1 : 0) << i11) | ((~(255 << i11)) & iZzi));
    }

    static /* synthetic */ void zzj(Object obj, long j11, boolean z10) {
        long j12 = (-4) & j11;
        zzhh zzhhVar = zze;
        int i11 = (((int) j11) & 3) << 3;
        zzhhVar.zzm(obj, j12, ((z10 ? 1 : 0) << i11) | ((~(255 << i11)) & zzhhVar.zzi(obj, j12)));
    }

    static void zzk(Object obj, long j11, boolean z10) {
        zze.zzc(obj, j11, z10);
    }

    static void zzl(Object obj, long j11, double d11) {
        zze.zzd(obj, j11, d11);
    }

    static void zzm(Object obj, long j11, float f11) {
        zze.zze(obj, j11, f11);
    }

    static void zzn(Object obj, long j11, int i11) {
        zze.zzm(obj, j11, i11);
    }

    static void zzo(Object obj, long j11, long j12) {
        zze.zzn(obj, j11, j12);
    }

    static void zzp(Object obj, long j11, Object obj2) {
        zze.zzo(obj, j11, obj2);
    }

    static /* bridge */ /* synthetic */ boolean zzq(Object obj, long j11) {
        return ((byte) ((zze.zzi(obj, (-4) & j11) >>> ((int) (((~j11) & 3) << 3))) & 255)) != 0;
    }

    static /* bridge */ /* synthetic */ boolean zzr(Object obj, long j11) {
        return ((byte) ((zze.zzi(obj, (-4) & j11) >>> ((int) ((j11 & 3) << 3))) & 255)) != 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    static boolean zzs(Class cls) {
        int i11 = zzdr.zza;
        try {
            Class cls2 = zzc;
            Class cls3 = Boolean.TYPE;
            cls2.getMethod("peekLong", cls, cls3);
            cls2.getMethod("pokeLong", cls, Long.TYPE, cls3);
            Class cls4 = Integer.TYPE;
            cls2.getMethod("pokeInt", cls, cls4, cls3);
            cls2.getMethod("peekInt", cls, cls3);
            cls2.getMethod("pokeByte", cls, Byte.TYPE);
            cls2.getMethod("peekByte", cls);
            cls2.getMethod("pokeByteArray", cls, byte[].class, cls4, cls4);
            cls2.getMethod("peekByteArray", cls, byte[].class, cls4, cls4);
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    static boolean zzt(Object obj, long j11) {
        return zze.zzf(obj, j11);
    }

    static boolean zzu() {
        return zzg;
    }

    static boolean zzv() {
        return zzf;
    }

    private static int zzw(Class cls) {
        if (zzg) {
            return zze.zzg(cls);
        }
        return -1;
    }

    private static int zzx(Class cls) {
        if (zzg) {
            return zze.zzh(cls);
        }
        return -1;
    }

    private static Field zzy() {
        int i11 = zzdr.zza;
        Field fieldZzz = zzz(Buffer.class, "effectiveDirectAddress");
        if (fieldZzz != null) {
            return fieldZzz;
        }
        Field fieldZzz2 = zzz(Buffer.class, PlaceTypes.ADDRESS);
        if (fieldZzz2 == null || fieldZzz2.getType() != Long.TYPE) {
            return null;
        }
        return fieldZzz2;
    }

    private static Field zzz(Class cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (Throwable unused) {
            return null;
        }
    }
}
