package n;

import java.util.LinkedHashMap;
import java.util.Set;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LinkedHashMap f70054a;

    public c() {
        this(0, 0.0f, 3, null);
    }

    public c(int i11, float f11) {
        this.f70054a = new LinkedHashMap(i11, f11, true);
    }

    public /* synthetic */ c(int i11, float f11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this((i12 & 1) != 0 ? 16 : i11, (i12 & 2) != 0 ? 0.75f : f11);
    }

    public final Object a(Object key) {
        Intrinsics.h(key, "key");
        return this.f70054a.get(key);
    }

    public final Set b() {
        Set setEntrySet = this.f70054a.entrySet();
        Intrinsics.g(setEntrySet, "map.entries");
        return setEntrySet;
    }

    public final boolean c() {
        return this.f70054a.isEmpty();
    }

    public final Object d(Object key, Object value) {
        Intrinsics.h(key, "key");
        Intrinsics.h(value, "value");
        return this.f70054a.put(key, value);
    }

    public final Object e(Object key) {
        Intrinsics.h(key, "key");
        return this.f70054a.remove(key);
    }
}
