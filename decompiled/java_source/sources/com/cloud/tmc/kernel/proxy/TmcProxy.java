package com.cloud.tmc.kernel.proxy;

import android.content.Context;
import com.cloud.tmc.kernel.annotation.DefaultImpl;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes3.dex */
public class TmcProxy {
    private static final String TAG = "TmcProxy";
    public static WeakReference<Context> sApplicationContext;
    private static final Map<Class<?>, Object> sProxyMap = new ConcurrentHashMap();

    public interface LazyGetter<T> {
        T get();
    }

    public static <T> T get(final Class<T> cls) {
        boolean z10;
        if (!cls.isInterface()) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("got proxy clazz must a Interface:");
            sb2.append(cls.getSimpleName());
        }
        Map<Class<?>, Object> map = sProxyMap;
        T t11 = (T) map.get(cls);
        if (t11 != null && !(t11 instanceof LazyGetter)) {
            return t11;
        }
        synchronized (map) {
            try {
                LazyGetter lazyGetter = (T) map.get(cls);
                if (lazyGetter != null) {
                    if (lazyGetter instanceof LazyGetter) {
                        lazyGetter = (T) lazyGetter.get();
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append("Lazy initialize of ");
                        sb3.append(cls);
                        sb3.append(" to ");
                        sb3.append(lazyGetter);
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    if (lazyGetter != null) {
                        if (z10) {
                            map.put((Class<?>) cls, lazyGetter);
                        }
                        return (T) lazyGetter;
                    }
                }
                DefaultImpl defaultImpl = (DefaultImpl) cls.getAnnotation(DefaultImpl.class);
                if (defaultImpl != null) {
                    try {
                        Class<?> cls2 = Class.forName(defaultImpl.value());
                        if (cls.isAssignableFrom(cls2)) {
                            T t12 = (T) cls2.newInstance();
                            StringBuilder sb4 = new StringBuilder();
                            sb4.append("Default initialize of ");
                            sb4.append(cls);
                            sb4.append(" to ");
                            sb4.append(t12);
                            set(cls, t12);
                            return t12;
                        }
                        StringBuilder sb5 = new StringBuilder();
                        sb5.append("Default impl ");
                        sb5.append(defaultImpl.value());
                        sb5.append(" is not instance of ");
                        sb5.append(cls);
                    } catch (Throwable th2) {
                        StringBuilder sb6 = new StringBuilder();
                        sb6.append("DefaultImpl instantiate exception!");
                        sb6.append(th2.getMessage());
                    }
                }
                T t13 = (T) Proxy.newProxyInstance(cls.getClassLoader(), new Class[]{cls}, new InvocationHandler() { // from class: com.cloud.tmc.kernel.proxy.TmcProxy.1
                    @Override // java.lang.reflect.InvocationHandler
                    public Object invoke(Object obj, Method method, Object[] objArr) {
                        Class<?> returnType = method.getReturnType();
                        StringBuilder sb7 = new StringBuilder();
                        sb7.append("unimplemented proxy:");
                        sb7.append(cls.getSimpleName());
                        sb7.append(".");
                        sb7.append(method.getName());
                        if (!returnType.isPrimitive()) {
                            return null;
                        }
                        Class<?> cls3 = Boolean.TYPE;
                        if (returnType == cls3 || returnType == cls3) {
                            return Boolean.FALSE;
                        }
                        return 0;
                    }
                });
                set(cls, t13);
                return t13;
            } catch (Throwable th3) {
                throw th3;
            }
        }
    }

    public static <T> void set(Class<? super T> cls, T t11) {
        setInternal(cls, t11);
    }

    private static <T> void setInternal(Class<? extends T> cls, Object obj) {
        if (cls == null) {
            return;
        }
        Map<Class<?>, Object> map = sProxyMap;
        if (map.containsKey(cls)) {
            return;
        }
        if (obj == null) {
            map.remove(cls);
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(cls.getSimpleName());
        sb2.append(" >>> ");
        sb2.append(obj.getClass());
        map.put(cls, obj);
    }

    public static <T> void setLazy(Class<T> cls, LazyGetter<T> lazyGetter) {
        setInternal(cls, lazyGetter);
    }
}
