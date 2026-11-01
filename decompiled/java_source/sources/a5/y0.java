package a5;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.alibaba.fastjson.util.TypeUtils;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import z4.b2;

/* JADX INFO: loaded from: classes2.dex */
public class y0 implements z0, b2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final y0 f361a = new y0();

    /* JADX WARN: Code duplicated, block: B:27:0x0054  */
    private Object e(y4.a aVar, Class cls, JSONArray jSONArray) {
        Object objF;
        if (jSONArray == null) {
            return null;
        }
        int size = jSONArray.size();
        Object objNewInstance = Array.newInstance((Class<?>) cls, size);
        for (int i11 = 0; i11 < size; i11++) {
            Object objE = jSONArray.get(i11);
            if (objE == jSONArray) {
                Array.set(objNewInstance, i11, objNewInstance);
            } else if (cls.isArray()) {
                if (!cls.isInstance(objE)) {
                    objE = e(aVar, cls, (JSONArray) objE);
                }
                Array.set(objNewInstance, i11, objE);
            } else {
                if (objE instanceof JSONArray) {
                    JSONArray jSONArray2 = (JSONArray) objE;
                    int size2 = jSONArray2.size();
                    boolean z10 = false;
                    for (int i12 = 0; i12 < size2; i12++) {
                        if (jSONArray2.get(i12) == jSONArray) {
                            jSONArray2.set(i11, objNewInstance);
                            z10 = true;
                        }
                    }
                    if (z10) {
                        objF = jSONArray2.toArray();
                    } else {
                        objF = null;
                    }
                } else {
                    objF = null;
                }
                if (objF == null) {
                    objF = TypeUtils.f(objE, cls, aVar.m());
                }
                Array.set(objNewInstance, i11, objF);
            }
        }
        jSONArray.setRelatedArray(objNewInstance);
        jSONArray.setComponentType(cls);
        return objNewInstance;
    }

    @Override // z4.b2
    public int b() {
        return 14;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // z4.b2
    public Object c(y4.a aVar, Type type, Object obj) {
        Type componentType;
        Class clsQ;
        y4.b bVar = aVar.f78831f;
        int iQ0 = bVar.q0();
        Type type2 = null;
        if (iQ0 == 8) {
            bVar.c0(16);
            return null;
        }
        if (iQ0 == 4 || iQ0 == 26) {
            byte[] bArrH0 = bVar.h0();
            bVar.c0(16);
            if (bArrH0.length != 0 || type == byte[].class) {
                return bArrH0;
            }
            return null;
        }
        if (type instanceof GenericArrayType) {
            componentType = ((GenericArrayType) type).getGenericComponentType();
            if (componentType instanceof TypeVariable) {
                TypeVariable typeVariable = (TypeVariable) componentType;
                Type type3 = aVar.n().f78870e;
                if (type3 instanceof ParameterizedType) {
                    ParameterizedType parameterizedType = (ParameterizedType) type3;
                    Type rawType = parameterizedType.getRawType();
                    if (rawType instanceof Class) {
                        TypeVariable[] typeParameters = ((Class) rawType).getTypeParameters();
                        for (int i11 = 0; i11 < typeParameters.length; i11++) {
                            if (typeParameters[i11].getName().equals(typeVariable.getName())) {
                                type2 = parameterizedType.getActualTypeArguments()[i11];
                            }
                        }
                    }
                    clsQ = type2 instanceof Class ? (Class) type2 : Object.class;
                } else {
                    clsQ = TypeUtils.Q(typeVariable.getBounds()[0]);
                }
            } else {
                clsQ = TypeUtils.Q(componentType);
            }
        } else {
            componentType = ((Class) type).getComponentType();
            clsQ = componentType;
        }
        JSONArray jSONArray = new JSONArray();
        aVar.c0(componentType, jSONArray, obj);
        return e(aVar, clsQ, jSONArray);
    }

    @Override // a5.z0
    public final void d(o0 o0Var, Object obj, Object obj2, Type type, int i11) {
        j1 j1Var = o0Var.f296k;
        Object[] objArr = (Object[]) obj;
        if (obj == null) {
            j1Var.p0(SerializerFeature.WriteNullListAsEmpty);
            return;
        }
        int length = objArr.length;
        int i12 = length - 1;
        if (i12 == -1) {
            j1Var.append("[]");
            return;
        }
        e1 e1Var = o0Var.f303r;
        o0Var.w(e1Var, obj, obj2, 0);
        try {
            j1Var.append('[');
            if (j1Var.q(SerializerFeature.PrettyFormat)) {
                o0Var.s();
                o0Var.v();
                for (int i13 = 0; i13 < length; i13++) {
                    if (i13 != 0) {
                        j1Var.write(44);
                        o0Var.v();
                    }
                    o0Var.E(objArr[i13], Integer.valueOf(i13));
                }
                o0Var.l();
                o0Var.v();
                j1Var.write(93);
                return;
            }
            Class<?> cls = null;
            z0 z0VarQ = null;
            for (int i14 = 0; i14 < i12; i14++) {
                Object obj3 = objArr[i14];
                if (obj3 == null) {
                    j1Var.append("null,");
                } else {
                    if (o0Var.k(obj3)) {
                        o0Var.D(obj3);
                    } else {
                        Class<?> cls2 = obj3.getClass();
                        if (cls2 == cls) {
                            z0VarQ.d(o0Var, obj3, Integer.valueOf(i14), null, 0);
                        } else {
                            z0VarQ = o0Var.q(cls2);
                            z0VarQ.d(o0Var, obj3, Integer.valueOf(i14), null, 0);
                            cls = cls2;
                        }
                    }
                    j1Var.append(',');
                }
            }
            Object obj4 = objArr[i12];
            if (obj4 == null) {
                j1Var.append("null]");
            } else {
                if (o0Var.k(obj4)) {
                    o0Var.D(obj4);
                } else {
                    o0Var.E(obj4, Integer.valueOf(i12));
                }
                j1Var.append(']');
            }
        } finally {
            o0Var.f303r = e1Var;
        }
    }
}
