package u;

import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;

/* JADX INFO: loaded from: classes2.dex */
public class b implements Map.Entry, KMappedMarker {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f76487a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object f76488b;

    public b(Object obj, Object obj2) {
        this.f76487a = obj;
        this.f76488b = obj2;
    }

    @Override // java.util.Map.Entry
    public boolean equals(Object obj) {
        Map.Entry entry = obj instanceof Map.Entry ? (Map.Entry) obj : null;
        return entry != null && Intrinsics.c(entry.getKey(), getKey()) && Intrinsics.c(entry.getValue(), getValue());
    }

    @Override // java.util.Map.Entry
    public Object getKey() {
        return this.f76487a;
    }

    @Override // java.util.Map.Entry
    public Object getValue() {
        return this.f76488b;
    }

    @Override // java.util.Map.Entry
    public int hashCode() {
        Object key = getKey();
        int iHashCode = key != null ? key.hashCode() : 0;
        Object value = getValue();
        return iHashCode ^ (value != null ? value.hashCode() : 0);
    }

    @Override // java.util.Map.Entry
    public Object setValue(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(getKey());
        sb2.append('=');
        sb2.append(getValue());
        return sb2.toString();
    }
}
