package org.mvel2;

import i10.h;
import i10.j;
import i10.k;
import i10.l;
import i10.m;
import i10.n;
import i10.o;
import i10.p;
import i10.q;
import i10.r;
import i10.s;
import i10.t;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;
import org.mvel2.util.FastList;

/* JADX INFO: loaded from: classes7.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Map f71953a;

    static {
        HashMap map = new HashMap(76, 0.5f);
        f71953a = map;
        m mVar = new m();
        map.put(Integer.class, mVar);
        map.put(Integer.TYPE, mVar);
        r rVar = new r();
        map.put(Short.class, rVar);
        map.put(Short.TYPE, rVar);
        o oVar = new o();
        map.put(Long.class, oVar);
        map.put(Long.TYPE, oVar);
        i10.g gVar = new i10.g();
        map.put(Character.class, gVar);
        map.put(Character.TYPE, gVar);
        i10.e eVar = new i10.e();
        map.put(Byte.class, eVar);
        map.put(Byte.TYPE, eVar);
        k kVar = new k();
        map.put(Float.class, kVar);
        map.put(Float.TYPE, kVar);
        j jVar = new j();
        map.put(Double.class, jVar);
        map.put(Double.TYPE, jVar);
        i10.d dVar = new i10.d();
        map.put(Boolean.class, dVar);
        map.put(Boolean.TYPE, dVar);
        map.put(String.class, new t());
        map.put(Object.class, new p());
        i10.f fVar = new i10.f();
        map.put(Character[].class, fVar);
        map.put(char[].class, new h(fVar, new i10.a(char[].class)));
        map.put(String[].class, new s());
        map.put(Integer[].class, new l());
        map.put(int[].class, new i10.a(int[].class));
        map.put(long[].class, new i10.a(long[].class));
        map.put(double[].class, new i10.a(double[].class));
        map.put(float[].class, new i10.a(float[].class));
        map.put(short[].class, new i10.a(short[].class));
        map.put(boolean[].class, new i10.a(boolean[].class));
        map.put(byte[].class, new i10.a(byte[].class));
        map.put(BigDecimal.class, new i10.b());
        map.put(BigInteger.class, new i10.c());
        n nVar = new n();
        map.put(List.class, nVar);
        map.put(FastList.class, nVar);
        map.put(ArrayList.class, nVar);
        map.put(LinkedList.class, nVar);
        q qVar = new q();
        map.put(Set.class, qVar);
        map.put(HashSet.class, qVar);
        map.put(LinkedHashSet.class, qVar);
        map.put(TreeSet.class, qVar);
    }

    public static boolean a(Class cls, Class cls2) {
        if (org.mvel2.util.p.f(cls, cls2)) {
            return true;
        }
        Map map = f71953a;
        if (map.containsKey(cls)) {
            return ((a) map.get(cls)).a(org.mvel2.util.p.i(cls2));
        }
        return cls.isArray() && a(cls.getComponentType(), cls2);
    }

    public static Object b(Object obj, Class cls) {
        if (obj == null) {
            return null;
        }
        if (cls == obj.getClass() || cls.isAssignableFrom(obj.getClass())) {
            return obj;
        }
        Map map = f71953a;
        a aVar = (a) map.get(cls);
        if (aVar != null || !cls.isArray()) {
            return aVar.b(obj);
        }
        i10.a aVar2 = new i10.a(cls);
        map.put(cls, aVar2);
        return aVar2.b(obj);
    }
}
