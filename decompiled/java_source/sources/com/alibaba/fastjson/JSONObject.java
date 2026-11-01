package com.alibaba.fastjson;

import com.alibaba.fastjson.parser.Feature;
import com.alibaba.fastjson.util.TypeUtils;
import java.io.IOException;
import java.io.NotActiveException;
import java.io.ObjectInputStream;
import java.io.ObjectStreamClass;
import java.io.Serializable;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import y4.h;

/* JADX INFO: loaded from: classes.dex */
public class JSONObject extends com.alibaba.fastjson.a implements Map<String, Object>, Cloneable, Serializable, InvocationHandler {
    private static final int DEFAULT_INITIAL_CAPACITY = 16;
    private static final long serialVersionUID = 1;
    private final Map<String, Object> map;

    /* JADX INFO: loaded from: classes2.dex */
    static class a extends ObjectInputStream {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static Field[] f17980a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        static volatile boolean f17981b;

        public a(ObjectInputStream objectInputStream) {
            super(objectInputStream);
            int i11 = 0;
            while (true) {
                try {
                    Field[] fieldArr = f17980a;
                    if (i11 >= fieldArr.length) {
                        return;
                    }
                    Field field = fieldArr[i11];
                    field.set(this, field.get(objectInputStream));
                    i11++;
                } catch (IllegalAccessException unused) {
                    f17981b = true;
                    return;
                }
            }
        }

        static void d() {
            if (f17980a != null || f17981b) {
                return;
            }
            try {
                Field[] declaredFields = ObjectInputStream.class.getDeclaredFields();
                String[] strArr = {"bin", "passHandle", "handles", "curContext"};
                Field[] fieldArr = new Field[4];
                for (int i11 = 0; i11 < 4; i11++) {
                    Field fieldX = TypeUtils.X(ObjectInputStream.class, strArr[i11], declaredFields);
                    fieldX.setAccessible(true);
                    fieldArr[i11] = fieldX;
                }
                f17980a = fieldArr;
            } catch (Throwable unused) {
                f17981b = true;
            }
        }

        @Override // java.io.ObjectInputStream
        protected void readStreamHeader() {
        }

        @Override // java.io.ObjectInputStream
        protected Class resolveClass(ObjectStreamClass objectStreamClass) throws Throwable {
            String name = objectStreamClass.getName();
            if (name.length() > 2) {
                int iLastIndexOf = name.lastIndexOf(91);
                if (iLastIndexOf != -1) {
                    name = name.substring(iLastIndexOf + 1);
                }
                if (name.length() > 2 && name.charAt(0) == 'L' && name.charAt(name.length() - 1) == ';') {
                    name = name.substring(1, name.length() - 1);
                }
                if (TypeUtils.R(name) == null) {
                    h.f78878z.j(name, null, Feature.SupportAutoType.mask);
                }
            }
            return super.resolveClass(objectStreamClass);
        }

        @Override // java.io.ObjectInputStream
        protected Class resolveProxyClass(String[] strArr) {
            for (String str : strArr) {
                if (TypeUtils.R(str) == null) {
                    h.f78878z.i(str, null);
                }
            }
            return super.resolveProxyClass(strArr);
        }
    }

    public JSONObject() {
        this(16, false);
    }

    public JSONObject(int i11) {
        this(i11, false);
    }

    public JSONObject(int i11, boolean z10) {
        if (z10) {
            this.map = new LinkedHashMap(i11);
        } else {
            this.map = new HashMap(i11);
        }
    }

    public JSONObject(Map<String, Object> map) {
        if (map == null) {
            throw new IllegalArgumentException("map is null.");
        }
        this.map = map;
    }

    public JSONObject(boolean z10) {
        this(16, z10);
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        a.d();
        if (a.f17980a != null && !a.f17981b) {
            try {
                new a(objectInputStream).defaultReadObject();
                return;
            } catch (NotActiveException unused) {
            }
        }
        objectInputStream.defaultReadObject();
        for (Map.Entry<String, Object> entry : this.map.entrySet()) {
            String key = entry.getKey();
            if (key != null) {
                h.f78878z.h(key.getClass());
            }
            Object value = entry.getValue();
            if (value != null) {
                h.f78878z.h(value.getClass());
            }
        }
    }

    @Override // java.util.Map
    public void clear() {
        this.map.clear();
    }

    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public JSONObject m197clone() {
        return new JSONObject((Map<String, Object>) (this.map instanceof LinkedHashMap ? new LinkedHashMap(this.map) : new HashMap(this.map)));
    }

    @Override // java.util.Map
    public boolean containsKey(Object obj) {
        boolean zContainsKey = this.map.containsKey(obj);
        if (zContainsKey) {
            return zContainsKey;
        }
        return ((obj instanceof Number) || (obj instanceof Character) || (obj instanceof Boolean) || (obj instanceof UUID)) ? this.map.containsKey(obj.toString()) : zContainsKey;
    }

