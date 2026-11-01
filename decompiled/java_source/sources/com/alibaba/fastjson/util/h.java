package com.alibaba.fastjson.util;

import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.PropertyNamingStrategy;
import com.alibaba.fastjson.parser.Feature;
import com.alibaba.fastjson.serializer.SerializerFeature;
import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes2.dex */
public class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Class f18242a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Class f18243b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Constructor f18244c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Constructor f18245d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Method f18246e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Method f18247f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f18248g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final d[] f18249h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final d[] f18250i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f18251j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final x4.d f18252k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final String f18253l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final String f18254m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public String[] f18255n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Type[] f18256o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public String[] f18257p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public boolean f18258q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public Constructor f18259r;

    public h(Class cls, Class cls2, Constructor constructor, Constructor constructor2, Method method, Method method2, x4.d dVar, List list) {
        x4.b bVar;
        this.f18242a = cls;
        this.f18243b = cls2;
        this.f18244c = constructor;
        this.f18245d = constructor2;
        this.f18246e = method;
        this.f18251j = TypeUtils.f0(cls);
        this.f18247f = method2;
        this.f18252k = dVar;
        if (dVar != null) {
            String strTypeName = dVar.typeName();
            String strTypeKey = dVar.typeKey();
            this.f18254m = strTypeKey.length() <= 0 ? null : strTypeKey;
            if (strTypeName.length() != 0) {
                this.f18253l = strTypeName;
            } else {
                this.f18253l = cls.getName();
            }
            String[] strArrOrders = dVar.orders();
            this.f18255n = strArrOrders.length == 0 ? null : strArrOrders;
        } else {
            this.f18253l = cls.getName();
            this.f18254m = null;
            this.f18255n = null;
        }
        d[] dVarArr = new d[list.size()];
        this.f18249h = dVarArr;
        list.toArray(dVarArr);
        d[] dVarArr2 = new d[dVarArr.length];
        int i11 = 0;
        if (this.f18255n != null) {
            LinkedHashMap linkedHashMap = new LinkedHashMap(list.size());
            for (d dVar2 : dVarArr) {
                linkedHashMap.put(dVar2.f18197a, dVar2);
            }
            int i12 = 0;
            for (String str : this.f18255n) {
                d dVar3 = (d) linkedHashMap.get(str);
                if (dVar3 != null) {
                    dVarArr2[i12] = dVar3;
                    linkedHashMap.remove(str);
                    i12++;
                }
            }
            Iterator it = linkedHashMap.values().iterator();
            while (it.hasNext()) {
                dVarArr2[i12] = (d) it.next();
                i12++;
            }
        } else {
            System.arraycopy(dVarArr, 0, dVarArr2, 0, dVarArr.length);
            Arrays.sort(dVarArr2);
        }
        this.f18250i = Arrays.equals(this.f18249h, dVarArr2) ? this.f18249h : dVarArr2;
        if (constructor != null) {
            this.f18248g = constructor.getParameterTypes().length;
        } else if (method != null) {
            this.f18248g = method.getParameterTypes().length;
        } else {
            this.f18248g = 0;
        }
        if (constructor2 != null) {
            this.f18256o = constructor2.getParameterTypes();
            boolean zT0 = TypeUtils.t0(cls);
            this.f18258q = zT0;
            if (!zT0) {
                if (this.f18256o.length == this.f18249h.length) {
                    while (true) {
                        Type[] typeArr = this.f18256o;
                        if (i11 >= typeArr.length) {
                            return;
                        }
                        if (typeArr[i11] == this.f18249h[i11].f18201e) {
                            i11++;
                        }
                    }
                }
                this.f18257p = b.f(constructor2);
                return;
            }
            this.f18257p = TypeUtils.a0(cls);
            try {
                this.f18259r = cls.getConstructor(null);
            } catch (Throwable unused) {
            }
            Annotation[][] annotationArrD0 = TypeUtils.d0(constructor2);
            for (int i13 = 0; i13 < this.f18257p.length && i13 < annotationArrD0.length; i13++) {
                Annotation[] annotationArr = annotationArrD0[i13];
                int length = annotationArr.length;
                int i14 = 0;
                while (true) {
                    if (i14 >= length) {
                        bVar = null;
                        break;
                    }
                    Annotation annotation = annotationArr[i14];
                    if (annotation instanceof x4.b) {
                        bVar = (x4.b) annotation;
                        break;
                    }
                    i14++;
                }
                if (bVar != null) {
                    String strName = bVar.name();
                    if (strName.length() > 0) {
                        this.f18257p[i13] = strName;
                    }
                }
            }
        }
    }

    static boolean a(List list, d dVar) {
        for (int size = list.size() - 1; size >= 0; size--) {
            d dVar2 = (d) list.get(size);
            if (dVar2.f18197a.equals(dVar.f18197a) && (!dVar2.f18204h || dVar.f18204h)) {
                if (dVar2.f18201e.isAssignableFrom(dVar.f18201e)) {
                    list.set(size, dVar);
                    return true;
                }
                if (dVar2.compareTo(dVar) >= 0) {
                    return false;
                }
                list.set(size, dVar);
                return true;
            }
        }
        list.add(dVar);
        return true;
    }

    public static h b(Class cls, Type type, PropertyNamingStrategy propertyNamingStrategy) {
        return c(cls, type, propertyNamingStrategy, false, TypeUtils.f18168b, false);
    }

    /* JADX WARN: Code duplicated, block: B:234:0x04c6  */
    /* JADX WARN: Code duplicated, block: B:299:0x06ba  */
    /* JADX WARN: Code duplicated, block: B:359:0x085d  */
    /* JADX WARN: Code duplicated, block: B:362:0x0866  */
    /* JADX WARN: Code duplicated, block: B:364:0x0872  */
    /* JADX WARN: Code duplicated, block: B:366:0x087e  */
    /* JADX WARN: Code duplicated, block: B:369:0x088a  */
    /* JADX WARN: Code duplicated, block: B:371:0x088e  */
    /* JADX WARN: Code duplicated, block: B:404:0x0945  */
    /* JADX WARN: Code duplicated, block: B:405:0x0960  */
    /* JADX WARN: Code duplicated, block: B:407:0x0964  */
    /* JADX WARN: Code duplicated, block: B:408:0x096e  */
    /* JADX WARN: Code duplicated, block: B:410:0x0976  */
    /* JADX WARN: Code duplicated, block: B:413:0x097d  */
    /* JADX WARN: Code duplicated, block: B:416:0x09a8  */
    /* JADX WARN: Code duplicated, block: B:418:0x09ab  */
    /* JADX WARN: Code duplicated, block: B:420:0x09b7  */
    /* JADX WARN: Code duplicated, block: B:422:0x09bd  */
    /* JADX WARN: Code duplicated, block: B:423:0x09ce  */
    /* JADX WARN: Code duplicated, block: B:425:0x09ec  */
    /* JADX WARN: Code duplicated, block: B:427:0x0a20  */
    /* JADX WARN: Code duplicated, block: B:429:0x0a35  */
    /* JADX WARN: Code duplicated, block: B:430:0x0a4a  */
    /* JADX WARN: Code duplicated, block: B:432:0x0a61  */
    /* JADX WARN: Code duplicated, block: B:488:0x0be3  */
    /* JADX WARN: Code duplicated, block: B:535:0x087b A[SYNTHETIC] */
    /* JADX WARN: Instruction removed from duplicated block: B:404:0x0945, please report this as an issue */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v12 */
    /* JADX WARN: Type inference failed for: r10v13, types: [x4.b] */
    /* JADX WARN: Type inference failed for: r10v14 */
    /* JADX WARN: Type inference failed for: r10v15 */
    /* JADX WARN: Type inference failed for: r6v25, types: [java.util.ArrayList, java.util.List] */
    /* JADX WARN: Type inference failed for: r6v6 */
    /* JADX WARN: Type inference failed for: r6v7, types: [java.util.List] */
    public static h c(Class cls, Type type, PropertyNamingStrategy propertyNamingStrategy, boolean z10, boolean z11, boolean z12) {
        Class<?> cls2;
        Class<Collection> cls3;
        ArrayList arrayList;
        Field[] fieldArr;
        Class<String> cls4;
        Class<x4.b> cls5;
        Method[] methodArr;
        Constructor<?> constructor;
        PropertyNamingStrategy propertyNamingStrategy2;
        String str;
        Class<x4.b> cls6;
        Field[] fieldArr2;
        Class<String> cls7;
        Field field;
        x4.d dVar;
        Class cls8;
        String str2;
        int i11;
        Class<Collection> cls9;
        Class<x4.b> cls10;
        String strH0;
        Field[] fieldArr3;
        Field field2;
        Field[] fieldArr4;
        Class<?> cls11;
        Class<String> cls12;
        Class<x4.b> cls13;
        Class cls14;
        char cCharAt;
        ?? arrayList2;
        Field[] fieldArr5;
        char c11;
        String strH1;
        Field fieldX;
        Field fieldX2;
        int iOrdinal;
        int i12;
        int i13;
        ?? r11;
        PropertyNamingStrategy propertyNamingStrategy3;
        x4.b bVar;
        int iOf;
        int iOf2;
        char c12;
        int i14;
        int i15;
        int i16;
        int i17;
        String str3;
        StringBuilder sb2;
        String str4;
        String str5;
        char cCharAt2;
        Constructor<?> constructorG;
        Class<?> cls15;
        Class<Collection> cls16;
        Class<String> cls17;
        Class<x4.b> cls18;
        Field[] fieldArr6;
        Class<?> cls19;
        Class<String> cls20;
        String[] strArrF;
        Constructor<?>[] constructorArr;
        String[] strArrF2;
        x4.b bVar2;
        Class<x4.b> cls21;
        int iOrdinal2;
        int iOf3;
        int iOf4;
        x4.b bVar3;
        String strName;
        int i18;
        int i19;
        int iOf5;
        Class<Collection> cls22;
        x4.b bVar4;
        Field fieldX3;
        String strName2;
        int i20;
        int i21;
        int i22;
        String str6;
        Constructor constructorG2;
        PropertyNamingStrategy propertyNamingStrategyNaming;
        Class cls23 = cls;
        boolean z13 = z12;
        x4.d dVar2 = (x4.d) TypeUtils.N(cls23, x4.d.class);
        PropertyNamingStrategy propertyNamingStrategy4 = (dVar2 == null || (propertyNamingStrategyNaming = dVar2.naming()) == null || propertyNamingStrategyNaming == PropertyNamingStrategy.CamelCase) ? propertyNamingStrategy : propertyNamingStrategyNaming;
        Class clsF = f(cls23, dVar2);
        Field[] declaredFields = cls.getDeclaredFields();
        Method[] methods = cls.getMethods();
        Map mapD = d(cls);
        boolean zT0 = TypeUtils.t0(cls);
        Constructor<?>[] declaredConstructors = cls.getDeclaredConstructors();
        Constructor constructorH = (!zT0 || declaredConstructors.length == 1) ? clsF == null ? h(cls23, declaredConstructors) : h(clsF, clsF.getDeclaredConstructors()) : null;
        ArrayList arrayList3 = new ArrayList();
        Method method = null;
        Method methodI = null;
        if (z10) {
            for (Class superclass = cls23; superclass != null; superclass = superclass.getSuperclass()) {
                e(cls23, type, propertyNamingStrategy4, arrayList3, superclass.getDeclaredFields());
            }
            if (constructorH != null) {
                TypeUtils.M0(constructorH);
            }
            return new h(cls, clsF, constructorH, null, null, null, dVar2, arrayList3);
        }
        boolean z14 = cls.isInterface() || Modifier.isAbstract(cls.getModifiers());
        Class<Collection> cls24 = Collection.class;
        Class<?> cls25 = Object.class;
        PropertyNamingStrategy propertyNamingStrategy5 = propertyNamingStrategy4;
        Class<String> cls26 = String.class;
        Class<x4.b> cls27 = x4.b.class;
        if ((constructorH == null && clsF == null) || z14) {
            Type mixInAnnotations = com.alibaba.fastjson.a.getMixInAnnotations(cls);
            if (!(mixInAnnotations instanceof Class) || (constructorG2 = g(((Class) mixInAnnotations).getConstructors())) == null) {
                constructorG = null;
            } else {
                try {
                    constructorG = cls23.getConstructor(constructorG2.getParameterTypes());
                } catch (NoSuchMethodException unused) {
                    constructorG = null;
                }
            }
            if (constructorG == null) {
                constructorG = g(declaredConstructors);
            }
            constructor = constructorG;
            if (constructor == null || z14) {
                cls15 = cls25;
                cls16 = cls24;
                arrayList = arrayList3;
                cls17 = cls26;
                cls18 = cls27;
                methodArr = methods;
                fieldArr6 = declaredFields;
                methodI = i(cls23, methodArr, z13);
                if (methodI != null) {
                    TypeUtils.M0(methodI);
                    Class<?>[] parameterTypes = methodI.getParameterTypes();
                    if (parameterTypes.length > 0) {
                        Annotation[][] annotationArrE0 = TypeUtils.e0(methodI);
                        String[] strArrF3 = null;
                        int i23 = 0;
                        while (i23 < parameterTypes.length) {
                            Annotation[] annotationArr = annotationArrE0[i23];
                            int length = annotationArr.length;
                            int i24 = 0;
                            while (true) {
                                if (i24 >= length) {
                                    bVar3 = null;
                                    break;
                                }
                                Annotation annotation = annotationArr[i24];
                                if (annotation instanceof x4.b) {
                                    bVar3 = (x4.b) annotation;
                                    break;
                                }
                                i24++;
                            }
                            if (bVar3 == null && (!z13 || !TypeUtils.s0(methodI))) {
                                throw new JSONException("illegal json creator");
                            }
                            if (bVar3 != null) {
                                strName = bVar3.name();
                                int iOrdinal3 = bVar3.ordinal();
                                int iOf6 = SerializerFeature.of(bVar3.serialzeFeatures());
                                iOf5 = Feature.of(bVar3.parseFeatures());
                                i18 = iOrdinal3;
                                i19 = iOf6;
                            } else {
                                strName = null;
                                i18 = 0;
                                i19 = 0;
                                iOf5 = 0;
                            }
                            if (strName == null || strName.length() == 0) {
                                if (strArrF3 == null) {
                                    strArrF3 = b.f(methodI);
                                }
                                strName = strArrF3[i23];
                            }
                            String[] strArr = strArrF3;
                            a(arrayList, new d(strName, cls, parameterTypes[i23], methodI.getGenericParameterTypes()[i23], TypeUtils.X(cls23, strName, fieldArr6), i18, i19, iOf5));
                            i23++;
                            z13 = z12;
                            parameterTypes = parameterTypes;
                            strArrF3 = strArr;
                        }
                        return new h(cls, clsF, null, null, methodI, null, dVar2, arrayList);
                    }
                } else if (!z14) {
                    String name = cls.getName();
                    if (!zT0 || declaredConstructors.length <= 0) {
                        int length2 = declaredConstructors.length;
                        int i25 = 0;
                        String[] strArr2 = null;
                        while (true) {
                            if (i25 >= length2) {
                                cls19 = cls15;
                                cls20 = cls17;
                                strArrF = strArr2;
                                break;
                            }
                            Constructor<?> constructor2 = declaredConstructors[i25];
                            Class<?>[] parameterTypes2 = constructor2.getParameterTypes();
                            if (name.equals("org.springframework.security.web.authentication.WebAuthenticationDetails")) {
                                if (parameterTypes2.length == 2) {
                                    cls20 = cls17;
                                    if (parameterTypes2[0] == cls20 && parameterTypes2[1] == cls20) {
                                        constructor2.setAccessible(true);
                                        strArrF = b.f(constructor2);
                                        constructor = constructor2;
                                        cls19 = cls15;
                                        break;
                                    }
                                } else {
                                    cls20 = cls17;
                                }
                                constructorArr = declaredConstructors;
                                cls19 = cls15;
                                i25++;
                                cls15 = cls19;
                                cls17 = cls20;
                                declaredConstructors = constructorArr;
                            } else {
                                cls20 = cls17;
                                if (name.equals("org.springframework.security.web.authentication.preauth.PreAuthenticatedAuthenticationToken")) {
                                    if (parameterTypes2.length == 3) {
                                        cls19 = cls15;
                                        constructorArr = declaredConstructors;
                                        if (parameterTypes2[0] == cls19 && parameterTypes2[1] == cls19) {
                                            Class<Collection> cls28 = cls16;
                                            if (parameterTypes2[2] == cls28) {
                                                constructor2.setAccessible(true);
                                                cls16 = cls28;
                                                constructor = constructor2;
                                                strArrF = new String[]{"principal", "credentials", "authorities"};
                                                break;
                                            }
                                            cls16 = cls28;
                                        }
                                    } else {
                                        constructorArr = declaredConstructors;
                                        cls19 = cls15;
                                    }
                                    i25++;
                                    cls15 = cls19;
                                    cls17 = cls20;
                                    declaredConstructors = constructorArr;
                                } else {
                                    constructorArr = declaredConstructors;
                                    cls19 = cls15;
                                    Class<Collection> cls29 = cls16;
                                    if (name.equals("org.springframework.security.core.authority.SimpleGrantedAuthority")) {
                                        cls16 = cls29;
                                        if (parameterTypes2.length == 1 && parameterTypes2[0] == cls20) {
                                            strArrF = new String[]{"authority"};
                                            constructor = constructor2;
                                            break;
                                        }
                                    } else {
                                        cls16 = cls29;
                                        if ((constructor2.getModifiers() & 1) != 0 && (strArrF2 = b.f(constructor2)) != null && strArrF2.length != 0 && (constructor == null || strArr2 == null || strArrF2.length > strArr2.length)) {
                                            strArr2 = strArrF2;
                                            constructor = constructor2;
                                        }
                                    }
                                    i25++;
                                    cls15 = cls19;
                                    cls17 = cls20;
                                    declaredConstructors = constructorArr;
                                }
                            }
                        }
                    } else {
                        String[] strArrA0 = TypeUtils.a0(cls);
                        Constructor<?> constructorC0 = TypeUtils.c0(declaredConstructors, strArrA0);
                        TypeUtils.M0(constructorC0);
                        constructor = constructorC0;
                        strArrF = strArrA0;
                        cls19 = cls15;
                        cls20 = cls17;
                    }
                    Class<?>[] parameterTypes3 = strArrF != null ? constructor.getParameterTypes() : null;
                    if (strArrF == null || parameterTypes3.length != strArrF.length) {
                        throw new JSONException("default constructor not found. " + cls23);
                    }
                    Annotation[][] annotationArrD0 = TypeUtils.d0(constructor);
                    int i26 = 0;
                    while (i26 < parameterTypes3.length) {
                        Annotation[] annotationArr2 = annotationArrD0[i26];
                        String str7 = strArrF[i26];
                        int length3 = annotationArr2.length;
                        int i27 = 0;
                        while (true) {
                            if (i27 >= length3) {
                                bVar2 = null;
                                break;
                            }
                            int i28 = length3;
                            Annotation annotation2 = annotationArr2[i27];
                            Annotation[] annotationArr3 = annotationArr2;
                            if (annotation2 instanceof x4.b) {
                                bVar2 = (x4.b) annotation2;
                                break;
                            }
                            i27++;
                            annotationArr2 = annotationArr3;
                            length3 = i28;
                        }
                        Class<?> cls30 = parameterTypes3[i26];
                        Type type2 = constructor.getGenericParameterTypes()[i26];
                        Field fieldX4 = TypeUtils.X(cls23, str7, fieldArr6);
                        if (fieldX4 == null || bVar2 != null) {
                            cls21 = cls18;
                        } else {
                            cls21 = cls18;
                            bVar2 = (x4.b) TypeUtils.O(fieldX4, cls21);
                        }
                        if (bVar2 != null) {
                            String strName3 = bVar2.name();
                            if (strName3.length() != 0) {
                                str7 = strName3;
                            }
                            iOrdinal2 = bVar2.ordinal();
                            iOf3 = SerializerFeature.of(bVar2.serialzeFeatures());
                            iOf4 = Feature.of(bVar2.parseFeatures());
                        } else if ("org.springframework.security.core.userdetails.User".equals(name) && "password".equals(str7)) {
                            iOf4 = Feature.InitStringFieldAsEmpty.mask;
                            iOrdinal2 = 0;
                            iOf3 = 0;
                        } else {
                            iOrdinal2 = 0;
                            iOf3 = 0;
                            iOf4 = 0;
                        }
                        a(arrayList, new d(str7, cls, cls30, type2, fieldX4, iOrdinal2, iOf3, iOf4));
                        i26++;
                        cls18 = cls21;
                        parameterTypes3 = parameterTypes3;
                        fieldArr6 = fieldArr6;
                        strArrF = strArrF;
                        cls20 = cls20;
                        cls19 = cls19;
                    }
                    cls2 = cls19;
                    cls4 = cls20;
                    fieldArr = fieldArr6;
                    cls5 = cls18;
                    cls3 = cls16;
                    if (!zT0 && !cls.getName().equals("javax.servlet.http.Cookie")) {
                        return new h(cls, clsF, null, constructor, null, null, dVar2, arrayList);
                    }
                }
            } else {
                TypeUtils.M0(constructor);
                Class<?>[] parameterTypes4 = constructor.getParameterTypes();
                if (parameterTypes4.length > 0) {
                    Annotation[][] annotationArrD1 = TypeUtils.d0(constructor);
                    String[] strArrF4 = null;
                    int i29 = 0;
                    while (i29 < parameterTypes4.length && i29 < annotationArrD1.length) {
                        Annotation[] annotationArr4 = annotationArrD1[i29];
                        int length4 = annotationArr4.length;
                        Class<?> cls31 = cls25;
                        int i30 = 0;
                        while (true) {
                            cls22 = cls24;
                            if (i30 >= length4) {
                                bVar4 = null;
                                break;
                            }
                            Annotation annotation3 = annotationArr4[i30];
                            Annotation[] annotationArr5 = annotationArr4;
                            if (annotation3 instanceof x4.b) {
                                bVar4 = (x4.b) annotation3;
                                break;
                            }
                            i30++;
                            annotationArr4 = annotationArr5;
                            cls24 = cls22;
                        }
                        Class<?> cls32 = parameterTypes4[i29];
                        Type type3 = constructor.getGenericParameterTypes()[i29];
                        if (bVar4 != null) {
                            fieldX3 = TypeUtils.X(cls23, bVar4.name(), declaredFields);
                            int iOrdinal4 = bVar4.ordinal();
                            int iOf7 = SerializerFeature.of(bVar4.serialzeFeatures());
                            int iOf8 = Feature.of(bVar4.parseFeatures());
                            strName2 = bVar4.name();
                            i22 = iOf8;
                            i21 = iOf7;
                            i20 = iOrdinal4;
                        } else {
                            fieldX3 = null;
                            strName2 = null;
                            i20 = 0;
                            i21 = 0;
                            i22 = 0;
                        }
                        if (strName2 == null || strName2.length() == 0) {
                            if (strArrF4 == null) {
                                strArrF4 = b.f(constructor);
                            }
                            str6 = strArrF4[i29];
                        } else {
                            str6 = strName2;
                        }
                        if (fieldX3 == null) {
                            if (strArrF4 == null) {
                                strArrF4 = zT0 ? TypeUtils.a0(cls) : b.f(constructor);
                            }
                            if (strArrF4.length > i29) {
                                fieldX3 = TypeUtils.X(cls23, strArrF4[i29], declaredFields);
                            }
                        }
                        ArrayList arrayList4 = arrayList3;
                        a(arrayList4, new d(str6, cls, cls32, type3, fieldX3, i20, i21, i22));
                        i29++;
                        parameterTypes4 = parameterTypes4;
                        declaredFields = declaredFields;
                        arrayList3 = arrayList4;
                        methods = methods;
                        annotationArrD1 = annotationArrD1;
                        cls25 = cls31;
                        cls26 = cls26;
                        strArrF4 = strArrF4;
                        cls27 = cls27;
                        cls24 = cls22;
                    }
                }
                cls15 = cls25;
                cls16 = cls24;
                arrayList = arrayList3;
                cls17 = cls26;
                cls18 = cls27;
                methodArr = methods;
                fieldArr6 = declaredFields;
            }
            cls2 = cls15;
            cls4 = cls17;
            cls3 = cls16;
            fieldArr = fieldArr6;
            cls5 = cls18;
        } else {
            cls2 = cls25;
            cls3 = cls24;
            arrayList = arrayList3;
            fieldArr = declaredFields;
            cls4 = cls26;
            cls5 = cls27;
            methodArr = methods;
            constructor = null;
        }
        if (constructorH != null) {
            TypeUtils.M0(constructorH);
        }
        String str8 = "set";
        if (clsF != null) {
            Class<x4.c> cls33 = x4.c.class;
            x4.c cVar = (x4.c) TypeUtils.N(clsF, cls33);
            String strWithPrefix = cVar != null ? cVar.withPrefix() : null;
            if (strWithPrefix == null) {
                strWithPrefix = "with";
            }
            String str9 = strWithPrefix;
            Method[] methods2 = clsF.getMethods();
            int length5 = methods2.length;
            int i31 = 0;
            while (i31 < length5) {
                Method method2 = methods2[i31];
                if (!Modifier.isStatic(method2.getModifiers()) && method2.getReturnType().equals(clsF)) {
                    x4.b bVarJ0 = (x4.b) TypeUtils.P(method2, cls5);
                    if (bVarJ0 == null) {
                        bVarJ0 = TypeUtils.j0(cls23, method2);
                    }
                    x4.b bVar5 = bVarJ0;
                    if (bVar5 == null) {
                        i15 = 0;
                        i16 = 0;
                        i17 = 0;
                    } else if (bVar5.deserialize()) {
                        int iOrdinal5 = bVar5.ordinal();
                        int iOf9 = SerializerFeature.of(bVar5.serialzeFeatures());
                        int iOf10 = Feature.of(bVar5.parseFeatures());
                        if (bVar5.name().length() != 0) {
                            i31 = i31;
                            length5 = length5;
                            methods2 = methods2;
                            cls33 = cls33;
                            clsF = clsF;
                            propertyNamingStrategy5 = propertyNamingStrategy5;
                            cls5 = cls5;
                            fieldArr = fieldArr;
                            cls4 = cls4;
                            dVar2 = dVar2;
                            a(arrayList, new d(bVar5.name(), method2, null, cls, type, iOrdinal5, iOf9, iOf10, bVar5, null, null, mapD));
                            str4 = str9;
                            str5 = str8;
                        } else {
                            i15 = iOrdinal5;
                            i16 = iOf9;
                            i17 = iOf10;
                        }
                    } else {
                        propertyNamingStrategy5 = propertyNamingStrategy5;
                        i31 = i31;
                        length5 = length5;
                        methods2 = methods2;
                        str4 = str9;
                        cls33 = cls33;
                        str5 = str8;
                        clsF = clsF;
                        cls5 = cls5;
                        fieldArr = fieldArr;
                        cls4 = cls4;
                        dVar2 = dVar2;
                    }
                    String name2 = method2.getName();
                    String str10 = str8;
                    if (!name2.startsWith(str10) || name2.length() <= 3) {
                        if (str9.length() == 0) {
                            sb2 = new StringBuilder(name2);
                        } else {
                            str3 = str9;
                            if (name2.startsWith(str3) && name2.length() > str3.length()) {
                                sb2 = new StringBuilder(name2.substring(str3.length()));
                                cCharAt2 = sb2.charAt(0);
                                if (str3.length() != 0 || Character.isUpperCase(cCharAt2)) {
                                    sb2.setCharAt(0, Character.toLowerCase(cCharAt2));
                                    str4 = str3;
                                    str5 = str10;
                                    a(arrayList, new d(sb2.toString(), method2, null, cls, type, i15, i16, i17, bVar5, null, null, mapD));
                                }
                            }
                        }
                        str4 = str3;
                        str5 = str10;
                    } else {
                        sb2 = new StringBuilder(name2.substring(3));
                    }
                    str3 = str9;
                    cCharAt2 = sb2.charAt(0);
                    if (str3.length() != 0) {
                    }
                    sb2.setCharAt(0, Character.toLowerCase(cCharAt2));
                    str4 = str3;
                    str5 = str10;
                    a(arrayList, new d(sb2.toString(), method2, null, cls, type, i15, i16, i17, bVar5, null, null, mapD));
                } else {
                    propertyNamingStrategy5 = propertyNamingStrategy5;
                    i31 = i31;
                    length5 = length5;
                    methods2 = methods2;
                    str4 = str9;
                    cls33 = cls33;
                    str5 = str8;
                    clsF = clsF;
                    cls5 = cls5;
                    fieldArr = fieldArr;
                    cls4 = cls4;
                    dVar2 = dVar2;
                }
                i31++;
                str9 = str4;
                dVar2 = dVar2;
                length5 = length5;
                methods2 = methods2;
                cls33 = cls33;
                clsF = clsF;
                propertyNamingStrategy5 = propertyNamingStrategy5;
                fieldArr = fieldArr;
                cls4 = cls4;
                cls5 = cls5;
                str8 = str5;
            }
            propertyNamingStrategy2 = propertyNamingStrategy5;
            str = str8;
            cls6 = cls5;
            fieldArr2 = fieldArr;
            cls7 = cls4;
            dVar = dVar2;
            cls8 = clsF;
            x4.c cVar2 = (x4.c) TypeUtils.N(cls8, cls33);
            String strBuildMethod = cVar2 != null ? cVar2.buildMethod() : null;
            if (strBuildMethod == null || strBuildMethod.length() == 0) {
                strBuildMethod = "build";
            }
            field = null;
            try {
                method = cls8.getMethod(strBuildMethod, null);
            } catch (NoSuchMethodException | SecurityException unused2) {
            }
            if (method == null) {
                try {
                    method = cls8.getMethod("create", null);
                } catch (NoSuchMethodException | SecurityException unused3) {
                }
            }
            if (method == null) {
                throw new JSONException("buildMethod not found.");
            }
            TypeUtils.M0(method);
        } else {
            propertyNamingStrategy2 = propertyNamingStrategy5;
            str = "set";
            cls6 = cls5;
            fieldArr2 = fieldArr;
            cls7 = cls4;
            field = null;
            dVar = dVar2;
            cls8 = clsF;
        }
        int length6 = methodArr.length;
        int i32 = 0;
        while (true) {
            str2 = "get";
            i11 = 4;
            if (i32 >= length6) {
                break;
            }
            Method method3 = methodArr[i32];
            String name3 = method3.getName();
            if (Modifier.isStatic(method3.getModifiers())) {
                cls11 = cls2;
                propertyNamingStrategy2 = propertyNamingStrategy2;
                cls12 = cls7;
                cls13 = cls6;
                str = str;
                cls14 = cls23;
            } else {
                Class<?> returnType = method3.getReturnType();
                if (returnType.equals(Void.TYPE) || returnType.equals(method3.getDeclaringClass())) {
                    cls11 = cls2;
                    if (method3.getDeclaringClass() == cls11) {
                        cls11 = cls11;
                    } else {
                        Class<?>[] parameterTypes5 = method3.getParameterTypes();
                        if (parameterTypes5.length != 0) {
                            if (parameterTypes5.length > 2) {
                                cls11 = cls11;
                                i32 = i32;
                                length6 = length6;
                                field = field;
                                cls8 = cls8;
                                cls12 = cls7;
                                cls13 = cls6;
                            } else {
                                Class<x4.b> cls34 = cls6;
                                x4.b bVar6 = (x4.b) TypeUtils.P(method3, cls34);
                                int i33 = 0;
                                int i34 = 0;
                                int i35 = 0;
                                if (bVar6 == null || parameterTypes5.length != 2) {
                                    field = field;
                                    cls12 = cls7;
                                } else {
                                    Class<String> cls35 = cls7;
                                    if (parameterTypes5[0] == cls35) {
                                        if (parameterTypes5[1] == cls11) {
                                            cls12 = cls35;
                                            cls11 = cls11;
                                            cls34 = cls34;
                                            i32 = i32;
                                            length6 = length6;
                                            field = null;
                                            cls8 = cls8;
                                            a(arrayList, new d("", method3, null, cls, type, 0, 0, 0, bVar6, null, null, mapD));
                                        } else {
                                            cls12 = cls35;
                                            field = null;
                                        }
                                        cls13 = cls34;
                                    } else {
                                        cls12 = cls35;
                                        field = field;
                                    }
                                }
                                if (parameterTypes5.length != 1) {
                                    methodArr = methodArr;
                                    propertyNamingStrategy2 = propertyNamingStrategy2;
                                    str = str;
                                    cls13 = cls34;
                                    cls14 = cls23;
                                } else {
                                    x4.b bVarJ1 = bVar6 == null ? TypeUtils.j0(cls23, method3) : bVar6;
                                    if (bVarJ1 != null || name3.length() >= 4) {
                                        if (bVarJ1 == null) {
                                            str = str;
                                            if ((bVarJ1 == null || name3.startsWith(str)) && cls8 == 0) {
                                                cCharAt = name3.charAt(3);
                                                if (zT0) {
                                                    arrayList2 = new ArrayList();
                                                    for (i14 = 0; i14 < methodArr.length; i14++) {
                                                        if (methodArr[i14].getName().startsWith("get")) {
                                                            arrayList2.add(methodArr[i14].getName());
                                                        }
                                                    }
                                                } else {
                                                    arrayList2 = field;
                                                }
                                                if (!Character.isUpperCase(cCharAt) || cCharAt > 512) {
                                                    cls14 = cls;
                                                    fieldArr5 = fieldArr2;
                                                    if (zT0) {
                                                        strH1 = TypeUtils.h0("g" + name3.substring(1));
                                                        fieldX = field;
                                                        c11 = 3;
                                                        if (fieldX == null) {
                                                            fieldX = TypeUtils.X(cls14, strH1, fieldArr5);
                                                        }
                                                        if (fieldX == null || parameterTypes5[0] != Boolean.TYPE) {
                                                            fieldX2 = fieldX;
                                                        } else {
                                                            fieldX2 = TypeUtils.X(cls14, "is" + Character.toUpperCase(strH1.charAt(0)) + strH1.substring(1), fieldArr5);
                                                        }
                                                        if (fieldX2 != null) {
                                                            bVar = (x4.b) TypeUtils.O(fieldX2, cls34);
                                                            if (bVar != null) {
                                                                cls13 = cls34;
                                                                r11 = bVar;
                                                                iOrdinal = i33;
                                                                i12 = i34;
                                                                i13 = i35;
                                                            } else if (bVar.deserialize()) {
                                                                iOrdinal = bVar.ordinal();
                                                                iOf = SerializerFeature.of(bVar.serialzeFeatures());
                                                                iOf2 = Feature.of(bVar.parseFeatures());
                                                                if (bVar.name().length() != 0) {
                                                                    cls13 = cls34;
                                                                    str = str;
                                                                    methodArr = methodArr;
                                                                    cls14 = cls14;
                                                                    a(arrayList, new d(bVar.name(), method3, fieldX2, cls, type, iOrdinal, iOf, iOf2, bVarJ1, bVar, null, mapD));
                                                                    fieldArr2 = fieldArr5;
                                                                    propertyNamingStrategy2 = propertyNamingStrategy2;
                                                                } else {
                                                                    cls13 = cls34;
                                                                    r11 = bVar;
                                                                    i12 = iOf;
                                                                    i13 = iOf2;
                                                                }
                                                            } else {
                                                                cls13 = cls34;
                                                                fieldArr2 = fieldArr5;
                                                            }
                                                        } else {
                                                            cls13 = cls34;
                                                            iOrdinal = i33;
                                                            i12 = i34;
                                                            i13 = i35;
                                                            r11 = field;
                                                        }
                                                        propertyNamingStrategy3 = propertyNamingStrategy2;
                                                        if (propertyNamingStrategy3 != null) {
                                                            strH1 = propertyNamingStrategy3.translate(strH1);
                                                        }
                                                        fieldArr2 = fieldArr5;
                                                        propertyNamingStrategy2 = propertyNamingStrategy3;
                                                        a(arrayList, new d(strH1, method3, fieldX2, cls, type, iOrdinal, i12, i13, bVarJ1, r11, null, mapD));
                                                    } else {
                                                        if (TypeUtils.f18168b) {
                                                            c11 = 3;
                                                            strH1 = TypeUtils.I(name3.substring(3));
                                                        } else {
                                                            c11 = 3;
                                                            strH1 = TypeUtils.h0(name3);
                                                        }
                                                        fieldX = field;
                                                        if (fieldX == null) {
                                                            fieldX = TypeUtils.X(cls14, strH1, fieldArr5);
                                                        }
                                                        if (fieldX == null) {
                                                            fieldX2 = fieldX;
                                                        } else {
                                                            fieldX2 = fieldX;
                                                        }
                                                        if (fieldX2 != null) {
                                                            bVar = (x4.b) TypeUtils.O(fieldX2, cls34);
                                                            if (bVar != null) {
                                                                cls13 = cls34;
                                                                r11 = bVar;
                                                                iOrdinal = i33;
                                                                i12 = i34;
                                                                i13 = i35;
                                                            } else if (bVar.deserialize()) {
                                                                cls13 = cls34;
                                                                fieldArr2 = fieldArr5;
                                                            } else {
                                                                iOrdinal = bVar.ordinal();
                                                                iOf = SerializerFeature.of(bVar.serialzeFeatures());
                                                                iOf2 = Feature.of(bVar.parseFeatures());
                                                                if (bVar.name().length() != 0) {
                                                                    cls13 = cls34;
                                                                    str = str;
                                                                    methodArr = methodArr;
                                                                    cls14 = cls14;
                                                                    a(arrayList, new d(bVar.name(), method3, fieldX2, cls, type, iOrdinal, iOf, iOf2, bVarJ1, bVar, null, mapD));
                                                                    fieldArr2 = fieldArr5;
                                                                    propertyNamingStrategy2 = propertyNamingStrategy2;
                                                                } else {
                                                                    cls13 = cls34;
                                                                    r11 = bVar;
                                                                    i12 = iOf;
                                                                    i13 = iOf2;
                                                                }
                                                            }
                                                        } else {
                                                            cls13 = cls34;
                                                            iOrdinal = i33;
                                                            i12 = i34;
                                                            i13 = i35;
                                                            r11 = field;
                                                        }
                                                        propertyNamingStrategy3 = propertyNamingStrategy2;
                                                        if (propertyNamingStrategy3 != null) {
                                                            strH1 = propertyNamingStrategy3.translate(strH1);
                                                        }
                                                        fieldArr2 = fieldArr5;
                                                        propertyNamingStrategy2 = propertyNamingStrategy3;
                                                        a(arrayList, new d(strH1, method3, fieldX2, cls, type, iOrdinal, i12, i13, bVarJ1, r11, null, mapD));
                                                    }
                                                } else if (cCharAt == '_') {
                                                    if (zT0) {
                                                        if (arrayList2.contains("g" + name3.substring(1))) {
                                                            c12 = 3;
                                                            strH1 = name3.substring(3);
                                                        } else {
                                                            c12 = 3;
                                                            strH1 = "is" + name3.substring(3);
                                                        }
                                                        cls14 = cls;
                                                        fieldArr5 = fieldArr2;
                                                        fieldX = TypeUtils.X(cls14, strH1, fieldArr5);
                                                    } else {
                                                        c12 = 3;
                                                        cls14 = cls;
                                                        fieldArr5 = fieldArr2;
                                                        String strSubstring = name3.substring(4);
                                                        fieldX = TypeUtils.X(cls14, strSubstring, fieldArr5);
                                                        if (fieldX == null) {
                                                            strH1 = name3.substring(3);
                                                            fieldX = TypeUtils.X(cls14, strH1, fieldArr5);
                                                            if (fieldX == null) {
                                                                strH1 = strSubstring;
                                                            }
                                                        } else {
                                                            c11 = 3;
                                                            strH1 = strSubstring;
                                                        }
                                                        if (fieldX == null) {
                                                            fieldX = TypeUtils.X(cls14, strH1, fieldArr5);
                                                        }
                                                        if (fieldX == null) {
                                                            fieldX2 = fieldX;
                                                        } else {
                                                            fieldX2 = fieldX;
                                                        }
                                                        if (fieldX2 != null) {
                                                            bVar = (x4.b) TypeUtils.O(fieldX2, cls34);
                                                            if (bVar != null) {
                                                                cls13 = cls34;
                                                                r11 = bVar;
                                                                iOrdinal = i33;
                                                                i12 = i34;
                                                                i13 = i35;
                                                            } else if (bVar.deserialize()) {
                                                                cls13 = cls34;
                                                                fieldArr2 = fieldArr5;
                                                            } else {
                                                                iOrdinal = bVar.ordinal();
                                                                iOf = SerializerFeature.of(bVar.serialzeFeatures());
                                                                iOf2 = Feature.of(bVar.parseFeatures());
                                                                if (bVar.name().length() != 0) {
                                                                    cls13 = cls34;
                                                                    str = str;
                                                                    methodArr = methodArr;
                                                                    cls14 = cls14;
                                                                    a(arrayList, new d(bVar.name(), method3, fieldX2, cls, type, iOrdinal, iOf, iOf2, bVarJ1, bVar, null, mapD));
                                                                    fieldArr2 = fieldArr5;
                                                                    propertyNamingStrategy2 = propertyNamingStrategy2;
                                                                } else {
                                                                    cls13 = cls34;
                                                                    r11 = bVar;
                                                                    i12 = iOf;
                                                                    i13 = iOf2;
                                                                }
                                                            }
                                                        } else {
                                                            cls13 = cls34;
                                                            iOrdinal = i33;
                                                            i12 = i34;
                                                            i13 = i35;
                                                            r11 = field;
                                                        }
                                                        propertyNamingStrategy3 = propertyNamingStrategy2;
                                                        if (propertyNamingStrategy3 != null) {
                                                            strH1 = propertyNamingStrategy3.translate(strH1);
                                                        }
                                                        fieldArr2 = fieldArr5;
                                                        propertyNamingStrategy2 = propertyNamingStrategy3;
                                                        a(arrayList, new d(strH1, method3, fieldX2, cls, type, iOrdinal, i12, i13, bVarJ1, r11, null, mapD));
                                                    }
                                                    c11 = c12;
                                                    if (fieldX == null) {
                                                        fieldX = TypeUtils.X(cls14, strH1, fieldArr5);
                                                    }
                                                    if (fieldX == null) {
                                                        fieldX2 = fieldX;
                                                    } else {
                                                        fieldX2 = fieldX;
                                                    }
                                                    if (fieldX2 != null) {
                                                        bVar = (x4.b) TypeUtils.O(fieldX2, cls34);
                                                        if (bVar != null) {
                                                            cls13 = cls34;
                                                            r11 = bVar;
                                                            iOrdinal = i33;
                                                            i12 = i34;
                                                            i13 = i35;
                                                        } else if (bVar.deserialize()) {
                                                            cls13 = cls34;
                                                            fieldArr2 = fieldArr5;
                                                        } else {
                                                            iOrdinal = bVar.ordinal();
                                                            iOf = SerializerFeature.of(bVar.serialzeFeatures());
                                                            iOf2 = Feature.of(bVar.parseFeatures());
                                                            if (bVar.name().length() != 0) {
                                                                cls13 = cls34;
                                                                str = str;
                                                                methodArr = methodArr;
                                                                cls14 = cls14;
                                                                a(arrayList, new d(bVar.name(), method3, fieldX2, cls, type, iOrdinal, iOf, iOf2, bVarJ1, bVar, null, mapD));
                                                                fieldArr2 = fieldArr5;
                                                                propertyNamingStrategy2 = propertyNamingStrategy2;
                                                            } else {
                                                                cls13 = cls34;
                                                                r11 = bVar;
                                                                i12 = iOf;
                                                                i13 = iOf2;
                                                            }
                                                        }
                                                    } else {
                                                        cls13 = cls34;
                                                        iOrdinal = i33;
                                                        i12 = i34;
                                                        i13 = i35;
                                                        r11 = field;
                                                    }
                                                    propertyNamingStrategy3 = propertyNamingStrategy2;
                                                    if (propertyNamingStrategy3 != null) {
                                                        strH1 = propertyNamingStrategy3.translate(strH1);
                                                    }
                                                    fieldArr2 = fieldArr5;
                                                    propertyNamingStrategy2 = propertyNamingStrategy3;
                                                    a(arrayList, new d(strH1, method3, fieldX2, cls, type, iOrdinal, i12, i13, bVarJ1, r11, null, mapD));
                                                } else {
                                                    cls14 = cls;
                                                    fieldArr5 = fieldArr2;
                                                    if (cCharAt == 'f') {
                                                        strH1 = name3.substring(3);
                                                    } else if (name3.length() < 5 || !Character.isUpperCase(name3.charAt(4))) {
                                                        strH1 = name3.substring(3);
                                                        fieldX = TypeUtils.X(cls14, strH1, fieldArr5);
                                                        if (fieldX == null) {
                                                            fieldArr2 = fieldArr5;
                                                            cls13 = cls34;
                                                        } else {
                                                            c11 = 3;
                                                            if (fieldX == null) {
                                                                fieldX = TypeUtils.X(cls14, strH1, fieldArr5);
                                                            }
                                                            if (fieldX == null) {
                                                                fieldX2 = fieldX;
                                                            } else {
                                                                fieldX2 = fieldX;
                                                            }
                                                            if (fieldX2 != null) {
                                                                bVar = (x4.b) TypeUtils.O(fieldX2, cls34);
                                                                if (bVar != null) {
                                                                    cls13 = cls34;
                                                                    r11 = bVar;
                                                                    iOrdinal = i33;
                                                                    i12 = i34;
                                                                    i13 = i35;
                                                                } else if (bVar.deserialize()) {
                                                                    cls13 = cls34;
                                                                    fieldArr2 = fieldArr5;
                                                                } else {
                                                                    iOrdinal = bVar.ordinal();
                                                                    iOf = SerializerFeature.of(bVar.serialzeFeatures());
                                                                    iOf2 = Feature.of(bVar.parseFeatures());
                                                                    if (bVar.name().length() != 0) {
                                                                        cls13 = cls34;
                                                                        str = str;
                                                                        methodArr = methodArr;
                                                                        cls14 = cls14;
                                                                        a(arrayList, new d(bVar.name(), method3, fieldX2, cls, type, iOrdinal, iOf, iOf2, bVarJ1, bVar, null, mapD));
                                                                        fieldArr2 = fieldArr5;
                                                                        propertyNamingStrategy2 = propertyNamingStrategy2;
                                                                    } else {
                                                                        cls13 = cls34;
                                                                        r11 = bVar;
                                                                        i12 = iOf;
                                                                        i13 = iOf2;
                                                                    }
                                                                }
                                                            } else {
                                                                cls13 = cls34;
                                                                iOrdinal = i33;
                                                                i12 = i34;
                                                                i13 = i35;
                                                                r11 = field;
                                                            }
                                                            propertyNamingStrategy3 = propertyNamingStrategy2;
                                                            if (propertyNamingStrategy3 != null) {
                                                                strH1 = propertyNamingStrategy3.translate(strH1);
                                                            }
                                                            fieldArr2 = fieldArr5;
                                                            propertyNamingStrategy2 = propertyNamingStrategy3;
                                                            a(arrayList, new d(strH1, method3, fieldX2, cls, type, iOrdinal, i12, i13, bVarJ1, r11, null, mapD));
                                                        }
                                                    } else {
                                                        strH1 = TypeUtils.I(name3.substring(3));
                                                    }
                                                    c11 = 3;
                                                    fieldX = field;
                                                    if (fieldX == null) {
                                                        fieldX = TypeUtils.X(cls14, strH1, fieldArr5);
                                                    }
                                                    if (fieldX == null) {
                                                        fieldX2 = fieldX;
                                                    } else {
                                                        fieldX2 = fieldX;
                                                    }
                                                    if (fieldX2 != null) {
                                                        bVar = (x4.b) TypeUtils.O(fieldX2, cls34);
                                                        if (bVar != null) {
                                                            cls13 = cls34;
                                                            r11 = bVar;
                                                            iOrdinal = i33;
                                                            i12 = i34;
                                                            i13 = i35;
                                                        } else if (bVar.deserialize()) {
                                                            cls13 = cls34;
                                                            fieldArr2 = fieldArr5;
                                                        } else {
                                                            iOrdinal = bVar.ordinal();
                                                            iOf = SerializerFeature.of(bVar.serialzeFeatures());
                                                            iOf2 = Feature.of(bVar.parseFeatures());
                                                            if (bVar.name().length() != 0) {
                                                                cls13 = cls34;
                                                                str = str;
                                                                methodArr = methodArr;
                                                                cls14 = cls14;
                                                                a(arrayList, new d(bVar.name(), method3, fieldX2, cls, type, iOrdinal, iOf, iOf2, bVarJ1, bVar, null, mapD));
                                                                fieldArr2 = fieldArr5;
                                                                propertyNamingStrategy2 = propertyNamingStrategy2;
                                                            } else {
                                                                cls13 = cls34;
                                                                r11 = bVar;
                                                                i12 = iOf;
                                                                i13 = iOf2;
                                                            }
                                                        }
                                                    } else {
                                                        cls13 = cls34;
                                                        iOrdinal = i33;
                                                        i12 = i34;
                                                        i13 = i35;
                                                        r11 = field;
                                                    }
                                                    propertyNamingStrategy3 = propertyNamingStrategy2;
                                                    if (propertyNamingStrategy3 != null) {
                                                        strH1 = propertyNamingStrategy3.translate(strH1);
                                                    }
                                                    fieldArr2 = fieldArr5;
                                                    propertyNamingStrategy2 = propertyNamingStrategy3;
                                                    a(arrayList, new d(strH1, method3, fieldX2, cls, type, iOrdinal, i12, i13, bVarJ1, r11, null, mapD));
                                                }
                                                cls14 = cls14;
                                            } else {
                                                str = str;
                                                cls13 = cls34;
                                                cls14 = cls;
                                            }
                                        } else if (bVarJ1.deserialize()) {
                                            int iOrdinal6 = bVarJ1.ordinal();
                                            int iOf11 = SerializerFeature.of(bVarJ1.serialzeFeatures());
                                            int iOf12 = Feature.of(bVarJ1.parseFeatures());
                                            if (bVarJ1.name().length() != 0) {
                                                a(arrayList, new d(bVarJ1.name(), method3, null, cls, type, iOrdinal6, iOf11, iOf12, bVarJ1, null, null, mapD));
                                                str = str;
                                            } else {
                                                i33 = iOrdinal6;
                                                i34 = iOf11;
                                                i35 = iOf12;
                                                str = str;
                                                if (bVarJ1 == null) {
                                                    cCharAt = name3.charAt(3);
                                                    if (zT0) {
                                                        arrayList2 = new ArrayList();
                                                        while (i14 < methodArr.length) {
                                                            if (methodArr[i14].getName().startsWith("get")) {
                                                                arrayList2.add(methodArr[i14].getName());
                                                            }
                                                        }
                                                    } else {
                                                        arrayList2 = field;
                                                    }
                                                    if (Character.isUpperCase(cCharAt)) {
                                                        cls14 = cls;
                                                        fieldArr5 = fieldArr2;
                                                        if (zT0) {
                                                            strH1 = TypeUtils.h0("g" + name3.substring(1));
                                                            fieldX = field;
                                                            c11 = 3;
                                                            if (fieldX == null) {
                                                                fieldX = TypeUtils.X(cls14, strH1, fieldArr5);
                                                            }
                                                            if (fieldX == null) {
                                                                fieldX2 = fieldX;
                                                            } else {
                                                                fieldX2 = fieldX;
                                                            }
                                                            if (fieldX2 != null) {
                                                                bVar = (x4.b) TypeUtils.O(fieldX2, cls34);
                                                                if (bVar != null) {
                                                                    cls13 = cls34;
                                                                    r11 = bVar;
                                                                    iOrdinal = i33;
                                                                    i12 = i34;
                                                                    i13 = i35;
                                                                } else if (bVar.deserialize()) {
                                                                    cls13 = cls34;
                                                                    fieldArr2 = fieldArr5;
                                                                } else {
                                                                    iOrdinal = bVar.ordinal();
                                                                    iOf = SerializerFeature.of(bVar.serialzeFeatures());
                                                                    iOf2 = Feature.of(bVar.parseFeatures());
                                                                    if (bVar.name().length() != 0) {
                                                                        cls13 = cls34;
                                                                        str = str;
                                                                        methodArr = methodArr;
                                                                        cls14 = cls14;
                                                                        a(arrayList, new d(bVar.name(), method3, fieldX2, cls, type, iOrdinal, iOf, iOf2, bVarJ1, bVar, null, mapD));
                                                                        fieldArr2 = fieldArr5;
                                                                        propertyNamingStrategy2 = propertyNamingStrategy2;
                                                                    } else {
                                                                        cls13 = cls34;
                                                                        r11 = bVar;
                                                                        i12 = iOf;
                                                                        i13 = iOf2;
                                                                    }
                                                                }
                                                            } else {
                                                                cls13 = cls34;
                                                                iOrdinal = i33;
                                                                i12 = i34;
                                                                i13 = i35;
                                                                r11 = field;
                                                            }
                                                            propertyNamingStrategy3 = propertyNamingStrategy2;
                                                            if (propertyNamingStrategy3 != null) {
                                                                strH1 = propertyNamingStrategy3.translate(strH1);
                                                            }
                                                            fieldArr2 = fieldArr5;
                                                            propertyNamingStrategy2 = propertyNamingStrategy3;
                                                            a(arrayList, new d(strH1, method3, fieldX2, cls, type, iOrdinal, i12, i13, bVarJ1, r11, null, mapD));
                                                        } else {
                                                            if (TypeUtils.f18168b) {
                                                                c11 = 3;
                                                                strH1 = TypeUtils.I(name3.substring(3));
                                                            } else {
                                                                c11 = 3;
                                                                strH1 = TypeUtils.h0(name3);
                                                            }
                                                            fieldX = field;
                                                            if (fieldX == null) {
                                                                fieldX = TypeUtils.X(cls14, strH1, fieldArr5);
                                                            }
                                                            if (fieldX == null) {
                                                                fieldX2 = fieldX;
                                                            } else {
                                                                fieldX2 = fieldX;
                                                            }
                                                            if (fieldX2 != null) {
                                                                bVar = (x4.b) TypeUtils.O(fieldX2, cls34);
                                                                if (bVar != null) {
                                                                    cls13 = cls34;
                                                                    r11 = bVar;
                                                                    iOrdinal = i33;
                                                                    i12 = i34;
                                                                    i13 = i35;
                                                                } else if (bVar.deserialize()) {
                                                                    cls13 = cls34;
                                                                    fieldArr2 = fieldArr5;
                                                                } else {
                                                                    iOrdinal = bVar.ordinal();
                                                                    iOf = SerializerFeature.of(bVar.serialzeFeatures());
                                                                    iOf2 = Feature.of(bVar.parseFeatures());
                                                                    if (bVar.name().length() != 0) {
                                                                        cls13 = cls34;
                                                                        str = str;
                                                                        methodArr = methodArr;
                                                                        cls14 = cls14;
                                                                        a(arrayList, new d(bVar.name(), method3, fieldX2, cls, type, iOrdinal, iOf, iOf2, bVarJ1, bVar, null, mapD));
                                                                        fieldArr2 = fieldArr5;
                                                                        propertyNamingStrategy2 = propertyNamingStrategy2;
                                                                    } else {
                                                                        cls13 = cls34;
                                                                        r11 = bVar;
                                                                        i12 = iOf;
                                                                        i13 = iOf2;
                                                                    }
                                                                }
                                                            } else {
                                                                cls13 = cls34;
                                                                iOrdinal = i33;
                                                                i12 = i34;
                                                                i13 = i35;
                                                                r11 = field;
                                                            }
                                                            propertyNamingStrategy3 = propertyNamingStrategy2;
                                                            if (propertyNamingStrategy3 != null) {
                                                                strH1 = propertyNamingStrategy3.translate(strH1);
                                                            }
                                                            fieldArr2 = fieldArr5;
                                                            propertyNamingStrategy2 = propertyNamingStrategy3;
                                                            a(arrayList, new d(strH1, method3, fieldX2, cls, type, iOrdinal, i12, i13, bVarJ1, r11, null, mapD));
                                                        }
                                                    } else {
                                                        cls14 = cls;
                                                        fieldArr5 = fieldArr2;
                                                        if (zT0) {
                                                            strH1 = TypeUtils.h0("g" + name3.substring(1));
                                                            fieldX = field;
                                                            c11 = 3;
                                                            if (fieldX == null) {
                                                                fieldX = TypeUtils.X(cls14, strH1, fieldArr5);
                                                            }
                                                            if (fieldX == null) {
                                                                fieldX2 = fieldX;
                                                            } else {
                                                                fieldX2 = fieldX;
                                                            }
                                                            if (fieldX2 != null) {
                                                                bVar = (x4.b) TypeUtils.O(fieldX2, cls34);
                                                                if (bVar != null) {
                                                                    cls13 = cls34;
                                                                    r11 = bVar;
                                                                    iOrdinal = i33;
                                                                    i12 = i34;
                                                                    i13 = i35;
                                                                } else if (bVar.deserialize()) {
                                                                    cls13 = cls34;
                                                                    fieldArr2 = fieldArr5;
                                                                } else {
                                                                    iOrdinal = bVar.ordinal();
                                                                    iOf = SerializerFeature.of(bVar.serialzeFeatures());
                                                                    iOf2 = Feature.of(bVar.parseFeatures());
                                                                    if (bVar.name().length() != 0) {
                                                                        cls13 = cls34;
                                                                        str = str;
                                                                        methodArr = methodArr;
                                                                        cls14 = cls14;
                                                                        a(arrayList, new d(bVar.name(), method3, fieldX2, cls, type, iOrdinal, iOf, iOf2, bVarJ1, bVar, null, mapD));
                                                                        fieldArr2 = fieldArr5;
                                                                        propertyNamingStrategy2 = propertyNamingStrategy2;
                                                                    } else {
                                                                        cls13 = cls34;
                                                                        r11 = bVar;
                                                                        i12 = iOf;
                                                                        i13 = iOf2;
                                                                    }
                                                                }
                                                            } else {
                                                                cls13 = cls34;
                                                                iOrdinal = i33;
                                                                i12 = i34;
                                                                i13 = i35;
                                                                r11 = field;
                                                            }
                                                            propertyNamingStrategy3 = propertyNamingStrategy2;
                                                            if (propertyNamingStrategy3 != null) {
                                                                strH1 = propertyNamingStrategy3.translate(strH1);
                                                            }
                                                            fieldArr2 = fieldArr5;
                                                            propertyNamingStrategy2 = propertyNamingStrategy3;
                                                            a(arrayList, new d(strH1, method3, fieldX2, cls, type, iOrdinal, i12, i13, bVarJ1, r11, null, mapD));
                                                        } else {
                                                            if (TypeUtils.f18168b) {
                                                                c11 = 3;
                                                                strH1 = TypeUtils.I(name3.substring(3));
                                                            } else {
                                                                c11 = 3;
                                                                strH1 = TypeUtils.h0(name3);
                                                            }
                                                            fieldX = field;
                                                            if (fieldX == null) {
                                                                fieldX = TypeUtils.X(cls14, strH1, fieldArr5);
                                                            }
                                                            if (fieldX == null) {
                                                                fieldX2 = fieldX;
                                                            } else {
                                                                fieldX2 = fieldX;
                                                            }
                                                            if (fieldX2 != null) {
                                                                bVar = (x4.b) TypeUtils.O(fieldX2, cls34);
                                                                if (bVar != null) {
                                                                    cls13 = cls34;
                                                                    r11 = bVar;
                                                                    iOrdinal = i33;
                                                                    i12 = i34;
                                                                    i13 = i35;
                                                                } else if (bVar.deserialize()) {
                                                                    cls13 = cls34;
                                                                    fieldArr2 = fieldArr5;
                                                                } else {
                                                                    iOrdinal = bVar.ordinal();
                                                                    iOf = SerializerFeature.of(bVar.serialzeFeatures());
                                                                    iOf2 = Feature.of(bVar.parseFeatures());
                                                                    if (bVar.name().length() != 0) {
                                                                        cls13 = cls34;
                                                                        str = str;
                                                                        methodArr = methodArr;
                                                                        cls14 = cls14;
                                                                        a(arrayList, new d(bVar.name(), method3, fieldX2, cls, type, iOrdinal, iOf, iOf2, bVarJ1, bVar, null, mapD));
                                                                        fieldArr2 = fieldArr5;
                                                                        propertyNamingStrategy2 = propertyNamingStrategy2;
                                                                    } else {
                                                                        cls13 = cls34;
                                                                        r11 = bVar;
                                                                        i12 = iOf;
                                                                        i13 = iOf2;
                                                                    }
                                                                }
                                                            } else {
                                                                cls13 = cls34;
                                                                iOrdinal = i33;
                                                                i12 = i34;
                                                                i13 = i35;
                                                                r11 = field;
                                                            }
                                                            propertyNamingStrategy3 = propertyNamingStrategy2;
                                                            if (propertyNamingStrategy3 != null) {
                                                                strH1 = propertyNamingStrategy3.translate(strH1);
                                                            }
                                                            fieldArr2 = fieldArr5;
                                                            propertyNamingStrategy2 = propertyNamingStrategy3;
                                                            a(arrayList, new d(strH1, method3, fieldX2, cls, type, iOrdinal, i12, i13, bVarJ1, r11, null, mapD));
                                                        }
                                                    }
                                                    cls14 = cls14;
                                                } else {
                                                    cCharAt = name3.charAt(3);
                                                    if (zT0) {
                                                        arrayList2 = new ArrayList();
                                                        while (i14 < methodArr.length) {
                                                            if (methodArr[i14].getName().startsWith("get")) {
                                                                arrayList2.add(methodArr[i14].getName());
                                                            }
                                                        }
                                                    } else {
                                                        arrayList2 = field;
                                                    }
                                                    if (Character.isUpperCase(cCharAt)) {
                                                        cls14 = cls;
                                                        fieldArr5 = fieldArr2;
                                                        if (zT0) {
                                                            strH1 = TypeUtils.h0("g" + name3.substring(1));
                                                            fieldX = field;
                                                            c11 = 3;
                                                            if (fieldX == null) {
                                                                fieldX = TypeUtils.X(cls14, strH1, fieldArr5);
                                                            }
                                                            if (fieldX == null) {
                                                                fieldX2 = fieldX;
                                                            } else {
                                                                fieldX2 = fieldX;
                                                            }
                                                            if (fieldX2 != null) {
                                                                bVar = (x4.b) TypeUtils.O(fieldX2, cls34);
                                                                if (bVar != null) {
                                                                    cls13 = cls34;
                                                                    r11 = bVar;
                                                                    iOrdinal = i33;
                                                                    i12 = i34;
                                                                    i13 = i35;
                                                                } else if (bVar.deserialize()) {
                                                                    cls13 = cls34;
                                                                    fieldArr2 = fieldArr5;
                                                                } else {
                                                                    iOrdinal = bVar.ordinal();
                                                                    iOf = SerializerFeature.of(bVar.serialzeFeatures());
                                                                    iOf2 = Feature.of(bVar.parseFeatures());
                                                                    if (bVar.name().length() != 0) {
                                                                        cls13 = cls34;
                                                                        str = str;
                                                                        methodArr = methodArr;
                                                                        cls14 = cls14;
                                                                        a(arrayList, new d(bVar.name(), method3, fieldX2, cls, type, iOrdinal, iOf, iOf2, bVarJ1, bVar, null, mapD));
                                                                        fieldArr2 = fieldArr5;
                                                                        propertyNamingStrategy2 = propertyNamingStrategy2;
                                                                    } else {
                                                                        cls13 = cls34;
                                                                        r11 = bVar;
                                                                        i12 = iOf;
                                                                        i13 = iOf2;
                                                                    }
                                                                }
                                                            } else {
                                                                cls13 = cls34;
                                                                iOrdinal = i33;
                                                                i12 = i34;
                                                                i13 = i35;
                                                                r11 = field;
                                                            }
                                                            propertyNamingStrategy3 = propertyNamingStrategy2;
                                                            if (propertyNamingStrategy3 != null) {
                                                                strH1 = propertyNamingStrategy3.translate(strH1);
                                                            }
                                                            fieldArr2 = fieldArr5;
                                                            propertyNamingStrategy2 = propertyNamingStrategy3;
                                                            a(arrayList, new d(strH1, method3, fieldX2, cls, type, iOrdinal, i12, i13, bVarJ1, r11, null, mapD));
                                                        } else {
                                                            if (TypeUtils.f18168b) {
                                                                c11 = 3;
                                                                strH1 = TypeUtils.I(name3.substring(3));
                                                            } else {
                                                                c11 = 3;
                                                                strH1 = TypeUtils.h0(name3);
                                                            }
                                                            fieldX = field;
                                                            if (fieldX == null) {
                                                                fieldX = TypeUtils.X(cls14, strH1, fieldArr5);
                                                            }
                                                            if (fieldX == null) {
                                                                fieldX2 = fieldX;
                                                            } else {
                                                                fieldX2 = fieldX;
                                                            }
                                                            if (fieldX2 != null) {
                                                                bVar = (x4.b) TypeUtils.O(fieldX2, cls34);
                                                                if (bVar != null) {
                                                                    cls13 = cls34;
                                                                    r11 = bVar;
                                                                    iOrdinal = i33;
                                                                    i12 = i34;
                                                                    i13 = i35;
                                                                } else if (bVar.deserialize()) {
                                                                    cls13 = cls34;
                                                                    fieldArr2 = fieldArr5;
                                                                } else {
                                                                    iOrdinal = bVar.ordinal();
                                                                    iOf = SerializerFeature.of(bVar.serialzeFeatures());
                                                                    iOf2 = Feature.of(bVar.parseFeatures());
                                                                    if (bVar.name().length() != 0) {
                                                                        cls13 = cls34;
                                                                        str = str;
                                                                        methodArr = methodArr;
                                                                        cls14 = cls14;
                                                                        a(arrayList, new d(bVar.name(), method3, fieldX2, cls, type, iOrdinal, iOf, iOf2, bVarJ1, bVar, null, mapD));
                                                                        fieldArr2 = fieldArr5;
                                                                        propertyNamingStrategy2 = propertyNamingStrategy2;
                                                                    } else {
                                                                        cls13 = cls34;
                                                                        r11 = bVar;
                                                                        i12 = iOf;
                                                                        i13 = iOf2;
                                                                    }
                                                                }
                                                            } else {
                                                                cls13 = cls34;
                                                                iOrdinal = i33;
                                                                i12 = i34;
                                                                i13 = i35;
                                                                r11 = field;
                                                            }
                                                            propertyNamingStrategy3 = propertyNamingStrategy2;
                                                            if (propertyNamingStrategy3 != null) {
                                                                strH1 = propertyNamingStrategy3.translate(strH1);
                                                            }
                                                            fieldArr2 = fieldArr5;
                                                            propertyNamingStrategy2 = propertyNamingStrategy3;
                                                            a(arrayList, new d(strH1, method3, fieldX2, cls, type, iOrdinal, i12, i13, bVarJ1, r11, null, mapD));
                                                        }
                                                    } else {
                                                        cls14 = cls;
                                                        fieldArr5 = fieldArr2;
                                                        if (zT0) {
                                                            strH1 = TypeUtils.h0("g" + name3.substring(1));
                                                            fieldX = field;
                                                            c11 = 3;
                                                            if (fieldX == null) {
                                                                fieldX = TypeUtils.X(cls14, strH1, fieldArr5);
                                                            }
                                                            if (fieldX == null) {
                                                                fieldX2 = fieldX;
                                                            } else {
                                                                fieldX2 = fieldX;
                                                            }
                                                            if (fieldX2 != null) {
                                                                bVar = (x4.b) TypeUtils.O(fieldX2, cls34);
                                                                if (bVar != null) {
                                                                    cls13 = cls34;
                                                                    r11 = bVar;
                                                                    iOrdinal = i33;
                                                                    i12 = i34;
                                                                    i13 = i35;
                                                                } else if (bVar.deserialize()) {
                                                                    cls13 = cls34;
                                                                    fieldArr2 = fieldArr5;
                                                                } else {
                                                                    iOrdinal = bVar.ordinal();
                                                                    iOf = SerializerFeature.of(bVar.serialzeFeatures());
                                                                    iOf2 = Feature.of(bVar.parseFeatures());
                                                                    if (bVar.name().length() != 0) {
                                                                        cls13 = cls34;
                                                                        str = str;
                                                                        methodArr = methodArr;
                                                                        cls14 = cls14;
                                                                        a(arrayList, new d(bVar.name(), method3, fieldX2, cls, type, iOrdinal, iOf, iOf2, bVarJ1, bVar, null, mapD));
                                                                        fieldArr2 = fieldArr5;
                                                                        propertyNamingStrategy2 = propertyNamingStrategy2;
                                                                    } else {
                                                                        cls13 = cls34;
                                                                        r11 = bVar;
                                                                        i12 = iOf;
                                                                        i13 = iOf2;
                                                                    }
                                                                }
                                                            } else {
                                                                cls13 = cls34;
                                                                iOrdinal = i33;
                                                                i12 = i34;
                                                                i13 = i35;
                                                                r11 = field;
                                                            }
                                                            propertyNamingStrategy3 = propertyNamingStrategy2;
                                                            if (propertyNamingStrategy3 != null) {
                                                                strH1 = propertyNamingStrategy3.translate(strH1);
                                                            }
                                                            fieldArr2 = fieldArr5;
                                                            propertyNamingStrategy2 = propertyNamingStrategy3;
                                                            a(arrayList, new d(strH1, method3, fieldX2, cls, type, iOrdinal, i12, i13, bVarJ1, r11, null, mapD));
                                                        } else {
                                                            if (TypeUtils.f18168b) {
                                                                c11 = 3;
                                                                strH1 = TypeUtils.I(name3.substring(3));
                                                            } else {
                                                                c11 = 3;
                                                                strH1 = TypeUtils.h0(name3);
                                                            }
                                                            fieldX = field;
                                                            if (fieldX == null) {
                                                                fieldX = TypeUtils.X(cls14, strH1, fieldArr5);
                                                            }
                                                            if (fieldX == null) {
                                                                fieldX2 = fieldX;
                                                            } else {
                                                                fieldX2 = fieldX;
                                                            }
                                                            if (fieldX2 != null) {
                                                                bVar = (x4.b) TypeUtils.O(fieldX2, cls34);
                                                                if (bVar != null) {
                                                                    cls13 = cls34;
                                                                    r11 = bVar;
                                                                    iOrdinal = i33;
                                                                    i12 = i34;
                                                                    i13 = i35;
                                                                } else if (bVar.deserialize()) {
                                                                    cls13 = cls34;
                                                                    fieldArr2 = fieldArr5;
                                                                } else {
                                                                    iOrdinal = bVar.ordinal();
                                                                    iOf = SerializerFeature.of(bVar.serialzeFeatures());
                                                                    iOf2 = Feature.of(bVar.parseFeatures());
                                                                    if (bVar.name().length() != 0) {
                                                                        cls13 = cls34;
                                                                        str = str;
                                                                        methodArr = methodArr;
                                                                        cls14 = cls14;
                                                                        a(arrayList, new d(bVar.name(), method3, fieldX2, cls, type, iOrdinal, iOf, iOf2, bVarJ1, bVar, null, mapD));
                                                                        fieldArr2 = fieldArr5;
                                                                        propertyNamingStrategy2 = propertyNamingStrategy2;
                                                                    } else {
                                                                        cls13 = cls34;
                                                                        r11 = bVar;
                                                                        i12 = iOf;
                                                                        i13 = iOf2;
                                                                    }
                                                                }
                                                            } else {
                                                                cls13 = cls34;
                                                                iOrdinal = i33;
                                                                i12 = i34;
                                                                i13 = i35;
                                                                r11 = field;
                                                            }
                                                            propertyNamingStrategy3 = propertyNamingStrategy2;
                                                            if (propertyNamingStrategy3 != null) {
                                                                strH1 = propertyNamingStrategy3.translate(strH1);
                                                            }
                                                            fieldArr2 = fieldArr5;
                                                            propertyNamingStrategy2 = propertyNamingStrategy3;
                                                            a(arrayList, new d(strH1, method3, fieldX2, cls, type, iOrdinal, i12, i13, bVarJ1, r11, null, mapD));
                                                        }
                                                    }
                                                    cls14 = cls14;
                                                }
                                            }
                                            cls13 = cls34;
                                            cls14 = cls;
                                        }
                                    }
                                    cls13 = cls34;
                                }
                            }
                            cls14 = cls23;
                        } else {
                            cls11 = cls11;
                            i32 = i32;
                            length6 = length6;
                            field = field;
                            cls8 = cls8;
                            methodArr = methodArr;
                            propertyNamingStrategy2 = propertyNamingStrategy2;
                            cls12 = cls7;
                            cls13 = cls6;
                            str = str;
                            cls14 = cls23;
                        }
                    }
                } else {
                    cls11 = cls2;
                }
                propertyNamingStrategy2 = propertyNamingStrategy2;
                cls12 = cls7;
                cls13 = cls6;
                str = str;
                cls14 = cls23;
            }
            i32++;
            cls23 = cls14;
            methodArr = methodArr;
            field = field;
            cls8 = cls8;
            cls7 = cls12;
            cls2 = cls11;
            length6 = length6;
            str = str;
            cls6 = cls13;
            propertyNamingStrategy2 = propertyNamingStrategy2;
        }
        Field field3 = field;
        Class cls36 = cls8;
        Class cls37 = cls23;
        Class<x4.b> cls38 = cls6;
        int i36 = 3;
        PropertyNamingStrategy propertyNamingStrategy6 = propertyNamingStrategy2;
        e(cls37, type, propertyNamingStrategy6, arrayList, cls.getFields());
        Method[] methods3 = cls.getMethods();
        int length7 = methods3.length;
        int i37 = 0;
        while (i37 < length7) {
            Method method4 = methods3[i37];
            String name4 = method4.getName();
            if (name4.length() >= i11 && !Modifier.isStatic(method4.getModifiers()) && cls36 == null && name4.startsWith(str2) && Character.isUpperCase(name4.charAt(i36)) && method4.getParameterTypes().length == 0) {
                cls9 = cls3;
                if (cls9.isAssignableFrom(method4.getReturnType()) || Map.class.isAssignableFrom(method4.getReturnType()) || AtomicBoolean.class == method4.getReturnType() || AtomicInteger.class == method4.getReturnType() || AtomicLong.class == method4.getReturnType()) {
                    cls10 = cls38;
                    x4.b bVar7 = (x4.b) TypeUtils.P(method4, cls10);
                    if (bVar7 == null || !bVar7.deserialize()) {
                        if (bVar7 == null || bVar7.name().length() <= 0) {
                            strH0 = TypeUtils.h0(name4);
                            fieldArr3 = fieldArr2;
                            Field fieldX5 = TypeUtils.X(cls37, strH0, fieldArr3);
                            if (fieldX5 == null) {
                                field2 = field3;
                            } else {
                                x4.b bVar8 = (x4.b) TypeUtils.O(fieldX5, cls10);
                                if (bVar8 != null && !bVar8.deserialize()) {
                                    fieldArr4 = fieldArr3;
                                    i36 = i36;
                                } else if (cls9.isAssignableFrom(method4.getReturnType()) || Map.class.isAssignableFrom(method4.getReturnType())) {
                                    field2 = fieldX5;
                                } else {
                                    field2 = field3;
                                }
                            }
                            i11 = 4;
                        } else {
                            strH0 = bVar7.name();
                            field2 = field3;
                            fieldArr3 = fieldArr2;
                        }
                        if (propertyNamingStrategy6 != null) {
                            strH0 = propertyNamingStrategy6.translate(strH0);
                        }
                        String str11 = strH0;
                        if (j(arrayList, str11) != null) {
                            fieldArr4 = fieldArr3;
                            i36 = 3;
                            i11 = 4;
                        } else {
                            fieldArr4 = fieldArr3;
                            cls10 = cls10;
                            cls9 = cls9;
                            i37 = i37;
                            i11 = 4;
                            str2 = str2;
                            length7 = length7;
                            methods3 = methods3;
                            i36 = 3;
                            propertyNamingStrategy6 = propertyNamingStrategy6;
                            a(arrayList, new d(str11, method4, field2, cls, type, 0, 0, 0, bVar7, null, null, mapD));
                        }
                    } else {
                        cls10 = cls10;
                        cls9 = cls9;
                        i37 = i37;
                        i11 = i11;
                        str2 = str2;
                        length7 = length7;
                        methods3 = methods3;
                        i36 = i36;
                        propertyNamingStrategy6 = propertyNamingStrategy6;
                        fieldArr4 = fieldArr2;
                    }
                } else {
                    cls9 = cls9;
                }
                i37++;
                methods3 = methods3;
                i36 = i36;
                i11 = i11;
                str2 = str2;
                length7 = length7;
                cls38 = cls10;
                cls3 = cls9;
                fieldArr2 = fieldArr4;
                propertyNamingStrategy6 = propertyNamingStrategy6;
            } else {
                cls9 = cls3;
            }
            fieldArr4 = fieldArr2;
            cls10 = cls38;
            i37++;
            methods3 = methods3;
            i36 = i36;
            i11 = i11;
            str2 = str2;
            length7 = length7;
            cls38 = cls10;
            cls3 = cls9;
            fieldArr2 = fieldArr4;
            propertyNamingStrategy6 = propertyNamingStrategy6;
        }
        PropertyNamingStrategy propertyNamingStrategy7 = propertyNamingStrategy6;
        Field[] fieldArr7 = fieldArr2;
        if (arrayList.size() == 0) {
            if (TypeUtils.z0(cls) ? true : z10) {
                for (Class superclass2 = cls37; superclass2 != null; superclass2 = superclass2.getSuperclass()) {
                    e(cls37, type, propertyNamingStrategy7, arrayList, fieldArr7);
                }
            }
        }
        return new h(cls, cls36, constructorH, constructor, methodI, method, dVar, arrayList);
    }

    private static Map d(Class cls) {
        Class superclass = cls.getSuperclass();
        HashMap map = null;
        if (superclass == null) {
            return null;
        }
        while (true) {
            Class cls2 = superclass;
            Class cls3 = cls;
            cls = cls2;
            if (cls == null || cls == Object.class) {
                break;
            }
            if (cls3.getGenericSuperclass() instanceof ParameterizedType) {
                Type[] actualTypeArguments = ((ParameterizedType) cls3.getGenericSuperclass()).getActualTypeArguments();
                TypeVariable[] typeParameters = cls.getTypeParameters();
                for (int i11 = 0; i11 < actualTypeArguments.length; i11++) {
                    if (map == null) {
                        map = new HashMap();
                    }
                    if (map.containsKey(actualTypeArguments[i11])) {
                        map.put(typeParameters[i11], (Type) map.get(actualTypeArguments[i11]));
                    } else {
                        map.put(typeParameters[i11], actualTypeArguments[i11]);
                    }
                }
            }
            superclass = cls.getSuperclass();
        }
        return map;
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0051  */
    /* JADX WARN: Code duplicated, block: B:22:0x005b  */
    /* JADX WARN: Code duplicated, block: B:27:0x007d  */
    /* JADX WARN: Code duplicated, block: B:30:0x0084  */
    /* JADX WARN: Code duplicated, block: B:32:0x00a2  */
    /* JADX WARN: Code duplicated, block: B:34:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:36:0x00b0  */
    /* JADX WARN: Code duplicated, block: B:43:0x006e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:44:0x0019 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:45:? A[LOOP:1: B:20:0x0055->B:45:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:6:0x0019  */
    private static void e(Class cls, Type type, PropertyNamingStrategy propertyNamingStrategy, List list, Field[] fieldArr) {
        Iterator it;
        String name;
        x4.b bVar;
        int i11;
        int i12;
        int i13;
        Map mapD = d(cls);
        int i14 = 0;
        for (int length = fieldArr.length; i14 < length; length = length) {
            Field field = fieldArr[i14];
            int modifiers = field.getModifiers();
            if ((modifiers & 8) != 0) {
                break;
                break;
            }
            if ((modifiers & 16) == 0) {
                it = list.iterator();
                while (true) {
                    if (it.hasNext()) {
                        name = field.getName();
                        bVar = (x4.b) TypeUtils.O(field, x4.b.class);
                        if (bVar != null) {
                            i11 = 0;
                            i12 = 0;
                            i13 = 0;
                        } else if (!bVar.deserialize()) {
                            int iOrdinal = bVar.ordinal();
                            int iOf = SerializerFeature.of(bVar.serialzeFeatures());
                            int iOf2 = Feature.of(bVar.parseFeatures());
                            if (bVar.name().length() != 0) {
                                name = bVar.name();
                            }
                            i11 = iOrdinal;
                            i12 = iOf;
                            i13 = iOf2;
                        }
                        if (propertyNamingStrategy != null) {
                            name = propertyNamingStrategy.translate(name);
                        }
                        a(list, new d(name, null, field, cls, type, i11, i12, i13, null, bVar, null, mapD));
                        break;
                        break;
                    }
                    if (((d) it.next()).f18197a.equals(field.getName())) {
                    }
                    break;
                    break;
                }
            }
            Class<?> type2 = field.getType();
            if (!Map.class.isAssignableFrom(type2) && !Collection.class.isAssignableFrom(type2) && !AtomicLong.class.equals(type2) && !AtomicInteger.class.equals(type2) && !AtomicBoolean.class.equals(type2)) {
                break;
                break;
            }
            it = list.iterator();
            while (true) {
                if (it.hasNext()) {
                    name = field.getName();
                    bVar = (x4.b) TypeUtils.O(field, x4.b.class);
                    if (bVar != null) {
                        i11 = 0;
                        i12 = 0;
                        i13 = 0;
                    } else if (!bVar.deserialize()) {
                        int iOrdinal2 = bVar.ordinal();
                        int iOf3 = SerializerFeature.of(bVar.serialzeFeatures());
                        int iOf4 = Feature.of(bVar.parseFeatures());
                        if (bVar.name().length() != 0) {
                            name = bVar.name();
                        }
                        i11 = iOrdinal2;
                        i12 = iOf3;
                        i13 = iOf4;
                    }
                    if (propertyNamingStrategy != null) {
                        name = propertyNamingStrategy.translate(name);
                    }
                    a(list, new d(name, null, field, cls, type, i11, i12, i13, null, bVar, null, mapD));
                    break;
                }
                if (((d) it.next()).f18197a.equals(field.getName())) {
                }
                break;
            }
            i14++;
        }
    }

    public static Class f(Class cls, x4.d dVar) {
        Class clsBuilder;
        if (cls != null && cls.getName().equals("org.springframework.security.web.savedrequest.DefaultSavedRequest")) {
            return TypeUtils.A0("org.springframework.security.web.savedrequest.DefaultSavedRequest$Builder");
        }
        if (dVar == null || (clsBuilder = dVar.builder()) == Void.class) {
            return null;
        }
        return clsBuilder;
    }

    public static Constructor g(Constructor[] constructorArr) {
        Constructor constructor = null;
        for (Constructor constructor2 : constructorArr) {
            if (((x4.a) constructor2.getAnnotation(x4.a.class)) != null) {
                if (constructor != null) {
                    throw new JSONException("multi-JSONCreator");
                }
                constructor = constructor2;
            }
        }
        if (constructor != null) {
            return constructor;
        }
        for (Constructor constructor3 : constructorArr) {
            Annotation[][] annotationArrD0 = TypeUtils.d0(constructor3);
            if (annotationArrD0.length != 0) {
                int length = annotationArrD0.length;
                int i11 = 0;
                while (true) {
                    if (i11 >= length) {
                        if (constructor != null) {
                            throw new JSONException("multi-JSONCreator");
                        }
                        constructor = constructor3;
                        break;
                    }
                    Annotation[] annotationArr = annotationArrD0[i11];
                    int length2 = annotationArr.length;
                    int i12 = 0;
                    while (true) {
                        if (i12 >= length2) {
                            break;
                        }
                        if (annotationArr[i12] instanceof x4.b) {
                            break;
                        }
                        i12++;
                    }
                    i11++;
                }
            }
        }
        return constructor;
    }

    static Constructor h(Class cls, Constructor[] constructorArr) {
        Constructor constructor = null;
        if (Modifier.isAbstract(cls.getModifiers())) {
            return null;
        }
        for (Constructor constructor2 : constructorArr) {
            if (constructor2.getParameterTypes().length == 0) {
                constructor = constructor2;
                break;
            }
        }
        if (constructor != null || !cls.isMemberClass() || Modifier.isStatic(cls.getModifiers())) {
            return constructor;
        }
        for (Constructor constructor3 : constructorArr) {
            Class<?>[] parameterTypes = constructor3.getParameterTypes();
            if (parameterTypes.length == 1 && parameterTypes[0].equals(cls.getDeclaringClass())) {
                return constructor3;
            }
        }
        return constructor;
    }

    private static Method i(Class cls, Method[] methodArr, boolean z10) {
        Method method = null;
        for (Method method2 : methodArr) {
            if (Modifier.isStatic(method2.getModifiers()) && cls.isAssignableFrom(method2.getReturnType()) && ((x4.a) TypeUtils.P(method2, x4.a.class)) != null) {
                if (method != null) {
                    throw new JSONException("multi-JSONCreator");
                }
                method = method2;
            }
        }
        if (method != null || !z10) {
            return method;
        }
        for (Method method3 : methodArr) {
            if (TypeUtils.s0(method3)) {
                return method3;
            }
        }
        return method;
    }

    private static d j(List list, String str) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            d dVar = (d) it.next();
            if (dVar.f18197a.equals(str)) {
                return dVar;
            }
            Field field = dVar.f18199c;
            if (field != null && dVar.e() != null && field.getName().equals(str)) {
                return dVar;
            }
        }
        return null;
    }
}
