package com.mbridge.msdk.mbnative.cache;

import com.mbridge.msdk.out.Campaign;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static Map<Integer, b<String, List<Campaign>>> f36236a = new HashMap();

    public static b<String, List<Campaign>> a(int i11) {
        if (f36236a.containsKey(Integer.valueOf(i11))) {
            return f36236a.get(Integer.valueOf(i11));
        }
        a aVar = new a(i11);
        f36236a.put(Integer.valueOf(i11), aVar);
        return aVar;
    }
}
