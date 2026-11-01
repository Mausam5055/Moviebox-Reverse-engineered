package androidx.compose.runtime.saveable;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
final class c implements b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Function1 f3910a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map f3911b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Map f3912c;

    public static final class a implements b.a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f3914b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Function0 f3915c;

        a(String str, Function0 function0) {
            this.f3914b = str;
            this.f3915c = function0;
        }

        @Override // androidx.compose.runtime.saveable.b.a
        public void unregister() {
            List list = (List) c.this.f3912c.remove(this.f3914b);
            if (list != null) {
                list.remove(this.f3915c);
            }
            if (list == null || list.isEmpty()) {
                return;
            }
            c.this.f3912c.put(this.f3914b, list);
        }
    }

    public c(Map map, Function1 function1) {
        Map mapW;
        this.f3910a = function1;
        this.f3911b = (map == null || (mapW = MapsKt.w(map)) == null) ? new LinkedHashMap() : mapW;
        this.f3912c = new LinkedHashMap();
    }

    @Override // androidx.compose.runtime.saveable.b
    public boolean a(Object obj) {
        return ((Boolean) this.f3910a.invoke(obj)).booleanValue();
    }

    @Override // androidx.compose.runtime.saveable.b
    public b.a b(String str, Function0 function0) {
        if (SaveableStateRegistryKt.c(str)) {
            throw new IllegalArgumentException("Registered key is empty or blank");
        }
        Map map = this.f3912c;
        Object arrayList = map.get(str);
        if (arrayList == null) {
            arrayList = new ArrayList();
            map.put(str, arrayList);
        }
        ((List) arrayList).add(function0);
        return new a(str, function0);
    }

    @Override // androidx.compose.runtime.saveable.b
    public Map e() {
        Map mapW = MapsKt.w(this.f3911b);
        for (Map.Entry entry : this.f3912c.entrySet()) {
            String str = (String) entry.getKey();
            List list = (List) entry.getValue();
            if (list.size() == 1) {
                Object objInvoke = ((Function0) list.get(0)).invoke();
                if (objInvoke == null) {
                    continue;
                } else {
                    if (!a(objInvoke)) {
                        throw new IllegalStateException(RememberSaveableKt.b(objInvoke).toString());
                    }
                    mapW.put(str, CollectionsKt.h(objInvoke));
                }
            } else {
                int size = list.size();
                ArrayList arrayList = new ArrayList(size);
                for (int i11 = 0; i11 < size; i11++) {
                    Object objInvoke2 = ((Function0) list.get(i11)).invoke();
                    if (objInvoke2 != null && !a(objInvoke2)) {
                        throw new IllegalStateException(RememberSaveableKt.b(objInvoke2).toString());
                    }
                    arrayList.add(objInvoke2);
                }
                mapW.put(str, arrayList);
            }
        }
        return mapW;
    }

    @Override // androidx.compose.runtime.saveable.b
    public Object f(String str) {
        List list = (List) this.f3911b.remove(str);
        if (list == null || list.isEmpty()) {
            return null;
        }
        if (list.size() > 1) {
            this.f3911b.put(str, list.subList(1, list.size()));
        }
        return list.get(0);
    }
}
