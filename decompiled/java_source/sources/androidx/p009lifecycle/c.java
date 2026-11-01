package androidx.p009lifecycle;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static c f9578c = new c();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map f9579a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map f9580b = new HashMap();

    static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Map f9581a = new HashMap();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final Map f9582b;

        a(Map map) {
            this.f9582b = map;
            for (Map.Entry entry : map.entrySet()) {
                Lifecycle.Event event = (Lifecycle.Event) entry.getValue();
                List arrayList = (List) this.f9581a.get(event);
                if (arrayList == null) {
                    arrayList = new ArrayList();
                    this.f9581a.put(event, arrayList);
                }
                arrayList.add((b) entry.getKey());
            }
        }

        private static void b(List list, u uVar, Lifecycle.Event event, Object obj) {
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    ((b) list.get(size)).a(uVar, event, obj);
                }
            }
        }

        void a(u uVar, Lifecycle.Event event, Object obj) {
            b((List) this.f9581a.get(event), uVar, event, obj);
            b((List) this.f9581a.get(Lifecycle.Event.ON_ANY), uVar, event, obj);
        }
    }

    static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final int f9583a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final Method f9584b;

        b(int i11, Method method) {
            this.f9583a = i11;
            this.f9584b = method;
            method.setAccessible(true);
        }

        void a(u uVar, Lifecycle.Event event, Object obj) {
            try {
                int i11 = this.f9583a;
                if (i11 == 0) {
                    this.f9584b.invoke(obj, null);
                } else if (i11 == 1) {
                    this.f9584b.invoke(obj, uVar);
                } else {
                    if (i11 != 2) {
                        return;
                    }
                    this.f9584b.invoke(obj, uVar, event);
                }
            } catch (IllegalAccessException e11) {
                throw new RuntimeException(e11);
            } catch (InvocationTargetException e12) {
                throw new RuntimeException("Failed to call observer method", e12.getCause());
            }
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return this.f9583a == bVar.f9583a && this.f9584b.getName().equals(bVar.f9584b.getName());
        }

        public int hashCode() {
            return (this.f9583a * 31) + this.f9584b.getName().hashCode();
        }
    }

    c() {
    }

    private a a(Class cls, Method[] methodArr) {
        int i11;
        a aVarC;
        Class superclass = cls.getSuperclass();
        HashMap map = new HashMap();
        if (superclass != null && (aVarC = c(superclass)) != null) {
            map.putAll(aVarC.f9582b);
        }
        for (Class<?> cls2 : cls.getInterfaces()) {
            for (Map.Entry entry : c(cls2).f9582b.entrySet()) {
                e(map, (b) entry.getKey(), (Lifecycle.Event) entry.getValue(), cls);
            }
        }
        if (methodArr == null) {
            methodArr = b(cls);
        }
        boolean z10 = false;
        for (Method method : methodArr) {
            d0 d0Var = (d0) method.getAnnotation(d0.class);
            if (d0Var != null) {
                Class<?>[] parameterTypes = method.getParameterTypes();
                if (parameterTypes.length <= 0) {
                    i11 = 0;
                } else {
                    if (!u.class.isAssignableFrom(parameterTypes[0])) {
                        throw new IllegalArgumentException("invalid parameter type. Must be one and instanceof LifecycleOwner");
                    }
                    i11 = 1;
                }
                Lifecycle.Event eventValue = d0Var.value();
                if (parameterTypes.length > 1) {
                    if (!Lifecycle.Event.class.isAssignableFrom(parameterTypes[1])) {
                        throw new IllegalArgumentException("invalid parameter type. second arg must be an event");
                    }
                    if (eventValue != Lifecycle.Event.ON_ANY) {
                        throw new IllegalArgumentException("Second arg is supported only for ON_ANY value");
                    }
                    i11 = 2;
                }
                if (parameterTypes.length > 2) {
                    throw new IllegalArgumentException("cannot have more than 2 params");
                }
                e(map, new b(i11, method), eventValue, cls);
                z10 = true;
            }
        }
        a aVar = new a(map);
        this.f9579a.put(cls, aVar);
        this.f9580b.put(cls, Boolean.valueOf(z10));
        return aVar;
    }

    private Method[] b(Class cls) {
        try {
            return cls.getDeclaredMethods();
        } catch (NoClassDefFoundError e11) {
            throw new IllegalArgumentException("The observer class has some methods that use newer APIs which are not available in the current OS version. Lifecycles cannot access even other methods so you should make sure that your observer classes only access framework classes that are available in your min API level OR use lifecycle:compiler annotation processor.", e11);
        }
    }

    private void e(Map map, b bVar, Lifecycle.Event event, Class cls) {
        Lifecycle.Event event2 = (Lifecycle.Event) map.get(bVar);
        if (event2 == null || event == event2) {
            if (event2 == null) {
                map.put(bVar, event);
                return;
            }
            return;
        }
        throw new IllegalArgumentException("Method " + bVar.f9584b.getName() + " in " + cls.getName() + " already declared with different @OnLifecycleEvent value: previous value " + event2 + ", new value " + event);
    }

    a c(Class cls) {
        a aVar = (a) this.f9579a.get(cls);
        return aVar != null ? aVar : a(cls, null);
    }

    boolean d(Class cls) {
        Boolean bool = (Boolean) this.f9580b.get(cls);
        if (bool != null) {
            return bool.booleanValue();
        }
        Method[] methodArrB = b(cls);
        for (Method method : methodArrB) {
            if (((d0) method.getAnnotation(d0.class)) != null) {
                a(cls, methodArrB);
                return true;
            }
        }
        this.f9580b.put(cls, Boolean.FALSE);
        return false;
    }
}
