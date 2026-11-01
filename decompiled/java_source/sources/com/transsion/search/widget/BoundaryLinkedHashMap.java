package com.transsion.search.widget;

import com.transsion.search.bean.SearchSuggestEntity;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public class BoundaryLinkedHashMap extends LinkedHashMap<String, SearchSuggestEntity> {
    private static final int MAX_SIZE = 30;

    @Override // java.util.LinkedHashMap
    protected boolean removeEldestEntry(Map.Entry<String, SearchSuggestEntity> entry) {
        return size() > 30;
    }
}
