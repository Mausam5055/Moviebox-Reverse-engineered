package a5;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.alibaba.fastjson.util.TypeUtils;
import java.lang.reflect.Type;
import java.util.Collection;
import java.util.HashSet;
import java.util.TreeSet;
import z4.b2;

/* JADX INFO: loaded from: classes2.dex */
public class z implements z0, b2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final z f362a = new z();

    @Override // z4.b2
    public int b() {
        return 14;
    }

    @Override // z4.b2
    public Object c(y4.a aVar, Type type, Object obj) {
        Collection collectionG;
        if (aVar.f78831f.q0() == 8) {
            aVar.f78831f.c0(16);
            return null;
        }
        if (type == JSONArray.class) {
            JSONArray jSONArray = new JSONArray();
            aVar.d0(jSONArray);
            return jSONArray;
        }
        if (aVar.f78831f.q0() == 21) {
            aVar.f78831f.Z();
            collectionG = TypeUtils.H(type);
        } else {
            collectionG = TypeUtils.G(type);
        }
        aVar.c0(TypeUtils.V(type), collectionG, obj);
        return collectionG;
    }

    @Override // a5.z0
    public void d(o0 o0Var, Object obj, Object obj2, Type type, int i11) {
        j1 j1Var = o0Var.f296k;
        if (obj == null) {
            j1Var.p0(SerializerFeature.WriteNullListAsEmpty);
            return;
        }
        SerializerFeature serializerFeature = SerializerFeature.WriteClassName;
        Type typeV = (j1Var.q(serializerFeature) || SerializerFeature.isEnabled(i11, serializerFeature)) ? TypeUtils.V(type) : null;
        Collection collection = (Collection) obj;
        e1 e1Var = o0Var.f303r;
        int i12 = 0;
        o0Var.w(e1Var, obj, obj2, 0);
        if (j1Var.q(serializerFeature)) {
            if (HashSet.class.isAssignableFrom(collection.getClass())) {
                j1Var.append("Set");
            } else if (TreeSet.class == collection.getClass()) {
                j1Var.append("TreeSet");
            }
        }
        try {
            j1Var.append('[');
            for (Object obj3 : collection) {
                int i13 = i12 + 1;
                if (i12 != 0) {
                    j1Var.append(',');
                }
                if (obj3 == null) {
                    j1Var.m0();
                } else {
                    Class<?> cls = obj3.getClass();
                    if (cls == Integer.class) {
                        j1Var.h0(((Integer) obj3).intValue());
                    } else if (cls == Long.class) {
                        j1Var.l0(((Long) obj3).longValue());
                        if (j1Var.q(SerializerFeature.WriteClassName)) {
                            j1Var.write(76);
                        }
                    } else {
                        z0 z0VarQ = o0Var.q(cls);
                        if (SerializerFeature.isEnabled(i11, SerializerFeature.WriteClassName) && (z0VarQ instanceof p0)) {
                            ((p0) z0VarQ).x(o0Var, obj3, Integer.valueOf(i12), typeV, i11);
                        } else {
                            z0VarQ.d(o0Var, obj3, Integer.valueOf(i12), typeV, i11);
                        }
                    }
                }
                i12 = i13;
            }
            j1Var.append(']');
        } finally {
            o0Var.f303r = e1Var;
        }
    }
}
