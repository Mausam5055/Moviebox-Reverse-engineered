package com.mbridge.msdk.tracker.network;

import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes5.dex */
public class q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f38615a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte[] f38616b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Map<String, String> f38617c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final List<g> f38618d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f38619e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f38620f;

    private q(int i11, byte[] bArr, Map<String, String> map, List<g> list, boolean z10, long j11) {
        this.f38615a = i11;
        this.f38616b = bArr;
        this.f38617c = map;
        if (list == null) {
            this.f38618d = null;
        } else {
            this.f38618d = Collections.unmodifiableList(list);
        }
        this.f38619e = z10;
        this.f38620f = j11;
    }

    public q(int i11, byte[] bArr, boolean z10, long j11, List<g> list) {
        this(i11, bArr, a(list), list, z10, j11);
    }

    private static Map<String, String> a(List<g> list) {
        if (list == null) {
            return null;
        }
        if (list.isEmpty()) {
            return Collections.emptyMap();
        }
        TreeMap treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
        for (g gVar : list) {
            treeMap.put(gVar.a(), gVar.b());
        }
        return treeMap;
    }
}
