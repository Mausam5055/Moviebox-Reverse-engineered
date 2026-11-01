package io.reactivex.rxjava3.internal.util;

import java.util.ArrayList;
import java.util.List;
import lz.k;

/* JADX INFO: loaded from: classes7.dex */
public enum ArrayListSupplier implements k, lz.h {
    INSTANCE;

    public static <T, O> lz.h asFunction() {
        return INSTANCE;
    }

    public static <T> k asSupplier() {
        return INSTANCE;
    }

    @Override // lz.h
    public List<Object> apply(Object obj) {
        return new ArrayList();
    }

    @Override // lz.k
    public List<Object> get() {
        return new ArrayList();
    }
}
