package a5;

import com.alibaba.fastjson.serializer.SerializerFeature;
import com.alibaba.fastjson.util.TypeUtils;
import java.lang.reflect.Type;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class t0 implements z0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final t0 f345a = new t0();

    @Override // a5.z0
    public final void d(o0 o0Var, Object obj, Object obj2, Type type, int i11) {
        j1 j1Var = o0Var.f296k;
        SerializerFeature serializerFeature = SerializerFeature.WriteClassName;
        boolean z10 = j1Var.q(serializerFeature) || SerializerFeature.isEnabled(i11, serializerFeature);
        j1 j1Var2 = o0Var.f296k;
        Type typeV = z10 ? TypeUtils.V(type) : null;
        if (obj == null) {
            j1Var2.p0(SerializerFeature.WriteNullListAsEmpty);
            return;
        }
        List list = (List) obj;
        if (list.size() == 0) {
            j1Var2.append("[]");
            return;
        }
        e1 e1Var = o0Var.f303r;
        o0Var.w(e1Var, obj, obj2, 0);
        try {
            char c11 = ',';
            if (j1Var2.q(SerializerFeature.PrettyFormat)) {
                j1Var2.append('[');
                o0Var.s();
                int i12 = 0;
                for (Object obj3 : list) {
                    if (i12 != 0) {
                        j1Var2.append(c11);
                    }
                    o0Var.v();
                    if (obj3 == null) {
                        o0Var.f296k.m0();
                    } else if (o0Var.k(obj3)) {
                        o0Var.D(obj3);
                    } else {
                        z0 z0VarQ = o0Var.q(obj3.getClass());
                        o0Var.f303r = new e1(e1Var, obj, obj2, 0, 0);
                        z0VarQ.d(o0Var, obj3, Integer.valueOf(i12), typeV, i11);
                    }
                    i12++;
                    c11 = c11;
                }
                o0Var.l();
                o0Var.v();
                j1Var2.append(']');
                return;
            }
            char c12 = ',';
            j1Var2.append('[');
            int size = list.size();
            int i13 = 0;
            while (i13 < size) {
                Object obj4 = list.get(i13);
                if (i13 != 0) {
                    j1Var2.append(c12);
                }
                if (obj4 == null) {
                    j1Var2.append("null");
                } else {
                    Class<?> cls = obj4.getClass();
                    if (cls == Integer.class) {
                        j1Var2.h0(((Integer) obj4).intValue());
                    } else {
                        if (cls == Long.class) {
                            long jLongValue = ((Long) obj4).longValue();
                            if (z10) {
                                j1Var2.l0(jLongValue);
                                j1Var2.write(76);
                            } else {
                                j1Var2.l0(jLongValue);
                            }
                        } else if ((SerializerFeature.DisableCircularReferenceDetect.mask & i11) != 0) {
                            o0Var.q(obj4.getClass()).d(o0Var, obj4, Integer.valueOf(i13), typeV, i11);
                            z10 = z10;
                        } else {
                            i13 = i13;
                            if (!j1Var2.f274h) {
                                o0Var.f303r = new e1(e1Var, obj, obj2, 0, 0);
                            }
                            if (o0Var.k(obj4)) {
                                o0Var.D(obj4);
                            } else {
                                z0 z0VarQ2 = o0Var.q(obj4.getClass());
                                if ((SerializerFeature.WriteClassName.mask & i11) == 0 || !(z0VarQ2 instanceof p0)) {
                                    z0VarQ2.d(o0Var, obj4, Integer.valueOf(i13), typeV, i11);
                                } else {
                                    ((p0) z0VarQ2).x(o0Var, obj4, Integer.valueOf(i13), typeV, i11);
                                }
                            }
                        }
                        i13++;
                        z10 = z10;
                        c12 = ',';
                    }
                }
                z10 = z10;
                i13++;
                z10 = z10;
                c12 = ',';
            }
            j1Var2.append(']');
        } finally {
            o0Var.f303r = e1Var;
        }
    }
}
