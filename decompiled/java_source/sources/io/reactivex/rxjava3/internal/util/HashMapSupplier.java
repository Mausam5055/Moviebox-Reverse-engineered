package io.reactivex.rxjava3.internal.util;

import java.util.HashMap;
import java.util.Map;
import lz.k;

/* JADX INFO: loaded from: classes7.dex */
public enum HashMapSupplier implements k {
    INSTANCE;

    public static <K, V> k asSupplier() {
        return INSTANCE;
    }

    @Override // lz.k
    public Map<Object, Object> get() {
        return new HashMap();
    }
}
