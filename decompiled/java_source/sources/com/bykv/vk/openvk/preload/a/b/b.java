package com.bykv.vk.openvk.preload.a.b;

import com.bykv.vk.openvk.preload.a.j;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.EnumSet;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import java.util.TreeMap;
import java.util.TreeSet;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ConcurrentNavigableMap;
import java.util.concurrent.ConcurrentSkipListMap;

/* JADX INFO: loaded from: classes2.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map<Type, com.bykv.vk.openvk.preload.a.f<?>> f20413a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.bykv.vk.openvk.preload.a.b.b.b f20414b = com.bykv.vk.openvk.preload.a.b.b.b.a();

    public b(Map<Type, com.bykv.vk.openvk.preload.a.f<?>> map) {
        this.f20413a = map;
    }

    private <T> h<T> a(Class<? super T> cls) {
        try {
            final Constructor<? super T> declaredConstructor = cls.getDeclaredConstructor(null);
            if (!declaredConstructor.isAccessible()) {
                this.f20414b.a(declaredConstructor);
            }
            return new h<T>() { // from class: com.bykv.vk.openvk.preload.a.b.b.8
                @Override // com.bykv.vk.openvk.preload.a.b.h
                public final T a() {
                    try {
                        return (T) declaredConstructor.newInstance(null);
                    } catch (IllegalAccessException e11) {
                        throw new AssertionError(e11);
                    } catch (InstantiationException e12) {
                        throw new RuntimeException("Failed to invoke " + declaredConstructor + " with no args", e12);
                    } catch (InvocationTargetException e13) {
                        throw new RuntimeException("Failed to invoke " + declaredConstructor + " with no args", e13.getTargetException());
                    }
                }
            };
        } catch (NoSuchMethodException unused) {
            return null;
        }
    }

    public final <T> h<T> a(com.bykv.vk.openvk.preload.a.c.a<T> aVar) {
        h<T> hVar;
        final Type typeB = aVar.b();
        final Class<? super T> clsA = aVar.a();
        final com.bykv.vk.openvk.preload.a.f<?> fVar = this.f20413a.get(typeB);
        if (fVar != null) {
            return new h<T>() { // from class: com.bykv.vk.openvk.preload.a.b.b.1
                @Override // com.bykv.vk.openvk.preload.a.b.h
                public final T a() {
                    return (T) fVar.a();
                }
            };
        }
        final com.bykv.vk.openvk.preload.a.f<?> fVar2 = this.f20413a.get(clsA);
        if (fVar2 != null) {
            return new h<T>() { // from class: com.bykv.vk.openvk.preload.a.b.b.7
                @Override // com.bykv.vk.openvk.preload.a.b.h
                public final T a() {
                    return (T) fVar2.a();
                }
            };
        }
        h<T> hVarA = a(clsA);
        if (hVarA != null) {
            return hVarA;
        }
        if (Collection.class.isAssignableFrom(clsA)) {
            if (SortedSet.class.isAssignableFrom(clsA)) {
                hVar = new h() { // from class: com.bykv.vk.openvk.preload.a.b.b.9
                    @Override // com.bykv.vk.openvk.preload.a.b.h
                    public final Object a() {
                        return new TreeSet();
                    }
                };
            } else if (EnumSet.class.isAssignableFrom(clsA)) {
                hVar = new h() { // from class: com.bykv.vk.openvk.preload.a.b.b.10
                    @Override // com.bykv.vk.openvk.preload.a.b.h
                    public final Object a() {
                        Type type = typeB;
                        if (!(type instanceof ParameterizedType)) {
                            throw new j("Invalid EnumSet type: " + typeB.toString());
                        }
                        Type type2 = ((ParameterizedType) type).getActualTypeArguments()[0];
                        if (type2 instanceof Class) {
                            return EnumSet.noneOf((Class) type2);
                        }
                        throw new j("Invalid EnumSet type: " + typeB.toString());
                    }
                };
            } else if (Set.class.isAssignableFrom(clsA)) {
                hVar = new h() { // from class: com.bykv.vk.openvk.preload.a.b.b.11
                    @Override // com.bykv.vk.openvk.preload.a.b.h
                    public final Object a() {
                        return new LinkedHashSet();
                    }
                };
            } else {
                hVar = Queue.class.isAssignableFrom(clsA) ? new h() { // from class: com.bykv.vk.openvk.preload.a.b.b.12
                    @Override // com.bykv.vk.openvk.preload.a.b.h
                    public final Object a() {
                        return new ArrayDeque();
                    }
                } : new h() { // from class: com.bykv.vk.openvk.preload.a.b.b.13
                    @Override // com.bykv.vk.openvk.preload.a.b.h
                    public final Object a() {
                        return new ArrayList();
                    }
                };
            }
        } else if (!Map.class.isAssignableFrom(clsA)) {
            hVar = null;
        } else if (ConcurrentNavigableMap.class.isAssignableFrom(clsA)) {
            hVar = new h() { // from class: com.bykv.vk.openvk.preload.a.b.b.14
                @Override // com.bykv.vk.openvk.preload.a.b.h
                public final Object a() {
                    return new ConcurrentSkipListMap();
                }
            };
        } else if (ConcurrentMap.class.isAssignableFrom(clsA)) {
            hVar = new h() { // from class: com.bykv.vk.openvk.preload.a.b.b.2
                @Override // com.bykv.vk.openvk.preload.a.b.h
                public final Object a() {
                    return new ConcurrentHashMap();
                }
            };
        } else if (SortedMap.class.isAssignableFrom(clsA)) {
            hVar = new h() { // from class: com.bykv.vk.openvk.preload.a.b.b.3
                @Override // com.bykv.vk.openvk.preload.a.b.h
                public final Object a() {
                    return new TreeMap();
                }
            };
        } else {
            hVar = (!(typeB instanceof ParameterizedType) || String.class.isAssignableFrom(com.bykv.vk.openvk.preload.a.c.a.a(((ParameterizedType) typeB).getActualTypeArguments()[0]).a())) ? new h() { // from class: com.bykv.vk.openvk.preload.a.b.b.5
                @Override // com.bykv.vk.openvk.preload.a.b.h
                public final Object a() {
                    return new g();
                }
            } : new h() { // from class: com.bykv.vk.openvk.preload.a.b.b.4
                @Override // com.bykv.vk.openvk.preload.a.b.h
                public final Object a() {
                    return new LinkedHashMap();
                }
            };
        }
        return hVar != null ? hVar : new h() { // from class: com.bykv.vk.openvk.preload.a.b.b.6

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final i f20417a = i.a();

            @Override // com.bykv.vk.openvk.preload.a.b.h
            public final Object a() {
                try {
                    return this.f20417a.a(clsA);
                } catch (Exception e11) {
                    throw new RuntimeException("Unable to invoke no-args constructor for " + typeB + ". Registering an InstanceCreator with Gson for this type may fix this problem.", e11);
                }
            }
        };
    }

    public final String toString() {
        return this.f20413a.toString();
    }
}
