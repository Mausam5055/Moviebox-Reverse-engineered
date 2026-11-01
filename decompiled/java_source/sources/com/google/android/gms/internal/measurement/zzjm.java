package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzjo;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
final class zzjm<T extends zzjo<T>> {
    private static final zzjm<?> zzb = new zzjm<>(true);
    final zzlv<T, Object> zza;
    private boolean zzc;
    private boolean zzd;

    private zzjm() {
        this.zza = new zzly();
    }

    private zzjm(zzlv<T, Object> zzlvVar) {
        this.zza = zzlvVar;
        zze();
    }

    private zzjm(boolean z10) {
        this(new zzly());
        zze();
    }

    public static int zza(zzjo<?> zzjoVar, Object obj) {
        zzms zzmsVarZzb = zzjoVar.zzb();
        int iZza = zzjoVar.zza();
        if (!zzjoVar.zze()) {
            return zza(zzmsVarZzb, iZza, obj);
        }
        List list = (List) obj;
        int size = list.size();
        int i11 = 0;
        if (!zzjoVar.zzd()) {
            int iZza2 = 0;
            while (i11 < size) {
                iZza2 += zza(zzmsVarZzb, iZza, list.get(i11));
                i11++;
            }
            return iZza2;
        }
        if (list.isEmpty()) {
            return 0;
        }
        int iZza3 = 0;
        while (i11 < size) {
            iZza3 += zza(zzmsVarZzb, list.get(i11));
            i11++;
        }
        return zzjc.zzi(iZza) + iZza3 + zzjc.zzj(iZza3);
    }

    static int zza(zzms zzmsVar, int i11, Object obj) {
        int iZzi = zzjc.zzi(i11);
        if (zzmsVar == zzms.zzj) {
            zzjv.zza((zzlc) obj);
            iZzi <<= 1;
        }
        return iZzi + zza(zzmsVar, obj);
    }

