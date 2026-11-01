package com.google.android.libraries.places.internal;

import com.cloud.tmc.integration.event.EventConstants;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.Arrays;
import java.util.Collection;
import java.util.Objects;
import java.util.Set;
import java.util.SortedSet;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzob extends zznt implements Set {
    private transient zznx zza;

    zzob() {
    }

    static int zzh(int i11) {
        int iMax = Math.max(i11, 2);
        if (iMax >= 751619276) {
            zzmt.zzf(iMax < 1073741824, "collection too large");
            return 1073741824;
        }
        int iHighestOneBit = Integer.highestOneBit(iMax - 1);
        do {
            iHighestOneBit += iHighestOneBit;
        } while (((double) iHighestOneBit) * 0.7d < iMax);
        return iHighestOneBit;
    }

    public static zzob zzj(Collection collection) {
        if ((collection instanceof zzob) && !(collection instanceof SortedSet)) {
            zzob zzobVar = (zzob) collection;
            if (!zzobVar.zzf()) {
                return zzobVar;
            }
        }
        Object[] array = collection.toArray();
        return zzr(array.length, array);
    }

    public static zzob zzk() {
        return zzos.zza;
    }

    public static zzob zzl(Object obj) {
        return new zzou(obj);
    }

    public static zzob zzm(Object obj, Object obj2) {
        return zzr(2, obj, obj2);
    }

    public static zzob zzn(Object obj, Object obj2, Object obj3, Object obj4) {
        return zzr(4, "http", "https", "mailto", "ftp");
    }

    public static zzob zzo(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
        return zzr(5, MimeTypes.BASE_TYPE_AUDIO, "img", "input", EventConstants.KEY_SOURCE, "video");
    }

    @SafeVarargs
    public static zzob zzp(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object... objArr) {
        int length = objArr.length;
        int i11 = length + 6;
        Object[] objArr2 = new Object[i11];
        objArr2[0] = obj;
        objArr2[1] = obj2;
        objArr2[2] = obj3;
        objArr2[3] = obj4;
        objArr2[4] = obj5;
        objArr2[5] = obj6;
        System.arraycopy(objArr, 0, objArr2, 6, length);
        return zzr(i11, objArr2);
    }

    private static zzob zzr(int i11, Object... objArr) {
        if (i11 == 0) {
            return zzos.zza;
        }
        if (i11 == 1) {
            Object obj = objArr[0];
            Objects.requireNonNull(obj);
            return new zzou(obj);
        }
        int iZzh = zzh(i11);
        Object[] objArr2 = new Object[iZzh];
        int i12 = iZzh - 1;
        int i13 = 0;
        int i14 = 0;
        for (int i15 = 0; i15 < i11; i15++) {
            Object obj2 = objArr[i15];
            zzoi.zza(obj2, i15);
            int iHashCode = obj2.hashCode();
            int iZza = zznq.zza(iHashCode);
            while (true) {
                int i16 = iZza & i12;
                Object obj3 = objArr2[i16];
                if (obj3 == null) {
                    objArr[i14] = obj2;
                    objArr2[i16] = obj2;
                    i13 += iHashCode;
                    i14++;
                    break;
                }
                if (obj3.equals(obj2)) {
                    break;
                }
                iZza++;
            }
        }
        Arrays.fill(objArr, i14, i11, (Object) null);
        if (i14 == 1) {
            Object obj4 = objArr[0];
            Objects.requireNonNull(obj4);
            return new zzou(obj4);
        }
        if (zzh(i14) < iZzh / 2) {
            return zzr(i14, objArr);
        }
        int length = objArr.length;
        if (i14 < (length >> 1) + (length >> 2)) {
            objArr = Arrays.copyOf(objArr, i14);
        }
        return new zzos(objArr, i13, objArr2, i12, i14);
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof zzob) && zzq() && ((zzob) obj).zzq() && hashCode() != obj.hashCode()) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (obj instanceof Set) {
            Set set = (Set) obj;
            try {
                if (size() == set.size() && containsAll(set)) {
                    return true;
                }
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
        return false;
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        return zzot.zza(this);
    }

    @Override // com.google.android.libraries.places.internal.zznt
    public zznx zzd() {
        zznx zznxVar = this.zza;
        if (zznxVar != null) {
            return zznxVar;
        }
        zznx zznxVarZzi = zzi();
        this.zza = zznxVarZzi;
        return zznxVarZzi;
    }

    @Override // com.google.android.libraries.places.internal.zznt, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    /* JADX INFO: renamed from: zze */
    public abstract zzox iterator();

    zznx zzi() {
        Object[] array = toArray();
        int i11 = zznx.zzd;
        return zznx.zzi(array, array.length);
    }

    boolean zzq() {
        return false;
    }
}
