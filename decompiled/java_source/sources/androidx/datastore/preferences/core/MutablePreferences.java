package androidx.datastore.preferences.core;

import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import kotlin.Pair;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes.dex */
public final class MutablePreferences extends c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map f8651a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final b f8652b;

    /* JADX WARN: Multi-variable type inference failed */
    public MutablePreferences() {
        this(null, false, 3, 0 == true ? 1 : 0);
    }

    public MutablePreferences(Map preferencesMap, boolean z10) {
        Intrinsics.h(preferencesMap, "preferencesMap");
        this.f8651a = preferencesMap;
        this.f8652b = new b(z10);
    }

    public /* synthetic */ MutablePreferences(Map map, boolean z10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? new LinkedHashMap() : map, (i11 & 2) != 0 ? true : z10);
    }

    @Override // androidx.datastore.preferences.core.c
    public Map a() {
        Pair pair;
        Set<Map.Entry> setEntrySet = this.f8651a.entrySet();
        LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt.f(MapsKt.e(CollectionsKt.v(setEntrySet, 10)), 16));
        for (Map.Entry entry : setEntrySet) {
            Object value = entry.getValue();
            if (value instanceof byte[]) {
                Object key = entry.getKey();
                byte[] bArr = (byte[]) value;
                byte[] bArrCopyOf = Arrays.copyOf(bArr, bArr.length);
                Intrinsics.g(bArrCopyOf, "copyOf(this, size)");
                pair = new Pair(key, bArrCopyOf);
            } else {
                pair = new Pair(entry.getKey(), entry.getValue());
            }
            linkedHashMap.put(pair.getFirst(), pair.getSecond());
        }
        return a.b(linkedHashMap);
    }

    @Override // androidx.datastore.preferences.core.c
    public Object b(c.a key) {
        Intrinsics.h(key, "key");
        Object obj = this.f8651a.get(key);
        if (!(obj instanceof byte[])) {
            return obj;
        }
        byte[] bArr = (byte[]) obj;
        byte[] bArrCopyOf = Arrays.copyOf(bArr, bArr.length);
        Intrinsics.g(bArrCopyOf, "copyOf(this, size)");
        return bArrCopyOf;
    }

    public final void e() {
        if (this.f8652b.a()) {
            throw new IllegalStateException("Do mutate preferences once returned to DataStore.");
        }
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0064  */
    public boolean equals(Object obj) {
        boolean zC;
        if (!(obj instanceof MutablePreferences)) {
            return false;
        }
        MutablePreferences mutablePreferences = (MutablePreferences) obj;
        Map map = mutablePreferences.f8651a;
        if (map == this.f8651a) {
            return true;
        }
        if (map.size() != this.f8651a.size()) {
            return false;
        }
        Map map2 = mutablePreferences.f8651a;
        if (!map2.isEmpty()) {
            for (Map.Entry entry : map2.entrySet()) {
                Object obj2 = this.f8651a.get(entry.getKey());
                if (obj2 != null) {
                    Object value = entry.getValue();
                    if (!(value instanceof byte[])) {
                        zC = Intrinsics.c(value, obj2);
                    } else if ((obj2 instanceof byte[]) && Arrays.equals((byte[]) value, (byte[]) obj2)) {
                        zC = true;
                    } else {
                        zC = false;
                    }
                } else {
                    zC = false;
                }
                if (!zC) {
                    return false;
                }
            }
        }
        return true;
    }

    public final void f() {
        this.f8652b.b(true);
    }

    public final void g(c.b... pairs) {
        Intrinsics.h(pairs, "pairs");
        e();
        if (pairs.length <= 0) {
            return;
        }
        c.b bVar = pairs[0];
        throw null;
    }

    public final Object h(c.a key) {
        Intrinsics.h(key, "key");
        e();
        return this.f8651a.remove(key);
    }

    public int hashCode() {
        Iterator it = this.f8651a.entrySet().iterator();
        int iHashCode = 0;
        while (it.hasNext()) {
            Object value = ((Map.Entry) it.next()).getValue();
            iHashCode += value instanceof byte[] ? Arrays.hashCode((byte[]) value) : value.hashCode();
        }
        return iHashCode;
    }

    public final void i(c.a key, Object obj) {
        Intrinsics.h(key, "key");
        j(key, obj);
    }

    public final void j(c.a key, Object obj) {
        Intrinsics.h(key, "key");
        e();
        if (obj == null) {
            h(key);
            return;
        }
        if (obj instanceof Set) {
            this.f8651a.put(key, a.a((Set) obj));
            return;
        }
        if (!(obj instanceof byte[])) {
            this.f8651a.put(key, obj);
            return;
        }
        Map map = this.f8651a;
        byte[] bArr = (byte[]) obj;
        byte[] bArrCopyOf = Arrays.copyOf(bArr, bArr.length);
        Intrinsics.g(bArrCopyOf, "copyOf(this, size)");
        map.put(key, bArrCopyOf);
    }

    public String toString() {
        return CollectionsKt.s0(this.f8651a.entrySet(), ",\n", "{\n", "\n}", 0, null, new Function1<Map.Entry<c.a, Object>, CharSequence>() { // from class: androidx.datastore.preferences.core.MutablePreferences.toString.1
            @Override // kotlin.jvm.functions.Function1
            public final CharSequence invoke(Map.Entry<c.a, Object> entry) {
                Intrinsics.h(entry, "entry");
                Object value = entry.getValue();
                return "  " + entry.getKey().a() + " = " + (value instanceof byte[] ? ArraysKt.o0((byte[]) value, ", ", "[", "]", 0, null, null, 56, null) : String.valueOf(entry.getValue()));
            }
        }, 24, null);
    }
}