    private static int zza(zzms zzmsVar, Object obj) {
        switch (zzjl.zzb[zzmsVar.ordinal()]) {
            case 1:
                return zzjc.zza(((Double) obj).doubleValue());
            case 2:
                return zzjc.zza(((Float) obj).floatValue());
            case 3:
                return zzjc.zzd(((Long) obj).longValue());
            case 4:
                return zzjc.zzg(((Long) obj).longValue());
            case 5:
                return zzjc.zzf(((Integer) obj).intValue());
            case 6:
                return zzjc.zzc(((Long) obj).longValue());
            case 7:
                return zzjc.zze(((Integer) obj).intValue());
            case 8:
                return zzjc.zza(((Boolean) obj).booleanValue());
            case 9:
                return zzjc.zzb((zzlc) obj);
            case 10:
                return obj instanceof zzkg ? zzjc.zza((zzkg) obj) : zzjc.zzc((zzlc) obj);
            case 11:
                return obj instanceof zzik ? zzjc.zzb((zzik) obj) : zzjc.zzb((String) obj);
            case 12:
                return obj instanceof zzik ? zzjc.zzb((zzik) obj) : zzjc.zza((byte[]) obj);
            case 13:
                return zzjc.zzj(((Integer) obj).intValue());
            case 14:
                return zzjc.zzg(((Integer) obj).intValue());
            case 15:
                return zzjc.zze(((Long) obj).longValue());
            case 16:
                return zzjc.zzh(((Integer) obj).intValue());
            case 17:
                return zzjc.zzf(((Long) obj).longValue());
            case 18:
                return obj instanceof zzjy ? zzjc.zzd(((zzjy) obj).zza()) : zzjc.zzd(((Integer) obj).intValue());
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
    }

    private static int zza(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        Object value = entry.getValue();
        if (key.zzc() != zzmz.MESSAGE || key.zze() || key.zzd()) {
            return zza((zzjo<?>) key, value);
        }
        return value instanceof zzkg ? zzjc.zza(entry.getKey().zza(), (zzkg) value) : zzjc.zzb(entry.getKey().zza(), (zzlc) value);
    }

    private final Object zza(T t11) {
        Object obj = this.zza.get(t11);
        if (obj instanceof zzkg) {
            throw new NoSuchMethodError();
        }
        return obj;
    }

    private static Object zza(Object obj) {
        if (obj instanceof zzlh) {
            return ((zzlh) obj).clone();
        }
        if (!(obj instanceof byte[])) {
            return obj;
        }
        byte[] bArr = (byte[]) obj;
        byte[] bArr2 = new byte[bArr.length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        return bArr2;
    }

    static void zza(zzjc zzjcVar, zzms zzmsVar, int i11, Object obj) throws IOException {
        if (zzmsVar == zzms.zzj) {
            zzlc zzlcVar = (zzlc) obj;
            zzjv.zza(zzlcVar);
            zzjcVar.zzc(i11, 3);
            zzlcVar.zza(zzjcVar);
            zzjcVar.zzc(i11, 4);
        }
        zzjcVar.zzc(i11, zzmsVar.zza());
        switch (zzjl.zzb[zzmsVar.ordinal()]) {
            case 1:
                zzjcVar.zzb(((Double) obj).doubleValue());
                break;
            case 2:
                zzjcVar.zzb(((Float) obj).floatValue());
                break;
            case 3:
                zzjcVar.zzb(((Long) obj).longValue());
                break;
            case 4:
                zzjcVar.zzb(((Long) obj).longValue());
                break;
            case 5:
                zzjcVar.zzb(((Integer) obj).intValue());
                break;
            case 6:
                zzjcVar.zza(((Long) obj).longValue());
                break;
            case 7:
                zzjcVar.zza(((Integer) obj).intValue());
                break;
            case 8:
                zzjcVar.zzb(((Boolean) obj).booleanValue());
                break;
            case 9:
                ((zzlc) obj).zza(zzjcVar);
                break;
            case 10:
                zzjcVar.zza((zzlc) obj);
                break;
            case 11:
                if (!(obj instanceof zzik)) {
                    zzjcVar.zza((String) obj);
                } else {
                    zzjcVar.zza((zzik) obj);
                }
                break;
            case 12:
                if (!(obj instanceof zzik)) {
                    byte[] bArr = (byte[]) obj;
                    zzjcVar.zzb(bArr, 0, bArr.length);
                } else {
                    zzjcVar.zza((zzik) obj);
                }
                break;
            case 13:
                zzjcVar.zzc(((Integer) obj).intValue());
                break;
            case 14:
                zzjcVar.zza(((Integer) obj).intValue());
                break;
            case 15:
                zzjcVar.zza(((Long) obj).longValue());
                break;
            case 16:
                zzjcVar.zzk(((Integer) obj).intValue());
                break;
            case 17:
                zzjcVar.zzh(((Long) obj).longValue());
                break;
            case 18:
                if (!(obj instanceof zzjy)) {
                    zzjcVar.zzb(((Integer) obj).intValue());
                } else {
                    zzjcVar.zzb(((zzjy) obj).zza());
                }
                break;
        }
    }

    public static <T extends zzjo<T>> zzjm<T> zzb() {
        return (zzjm<T>) zzb;
    }

    private final void zzb(T t11, Object obj) {
        if (!t11.zze()) {
            zzc(t11, obj);
        } else {
            if (!(obj instanceof List)) {
                throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
            }
            List list = (List) obj;
            int size = list.size();
            ArrayList arrayList = new ArrayList(size);
            for (int i11 = 0; i11 < size; i11++) {
                Object obj2 = list.get(i11);
                zzc(t11, obj2);
                arrayList.add(obj2);
            }
            obj = arrayList;
        }
        if (obj instanceof zzkg) {
            this.zzd = true;
        }
        this.zza.put(t11, obj);
    }

    private final void zzb(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        Object value = entry.getValue();
        boolean z10 = value instanceof zzkg;
        if (key.zze()) {
            if (z10) {
                throw new IllegalStateException("Lazy fields can not be repeated");
            }
            Object objZza = zza((zzjo) key);
            List list = (List) value;
            int size = list.size();
            if (objZza == null) {
                objZza = new ArrayList(size);
            }
            List list2 = (List) objZza;
            for (int i11 = 0; i11 < size; i11++) {
                list2.add(zza(list.get(i11)));
            }
            this.zza.put(key, objZza);
            return;
        }
        if (key.zzc() != zzmz.MESSAGE) {
            if (z10) {
                throw new IllegalStateException("Lazy fields must be message-valued");
            }
            this.zza.put(key, zza(value));
            return;
        }
        Object objZza2 = zza((zzjo) key);
        if (objZza2 != null) {
            if (z10) {
                throw new NoSuchMethodError();
            }
            this.zza.put(key, objZza2 instanceof zzlh ? key.zza((zzlh) objZza2, (zzlh) value) : key.zza(((zzlc) objZza2).zzcj(), (zzlc) value).zzai());
        } else {
            this.zza.put(key, zza(value));
            if (z10) {
                this.zzd = true;
            }
        }
    }

    private static boolean zzb(Object obj) {
        if (obj instanceof zzle) {
            return ((zzle) obj).zzcn();
        }
        if (obj instanceof zzkg) {
            return true;
        }
        throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
    }

    /* JADX WARN: Code duplicated, block: B:9:0x0022  */
    private static void zzc(T t11, Object obj) {
        boolean z10;
        zzms zzmsVarZzb = t11.zzb();
        zzjv.zza(obj);
        switch (zzjl.zza[zzmsVarZzb.zzb().ordinal()]) {
            case 1:
                z10 = obj instanceof Integer;
                break;
            case 2:
                z10 = obj instanceof Long;
                break;
            case 3:
                z10 = obj instanceof Float;
                break;
            case 4:
                z10 = obj instanceof Double;
                break;
            case 5:
                z10 = obj instanceof Boolean;
                break;
            case 6:
                z10 = obj instanceof String;
                break;
            case 7:
                if ((obj instanceof zzik) || (obj instanceof byte[])) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                break;
            case 8:
                if ((obj instanceof Integer) || (obj instanceof zzjy)) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                break;
            case 9:
                if ((obj instanceof zzlc) || (obj instanceof zzkg)) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                break;
            default:
                z10 = false;
                break;
        }
        if (!z10) {
            throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(t11.zza()), t11.zzb().zzb(), obj.getClass().getName()));
        }
    }

