package com.google.android.gms.common.util;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.a;
import androidx.collection.b;
import com.google.android.gms.common.annotation.KeepForSdk;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
@KeepForSdk
public final class CollectionUtils {
    private CollectionUtils() {
    }

    @KeepForSdk
    public static boolean isEmpty(@Nullable Collection<?> collection) {
        if (collection == null) {
            return true;
        }
        return collection.isEmpty();
    }

    @NonNull
    @KeepForSdk
    @Deprecated
    public static <T> List<T> listOf() {
        return Collections.emptyList();
    }

    @NonNull
    @KeepForSdk
    @Deprecated
    public static <T> List<T> listOf(@NonNull T t11) {
        return Collections.singletonList(t11);
    }

    @NonNull
    @KeepForSdk
    @Deprecated
    public static <T> List<T> listOf(@NonNull T... tArr) {
        int length = tArr.length;
        if (length != 0) {
            return length != 1 ? Collections.unmodifiableList(Arrays.asList(tArr)) : Collections.singletonList(tArr[0]);
        }
        return Collections.emptyList();
    }

    @NonNull
    @KeepForSdk
    public static <K, V> Map<K, V> mapOf(@NonNull K k11, @NonNull V v11, @NonNull K k12, @NonNull V v12, @NonNull K k13, @NonNull V v13) {
        Map mapZza = zza(3, false);
        mapZza.put(k11, v11);
        mapZza.put(k12, v12);
        mapZza.put(k13, v13);
        return Collections.unmodifiableMap(mapZza);
    }

    @NonNull
    @KeepForSdk
    public static <K, V> Map<K, V> mapOf(@NonNull K k11, @NonNull V v11, @NonNull K k12, @NonNull V v12, @NonNull K k13, @NonNull V v13, @NonNull K k14, @NonNull V v14, @NonNull K k15, @NonNull V v15, @NonNull K k16, @NonNull V v16) {
        Map mapZza = zza(6, false);
        mapZza.put(k11, v11);
        mapZza.put(k12, v12);
        mapZza.put(k13, v13);
        mapZza.put(k14, v14);
        mapZza.put(k15, v15);
        mapZza.put(k16, v16);
        return Collections.unmodifiableMap(mapZza);
    }

    @NonNull
    @KeepForSdk
    public static <K, V> Map<K, V> mapOfKeyValueArrays(@NonNull K[] kArr, @NonNull V[] vArr) {
        int length = kArr.length;
        int length2 = vArr.length;
        if (length != length2) {
            throw new IllegalArgumentException("Key and values array lengths not equal: " + length + " != " + length2);
        }
        if (length == 0) {
            return Collections.emptyMap();
        }
        if (length == 1) {
            return Collections.singletonMap(kArr[0], vArr[0]);
        }
        Map mapZza = zza(length, false);
        for (int i11 = 0; i11 < kArr.length; i11++) {
            mapZza.put(kArr[i11], vArr[i11]);
        }
        return Collections.unmodifiableMap(mapZza);
    }

    @NonNull
    @KeepForSdk
    public static <T> Set<T> mutableSetOfWithSize(int i11) {
        return i11 == 0 ? new b() : zzb(i11, true);
    }

    @NonNull
    @KeepForSdk
    @Deprecated
    public static <T> Set<T> setOf(@NonNull T t11, @NonNull T t12, @NonNull T t13) {
        Set setZzb = zzb(3, false);
        setZzb.add(t11);
        setZzb.add(t12);
        setZzb.add(t13);
        return Collections.unmodifiableSet(setZzb);
    }

    @NonNull
    @KeepForSdk
    @Deprecated
    public static <T> Set<T> setOf(@NonNull T... tArr) {
        int length = tArr.length;
        if (length == 0) {
            return Collections.emptySet();
        }
        if (length == 1) {
            return Collections.singleton(tArr[0]);
        }
        if (length == 2) {
            T t11 = tArr[0];
            T t12 = tArr[1];
            Set setZzb = zzb(2, false);
            setZzb.add(t11);
            setZzb.add(t12);
            return Collections.unmodifiableSet(setZzb);
        }
        if (length == 3) {
            return setOf(tArr[0], tArr[1], tArr[2]);
        }
        if (length != 4) {
            Set setZzb2 = zzb(length, false);
            Collections.addAll(setZzb2, tArr);
            return Collections.unmodifiableSet(setZzb2);
        }
        T t13 = tArr[0];
        T t14 = tArr[1];
        T t15 = tArr[2];
        T t16 = tArr[3];
        Set setZzb3 = zzb(4, false);
        setZzb3.add(t13);
        setZzb3.add(t14);
        setZzb3.add(t15);
        setZzb3.add(t16);
        return Collections.unmodifiableSet(setZzb3);
    }

    private static Map zza(int i11, boolean z10) {
        return i11 <= 256 ? new a(i11) : new HashMap(i11, 1.0f);
    }

    private static Set zzb(int i11, boolean z10) {
        if (i11 <= (true != z10 ? 256 : 128)) {
            return new b(i11);
        }
        return new HashSet(i11, true != z10 ? 1.0f : 0.75f);
    }
}
