package kotlinx.serialization.json;

import java.util.Collection;
import java.util.Map;
import java.util.Set;
import java.util.function.BiFunction;
import java.util.function.Function;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlinx.serialization.json.internal.o0;

/* JADX INFO: loaded from: classes7.dex */
public final class JsonObject extends h implements Map, KMappedMarker {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final a f68229c = new a(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map f68230b;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public JsonObject(Map content) {
        super(null);
        Intrinsics.h(content, "content");
        this.f68230b = content;
    }

    public boolean a(String key) {
        Intrinsics.h(key, "key");
        return this.f68230b.containsKey(key);
    }

    public boolean c(h value) {
        Intrinsics.h(value, "value");
        return this.f68230b.containsValue(value);
    }

    @Override // java.util.Map
    public void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public /* bridge */ /* synthetic */ Object compute(Object obj, BiFunction biFunction) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public /* bridge */ /* synthetic */ Object computeIfAbsent(Object obj, Function function) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public /* bridge */ /* synthetic */ Object computeIfPresent(Object obj, BiFunction biFunction) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public final /* bridge */ boolean containsKey(Object obj) {
        if (obj instanceof String) {
            return a((String) obj);
        }
        return false;
    }

    @Override // java.util.Map
    public final /* bridge */ boolean containsValue(Object obj) {
        if (obj instanceof h) {
            return c((h) obj);
        }
        return false;
    }

    public h e(String key) {
        Intrinsics.h(key, "key");
        return (h) this.f68230b.get(key);
    }

    @Override // java.util.Map
    public final /* bridge */ Set entrySet() {
        return f();
    }

    @Override // java.util.Map
    public boolean equals(Object obj) {
        return Intrinsics.c(this.f68230b, obj);
    }

    public Set f() {
        return this.f68230b.entrySet();
    }

    @Override // java.util.Map
    public final /* bridge */ /* synthetic */ Object get(Object obj) {
        if (obj instanceof String) {
            return e((String) obj);
        }
        return null;
    }

    public Set h() {
        return this.f68230b.keySet();
    }

    @Override // java.util.Map
    public int hashCode() {
        return this.f68230b.hashCode();
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        return this.f68230b.isEmpty();
    }

    public int j() {
        return this.f68230b.size();
    }

    @Override // java.util.Map
    public final /* bridge */ Set keySet() {
        return h();
    }

    public Collection l() {
        return this.f68230b.values();
    }

    @Override // java.util.Map
    /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
    public h remove(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public /* bridge */ /* synthetic */ Object merge(Object obj, Object obj2, BiFunction biFunction) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public /* bridge */ /* synthetic */ Object put(Object obj, Object obj2) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public void putAll(Map map) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public /* bridge */ /* synthetic */ Object putIfAbsent(Object obj, Object obj2) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public boolean remove(Object obj, Object obj2) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public /* bridge */ /* synthetic */ Object replace(Object obj, Object obj2) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public /* bridge */ /* synthetic */ boolean replace(Object obj, Object obj2, Object obj3) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public void replaceAll(BiFunction biFunction) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public final /* bridge */ int size() {
        return j();
    }

    public String toString() {
        return CollectionsKt.s0(this.f68230b.entrySet(), ",", "{", "}", 0, null, new Function1<Map.Entry<? extends String, ? extends h>, CharSequence>() { // from class: kotlinx.serialization.json.JsonObject.toString.1
            @Override // kotlin.jvm.functions.Function1
            public final CharSequence invoke(Map.Entry<String, ? extends h> entry) {
                Intrinsics.h(entry, "<name for destructuring parameter 0>");
                String key = entry.getKey();
                h value = entry.getValue();
                StringBuilder sb2 = new StringBuilder();
                o0.c(sb2, key);
                sb2.append(':');
                sb2.append(value);
                String string = sb2.toString();
                Intrinsics.g(string, "StringBuilder().apply(builderAction).toString()");
                return string;
            }
        }, 24, null);
    }

    @Override // java.util.Map
    public final /* bridge */ Collection values() {
        return l();
    }
}
