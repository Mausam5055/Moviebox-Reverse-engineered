package com.google.common.cache;

import com.google.common.base.m;
import java.util.AbstractMap;

/* JADX INFO: loaded from: classes4.dex */
public final class RemovalNotification<K, V> extends AbstractMap.SimpleImmutableEntry<K, V> {
    private static final long serialVersionUID = 0;
    private final RemovalCause cause;

    private RemovalNotification(K k11, V v11, RemovalCause removalCause) {
        super(k11, v11);
        this.cause = (RemovalCause) m.o(removalCause);
    }

    public static <K, V> RemovalNotification<K, V> create(K k11, V v11, RemovalCause removalCause) {
        return new RemovalNotification<>(k11, v11, removalCause);
    }

    public RemovalCause getCause() {
        return this.cause;
    }

    public boolean wasEvicted() {
        return this.cause.wasEvicted();
    }
}
