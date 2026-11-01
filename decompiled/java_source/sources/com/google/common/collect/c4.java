package com.google.common.collect;

import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public interface c4 {

    public interface a {
        Object getColumnKey();

        Object getRowKey();

        Object getValue();
    }

    Set cellSet();

    Set columnKeySet();

    Map columnMap();

    Object get(Object obj, Object obj2);

    Object put(Object obj, Object obj2, Object obj3);

    Set rowKeySet();

    Map rowMap();

    int size();
}
