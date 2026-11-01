package com.google.android.libraries.places.internal;

import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes4.dex */
public final class zzbnz implements zzbkj {
    private static final Logger zza = Logger.getLogger(zzbnz.class.getName());
    private static final Constructor zzb;
    private static final Method zzc;
    private static final Method zzd;
    private static final RuntimeException zze;
    private static final Object[] zzf;
    private final Object zzg;

    static {
        Method method;
        Method method2;
        Constructor<?> constructor;
        Method method3;
        Method method4;
        try {
            Class<?> cls = Class.forName("java.util.concurrent.atomic.LongAdder");
            method3 = cls.getMethod("add", Long.TYPE);
            try {
                method4 = cls.getMethod("sum", null);
                try {
                    Constructor<?>[] constructors = cls.getConstructors();
                    int length = constructors.length;
                    int i11 = 0;
                    while (true) {
                        if (i11 >= length) {
                            constructor = null;
                            break;
                        }
                        constructor = constructors[i11];
                        if (constructor.getParameterTypes().length == 0) {
                            break;
                        } else {
                            i11++;
                        }
                    }
                    th = null;
                } catch (Throwable th2) {
                    th = th2;
                    method = method3;
                    method2 = method4;
                    zza.logp(Level.FINE, "io.grpc.internal.ReflectionLongAdderCounter", "<clinit>", "LongAdder can not be found via reflection, this is normal for JDK7 and below", th);
                    constructor = null;
                    method3 = method;
                    method4 = method2;
                }
            } catch (Throwable th3) {
                th = th3;
                method2 = null;
                method = method3;
            }
        } catch (Throwable th4) {
            th = th4;
            method = null;
            method2 = null;
        }
        if (th != null || constructor == null) {
            zzb = null;
            zzc = null;
            zzd = null;
            zze = new RuntimeException(th);
        } else {
            zzb = constructor;
            zzc = method3;
            zzd = method4;
            zze = null;
        }
        zzf = new Object[]{1L};
    }

    zzbnz() {
        RuntimeException runtimeException = zze;
        if (runtimeException != null) {
            throw runtimeException;
        }
        try {
            this.zzg = zzb.newInstance(null);
        } catch (IllegalAccessException e11) {
            throw new RuntimeException(e11);
        } catch (InstantiationException e12) {
            throw new RuntimeException(e12);
        } catch (InvocationTargetException e13) {
            throw new RuntimeException(e13);
        }
    }

    static boolean zzb() {
        return zze == null;
    }

    @Override // com.google.android.libraries.places.internal.zzbkj
    public final void zza(long j11) {
        try {
            zzc.invoke(this.zzg, zzf);
        } catch (IllegalAccessException e11) {
            throw new RuntimeException(e11);
        } catch (InvocationTargetException e12) {
            throw new RuntimeException(e12);
        }
    }
}
