package com.google.android.gms.internal.measurement;

import a.RouterMap__TheRouter__1365664310;
import com.google.android.gms.internal.measurement.zzib;
import com.google.android.gms.internal.measurement.zzid;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzid<MessageType extends zzib<MessageType, BuilderType>, BuilderType extends zzid<MessageType, BuilderType>> implements zzlb {
    private final String zza(String str) {
        return "Reading " + getClass().getName() + " from a " + str + " threw an IOException (should never happen).";
    }

    protected static <T> void zza(Iterable<T> iterable, List<? super T> list) {
        zzjv.zza(iterable);
        if (iterable instanceof zzkj) {
            List<?> listZza = ((zzkj) iterable).zza();
            zzkj zzkjVar = (zzkj) list;
            int size = list.size();
            for (Object obj : listZza) {
                if (obj == null) {
                    String str = "Element at index " + (zzkjVar.size() - size) + " is null.";
                    for (int size2 = zzkjVar.size() - 1; size2 >= size; size2--) {
                        zzkjVar.remove(size2);
                    }
                    throw new NullPointerException(str);
                }
                if (obj instanceof zzik) {
                    zzkjVar.zza((zzik) obj);
                } else if (obj instanceof byte[]) {
                    zzkjVar.zza(zzik.zza((byte[]) obj));
                } else {
                    zzkjVar.add((String) obj);
                }
            }
            return;
        }
        if (iterable instanceof zzlo) {
            list.addAll((Collection) iterable);
            return;
        }
        if (iterable instanceof Collection) {
            int size3 = ((Collection) iterable).size();
            if (list instanceof ArrayList) {
                ((ArrayList) list).ensureCapacity(list.size() + size3);
            }
            if (list instanceof zzlp) {
                ((zzlp) list).zzb(list.size() + size3);
            }
        }
        int size4 = list.size();
        if (!(iterable instanceof List) || !(iterable instanceof RandomAccess)) {
            for (Object obj2 : iterable) {
                if (obj2 == null) {
                    zza(list, size4);
                }
                list.add(obj2);
            }
            return;
        }
        List list2 = (List) iterable;
        int size5 = list2.size();
        for (int i11 = 0; i11 < size5; i11++) {
            RouterMap__TheRouter__1365664310 routerMap__TheRouter__1365664310 = (Object) list2.get(i11);
            if (routerMap__TheRouter__1365664310 == null) {
                zza(list, size4);
            }
            list.add(routerMap__TheRouter__1365664310);
        }
    }

    private static void zza(List<?> list, int i11) {
        String str = "Element at index " + (list.size() - i11) + " is null.";
        for (int size = list.size() - 1; size >= i11; size--) {
            list.remove(size);
        }
        throw new NullPointerException(str);
    }

    @Override // 
    /* JADX INFO: renamed from: zza, reason: merged with bridge method [inline-methods] */
    public abstract BuilderType zzb(zziw zziwVar, zzjg zzjgVar) throws IOException;

    public BuilderType zza(byte[] bArr, int i11, int i12) throws zzkb {
        try {
            zziw zziwVarZza = zziw.zza(bArr, 0, i12, false);
            zzb(zziwVarZza, zzjg.zza);
            zziwVarZza.zzc(0);
            return this;
        } catch (zzkb e11) {
            throw e11;
        } catch (IOException e12) {
            throw new RuntimeException(zza("byte array"), e12);
        }
    }

    public BuilderType zza(byte[] bArr, int i11, int i12, zzjg zzjgVar) throws zzkb {
        try {
            zziw zziwVarZza = zziw.zza(bArr, 0, i12, false);
            zzb(zziwVarZza, zzjgVar);
            zziwVarZza.zzc(0);
            return this;
        } catch (zzkb e11) {
            throw e11;
        } catch (IOException e12) {
            throw new RuntimeException(zza("byte array"), e12);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzlb
    public final /* synthetic */ zzlb zza(byte[] bArr) throws zzkb {
        return zza(bArr, 0, bArr.length);
    }

    @Override // com.google.android.gms.internal.measurement.zzlb
    public final /* synthetic */ zzlb zza(byte[] bArr, zzjg zzjgVar) throws zzkb {
        return zza(bArr, 0, bArr.length, zzjgVar);
    }

    @Override // 
    /* JADX INFO: renamed from: zzaf, reason: merged with bridge method [inline-methods] */
    public abstract BuilderType clone();
}
