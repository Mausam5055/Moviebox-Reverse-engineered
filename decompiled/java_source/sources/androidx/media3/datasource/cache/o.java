package androidx.media3.datasource.cache;

import java.nio.ByteBuffer;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public final class o implements m {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final o f10861c = new o(Collections.emptyMap());

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f10862a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map f10863b;

    public o() {
        this(Collections.emptyMap());
    }

    public o(Map map) {
        this.f10863b = Collections.unmodifiableMap(map);
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
            return ((String) obj).getBytes(StandardCharsets.UTF_8);
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
        Map mapB = b(this.f10863b, nVar);
        return f(this.f10863b, mapB) ? this : new o(mapB);
    }

    public Set d() {
        return this.f10863b.entrySet();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || o.class != obj.getClass()) {
            return false;
        }
        return f(this.f10863b, ((o) obj).f10863b);
    }

    @Override // androidx.media3.datasource.cache.m
    public final long get(String str, long j11) {
        byte[] bArr = (byte[]) this.f10863b.get(str);
        return bArr != null ? ByteBuffer.wrap(bArr).getLong() : j11;
    }

    @Override // androidx.media3.datasource.cache.m
    public final String get(String str, String str2) {
        byte[] bArr = (byte[]) this.f10863b.get(str);
        return bArr != null ? new String(bArr, StandardCharsets.UTF_8) : str2;
    }

    public int hashCode() {
        if (this.f10862a == 0) {
            int iHashCode = 0;
            for (Map.Entry entry : this.f10863b.entrySet()) {
                iHashCode += Arrays.hashCode((byte[]) entry.getValue()) ^ ((String) entry.getKey()).hashCode();
            }
            this.f10862a = iHashCode;
        }
        return this.f10862a;
    }
}
