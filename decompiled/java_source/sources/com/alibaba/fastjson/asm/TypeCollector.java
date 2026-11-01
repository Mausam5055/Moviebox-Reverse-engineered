package com.alibaba.fastjson.asm;

import java.lang.reflect.Modifier;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class TypeCollector {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static String f18065e = com.alibaba.fastjson.util.b.b(x4.d.class);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final Map f18066f = new HashMap<String, String>() { // from class: com.alibaba.fastjson.asm.TypeCollector.1
        {
            put("int", "I");
            put("boolean", "Z");
            put("byte", "B");
            put("char", "C");
            put("short", "S");
            put("float", "F");
            put("long", "J");
            put("double", "D");
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f18067a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Class[] f18068b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected g f18069c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected boolean f18070d;

    public TypeCollector(String str, Class[] clsArr) {
        this.f18067a = str;
        this.f18068b = clsArr;
    }

    private boolean a(j jVar, String str) {
        String strC = jVar.c();
        StringBuilder sb2 = new StringBuilder();
        while (strC.endsWith("[]")) {
            sb2.append('[');
            strC = strC.substring(0, strC.length() - 2);
        }
        if (sb2.length() != 0) {
            Map map = f18066f;
            if (map.containsKey(strC)) {
                sb2.append((String) map.get(strC));
                strC = sb2.toString();
            } else {
                sb2.append('L');
                sb2.append(strC);
                sb2.append(';');
                strC = sb2.toString();
            }
        }
        return strC.equals(str);
    }

    public String[] b() {
        g gVar = this.f18069c;
        return (gVar == null || !gVar.f18118e) ? new String[0] : gVar.a().split(",");
    }

    public boolean c() {
        return this.f18070d;
    }

    public void d(String str) {
        if (f18065e.equals(str)) {
            this.f18070d = true;
        }
    }

    protected g e(int i11, String str, String str2) {
        if (this.f18069c != null || !str.equals(this.f18067a)) {
            return null;
        }
        j[] jVarArrA = j.a(str2);
        int i12 = 0;
        for (j jVar : jVarArrA) {
            String strC = jVar.c();
            if (strC.equals("long") || strC.equals("double")) {
                i12++;
            }
        }
        if (jVarArrA.length != this.f18068b.length) {
            return null;
        }
        for (int i13 = 0; i13 < jVarArrA.length; i13++) {
            if (!a(jVarArrA[i13], this.f18068b[i13].getName())) {
                return null;
            }
        }
        g gVar = new g(!Modifier.isStatic(i11) ? 1 : 0, jVarArrA.length + i12);
        this.f18069c = gVar;
        return gVar;
    }
}
