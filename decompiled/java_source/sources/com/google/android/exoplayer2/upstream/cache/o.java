package com.google.android.exoplayer2.upstream.cache;

import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public final class o implements m {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final o f27380c = new o(Collections.emptyMap());

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f27381a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map f27382b;

    public o() {
        this(Collections.emptyMap());
    }

    public o(Map map) {
        this.f27382b = Collections.unmodifiableMap(map);
    }

    private static void a(HashMap map, Map map2) {
        for (Map.Entry entry : map2.entrySet()) {
            map.put((String) entry.getKey(), e(entry.getValue()));
        }
    }

    private static Map b(Map map, n nVar) {
        HashMap map2 = new HashMap(map);
        g(map2, nVar.c());
        a(map2, nVar.b());
        return map2;
    }

    private static byte[] e(Object obj) {
        if (obj instanceof Long) {
            return ByteBuffer.allocate(8).putLong(((Long) obj).longValue()).array();
        }
        if (obj instanceof String) {
            return ((String) obj).getBytes(com.google.common.base.c.f30228c);
        }
        if (obj instanceof byte[]) {
            return (byte[]) obj;
        }
        throw new IllegalArgumentException();
    }

    private static boolean f(Map map, Map map2) {
        if (map.size() != map2.size()) {
            return false;
        }
        for (Map.Entry entry : map.entrySet()) {
            if (!Arrays.equals((byte[]) entry.getValue(), (byte[]) map2.get(entry.getKey()))) {
                return false;
            }
        }
        return true;
    }

    private static void g(HashMap map, List list) {
        for (int i11 = 0; i11 < list.size(); i11++) {
            map.remove(list.get(i11));
        }
    }

    public o c(n nVar) {
        Map mapB = b(this.f27382b, nVar);
        return f(this.f27382b, mapB) ? this : new o(mapB);
    }

    public Set d() {
        return this.f27382b.entrySet();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || o.class != obj.getClass()) {
            return false;
        }
        return f(this.f27382b, ((o) obj).f27382b);
    }

    @Override // com.google.android.exoplayer2.upstream.cache.m
    public final long get(String str, long j11) {
        byte[] bArr = (byte[]) this.f27382b.get(str);
        return bArr != null ? ByteBuffer.wrap(bArr).getLong() : j11;
    }

    @Override // com.google.android.exoplayer2.upstream.cache.m
    public final String get(String str, String str2) {
        byte[] bArr = (byte[]) this.f27382b.get(str);
        return bArr != null ? new String(bArr, com.google.common.base.c.f30228c) : str2;
    }

    public int hashCode() {
        if (this.f27381a == 0) {
            int iHashCode = 0;
            for (Map.Entry entry : this.f27382b.entrySet()) {
                iHashCode += Arrays.hashCode((byte[]) entry.getValue()) ^ ((String) entry.getKey()).hashCode();
            }
            this.f27381a = iHashCode;
        }
        return this.f27381a;
    }
}
