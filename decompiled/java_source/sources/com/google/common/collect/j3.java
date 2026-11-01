package com.google.common.collect;

import java.util.Collection;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public interface j3 {
    Map asMap();

    void clear();

    boolean containsEntry(Object obj, Object obj2);

    boolean containsKey(Object obj);

    Collection entries();

    Collection get(Object obj);

    boolean isEmpty();

    Set keySet();

    boolean put(Object obj, Object obj2);

    boolean putAll(j3 j3Var);

    boolean remove(Object obj, Object obj2);

    Collection removeAll(Object obj);

    int size();

    Collection values();
}
