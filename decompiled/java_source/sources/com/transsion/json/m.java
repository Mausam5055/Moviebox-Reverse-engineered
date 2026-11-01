package com.transsion.json;

import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class m {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Map f46088d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LinkedList f46085a = new LinkedList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final LinkedList f46086b = new LinkedList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final q f46087c = new q();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Map f46089e = new HashMap();

    public m() {
        HashMap map = new HashMap();
        this.f46088d = map;
        map.put(Object.class, new em.b());
        map.put(Collection.class, new em.k());
        map.put(List.class, new em.k());
        map.put(Set.class, new em.n());
        map.put(Map.class, new em.m());
        map.put(Integer.class, new em.i());
        map.put(Integer.TYPE, new em.i());
        map.put(Float.class, new em.h());
        map.put(Float.TYPE, new em.h());
        map.put(Double.class, new em.f());
        map.put(Double.TYPE, new em.f());
        map.put(Long.class, new em.l());
        map.put(Long.TYPE, new em.l());
        map.put(Byte.class, new em.d());
        map.put(Byte.TYPE, new em.d());
        map.put(Boolean.class, new em.c());
        map.put(Boolean.TYPE, new em.c());
        map.put(Character.class, new em.e());
        map.put(Character.TYPE, new em.e());
        map.put(Enum.class, new em.g());
        map.put(String.class, new em.o());
        map.put(Array.class, new em.a());
        map.put(n.class, new em.j());
    }

    private o c(Class cls) {
        o oVar = (o) this.f46088d.get(cls);
        if (oVar != null || cls == null) {
            return oVar;
        }
        for (Class<?> cls2 : cls.getInterfaces()) {
            o oVarC = c(cls2);
            if (oVarC != null) {
                return oVarC;
            }
        }
        if (cls.getSuperclass() != null) {
            return c(cls.getSuperclass());
        }
        return null;
    }

    private Class g(Type type) {
        if (type == null) {
            return null;
        }
        if (type instanceof Class) {
            return (Class) type;
        }
        if (type instanceof ParameterizedType) {
            return (Class) ((ParameterizedType) type).getRawType();
        }
        if (type instanceof GenericArrayType) {
            return Array.class;
        }
        if ((type instanceof WildcardType) || (type instanceof TypeVariable)) {
            return null;
        }
        throw new k(this.f46087c + ":  Unknown type " + type);
    }

    private String m(String str) {
        return Character.toUpperCase(str.charAt(0)) + str.substring(1);
    }

    private Type n(Type type, Type type2) {
        if ((type instanceof Class) || (type instanceof ParameterizedType)) {
            return type;
        }
        if ((type instanceof TypeVariable) || (type instanceof WildcardType)) {
            return type2;
        }
        if (type instanceof GenericArrayType) {
            return ((GenericArrayType) type).getGenericComponentType();
        }
        throw new k(this.f46087c + ":  Unknown generic type " + type + ".");
    }

    private boolean p(Map map, d dVar) {
        return map.containsKey(dVar.b()) || map.containsKey(m(dVar.b()));
    }

    private o r(Class cls) {
        o oVar = (o) this.f46089e.get(this.f46087c);
        if (oVar == null) {
            return (cls == null || !cls.isArray()) ? c(cls) : (o) this.f46088d.get(Array.class);
        }
        return oVar;
    }

    private Object s(Map map, d dVar) {
        Object obj = map.get(dVar.b());
        return obj == null ? map.get(m(dVar.b())) : obj;
    }

    private Class t(Object obj, Class cls) {
        if (this.f46089e.containsKey(this.f46087c)) {
            return null;
        }
        Class clsF = f(obj instanceof Map ? h((Map) obj, null) : null, cls);
        return clsF == null ? obj.getClass() : clsF;
    }

    public m a(q qVar, o oVar) {
        this.f46089e.put(qVar, oVar);
        return this;
    }

    public m b(Class cls, o oVar) {
        this.f46088d.put(cls, oVar);
        return this;
    }

    public q d() {
        return this.f46087c;
    }

    public Class e(q qVar) {
        return null;
    }

    protected Class f(Class cls, Class cls2) {
        if (cls != null && cls2 != null) {
            return cls2.isAssignableFrom(cls) ? cls : cls2;
        }
        if (cls2 != null) {
            return cls2;
        }
        if (cls != null) {
            return cls;
        }
        return null;
    }

    protected Class h(Map map, Class cls) {
        if (cls != null) {
            return cls;
        }
        String str = (String) map.get("class");
        if (str == null) {
            return null;
        }
        try {
            ClassLoader contextClassLoader = Thread.currentThread().getContextClassLoader();
            return contextClassLoader != null ? contextClassLoader.loadClass(str) : Class.forName(str);
        } catch (ClassNotFoundException e11) {
            throw new k(String.format("%s:  Could not load %s", this.f46087c, str), e11);
        }
    }

    public Object i(Object obj) {
        return j(obj, null);
    }

    public Object j(Object obj, Type type) {
        this.f46086b.add(obj);
        if (obj == null) {
            this.f46086b.removeLast();
            return null;
        }
        try {
            Class clsT = t(obj, g(type));
            o oVarR = r(clsT);
            if (oVarR != null) {
                Object objA = oVarR.a(this, obj, type, clsT);
                this.f46086b.removeLast();
                return objA;
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append(this.f46087c);
            sb2.append(": + Could not find a suitable ObjectFactory for ");
            sb2.append(clsT);
            throw new k(sb2.toString());
        } catch (Throwable th2) {
            this.f46086b.removeLast();
            throw th2;
        }
    }

    public Object k(Map map, Object obj, Type type) {
        try {
            this.f46085a.add(obj);
            c cVarA = c.a(obj.getClass());
            for (d dVar : cVarA != null ? cVarA.c() : null) {
                if (p(map, dVar)) {
                    Object objS = s(map, dVar);
                    if (dVar.p().booleanValue()) {
                        this.f46087c.a(dVar.e());
                        Method methodK = dVar.k();
                        if (methodK != null) {
                            Type[] genericParameterTypes = methodK.getGenericParameterTypes();
                            if (genericParameterTypes.length != 1) {
                                StringBuilder sb2 = new StringBuilder();
                                sb2.append(this.f46087c);
                                sb2.append(":  Expected a single parameter for method ");
                                sb2.append(obj.getClass().getName());
                                sb2.append(".");
                                sb2.append(methodK.getName());
                                sb2.append(" but got ");
                                sb2.append(genericParameterTypes.length);
                                throw new k(sb2.toString());
                            }
                            methodK.invoke(this.f46085a.getLast(), j(objS, n(genericParameterTypes[0], type)));
                        } else {
                            Field fieldG = dVar.g();
                            if (fieldG != null) {
                                fieldG.setAccessible(true);
                                fieldG.set(obj, j(objS, fieldG.getGenericType()));
                            }
                        }
                        this.f46087c.d();
                    } else {
                        continue;
                    }
                }
            }
            return this.f46085a.removeLast();
        } catch (IllegalAccessException e11) {
            throw new k(this.f46087c + ":  Could not access the no-arg constructor for " + obj.getClass().getName(), e11);
        } catch (InvocationTargetException e12) {
            throw new k(this.f46087c + ":  Exception while trying to invoke setter method.", e12);
        }
    }

    public Object l(Map map, Map map2, Type type, Type type2) {
        this.f46086b.add(map);
        this.f46085a.add(map2);
        for (Object obj : map.keySet()) {
            this.f46087c.a("keys");
            Object objJ = j(obj, type);
            this.f46087c.d();
            this.f46087c.a("values");
            Object objJ2 = j(map.get(obj), type2);
            this.f46087c.d();
            map2.put(objJ, objJ2);
        }
        this.f46085a.removeLast();
        this.f46086b.removeLast();
        return map2;
    }

    public Collection o(Collection collection, Collection collection2, Type type) {
        Type type2 = type instanceof ParameterizedType ? ((ParameterizedType) type).getActualTypeArguments()[0] : null;
        this.f46086b.add(collection);
        this.f46085a.add(collection2);
        d().a("values");
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            collection2.add(j(it.next(), type2));
        }
        d().d();
        this.f46085a.removeLast();
        this.f46086b.removeLast();
        return collection2;
    }

    public k q(Object obj, Class cls) {
        return new k(String.format("%s:  Can not convert %s into %s", this.f46087c, obj.getClass().getName(), cls.getName()));
    }
}
