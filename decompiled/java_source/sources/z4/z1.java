package z4;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.parser.Feature;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.IdentityHashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.SortedMap;
import java.util.TreeMap;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* JADX INFO: loaded from: classes3.dex */
public class z1 extends e implements b2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static z1 f79278a = new z1();

    public static Object i(y4.a aVar, Map map, Type type, Type type2, Object obj) {
        Object objC;
        y4.b bVar = aVar.f78831f;
        if (bVar.q0() != 12 && bVar.q0() != 16) {
            throw new JSONException("syntax error, expect {, actual " + bVar.v());
        }
        b2 b2VarP = aVar.m().p(type);
        b2 b2VarP2 = aVar.m().p(type2);
        bVar.c0(b2VarP.b());
        y4.g gVarN = aVar.n();
        while (bVar.q0() != 13) {
            try {
                Object obj2 = null;
                if (bVar.q0() == 4 && bVar.x() && !bVar.n(Feature.DisableSpecialKeyDetect)) {
                    bVar.q(4);
                    if (bVar.q0() != 4) {
                        throw new JSONException("illegal ref, " + y4.f.a(bVar.q0()));
                    }
                    String strK0 = bVar.k0();
                    if ("..".equals(strK0)) {
                        obj2 = gVarN.f78867b.f78866a;
                    } else if ("$".equals(strK0)) {
                        y4.g gVar = gVarN;
                        while (true) {
                            y4.g gVar2 = gVar.f78867b;
                            if (gVar2 == null) {
                                break;
                            }
                            gVar = gVar2;
                        }
                        obj2 = gVar.f78866a;
                    } else {
                        aVar.i(new y4.a.C0966a(gVarN, strK0));
                        aVar.E0(1);
                    }
                    bVar.c0(13);
                    if (bVar.q0() != 13) {
                        throw new JSONException("illegal ref");
                    }
                    bVar.c0(16);
                    aVar.B0(gVarN);
                    return obj2;
                }
                if (map.size() == 0 && bVar.q0() == 4 && com.alibaba.fastjson.a.DEFAULT_TYPE_KEY.equals(bVar.k0()) && !bVar.n(Feature.DisableSpecialKeyDetect)) {
                    bVar.q(4);
                    bVar.c0(16);
                    if (bVar.q0() == 13) {
                        bVar.Z();
                        aVar.B0(gVarN);
                        return map;
                    }
                    bVar.c0(b2VarP.b());
                }
                if (bVar.q0() == 4 && (b2VarP instanceof o)) {
                    String strK1 = bVar.k0();
                    bVar.Z();
                    y4.a aVar2 = new y4.a(strK1, aVar.m(), aVar.s().r());
                    aVar2.C0(aVar.o());
                    objC = b2VarP.c(aVar2, type, null);
                } else {
                    objC = b2VarP.c(aVar, type, null);
                }
                if (bVar.q0() != 17) {
                    throw new JSONException("syntax error, expect :, actual " + bVar.q0());
                }
                bVar.c0(b2VarP2.b());
                Object objC2 = b2VarP2.c(aVar, type2, objC);
                aVar.l(map, objC);
                map.put(objC, objC2);
                if (bVar.q0() == 16) {
                    bVar.c0(b2VarP.b());
                }
            } catch (Throwable th2) {
                aVar.B0(gVarN);
                throw th2;
            }
        }
        bVar.c0(16);
        aVar.B0(gVarN);
        return map;
    }

    /* JADX WARN: Code duplicated, block: B:131:0x0220 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:133:0x0227 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:92:0x01ec A[Catch: all -> 0x00c3, TRY_ENTER, TryCatch #0 {all -> 0x00c3, blocks: (B:25:0x00a5, B:29:0x00b8, B:35:0x00d0, B:60:0x0165, B:62:0x0177, B:64:0x017f, B:66:0x0185, B:70:0x019c, B:73:0x01a7, B:76:0x01ae, B:77:0x01b6, B:79:0x01be, B:81:0x01c7, B:84:0x01ce, B:86:0x01db, B:88:0x01df, B:89:0x01e2, B:92:0x01ec, B:94:0x01f1, B:95:0x01f4, B:97:0x01fc, B:99:0x0205, B:105:0x0220, B:98:0x0201, B:38:0x00e3, B:39:0x00fb, B:42:0x0100, B:47:0x0113, B:49:0x011b, B:52:0x012d, B:53:0x0145, B:54:0x0146, B:55:0x014b, B:56:0x014c, B:58:0x0154, B:111:0x022f, B:112:0x024f, B:113:0x0250, B:114:0x0255), top: B:118:0x00a5 }] */
    /* JADX WARN: Code duplicated, block: B:94:0x01f1 A[Catch: all -> 0x00c3, TryCatch #0 {all -> 0x00c3, blocks: (B:25:0x00a5, B:29:0x00b8, B:35:0x00d0, B:60:0x0165, B:62:0x0177, B:64:0x017f, B:66:0x0185, B:70:0x019c, B:73:0x01a7, B:76:0x01ae, B:77:0x01b6, B:79:0x01be, B:81:0x01c7, B:84:0x01ce, B:86:0x01db, B:88:0x01df, B:89:0x01e2, B:92:0x01ec, B:94:0x01f1, B:95:0x01f4, B:97:0x01fc, B:99:0x0205, B:105:0x0220, B:98:0x0201, B:38:0x00e3, B:39:0x00fb, B:42:0x0100, B:47:0x0113, B:49:0x011b, B:52:0x012d, B:53:0x0145, B:54:0x0146, B:55:0x014b, B:56:0x014c, B:58:0x0154, B:111:0x022f, B:112:0x024f, B:113:0x0250, B:114:0x0255), top: B:118:0x00a5 }] */
    /* JADX WARN: Code duplicated, block: B:97:0x01fc A[Catch: all -> 0x00c3, TryCatch #0 {all -> 0x00c3, blocks: (B:25:0x00a5, B:29:0x00b8, B:35:0x00d0, B:60:0x0165, B:62:0x0177, B:64:0x017f, B:66:0x0185, B:70:0x019c, B:73:0x01a7, B:76:0x01ae, B:77:0x01b6, B:79:0x01be, B:81:0x01c7, B:84:0x01ce, B:86:0x01db, B:88:0x01df, B:89:0x01e2, B:92:0x01ec, B:94:0x01f1, B:95:0x01f4, B:97:0x01fc, B:99:0x0205, B:105:0x0220, B:98:0x0201, B:38:0x00e3, B:39:0x00fb, B:42:0x0100, B:47:0x0113, B:49:0x011b, B:52:0x012d, B:53:0x0145, B:54:0x0146, B:55:0x014b, B:56:0x014c, B:58:0x0154, B:111:0x022f, B:112:0x024f, B:113:0x0250, B:114:0x0255), top: B:118:0x00a5 }] */
    /* JADX WARN: Code duplicated, block: B:98:0x0201 A[Catch: all -> 0x00c3, TryCatch #0 {all -> 0x00c3, blocks: (B:25:0x00a5, B:29:0x00b8, B:35:0x00d0, B:60:0x0165, B:62:0x0177, B:64:0x017f, B:66:0x0185, B:70:0x019c, B:73:0x01a7, B:76:0x01ae, B:77:0x01b6, B:79:0x01be, B:81:0x01c7, B:84:0x01ce, B:86:0x01db, B:88:0x01df, B:89:0x01e2, B:92:0x01ec, B:94:0x01f1, B:95:0x01f4, B:97:0x01fc, B:99:0x0205, B:105:0x0220, B:98:0x0201, B:38:0x00e3, B:39:0x00fb, B:42:0x0100, B:47:0x0113, B:49:0x011b, B:52:0x012d, B:53:0x0145, B:54:0x0146, B:55:0x014b, B:56:0x014c, B:58:0x0154, B:111:0x022f, B:112:0x024f, B:113:0x0250, B:114:0x0255), top: B:118:0x00a5 }] */
    public static Map j(y4.a aVar, Map map, Type type, Object obj, int i11) {
        String strW;
        Object objP0;
        int iQ0;
        y4.b bVar = aVar.f78831f;
        int iQ1 = bVar.q0();
        int i12 = 0;
        if (iQ1 != 12) {
            if (iQ1 == 4) {
                String strK0 = bVar.k0();
                if (strK0.length() == 0 || strK0.equals("null")) {
                    return null;
                }
            }
            String str = "syntax error, expect {, actual " + bVar.v();
            if (obj instanceof String) {
                str = (str + ", fieldName ") + obj;
            }
            String str2 = (str + ", ") + bVar.k();
            if (iQ1 != 4) {
                JSONArray jSONArray = new JSONArray();
                aVar.g0(jSONArray, obj);
                if (jSONArray.size() == 1) {
                    Object obj2 = jSONArray.get(0);
                    if (obj2 instanceof JSONObject) {
                        return (JSONObject) obj2;
                    }
                }
            }
            throw new JSONException(str2);
        }
        y4.g gVarN = aVar.n();
        while (true) {
            try {
                bVar.u0();
                char cD = bVar.d();
                if (bVar.n(Feature.AllowArbitraryCommas)) {
                    while (cD == ',') {
                        bVar.next();
                        bVar.u0();
                        cD = bVar.d();
                    }
                }
                if (cD == '\"') {
                    strW = bVar.y0(aVar.v(), '\"');
                    bVar.u0();
                    if (bVar.d() != ':') {
                        throw new JSONException("expect ':' at " + bVar.h());
                    }
                } else {
                    if (cD == '}') {
                        bVar.next();
                        bVar.v0();
                        bVar.c0(16);
                        aVar.B0(gVarN);
                        return map;
                    }
                    if (cD == '\'') {
                        if (!bVar.n(Feature.AllowSingleQuotes)) {
                            throw new JSONException("syntax error");
                        }
                        strW = bVar.y0(aVar.v(), '\'');
                        bVar.u0();
                        if (bVar.d() != ':') {
                            throw new JSONException("expect ':' at " + bVar.h());
                        }
                    } else {
                        if (!bVar.n(Feature.AllowUnQuotedFieldNames)) {
                            throw new JSONException("syntax error");
                        }
                        strW = bVar.w(aVar.v());
                        bVar.u0();
                        char cD2 = bVar.d();
                        if (cD2 != ':') {
                            throw new JSONException("expect ':' at " + bVar.h() + ", actual " + cD2);
                        }
                    }
                }
                bVar.next();
                bVar.u0();
                bVar.d();
                bVar.v0();
                if (strW != com.alibaba.fastjson.a.DEFAULT_TYPE_KEY) {
                    bVar.Z();
                    if (i12 != 0) {
                        aVar.B0(gVarN);
                    }
                    if (bVar.q0() == 8) {
                        bVar.Z();
                        objP0 = null;
                    } else {
                        objP0 = aVar.p0(type, strW);
                    }
                    map.put(strW, objP0);
                    aVar.l(map, strW);
                    aVar.z0(gVarN, objP0, strW);
                    aVar.B0(gVarN);
                    iQ0 = bVar.q0();
                    if (iQ0 != 20) {
                        if (iQ0 == 13) {
                            bVar.Z();
                            aVar.B0(gVarN);
                            return map;
                        }
                    }
                    aVar.B0(gVarN);
                    return map;
                }
                Feature feature = Feature.DisableSpecialKeyDetect;
                if (bVar.n(feature) || Feature.isEnabled(i11, feature)) {
                    bVar.Z();
                    if (i12 != 0) {
                        aVar.B0(gVarN);
                    }
                    if (bVar.q0() == 8) {
                        bVar.Z();
                        objP0 = null;
                    } else {
                        objP0 = aVar.p0(type, strW);
                    }
                    map.put(strW, objP0);
                    aVar.l(map, strW);
                    aVar.z0(gVarN, objP0, strW);
                    aVar.B0(gVarN);
                    iQ0 = bVar.q0();
                    if (iQ0 != 20 && iQ0 != 15) {
                        if (iQ0 == 13) {
                            bVar.Z();
                            aVar.B0(gVarN);
                            return map;
                        }
                    }
                    aVar.B0(gVarN);
                    return map;
                }
                String strY0 = bVar.y0(aVar.v(), '\"');
                y4.h hVarM = aVar.m();
                Class clsJ = HashMap.class;
                if (!strY0.equals("java.util.HashMap")) {
                    if (strY0.equals("java.util.LinkedHashMap")) {
                        clsJ = LinkedHashMap.class;
                    } else if (!hVarM.x()) {
                        try {
                            clsJ = hVarM.j(strY0, null, bVar.r());
                        } catch (JSONException unused) {
                        }
                    }
                }
                if (!Map.class.isAssignableFrom(clsJ)) {
                    b2 b2VarP = hVarM.p(clsJ);
                    bVar.c0(16);
                    aVar.E0(2);
                    if (gVarN != null && !(obj instanceof Integer)) {
                        aVar.v0();
                    }
                    Map map2 = (Map) b2VarP.c(aVar, clsJ, obj);
                    aVar.B0(gVarN);
                    return map2;
                }
                bVar.c0(16);
                if (bVar.q0() == 13) {
                    bVar.c0(16);
                    aVar.B0(gVarN);
                    return map;
                }
                i12++;
            } catch (Throwable th2) {
                aVar.B0(gVarN);
                throw th2;
            }
        }
    }

    @Override // z4.b2
    public int b() {
        return 12;
    }

    @Override // z4.e
    public Object e(y4.a aVar, Type type, Object obj, String str, int i11) {
        if (type == JSONObject.class) {
            aVar.q();
            return aVar.l0();
        }
        y4.b bVar = aVar.f78831f;
        if (bVar.q0() == 8) {
            bVar.c0(16);
            return null;
        }
        boolean z10 = (type instanceof Class) && "java.util.Collections$UnmodifiableMap".equals(((Class) type).getName());
        Map mapG = (bVar.r() & Feature.OrderedField.mask) != 0 ? g(type, bVar.r()) : f(type);
        y4.g gVarN = aVar.n();
        try {
            aVar.z0(gVarN, mapG, obj);
            Object objH = h(aVar, type, obj, mapG, i11);
            if (z10) {
                objH = Collections.unmodifiableMap((Map) objH);
            }
            return objH;
        } finally {
            aVar.B0(gVarN);
        }
    }

    public Map f(Type type) {
        return g(type, com.alibaba.fastjson.a.DEFAULT_GENERATE_FEATURE);
    }

    public Map g(Type type, int i11) {
        if (type == Properties.class) {
            return new Properties();
        }
        if (type == Hashtable.class) {
            return new Hashtable();
        }
        if (type == IdentityHashMap.class) {
            return new IdentityHashMap();
        }
        if (type == SortedMap.class || type == TreeMap.class) {
            return new TreeMap();
        }
        if (type == ConcurrentMap.class || type == ConcurrentHashMap.class) {
            return new ConcurrentHashMap();
        }
        if (type == Map.class) {
            return (Feature.OrderedField.mask & i11) != 0 ? new LinkedHashMap() : new HashMap();
        }
        if (type == HashMap.class) {
            return new HashMap();
        }
        if (type == LinkedHashMap.class) {
            return new LinkedHashMap();
        }
        if (type instanceof ParameterizedType) {
            ParameterizedType parameterizedType = (ParameterizedType) type;
            Type rawType = parameterizedType.getRawType();
            return EnumMap.class.equals(rawType) ? new EnumMap((Class) parameterizedType.getActualTypeArguments()[0]) : g(rawType, i11);
        }
        Class cls = (Class) type;
        if (cls.isInterface()) {
            throw new JSONException("unsupport type " + type);
        }
        if ("java.util.Collections$UnmodifiableMap".equals(cls.getName())) {
            return new HashMap();
        }
        try {
            return (Map) cls.newInstance();
        } catch (Exception e11) {
            throw new JSONException("unsupport type " + type, e11);
        }
    }

    protected Object h(y4.a aVar, Type type, Object obj, Map map, int i11) {
        if (!(type instanceof ParameterizedType)) {
            return aVar.r0(map, obj);
        }
        ParameterizedType parameterizedType = (ParameterizedType) type;
        Type type2 = parameterizedType.getActualTypeArguments()[0];
        Type type3 = map.getClass().getName().equals("org.springframework.util.LinkedMultiValueMap") ? List.class : parameterizedType.getActualTypeArguments()[1];
        return String.class == type2 ? j(aVar, map, type3, obj, i11) : i(aVar, map, type2, type3, obj);
    }
}
