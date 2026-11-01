package com.transsion.search_pugc.widget;

import com.transsion.search_pugc.bean.UGCSearchSuggestData;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public class BoundaryLinkedHashMap extends LinkedHashMap<String, UGCSearchSuggestData> {
    private static final int MAX_SIZE = 30;

    @Override // java.util.LinkedHashMap
    protected boolean removeEldestEntry(Map.Entry<String, UGCSearchSuggestData> entry) {
        return size() > 30;
    }
}
