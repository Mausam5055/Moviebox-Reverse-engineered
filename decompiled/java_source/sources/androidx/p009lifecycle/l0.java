package androidx.p009lifecycle;

import android.os.Binder;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Size;
import android.util.SizeF;
import android.util.SparseArray;
import androidx.core.os.d;
import androidx.p010savedstate.c;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.y0;

/* JADX INFO: loaded from: classes.dex */
public final class l0 {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final a f9615f = new a(null);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final Class[] f9616g = {Boolean.TYPE, boolean[].class, Double.TYPE, double[].class, Integer.TYPE, int[].class, Long.TYPE, long[].class, String.class, String[].class, Binder.class, Bundle.class, Byte.TYPE, byte[].class, Character.TYPE, char[].class, CharSequence.class, CharSequence[].class, ArrayList.class, Float.TYPE, float[].class, Parcelable.class, Parcelable[].class, Serializable.class, Short.TYPE, short[].class, SparseArray.class, Size.class, SizeF.class};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map f9617a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map f9618b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Map f9619c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Map f9620d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final c.InterfaceC0122c f9621e;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final l0 a(Bundle bundle, Bundle bundle2) {
            if (bundle == null) {
                if (bundle2 == null) {
                    return new l0();
                }
                HashMap map = new HashMap();
                for (String key : bundle2.keySet()) {
                    Intrinsics.g(key, "key");
                    map.put(key, bundle2.get(key));
                }
                return new l0(map);
            }
            ClassLoader classLoader = l0.class.getClassLoader();
            Intrinsics.e(classLoader);
            bundle.setClassLoader(classLoader);
            ArrayList parcelableArrayList = bundle.getParcelableArrayList("keys");
            ArrayList parcelableArrayList2 = bundle.getParcelableArrayList("values");
            if (parcelableArrayList == null || parcelableArrayList2 == null || parcelableArrayList.size() != parcelableArrayList2.size()) {
                throw new IllegalStateException("Invalid bundle passed as restored state");
            }
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            int size = parcelableArrayList.size();
            for (int i11 = 0; i11 < size; i11++) {
                Object obj = parcelableArrayList.get(i11);
                Intrinsics.f(obj, "null cannot be cast to non-null type kotlin.String");
                linkedHashMap.put((String) obj, parcelableArrayList2.get(i11));
            }
            return new l0(linkedHashMap);
        }

        public final boolean b(Object obj) {
            if (obj == null) {
                return true;
            }
            for (Class cls : l0.f9616g) {
                Intrinsics.e(cls);
                if (cls.isInstance(obj)) {
                    return true;
                }
            }
            return false;
        }
    }

    public l0() {
        this.f9617a = new LinkedHashMap();
        this.f9618b = new LinkedHashMap();
        this.f9619c = new LinkedHashMap();
        this.f9620d = new LinkedHashMap();
        this.f9621e = new c.InterfaceC0122c() { // from class: androidx.lifecycle.k0
            @Override // androidx.p010savedstate.c.InterfaceC0122c
            public final Bundle saveState() {
                return l0.d(this.f9614a);
            }
        };
    }

    public l0(Map initialState) {
        Intrinsics.h(initialState, "initialState");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        this.f9617a = linkedHashMap;
        this.f9618b = new LinkedHashMap();
        this.f9619c = new LinkedHashMap();
        this.f9620d = new LinkedHashMap();
        this.f9621e = new c.InterfaceC0122c() { // from class: androidx.lifecycle.k0
            @Override // androidx.p010savedstate.c.InterfaceC0122c
            public final Bundle saveState() {
                return l0.d(this.f9614a);
            }
        };
        linkedHashMap.putAll(initialState);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Bundle d(l0 this$0) {
        Intrinsics.h(this$0, "this$0");
        for (Map.Entry entry : MapsKt.u(this$0.f9618b).entrySet()) {
            this$0.e((String) entry.getKey(), ((c.InterfaceC0122c) entry.getValue()).saveState());
        }
        Set<String> setKeySet = this$0.f9617a.keySet();
        ArrayList arrayList = new ArrayList(setKeySet.size());
        ArrayList arrayList2 = new ArrayList(arrayList.size());
        for (String str : setKeySet) {
            arrayList.add(str);
            arrayList2.add(this$0.f9617a.get(str));
        }
        return d.b(TuplesKt.a("keys", arrayList), TuplesKt.a("values", arrayList2));
    }

    public final c.InterfaceC0122c c() {
        return this.f9621e;
    }

    public final void e(String key, Object obj) {
        Intrinsics.h(key, "key");
        if (!f9615f.b(obj)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Can't put value with type ");
            Intrinsics.e(obj);
            sb2.append(obj.getClass());
            sb2.append(" into saved state");
            throw new IllegalArgumentException(sb2.toString());
        }
        Object obj2 = this.f9619c.get(key);
        b0 b0Var = obj2 instanceof b0 ? (b0) obj2 : null;
        if (b0Var != null) {
            b0Var.q(obj);
        } else {
            this.f9617a.put(key, obj);
        }
        y0 y0Var = (y0) this.f9620d.get(key);
        if (y0Var == null) {
            return;
        }
        y0Var.setValue(obj);
    }
}
