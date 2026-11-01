package u;

import java.util.Map;
import kotlin.jvm.internal.markers.KMutableMap;

/* JADX INFO: loaded from: classes2.dex */
final class c extends b implements Map.Entry, KMutableMap.Entry {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final i f76489c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Object f76490d;

    public c(i iVar, Object obj, Object obj2) {
        super(obj, obj2);
        this.f76489c = iVar;
        this.f76490d = obj2;
    }

    public void a(Object obj) {
        this.f76490d = obj;
    }

    @Override // u.b, java.util.Map.Entry
    public Object getValue() {
        return this.f76490d;
    }

    @Override // u.b, java.util.Map.Entry
    public Object setValue(Object obj) {
        Object value = getValue();
        a(obj);
        this.f76489c.c(getKey(), obj);
        return value;
    }
}
