package com.alibaba.fastjson.util;

import a5.a0;
import a5.b0;
import a5.b1;
import a5.c1;
import a5.e1;
import a5.f1;
import a5.g1;
import a5.h1;
import a5.i1;
import a5.j1;
import a5.m1;
import a5.o0;
import a5.p;
import a5.p0;
import a5.q;
import a5.r0;
import a5.s0;
import a5.x0;
import a5.z0;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.JSONPath;
import com.alibaba.fastjson.JSONPathException;
import com.alibaba.fastjson.parser.Feature;
import com.alibaba.fastjson.serializer.SerializerFeature;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.security.ProtectionDomain;
import java.util.HashMap;
import java.util.Map;
import z4.b2;
import z4.o;

/* JADX INFO: loaded from: classes2.dex */
public class a extends ClassLoader {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static Map f18194b = new HashMap();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static ProtectionDomain f18193a = (ProtectionDomain) AccessController.doPrivileged(new C0173a());

    /* JADX INFO: renamed from: com.alibaba.fastjson.util.a$a, reason: collision with other inner class name */
    static class C0173a implements PrivilegedAction {
        C0173a() {
        }

        @Override // java.security.PrivilegedAction
        public Object run() {
            return a.class.getProtectionDomain();
        }
    }

    static {
        Class[] clsArr = {com.alibaba.fastjson.a.class, JSONObject.class, JSONArray.class, JSONPath.class, com.alibaba.fastjson.b.class, JSONException.class, JSONPathException.class, com.alibaba.fastjson.d.class, com.alibaba.fastjson.e.class, com.alibaba.fastjson.f.class, com.alibaba.fastjson.g.class, d.class, TypeUtils.class, f.class, g.class, ParameterizedTypeImpl.class, h.class, z0.class, p0.class, i1.class, f1.class, o0.class, j1.class, h1.class, s0.class, r0.class, b0.class, a5.i.class, q.class, x0.class, b1.class, c1.class, m1.class, SerializerFeature.class, a0.class, e1.class, g1.class, o.class, y4.h.class, y4.a.class, y4.b.class, y4.c.class, y4.g.class, y4.f.class, y4.i.class, Feature.class, y4.e.class, y4.d.class, z4.d.class, b2.class, z4.j.class, z4.i.class, z4.k.class, p.class, z4.l.class, z4.f.class};
        for (int i11 = 0; i11 < 56; i11++) {
            Class cls = clsArr[i11];
            f18194b.put(cls.getName(), cls);
        }
    }

    public a() {
        super(b());
    }

    public a(ClassLoader classLoader) {
        super(classLoader);
    }

    static ClassLoader b() {
        ClassLoader contextClassLoader = Thread.currentThread().getContextClassLoader();
        if (contextClassLoader != null) {
            try {
                contextClassLoader.loadClass(com.alibaba.fastjson.a.class.getName());
                return contextClassLoader;
            } catch (ClassNotFoundException unused) {
            }
        }
        return com.alibaba.fastjson.a.class.getClassLoader();
    }

    public Class a(String str, byte[] bArr, int i11, int i12) {
        return defineClass(str, bArr, i11, i12, f18193a);
    }

    public boolean c(Class cls) {
        ClassLoader classLoader = cls.getClassLoader();
        if (classLoader == null) {
            return false;
        }
        for (ClassLoader parent = this; parent != null; parent = parent.getParent()) {
            if (parent == classLoader) {
                return false;
            }
        }
        return true;
    }

    @Override // java.lang.ClassLoader
    protected Class loadClass(String str, boolean z10) {
        Class cls = (Class) f18194b.get(str);
        return cls != null ? cls : super.loadClass(str, z10);
    }
}