    @Override // java.util.Map
    public boolean containsValue(Object obj) {
        return this.map.containsValue(obj);
    }

    @Override // java.util.Map
    public Set<Map.Entry<String, Object>> entrySet() {
        return this.map.entrySet();
    }

    @Override // java.util.Map
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj instanceof JSONObject ? this.map.equals(((JSONObject) obj).map) : this.map.equals(obj);
    }

    public JSONObject fluentClear() {
        this.map.clear();
        return this;
    }

    public JSONObject fluentPut(String str, Object obj) {
        this.map.put(str, obj);
        return this;
    }

    public JSONObject fluentPutAll(Map<? extends String, ?> map) {
        this.map.putAll(map);
        return this;
    }

    public JSONObject fluentRemove(Object obj) {
        this.map.remove(obj);
        return this;
    }

    @Override // java.util.Map
    public Object get(Object obj) {
        Object obj2 = this.map.get(obj);
        if (obj2 == null) {
            return ((obj instanceof Number) || (obj instanceof Character) || (obj instanceof Boolean) || (obj instanceof UUID)) ? this.map.get(obj.toString()) : obj2;
        }
        return obj2;
    }

    public BigDecimal getBigDecimal(String str) {
        return TypeUtils.i(get(str));
    }

    public BigInteger getBigInteger(String str) {
        return TypeUtils.j(get(str));
    }

    public Boolean getBoolean(String str) {
        Object obj = get(str);
        if (obj == null) {
            return null;
        }
        return TypeUtils.k(obj);
    }

    public boolean getBooleanValue(String str) {
        Boolean boolK = TypeUtils.k(get(str));
        if (boolK == null) {
            return false;
        }
        return boolK.booleanValue();
    }

    public Byte getByte(String str) {
        return TypeUtils.l(get(str));
    }

    public byte getByteValue(String str) {
        Byte bL = TypeUtils.l(get(str));
        if (bL == null) {
            return (byte) 0;
        }
        return bL.byteValue();
    }

    public byte[] getBytes(String str) {
        Object obj = get(str);
        if (obj == null) {
            return null;
        }
        return TypeUtils.m(obj);
    }

    public Date getDate(String str) {
        return TypeUtils.o(get(str));
    }

    public Double getDouble(String str) {
        return TypeUtils.q(get(str));
    }

    public double getDoubleValue(String str) {
        Double dQ = TypeUtils.q(get(str));
        if (dQ == null) {
            return 0.0d;
        }
        return dQ.doubleValue();
    }

    public Float getFloat(String str) {
        return TypeUtils.s(get(str));
    }

    public float getFloatValue(String str) {
        Float fS = TypeUtils.s(get(str));
        if (fS == null) {
            return 0.0f;
        }
        return fS.floatValue();
    }

    public Map<String, Object> getInnerMap() {
        return this.map;
    }

    public int getIntValue(String str) {
        Integer numT = TypeUtils.t(get(str));
        if (numT == null) {
            return 0;
        }
        return numT.intValue();
    }

    public Integer getInteger(String str) {
        return TypeUtils.t(get(str));
    }

    public JSONArray getJSONArray(String str) {
        Object obj = this.map.get(str);
        if (obj instanceof JSONArray) {
            return (JSONArray) obj;
        }
        if (obj instanceof List) {
            return new JSONArray((List<Object>) obj);
        }
        return obj instanceof String ? (JSONArray) com.alibaba.fastjson.a.parse((String) obj) : (JSONArray) com.alibaba.fastjson.a.toJSON(obj);
    }

    public JSONObject getJSONObject(String str) {
        Object obj = this.map.get(str);
        if (obj instanceof JSONObject) {
            return (JSONObject) obj;
        }
        if (obj instanceof Map) {
            return new JSONObject((Map<String, Object>) obj);
        }
        return obj instanceof String ? com.alibaba.fastjson.a.parseObject((String) obj) : (JSONObject) com.alibaba.fastjson.a.toJSON(obj);
    }

    public Long getLong(String str) {
        return TypeUtils.w(get(str));
    }

    public long getLongValue(String str) {
        Long lW = TypeUtils.w(get(str));
        if (lW == null) {
            return 0L;
        }
        return lW.longValue();
    }

    public <T> T getObject(String str, g gVar) {
        T t11 = (T) this.map.get(str);
        return gVar == null ? t11 : (T) TypeUtils.h(t11, gVar.a(), h.t());
    }

    public <T> T getObject(String str, Class<T> cls) {
        return (T) TypeUtils.u(this.map.get(str), cls);
    }

    public <T> T getObject(String str, Type type) {
        return (T) TypeUtils.h(this.map.get(str), type, h.t());
    }

    @Override // java.util.Map
    public Object getOrDefault(Object obj, Object obj2) {
        Object obj3 = get(obj);
        return obj3 != null ? obj3 : obj2;
    }

    public Short getShort(String str) {
        return TypeUtils.x(get(str));
    }

    public short getShortValue(String str) {
        Short shX = TypeUtils.x(get(str));
        if (shX == null) {
            return (short) 0;
        }
        return shX.shortValue();
    }

    public Object getSqlDate(String str) {
        return TypeUtils.y(get(str));
    }

    public String getString(String str) {
        Object obj = get(str);
        if (obj == null) {
            return null;
        }
        return obj.toString();
    }

    public Object getTimestamp(String str) {
        return TypeUtils.B(get(str));
    }

    @Override // java.util.Map
    public int hashCode() {
        return this.map.hashCode();
    }

    @Override // java.lang.reflect.InvocationHandler
    public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
        Class<?>[] parameterTypes = method.getParameterTypes();
        String strName = null;
        if (parameterTypes.length == 1) {
            if (method.getName().equals("equals")) {
                return Boolean.valueOf(equals(objArr[0]));
            }
            if (method.getReturnType() != Void.TYPE) {
                throw new JSONException("illegal setter");
            }
            x4.b bVar = (x4.b) TypeUtils.P(method, x4.b.class);
            String strName2 = (bVar == null || bVar.name().length() == 0) ? null : bVar.name();
            if (strName2 == null) {
                String name = method.getName();
                if (!name.startsWith("set")) {
                    throw new JSONException("illegal setter");
                }
                String strSubstring = name.substring(3);
                if (strSubstring.length() == 0) {
                    throw new JSONException("illegal setter");
                }
                strName2 = Character.toLowerCase(strSubstring.charAt(0)) + strSubstring.substring(1);
            }
            this.map.put(strName2, objArr[0]);
            return null;
        }
        if (parameterTypes.length != 0) {
            throw new UnsupportedOperationException(method.toGenericString());
        }
        if (method.getReturnType() == Void.TYPE) {
            throw new JSONException("illegal getter");
        }
        x4.b bVar2 = (x4.b) TypeUtils.P(method, x4.b.class);
        if (bVar2 != null && bVar2.name().length() != 0) {
            strName = bVar2.name();
        }
        if (strName == null) {
            String name2 = method.getName();
            if (name2.startsWith("get")) {
                String strSubstring2 = name2.substring(3);
                if (strSubstring2.length() == 0) {
                    throw new JSONException("illegal getter");
                }
                strName = Character.toLowerCase(strSubstring2.charAt(0)) + strSubstring2.substring(1);
            } else {
                if (!name2.startsWith("is")) {
                    if (name2.startsWith("hashCode")) {
                        return Integer.valueOf(hashCode());
                    }
                    if (name2.startsWith("toString")) {
                        return toString();
                    }
                    throw new JSONException("illegal getter");
                }
                String strSubstring3 = name2.substring(2);
                if (strSubstring3.length() == 0) {
                    throw new JSONException("illegal getter");
                }
                strName = Character.toLowerCase(strSubstring3.charAt(0)) + strSubstring3.substring(1);
            }
        }
        return TypeUtils.h(this.map.get(strName), method.getGenericReturnType(), h.t());
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        return this.map.isEmpty();
    }

    @Override // java.util.Map
    public Set<String> keySet() {
        return this.map.keySet();
    }

    @Override // java.util.Map
    public Object put(String str, Object obj) {
        return this.map.put(str, obj);
    }

    @Override // java.util.Map
    public void putAll(Map<? extends String, ? extends Object> map) {
        this.map.putAll(map);
    }

    @Override // java.util.Map
    public Object remove(Object obj) {
        return this.map.remove(obj);
    }

    @Override // java.util.Map
    public int size() {
        return this.map.size();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.alibaba.fastjson.a
    public <T> T toJavaObject(Class<T> cls) {
        if (cls == Map.class || cls == JSONObject.class || cls == com.alibaba.fastjson.a.class) {
            return this;
        }
        return (cls != Object.class || containsKey(com.alibaba.fastjson.a.DEFAULT_TYPE_KEY)) ? (T) TypeUtils.v(this, cls, h.t()) : this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T> T toJavaObject(Class<T> cls, h hVar, int i11) {
        if (cls == Map.class) {
            return this;
        }
        return (cls != Object.class || containsKey(com.alibaba.fastjson.a.DEFAULT_TYPE_KEY)) ? (T) TypeUtils.v(this, cls, hVar) : this;
    }

    @Override // java.util.Map
    public Collection<Object> values() {
        return this.map.values();
    }
}
