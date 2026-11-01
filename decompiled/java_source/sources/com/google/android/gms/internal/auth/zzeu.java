package com.google.android.gms.internal.auth;

import com.google.android.gms.internal.auth.zzes;
import com.google.android.gms.internal.auth.zzeu;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzeu<MessageType extends zzeu<MessageType, BuilderType>, BuilderType extends zzes<MessageType, BuilderType>> extends zzdp<MessageType, BuilderType> {
    private static final Map zzb = new ConcurrentHashMap();
    protected zzgz zzc = zzgz.zza();

    static zzeu zza(Class cls) {
        Map map = zzb;
        zzeu zzeuVar = (zzeu) map.get(cls);
        if (zzeuVar == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                zzeuVar = (zzeu) map.get(cls);
            } catch (ClassNotFoundException e11) {
                throw new IllegalStateException("Class initialization cannot fail.", e11);
            }
        }
        if (zzeuVar == null) {
            zzeuVar = (zzeu) ((zzeu) zzhi.zze(cls)).zzi(6, null, null);
            if (zzeuVar == null) {
                throw new IllegalStateException();
            }
            map.put(cls, zzeuVar);
        }
        return zzeuVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0034, code lost:
    
        if (r1 != false) goto L17;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected static zzeu zzb(zzeu zzeuVar, byte[] bArr) throws zzfa {
        byte bByteValue;
        zzeu zzeuVarZzj = zzj(zzeuVar, bArr, 0, bArr.length, zzek.zza);
        if (zzeuVarZzj != null && (bByteValue = ((Byte) zzeuVarZzj.zzi(1, null, null)).byteValue()) != 1) {
            if (bByteValue != 0) {
                boolean zZzi = zzge.zza().zzb(zzeuVarZzj.getClass()).zzi(zzeuVarZzj);
                zzeuVarZzj.zzi(2, true != zZzi ? null : zzeuVarZzj, null);
            }
            zzfa zzfaVarZza = new zzgx(zzeuVarZzj).zza();
            zzfaVarZza.zze(zzeuVarZzj);
            throw zzfaVarZza;
        }
        return zzeuVarZzj;
    }

    protected static zzey zzc() {
        return zzgf.zze();
    }

    static Object zze(Method method, Object obj, Object... objArr) {
        try {
            return method.invoke(obj, objArr);
        } catch (IllegalAccessException e11) {
            throw new RuntimeException("Couldn't use Java reflection to implement protocol message reflection.", e11);
        } catch (InvocationTargetException e12) {
            Throwable cause = e12.getCause();
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            }
            if (cause instanceof Error) {
                throw ((Error) cause);
            }
            throw new RuntimeException("Unexpected exception thrown by generated accessor method.", cause);
        }
    }

    protected static Object zzf(zzfw zzfwVar, String str, Object[] objArr) {
        return new zzgg(zzfwVar, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001a", objArr);
    }

    protected static void zzg(Class cls, zzeu zzeuVar) {
        zzb.put(cls, zzeuVar);
    }

    private static zzeu zzj(zzeu zzeuVar, byte[] bArr, int i11, int i12, zzek zzekVar) throws zzfa {
        zzeu zzeuVar2 = (zzeu) zzeuVar.zzi(4, null, null);
        try {
            zzgh zzghVarZzb = zzge.zza().zzb(zzeuVar2.getClass());
            zzghVarZzb.zzg(zzeuVar2, bArr, 0, i12, new zzds(zzekVar));
            zzghVarZzb.zze(zzeuVar2);
            if (zzeuVar2.zza == 0) {
                return zzeuVar2;
            }
            throw new RuntimeException();
        } catch (zzfa e11) {
            e11.zze(zzeuVar2);
            throw e11;
        } catch (zzgx e12) {
            zzfa zzfaVarZza = e12.zza();
            zzfaVarZza.zze(zzeuVar2);
            throw zzfaVarZza;
        } catch (IOException e13) {
            if (e13.getCause() instanceof zzfa) {
                throw ((zzfa) e13.getCause());
            }
            zzfa zzfaVar = new zzfa(e13);
            zzfaVar.zze(zzeuVar2);
            throw zzfaVar;
        } catch (IndexOutOfBoundsException unused) {
            zzfa zzfaVarZzf = zzfa.zzf();
            zzfaVarZzf.zze(zzeuVar2);
            throw zzfaVarZzf;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            return zzge.zza().zzb(getClass()).zzh(this, (zzeu) obj);
        }
        return false;
    }

    public final int hashCode() {
        int i11 = this.zza;
        if (i11 != 0) {
            return i11;
        }
        int iZza = zzge.zza().zzb(getClass()).zza(this);
        this.zza = iZza;
        return iZza;
    }

    public final String toString() {
        return zzfy.zza(this, super.toString());
    }

    @Override // com.google.android.gms.internal.auth.zzfw
    public final /* synthetic */ zzfv zzd() {
        zzes zzesVar = (zzes) zzi(5, null, null);
        zzesVar.zze(this);
        return zzesVar;
    }

    @Override // com.google.android.gms.internal.auth.zzfx
    public final /* synthetic */ zzfw zzh() {
        return (zzeu) zzi(6, null, null);
    }

    protected abstract Object zzi(int i11, Object obj, Object obj2);
}
