package com.alibaba.fastjson.util;

import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class d implements Comparable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f18197a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Method f18198b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Field f18199c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f18200d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Class f18201e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Type f18202f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final Class f18203g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f18204h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f18205i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f18206j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f18207k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final x4.b f18208l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final x4.b f18209m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final boolean f18210n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final boolean f18211o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final char[] f18212p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final boolean f18213q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final boolean f18214r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final boolean f18215s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final String f18216t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final String[] f18217u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final long f18218v;

    public d(String str, Class cls, Class cls2, Type type, Field field, int i11, int i12, int i13) {
        this.f18200d = 0;
        i11 = i11 < 0 ? 0 : i11;
        this.f18197a = str;
        this.f18203g = cls;
        this.f18201e = cls2;
        this.f18202f = type;
        this.f18198b = null;
        this.f18199c = field;
        this.f18200d = i11;
        this.f18205i = i12;
        this.f18206j = i13;
        this.f18213q = cls2.isEnum();
        if (field != null) {
            int modifiers = field.getModifiers();
            this.f18210n = true;
            this.f18211o = Modifier.isTransient(modifiers);
        } else {
            this.f18211o = false;
            this.f18210n = false;
        }
        this.f18212p = b();
        if (field != null) {
            TypeUtils.M0(field);
        }
        this.f18207k = "";
        x4.b bVar = field == null ? null : (x4.b) TypeUtils.O(field, x4.b.class);
        this.f18208l = bVar;
        this.f18209m = null;
        this.f18204h = false;
        this.f18214r = false;
        this.f18215s = false;
        this.f18216t = null;
        this.f18217u = new String[0];
        this.f18218v = n(str, bVar);
    }

    public d(String str, Method method, Field field, Class cls, Type type, int i11, int i12, int i13, x4.b bVar, x4.b bVar2, String str2) {
        this(str, method, field, cls, type, i11, i12, i13, bVar, bVar2, str2, null);
    }

    public d(String str, Method method, Field field, Class cls, Type type, int i11, int i12, int i13, x4.b bVar, x4.b bVar2, String str2, Map map) {
        boolean zJsonDirect;
        boolean zIsFinal;
        Class<?> cls2;
        Type type2;
        Type typeL;
        Class<?> cls3;
        Class<?> cls4;
        Type genericReturnType;
        Class<?> returnType;
        Type type3;
        boolean z10 = false;
        this.f18200d = 0;
        if (field != null) {
            String name = field.getName();
            if (name.equals(str)) {
                str = name;
            }
        }
        i11 = i11 < 0 ? 0 : i11;
        this.f18197a = str;
        this.f18198b = method;
        this.f18199c = field;
        this.f18200d = i11;
        this.f18205i = i12;
        this.f18206j = i13;
        this.f18208l = bVar;
        this.f18209m = bVar2;
        if (field != null) {
            int modifiers = field.getModifiers();
            this.f18210n = (modifiers & 1) != 0 || method == null;
            this.f18211o = Modifier.isTransient(modifiers) || TypeUtils.y0(method);
        } else {
            this.f18210n = false;
            this.f18211o = TypeUtils.y0(method);
        }
        if (str2 == null || str2.length() <= 0) {
            this.f18207k = "";
        } else {
            this.f18207k = str2;
        }
        x4.b bVarE = e();
        this.f18218v = n(str, bVarE);
        String str3 = null;
        if (bVarE != null) {
            String str4 = bVarE.format();
            str3 = str4.trim().length() != 0 ? str4 : null;
            zJsonDirect = bVarE.jsonDirect();
            this.f18215s = bVarE.unwrapped();
            this.f18217u = bVarE.alternateNames();
        } else {
            this.f18215s = false;
            this.f18217u = new String[0];
            zJsonDirect = false;
        }
        this.f18216t = str3;
        this.f18212p = b();
        if (method != null) {
            TypeUtils.M0(method);
        }
        if (field != null) {
            TypeUtils.M0(field);
        }
        if (method != null) {
            Class<?>[] parameterTypes = method.getParameterTypes();
            if (parameterTypes.length == 1) {
                cls4 = parameterTypes[0];
                type3 = method.getGenericParameterTypes()[0];
            } else {
                if (parameterTypes.length == 2 && (cls3 = parameterTypes[0]) == String.class && parameterTypes[1] == Object.class) {
                    cls4 = cls3;
                    type3 = cls3;
                } else {
                    zIsFinal = true;
                    returnType = method.getReturnType();
                    genericReturnType = method.getGenericReturnType();
                }
                this.f18203g = method.getDeclaringClass();
                cls2 = returnType;
                type2 = genericReturnType;
            }
            zIsFinal = false;
            returnType = cls4;
            genericReturnType = type3;
            this.f18203g = method.getDeclaringClass();
            cls2 = returnType;
            type2 = genericReturnType;
        } else {
            Class<?> type4 = field.getType();
            Type genericType = field.getGenericType();
            this.f18203g = field.getDeclaringClass();
            zIsFinal = Modifier.isFinal(field.getModifiers());
            cls2 = type4;
            type2 = genericType;
        }
        this.f18204h = zIsFinal;
        if (zJsonDirect && cls2 == String.class) {
            z10 = true;
        }
        this.f18214r = z10;
        if (cls != null && cls2 == Object.class && (type2 instanceof TypeVariable) && (typeL = l(cls, type, (TypeVariable) type2)) != null) {
            this.f18201e = TypeUtils.Q(typeL);
            this.f18202f = typeL;
            this.f18213q = cls2.isEnum();
            return;
        }
        boolean z11 = type2 instanceof Class;
        Class<?> cls5 = cls2;
        Type type5 = type2;
        if (!z11) {
            Type typeJ = j(cls, type == null ? cls : type, type2, map);
            Class<?> clsQ = cls2;
            if (typeJ != type2) {
                if (typeJ instanceof ParameterizedType) {
                    clsQ = TypeUtils.Q(typeJ);
                } else if (typeJ instanceof Class) {
                    clsQ = cls2;
                    clsQ = TypeUtils.Q(typeJ);
                }
            }
            clsQ = cls2;
            type5 = typeJ;
            cls5 = clsQ;
        }
        this.f18202f = type5;
        this.f18201e = cls5;
        this.f18213q = cls5.isEnum();
    }

    private static boolean f(Type[] typeArr, Map map) {
        if (map == null || map.size() == 0) {
            return false;
        }
        boolean z10 = false;
        for (int i11 = 0; i11 < typeArr.length; i11++) {
            Type type = typeArr[i11];
            if (type instanceof ParameterizedType) {
                ParameterizedType parameterizedType = (ParameterizedType) type;
                Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
                if (f(actualTypeArguments, map)) {
                    typeArr[i11] = com.alibaba.fastjson.g.b(new ParameterizedTypeImpl(actualTypeArguments, parameterizedType.getOwnerType(), parameterizedType.getRawType()));
                    z10 = true;
                }
            } else if ((type instanceof TypeVariable) && map.containsKey(type)) {
                typeArr[i11] = (Type) map.get(type);
                z10 = true;
            }
        }
        return z10;
    }

    private static boolean g(Type[] typeArr, TypeVariable[] typeVariableArr, Type[] typeArr2) {
        if (typeArr2 == null || typeVariableArr.length == 0) {
            return false;
        }
        boolean z10 = false;
        for (int i11 = 0; i11 < typeArr.length; i11++) {
            Type type = typeArr[i11];
            if (type instanceof ParameterizedType) {
                ParameterizedType parameterizedType = (ParameterizedType) type;
                Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
                if (g(actualTypeArguments, typeVariableArr, typeArr2)) {
                    typeArr[i11] = com.alibaba.fastjson.g.b(new ParameterizedTypeImpl(actualTypeArguments, parameterizedType.getOwnerType(), parameterizedType.getRawType()));
                    z10 = true;
                }
            } else if (type instanceof TypeVariable) {
                for (int i12 = 0; i12 < typeVariableArr.length; i12++) {
                    if (type.equals(typeVariableArr[i12])) {
                        typeArr[i11] = typeArr2[i12];
                        z10 = true;
                    }
                }
            }
        }
        return z10;
    }

    public static Type i(Class cls, Type type, Type type2) {
        return j(cls, type, type2, null);
    }

    public static Type j(Class cls, Type type, Type type2, Map map) {
        TypeVariable<Class<?>>[] typeParameters;
        ParameterizedType parameterizedType;
        if (cls != null && type != null) {
            if (type2 instanceof GenericArrayType) {
                Type genericComponentType = ((GenericArrayType) type2).getGenericComponentType();
                Type typeJ = j(cls, type, genericComponentType, map);
                return genericComponentType != typeJ ? Array.newInstance((Class<?>) TypeUtils.Q(typeJ), 0).getClass() : type2;
            }
            if (!TypeUtils.p0(type)) {
                return type2;
            }
            if (type2 instanceof TypeVariable) {
                ParameterizedType parameterizedType2 = (ParameterizedType) TypeUtils.Z(type);
                TypeVariable typeVariable = (TypeVariable) type2;
                TypeVariable[] typeParameters2 = TypeUtils.Q(parameterizedType2).getTypeParameters();
                for (int i11 = 0; i11 < typeParameters2.length; i11++) {
                    if (typeParameters2[i11].getName().equals(typeVariable.getName())) {
                        return parameterizedType2.getActualTypeArguments()[i11];
                    }
                }
            }
            if (type2 instanceof ParameterizedType) {
                ParameterizedType parameterizedType3 = (ParameterizedType) type2;
                Type[] actualTypeArguments = parameterizedType3.getActualTypeArguments();
                boolean zF = f(actualTypeArguments, map);
                if (!zF) {
                    if (type instanceof ParameterizedType) {
                        parameterizedType = (ParameterizedType) type;
                        typeParameters = cls.getTypeParameters();
                    } else if (cls.getGenericSuperclass() instanceof ParameterizedType) {
                        parameterizedType = (ParameterizedType) cls.getGenericSuperclass();
                        typeParameters = cls.getSuperclass().getTypeParameters();
                    } else {
                        typeParameters = type.getClass().getTypeParameters();
                        parameterizedType = parameterizedType3;
                    }
                    zF = g(actualTypeArguments, typeParameters, parameterizedType.getActualTypeArguments());
                }
                if (zF) {
                    return com.alibaba.fastjson.g.b(new ParameterizedTypeImpl(actualTypeArguments, parameterizedType3.getOwnerType(), parameterizedType3.getRawType()));
                }
            }
        }
        return type2;
    }

    private static Type l(Class cls, Type type, TypeVariable typeVariable) {
        Type[] actualTypeArguments;
        Class cls2 = typeVariable.getGenericDeclaration() instanceof Class ? (Class) typeVariable.getGenericDeclaration() : null;
        if (cls2 == cls) {
            actualTypeArguments = type instanceof ParameterizedType ? ((ParameterizedType) type).getActualTypeArguments() : null;
        } else {
            Type[] typeArr = null;
            while (cls != null && cls != Object.class && cls != cls2) {
                Type genericSuperclass = cls.getGenericSuperclass();
                if (genericSuperclass instanceof ParameterizedType) {
                    Type[] actualTypeArguments2 = ((ParameterizedType) genericSuperclass).getActualTypeArguments();
                    g(actualTypeArguments2, cls.getTypeParameters(), typeArr);
                    typeArr = actualTypeArguments2;
                }
                cls = cls.getSuperclass();
            }
            actualTypeArguments = typeArr;
        }
        if (actualTypeArguments == null || cls2 == null) {
            return null;
        }
        TypeVariable[] typeParameters = cls2.getTypeParameters();
        for (int i11 = 0; i11 < typeParameters.length; i11++) {
            if (typeVariable.equals(typeParameters[i11])) {
                return actualTypeArguments[i11];
            }
        }
        return null;
    }

    private long n(String str, x4.b bVar) {
        return (bVar == null || bVar.name().length() == 0) ? TypeUtils.K(str) : TypeUtils.L(str);
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compareTo(d dVar) {
        Method method = dVar.f18198b;
        if (method != null && this.f18198b != null && method.isBridge() && !this.f18198b.isBridge() && dVar.f18198b.getName().equals(this.f18198b.getName())) {
            return 1;
        }
        int i11 = this.f18200d;
        int i12 = dVar.f18200d;
        if (i11 < i12) {
            return -1;
        }
        if (i11 > i12) {
            return 1;
        }
        int iCompareTo = this.f18197a.compareTo(dVar.f18197a);
        if (iCompareTo != 0) {
            return iCompareTo;
        }
        Class<?> clsH = h();
        Class<?> clsH2 = dVar.h();
        if (clsH != null && clsH2 != null && clsH != clsH2) {
            if (clsH.isAssignableFrom(clsH2)) {
                return -1;
            }
            if (clsH2.isAssignableFrom(clsH)) {
                return 1;
            }
        }
        Field field = this.f18199c;
        boolean z10 = false;
        boolean z11 = field != null && field.getType() == this.f18201e;
        Field field2 = dVar.f18199c;
        if (field2 != null && field2.getType() == dVar.f18201e) {
            z10 = true;
        }
        if (z11 && !z10) {
            return 1;
        }
        if (z10 && !z11) {
            return -1;
        }
        if (dVar.f18201e.isPrimitive() && !this.f18201e.isPrimitive()) {
            return 1;
        }
        if (this.f18201e.isPrimitive() && !dVar.f18201e.isPrimitive()) {
            return -1;
        }
        if (dVar.f18201e.getName().startsWith("java.") && !this.f18201e.getName().startsWith("java.")) {
            return 1;
        }
        if (!this.f18201e.getName().startsWith("java.") || dVar.f18201e.getName().startsWith("java.")) {
            return this.f18201e.getName().compareTo(dVar.f18201e.getName());
        }
        return -1;
    }

    protected char[] b() {
        int length = this.f18197a.length();
        char[] cArr = new char[length + 3];
        String str = this.f18197a;
        str.getChars(0, str.length(), cArr, 1);
        cArr[0] = '\"';
        cArr[length + 1] = '\"';
        cArr[length + 2] = ':';
        return cArr;
    }

    public Object d(Object obj) {
        Method method = this.f18198b;
        return method != null ? method.invoke(obj, null) : this.f18199c.get(obj);
    }

    public x4.b e() {
        x4.b bVar = this.f18208l;
        return bVar != null ? bVar : this.f18209m;
    }

    protected Class h() {
        Method method = this.f18198b;
        if (method != null) {
            return method.getDeclaringClass();
        }
        Field field = this.f18199c;
        if (field != null) {
            return field.getDeclaringClass();
        }
        return null;
    }

    public String k() {
        return this.f18216t;
    }

    public Member m() {
        Method method = this.f18198b;
        return method != null ? method : this.f18199c;
    }

    public void o(Object obj, Object obj2) throws IllegalAccessException, InvocationTargetException {
        Method method = this.f18198b;
        if (method != null) {
            method.invoke(obj, obj2);
        } else {
            this.f18199c.set(obj, obj2);
        }
    }

    public void p() {
        Method method = this.f18198b;
        if (method != null) {
            TypeUtils.M0(method);
        } else {
            TypeUtils.M0(this.f18199c);
        }
    }

    public String toString() {
        return this.f18197a;
    }
}