    private static <T extends zzjo<T>> boolean zzc(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        if (key.zzc() != zzmz.MESSAGE) {
            return true;
        }
        if (!key.zze()) {
            return zzb(entry.getValue());
        }
        List list = (List) entry.getValue();
        int size = list.size();
        for (int i11 = 0; i11 < size; i11++) {
            if (!zzb(list.get(i11))) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final /* synthetic */ Object clone() throws CloneNotSupportedException {
        zzjm zzjmVar = new zzjm();
        int iZza = this.zza.zza();
        for (int i11 = 0; i11 < iZza; i11++) {
            Map.Entry<K, Object> entryZza = this.zza.zza(i11);
            zzjmVar.zzb((zzjo) entryZza.getKey(), entryZza.getValue());
        }
        Iterator it = this.zza.zzb().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            zzjmVar.zzb((zzjo) entry.getKey(), entry.getValue());
        }
        zzjmVar.zzd = this.zzd;
        return zzjmVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzjm) {
            return this.zza.equals(((zzjm) obj).zza);
        }
        return false;
    }

    public final int hashCode() {
        return this.zza.hashCode();
    }

    public final int zza() {
        int iZza = this.zza.zza();
        int iZza2 = 0;
        for (int i11 = 0; i11 < iZza; i11++) {
            iZza2 += zza((Map.Entry) this.zza.zza(i11));
        }
        Iterator it = this.zza.zzb().iterator();
        while (it.hasNext()) {
            iZza2 += zza((Map.Entry) it.next());
        }
        return iZza2;
    }

    public final void zza(zzjm<T> zzjmVar) {
        int iZza = zzjmVar.zza.zza();
        for (int i11 = 0; i11 < iZza; i11++) {
            zzb((Map.Entry) zzjmVar.zza.zza(i11));
        }
        Iterator it = zzjmVar.zza.zzb().iterator();
        while (it.hasNext()) {
            zzb((Map.Entry) it.next());
        }
    }

    final Iterator<Map.Entry<T, Object>> zzc() {
        if (this.zza.isEmpty()) {
            return Collections.emptyIterator();
        }
        return this.zzd ? new zzki(this.zza.zzc().iterator()) : this.zza.zzc().iterator();
    }

    public final Iterator<Map.Entry<T, Object>> zzd() {
        if (this.zza.isEmpty()) {
            return Collections.emptyIterator();
        }
        return this.zzd ? new zzki(this.zza.entrySet().iterator()) : this.zza.entrySet().iterator();
    }

    public final void zze() {
        if (this.zzc) {
            return;
        }
        int iZza = this.zza.zza();
        for (int i11 = 0; i11 < iZza; i11++) {
            Object value = this.zza.zza(i11).getValue();
            if (value instanceof zzjt) {
                ((zzjt) value).zzcl();
            }
        }
        Iterator it = this.zza.zzb().iterator();
        while (it.hasNext()) {
            Object value2 = ((Map.Entry) it.next()).getValue();
            if (value2 instanceof zzjt) {
                ((zzjt) value2).zzcl();
            }
        }
        this.zza.zzd();
        this.zzc = true;
    }

    public final boolean zzf() {
        return this.zzc;
    }

    public final boolean zzg() {
        int iZza = this.zza.zza();
        for (int i11 = 0; i11 < iZza; i11++) {
            if (!zzc(this.zza.zza(i11))) {
                return false;
            }
        }
        Iterator it = this.zza.zzb().iterator();
        while (it.hasNext()) {
            if (!zzc((Map.Entry) it.next())) {
                return false;
            }
        }
        return true;
    }
}
