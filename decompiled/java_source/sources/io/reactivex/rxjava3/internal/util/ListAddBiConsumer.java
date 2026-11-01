package io.reactivex.rxjava3.internal.util;

import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public enum ListAddBiConsumer implements lz.c {
    INSTANCE;

    public static <T> lz.c instance() {
        return INSTANCE;
    }

    @Override // lz.c
    public List apply(List list, Object obj) {
        list.add(obj);
        return list;
    }
}
