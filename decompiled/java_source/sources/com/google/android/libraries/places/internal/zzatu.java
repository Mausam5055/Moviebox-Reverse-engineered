package com.google.android.libraries.places.internal;

import com.google.android.libraries.places.internal.zzato;
import com.google.android.libraries.places.internal.zzatu;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzatu<MessageType extends zzatu<MessageType, BuilderType>, BuilderType extends zzato<MessageType, BuilderType>> extends zzart<MessageType, BuilderType> {
    private static final Map zzb = new ConcurrentHashMap();
    public static final /* synthetic */ int zzd = 0;
    private int zze = -1;
    protected zzawo zzc = zzawo.zzc();

    static Object zzaA(Method method, Object obj, Object... objArr) {
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

    protected static Object zzaB(zzavf zzavfVar, String str, Object[] objArr) {
        return new zzavr(zzavfVar, str, objArr);
    }

    protected static void zzaE(Class cls, zzatu zzatuVar) {
        zzatuVar.zzaD();
        zzb.put(cls, zzatuVar);
    }

    protected static final boolean zzaG(zzatu zzatuVar, boolean z10) {
        byte bByteValue = ((Byte) zzatuVar.zzb(1, null, null)).byteValue();
        if (bByteValue == 1) {
            return true;
        }
        if (bByteValue == 0) {
            return false;
        }
        boolean zZzh = zzavp.zza().zzb(zzatuVar.getClass()).zzh(zzatuVar);
        if (z10) {
            zzatuVar.zzb(2, true != zZzh ? null : zzatuVar, null);
        }
        return zZzh;
    }

    static zzatu zzas(Class cls) {
        Map map = zzb;
        zzatu zzatuVar = (zzatu) map.get(cls);
        if (zzatuVar == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                zzatuVar = (zzatu) map.get(cls);
            } catch (ClassNotFoundException e11) {
                throw new IllegalStateException("Class initialization cannot fail.", e11);
            }
        }
        if (zzatuVar == null) {
            zzatuVar = (zzatu) ((zzatu) zzawx.zze(cls)).zzb(6, null, null);
            if (zzatuVar == null) {
                throw new IllegalStateException();
            }
            map.put(cls, zzatuVar);
        }
        return zzatuVar;
    }

    protected static zzatz zzau() {
        return zzatv.zzf();
    }

    protected static zzatz zzav(zzatz zzatzVar) {
        int size = zzatzVar.size();
        return zzatzVar.zzd(size == 0 ? 10 : size + size);
    }

    protected static zzaub zzaw() {
        return zzauu.zzf();
    }

    protected static zzauc zzax() {
        return zzavq.zze();
    }

    protected static zzauc zzay(zzauc zzaucVar) {
        int size = zzaucVar.size();
        return zzaucVar.zzd(size == 0 ? 10 : size + size);
    }

    private final int zzc(zzavt zzavtVar) {
        return zzavp.zza().zzb(getClass()).zza(this);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return zzavp.zza().zzb(getClass()).zzg(this, (zzatu) obj);
    }

    public final int hashCode() {
        if (zzaH()) {
            return zzap();
        }
        int i11 = this.zza;
        if (i11 != 0) {
            return i11;
        }
        int iZzap = zzap();
        this.zza = iZzap;
        return iZzap;
    }

    public final String toString() {
        return zzavh.zza(this, super.toString());
    }

    protected final void zzaC() {
        zzavp.zza().zzb(getClass()).zzd(this);
        zzaD();
    }

    final void zzaD() {
        this.zze &= Integer.MAX_VALUE;
    }

    final void zzaF(int i11) {
        this.zze = (this.zze & Integer.MIN_VALUE) | Integer.MAX_VALUE;
    }

    final boolean zzaH() {
        return (this.zze & Integer.MIN_VALUE) != 0;
    }

    @Override // com.google.android.libraries.places.internal.zzavf
    public final /* synthetic */ zzave zzaI() {
        return (zzato) zzb(5, null, null);
    }

    @Override // com.google.android.libraries.places.internal.zzavf
    public final /* synthetic */ zzave zzaJ() {
        zzato zzatoVar = (zzato) zzb(5, null, null);
        zzatoVar.zzq(this);
        return zzatoVar;
    }

    @Override // com.google.android.libraries.places.internal.zzavf
    public final void zzaK(zzasx zzasxVar) throws IOException {
        zzavp.zza().zzb(getClass()).zzj(this, zzasy.zza(zzasxVar));
    }

    @Override // com.google.android.libraries.places.internal.zzavg
    public final /* synthetic */ zzavf zzaL() {
        return (zzatu) zzb(6, null, null);
    }

    @Override // com.google.android.libraries.places.internal.zzavg
    public final boolean zzaM() {
        return zzaG(this, true);
    }

    @Override // com.google.android.libraries.places.internal.zzart
    final int zzak(zzavt zzavtVar) {
        if (zzaH()) {
            int iZza = zzavtVar.zza(this);
            if (iZza >= 0) {
                return iZza;
            }
            throw new IllegalStateException("serialized size must be non-negative, was " + iZza);
        }
        int i11 = this.zze & Integer.MAX_VALUE;
        if (i11 != Integer.MAX_VALUE) {
            return i11;
        }
        int iZza2 = zzavtVar.zza(this);
        if (iZza2 >= 0) {
            this.zze = (this.zze & Integer.MIN_VALUE) | iZza2;
            return iZza2;
        }
        throw new IllegalStateException("serialized size must be non-negative, was " + iZza2);
    }

    final int zzap() {
        return zzavp.zza().zzb(getClass()).zzb(this);
    }

    @Override // com.google.android.libraries.places.internal.zzavf
    public final int zzaq() {
        int iZzc;
        if (zzaH()) {
            iZzc = zzc(null);
            if (iZzc < 0) {
                throw new IllegalStateException("serialized size must be non-negative, was " + iZzc);
            }
        } else {
            iZzc = this.zze & Integer.MAX_VALUE;
            if (iZzc == Integer.MAX_VALUE) {
                iZzc = zzc(null);
                if (iZzc < 0) {
                    throw new IllegalStateException("serialized size must be non-negative, was " + iZzc);
                }
                this.zze = (this.zze & Integer.MIN_VALUE) | iZzc;
            }
        }
        return iZzc;
    }

    protected final zzato zzar() {
        return (zzato) zzb(5, null, null);
    }

    final zzatu zzat() {
        return (zzatu) zzb(4, null, null);
    }

    @Override // com.google.android.libraries.places.internal.zzavf
    public final zzavn zzaz() {
        return (zzavn) zzb(7, null, null);
    }

    protected abstract Object zzb(int i11, Object obj, Object obj2);
}
