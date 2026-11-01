package com.google.common.collect;

import com.cloud.tmc.kernel.utils.UrlUtils;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
abstract class b implements Map.Entry {
    b() {
    }

    @Override // java.util.Map.Entry
    public boolean equals(Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        return com.google.common.base.j.a(getKey(), entry.getKey()) && com.google.common.base.j.a(getValue(), entry.getValue());
    }

    @Override // java.util.Map.Entry
    public abstract Object getKey();

    @Override // java.util.Map.Entry
    public abstract Object getValue();

    @Override // java.util.Map.Entry
    public int hashCode() {
        Object key = getKey();
        Object value = getValue();
        return (key == null ? 0 : key.hashCode()) ^ (value != null ? value.hashCode() : 0);
    }

    @Override // java.util.Map.Entry
    public Object setValue(Object obj) {
        throw new UnsupportedOperationException();
    }

    public String toString() {
        return getKey() + UrlUtils.EQUAL_MARK + getValue();
    }
}
