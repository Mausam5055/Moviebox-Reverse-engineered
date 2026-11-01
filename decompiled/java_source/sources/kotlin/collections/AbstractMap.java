package kotlin.collections;

import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.markers.KMappedMarker;

/* JADX INFO: loaded from: classes7.dex */
@SinceKotlin
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\b\u0002\n\u0002\u0010&\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\"\n\u0002\b\u0003\n\u0002\u0010\u001e\n\u0002\b\u000e\b'\u0018\u0000 3*\u0004\b\u0000\u0010\u0001*\u0006\b\u0001\u0010\u0002 \u00012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0003:\u00014B\t\b\u0004¢\u0006\u0004\b\u0004\u0010\u0005J#\u0010\t\u001a\u00020\b2\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0006H\u0002¢\u0006\u0004\b\t\u0010\nJ\u0019\u0010\f\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\u000bH\u0002¢\u0006\u0004\b\f\u0010\rJ%\u0010\u000f\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u00062\u0006\u0010\u000e\u001a\u00028\u0000H\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u000e\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u0017\u0010\u0015\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00028\u0001H\u0016¢\u0006\u0004\b\u0015\u0010\u0013J!\u0010\u0016\u001a\u00020\u00112\u0010\u0010\u0007\u001a\f\u0012\u0002\b\u0003\u0012\u0002\b\u0003\u0018\u00010\u0006H\u0000¢\u0006\u0004\b\u0016\u0010\u0017J\u001a\u0010\u0019\u001a\u00020\u00112\b\u0010\u0018\u001a\u0004\u0018\u00010\u000bH\u0096\u0002¢\u0006\u0004\b\u0019\u0010\u0013J\u001a\u0010\u001a\u001a\u0004\u0018\u00018\u00012\u0006\u0010\u000e\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0004\b\u001a\u0010\u001bJ\u000f\u0010\u001d\u001a\u00020\u001cH\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ\u000f\u0010\u001f\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u001f\u0010 J\u000f\u0010!\u001a\u00020\bH\u0016¢\u0006\u0004\b!\u0010\"R\u001e\u0010&\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010#8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b$\u0010%R\u001e\u0010*\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010'8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010)R\u0014\u0010,\u001a\u00020\u001c8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b+\u0010\u001eR\u001a\u0010/\u001a\b\u0012\u0004\u0012\u00028\u00000#8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b-\u0010.R\u001a\u00102\u001a\b\u0012\u0004\u0012\u00028\u00010'8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b0\u00101¨\u00065"}, d2 = {"Lkotlin/collections/AbstractMap;", "K", "V", "", "<init>", "()V", "", "entry", "", "o", "(Ljava/util/Map$Entry;)Ljava/lang/String;", "", "n", "(Ljava/lang/Object;)Ljava/lang/String;", "key", "m", "(Ljava/lang/Object;)Ljava/util/Map$Entry;", "", "containsKey", "(Ljava/lang/Object;)Z", AppMeasurementSdk.ConditionalUserProperty.VALUE, "containsValue", "f", "(Ljava/util/Map$Entry;)Z", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "equals", "get", "(Ljava/lang/Object;)Ljava/lang/Object;", "", "hashCode", "()I", "isEmpty", "()Z", "toString", "()Ljava/lang/String;", "", "a", "Ljava/util/Set;", "_keys", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Ljava/util/Collection;", "_values", "j", "size", "i", "()Ljava/util/Set;", "keys", "l", "()Ljava/util/Collection;", "values", "c", "Companion", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public abstract class AbstractMap<K, V> implements Map<K, V>, KMappedMarker {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private volatile Set _keys;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private volatile Collection _values;

    protected AbstractMap() {
    }

    private final Map.Entry m(Object key) {
        Object next;
        Iterator it = entrySet().iterator();
        while (it.hasNext()) {
            next = it.next();
            if (Intrinsics.c(((Map.Entry) next).getKey(), key)) {
                return (Map.Entry) next;
            }
        }
        next = null;
        return (Map.Entry) next;
    }

    private final String n(Object o11) {
        return o11 == this ? "(this Map)" : String.valueOf(o11);
    }

    private final String o(Map.Entry entry) {
        return n(entry.getKey()) + '=' + n(entry.getValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CharSequence p(AbstractMap abstractMap, Map.Entry it) {
        Intrinsics.h(it, "it");
        return abstractMap.o(it);
    }

    @Override // java.util.Map
    public void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public boolean containsKey(Object key) {
        return m(key) != null;
    }

    @Override // java.util.Map
    public boolean containsValue(Object value) {
        Set setEntrySet = entrySet();
        if ((setEntrySet instanceof Collection) && setEntrySet.isEmpty()) {
            return false;
        }
        Iterator it = setEntrySet.iterator();
        while (it.hasNext()) {
            if (Intrinsics.c(((Map.Entry) it.next()).getValue(), value)) {
                return true;
            }
        }
        return false;
    }

    @Override // java.util.Map
    public final /* bridge */ Set entrySet() {
        return h();
    }

    @Override // java.util.Map
    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof Map)) {
            return false;
        }
        Map map = (Map) other;
        if (size() != map.size()) {
            return false;
        }
        Set<Map.Entry<K, V>> setEntrySet = map.entrySet();
        if ((setEntrySet instanceof Collection) && setEntrySet.isEmpty()) {
            return true;
        }
        Iterator<T> it = setEntrySet.iterator();
        while (it.hasNext()) {
            if (!f((Map.Entry) it.next())) {
                return false;
            }
        }
        return true;
    }

    public final boolean f(Map.Entry entry) {
        if (entry == null) {
            return false;
        }
        Object key = entry.getKey();
        Object value = entry.getValue();
        Intrinsics.f(this, "null cannot be cast to non-null type kotlin.collections.Map<K of kotlin.collections.MapsKt__MapsKt.get, V of kotlin.collections.MapsKt__MapsKt.get>");
        V v11 = get(key);
        if (!Intrinsics.c(value, v11)) {
            return false;
        }
        if (v11 != null) {
            return true;
        }
        Intrinsics.f(this, "null cannot be cast to non-null type kotlin.collections.Map<K of kotlin.collections.MapsKt__MapsKt.containsKey, *>");
        return containsKey(key);
    }

    @Override // java.util.Map
    public Object get(Object key) {
        Map.Entry entryM = m(key);
        if (entryM != null) {
            return entryM.getValue();
        }
        return null;
    }

    public abstract Set h();

    @Override // java.util.Map
    public int hashCode() {
        return entrySet().hashCode();
    }

    public Set i() {
        if (this._keys == null) {
            this._keys = new AbstractSet<K>() { // from class: kotlin.collections.AbstractMap$keys$1
                @Override // kotlin.collections.AbstractCollection, java.util.Collection, java.util.List
                public boolean contains(Object element) {
                    return this.f67079b.containsKey(element);
                }

                @Override // kotlin.collections.AbstractCollection
                /* JADX INFO: renamed from: getSize */
                public int get_size() {
                    return this.f67079b.size();
                }

                @Override // kotlin.collections.AbstractSet, java.util.Collection, java.lang.Iterable, java.util.Set
                public Iterator iterator() {
                    return new AbstractMap$keys$1$iterator$1(this.f67079b.entrySet().iterator());
                }
            };
        }
        Set set = this._keys;
        Intrinsics.e(set);
        return set;
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        return size() == 0;
    }

    public int j() {
        return entrySet().size();
    }

    @Override // java.util.Map
    public final /* bridge */ Set keySet() {
        return i();
    }

    public Collection l() {
        if (this._values == null) {
            this._values = new AbstractCollection<V>() { // from class: kotlin.collections.AbstractMap.values.1
                @Override // kotlin.collections.AbstractCollection, java.util.Collection, java.util.List
                public boolean contains(Object element) {
                    return AbstractMap.this.containsValue(element);
                }

                @Override // kotlin.collections.AbstractCollection
                /* JADX INFO: renamed from: getSize */
                public int get_size() {
                    return AbstractMap.this.size();
                }

                @Override // java.util.Collection, java.lang.Iterable
                public Iterator iterator() {
                    return new AbstractMap$values$1$iterator$1(AbstractMap.this.entrySet().iterator());
                }
            };
        }
        Collection collection = this._values;
        Intrinsics.e(collection);
        return collection;
    }

    @Override // java.util.Map
    public Object put(Object obj, Object obj2) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public void putAll(Map map) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public Object remove(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public final /* bridge */ int size() {
        return j();
    }

    public String toString() {
        return CollectionsKt.s0(entrySet(), ", ", "{", "}", 0, null, new Function1() { // from class: kotlin.collections.b
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return AbstractMap.p(this.f67148a, (Map.Entry) obj);
            }
        }, 24, null);
    }

    @Override // java.util.Map
    public final /* bridge */ Collection values() {
        return l();
    }
}
