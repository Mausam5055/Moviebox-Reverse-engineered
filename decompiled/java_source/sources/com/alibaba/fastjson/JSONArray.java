package com.alibaba.fastjson;

import com.alibaba.fastjson.parser.Feature;
import com.alibaba.fastjson.util.TypeUtils;
import java.io.IOException;
import java.io.NotActiveException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.RandomAccess;
import y4.h;

/* JADX INFO: loaded from: classes.dex */
public class JSONArray extends a implements List<Object>, Cloneable, RandomAccess, Serializable {
    private static final long serialVersionUID = 1;
    protected transient Type componentType;
    private final List<Object> list;
    protected transient Object relatedArray;

    public JSONArray() {
        this.list = new ArrayList();
    }

    public JSONArray(int i11) {
        this.list = new ArrayList(i11);
    }

    public JSONArray(List<Object> list) {
        if (list == null) {
            throw new IllegalArgumentException("list is null.");
        }
        this.list = list;
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        JSONObject.a.d();
        if (JSONObject.a.f17980a != null && !JSONObject.a.f17981b) {
            try {
                new JSONObject.a(objectInputStream).defaultReadObject();
                return;
            } catch (NotActiveException unused) {
            }
        }
        objectInputStream.defaultReadObject();
        for (Object obj : this.list) {
            if (obj != null) {
                String name = obj.getClass().getName();
                if (TypeUtils.R(name) == null) {
                    h.f78878z.i(name, null);
                }
            }
        }
    }

    @Override // java.util.List
    public void add(int i11, Object obj) {
        this.list.add(i11, obj);
    }

    @Override // java.util.List, java.util.Collection
    public boolean add(Object obj) {
        return this.list.add(obj);
    }

    @Override // java.util.List
    public boolean addAll(int i11, Collection<? extends Object> collection) {
        return this.list.addAll(i11, collection);
    }

    @Override // java.util.List, java.util.Collection
    public boolean addAll(Collection<?> collection) {
        return this.list.addAll(collection);
    }

    @Override // java.util.List, java.util.Collection
    public void clear() {
        this.list.clear();
    }

    public Object clone() {
        return new JSONArray(new ArrayList(this.list));
    }

    @Override // java.util.List, java.util.Collection
    public boolean contains(Object obj) {
        return this.list.contains(obj);
    }

    @Override // java.util.List, java.util.Collection
    public boolean containsAll(Collection<?> collection) {
        return this.list.containsAll(collection);
    }

    @Override // java.util.List, java.util.Collection
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj instanceof JSONArray ? this.list.equals(((JSONArray) obj).list) : this.list.equals(obj);
    }

    public JSONArray fluentAdd(int i11, Object obj) {
        this.list.add(i11, obj);
        return this;
    }

    public JSONArray fluentAdd(Object obj) {
        this.list.add(obj);
        return this;
    }

    public JSONArray fluentAddAll(int i11, Collection<?> collection) {
        this.list.addAll(i11, collection);
        return this;
    }

    public JSONArray fluentAddAll(Collection<?> collection) {
        this.list.addAll(collection);
        return this;
    }

    public JSONArray fluentClear() {
        this.list.clear();
        return this;
    }

    public JSONArray fluentRemove(int i11) {
        this.list.remove(i11);
        return this;
    }

    public JSONArray fluentRemove(Object obj) {
        this.list.remove(obj);
        return this;
    }

    public JSONArray fluentRemoveAll(Collection<?> collection) {
        this.list.removeAll(collection);
        return this;
    }

    public JSONArray fluentRetainAll(Collection<?> collection) {
        this.list.retainAll(collection);
        return this;
    }

    public JSONArray fluentSet(int i11, Object obj) {
        set(i11, obj);
        return this;
    }

    @Override // java.util.List
    public Object get(int i11) {
        return this.list.get(i11);
    }

    public BigDecimal getBigDecimal(int i11) {
        return TypeUtils.i(get(i11));
    }

    public BigInteger getBigInteger(int i11) {
        return TypeUtils.j(get(i11));
    }

    public Boolean getBoolean(int i11) {
        Object obj = get(i11);
        if (obj == null) {
            return null;
        }
        return TypeUtils.k(obj);
    }

    public boolean getBooleanValue(int i11) {
        Object obj = get(i11);
        if (obj == null) {
            return false;
        }
        return TypeUtils.k(obj).booleanValue();
    }

    public Byte getByte(int i11) {
        return TypeUtils.l(get(i11));
    }

    public byte getByteValue(int i11) {
        Byte bL = TypeUtils.l(get(i11));
        if (bL == null) {
            return (byte) 0;
        }
        return bL.byteValue();
    }

    public Type getComponentType() {
        return this.componentType;
    }

    public Date getDate(int i11) {
        return TypeUtils.o(get(i11));
    }

    public Double getDouble(int i11) {
        return TypeUtils.q(get(i11));
    }

    public double getDoubleValue(int i11) {
        Double dQ = TypeUtils.q(get(i11));
        if (dQ == null) {
            return 0.0d;
        }
        return dQ.doubleValue();
    }

    public Float getFloat(int i11) {
        return TypeUtils.s(get(i11));
    }

    public float getFloatValue(int i11) {
        Float fS = TypeUtils.s(get(i11));
        if (fS == null) {
            return 0.0f;
        }
        return fS.floatValue();
    }

    public int getIntValue(int i11) {
        Integer numT = TypeUtils.t(get(i11));
        if (numT == null) {
            return 0;
        }
        return numT.intValue();
    }

    public Integer getInteger(int i11) {
        return TypeUtils.t(get(i11));
    }

    public JSONArray getJSONArray(int i11) {
        Object obj = this.list.get(i11);
        if (obj instanceof JSONArray) {
            return (JSONArray) obj;
        }
        return obj instanceof List ? new JSONArray((List<Object>) obj) : (JSONArray) a.toJSON(obj);
    }

    public JSONObject getJSONObject(int i11) {
        Object obj = this.list.get(i11);
        if (obj instanceof JSONObject) {
            return (JSONObject) obj;
        }
        return obj instanceof Map ? new JSONObject((Map<String, Object>) obj) : (JSONObject) a.toJSON(obj);
    }

    public Long getLong(int i11) {
        return TypeUtils.w(get(i11));
    }

    public long getLongValue(int i11) {
        Long lW = TypeUtils.w(get(i11));
        if (lW == null) {
            return 0L;
        }
        return lW.longValue();
    }

    public <T> T getObject(int i11, Class<T> cls) {
        return (T) TypeUtils.u(this.list.get(i11), cls);
    }

    public <T> T getObject(int i11, Type type) {
        Object obj = this.list.get(i11);
        return type instanceof Class ? (T) TypeUtils.u(obj, (Class) type) : (T) a.parseObject(a.toJSONString(obj), type, new Feature[0]);
    }

    public Object getRelatedArray() {
        return this.relatedArray;
    }

    public Short getShort(int i11) {
        return TypeUtils.x(get(i11));
    }

    public short getShortValue(int i11) {
        Short shX = TypeUtils.x(get(i11));
        if (shX == null) {
            return (short) 0;
        }
        return shX.shortValue();
    }

    public Object getSqlDate(int i11) {
        return TypeUtils.y(get(i11));
    }

    public String getString(int i11) {
        return TypeUtils.A(get(i11));
    }

    public Object getTimestamp(int i11) {
        return TypeUtils.B(get(i11));
    }

    @Override // java.util.List, java.util.Collection
    public int hashCode() {
        return this.list.hashCode();
    }

    @Override // java.util.List
    public int indexOf(Object obj) {
        return this.list.indexOf(obj);
    }

    @Override // java.util.List, java.util.Collection
    public boolean isEmpty() {
        return this.list.isEmpty();
    }

    @Override // java.util.List, java.util.Collection, java.lang.Iterable
    public Iterator<Object> iterator() {
        return this.list.iterator();
    }

    @Override // java.util.List
    public int lastIndexOf(Object obj) {
        return this.list.lastIndexOf(obj);
    }

    @Override // java.util.List
    public ListIterator<Object> listIterator() {
        return this.list.listIterator();
    }

    @Override // java.util.List
    public ListIterator<Object> listIterator(int i11) {
        return this.list.listIterator(i11);
    }

    @Override // java.util.List
    public Object remove(int i11) {
        return this.list.remove(i11);
    }

    @Override // java.util.List, java.util.Collection
    public boolean remove(Object obj) {
        return this.list.remove(obj);
    }

    @Override // java.util.List, java.util.Collection
    public boolean removeAll(Collection<?> collection) {
        return this.list.removeAll(collection);
    }

    @Override // java.util.List, java.util.Collection
    public boolean retainAll(Collection<?> collection) {
        return this.list.retainAll(collection);
    }

    @Override // java.util.List
    public Object set(int i11, Object obj) {
        if (i11 == -1) {
            this.list.add(obj);
            return null;
        }
        if (this.list.size() > i11) {
            return this.list.set(i11, obj);
        }
        for (int size = this.list.size(); size < i11; size++) {
            this.list.add(null);
        }
        this.list.add(obj);
        return null;
    }

    public void setComponentType(Type type) {
        this.componentType = type;
    }

    public void setRelatedArray(Object obj) {
        this.relatedArray = obj;
    }

    @Override // java.util.List, java.util.Collection
    public int size() {
        return this.list.size();
    }

    @Override // java.util.List
    public List<Object> subList(int i11, int i12) {
        return this.list.subList(i11, i12);
    }

    @Override // java.util.List, java.util.Collection
    public Object[] toArray() {
        return this.list.toArray();
    }

    @Override // java.util.List, java.util.Collection
    public <T> T[] toArray(T[] tArr) {
        return (T[]) this.list.toArray(tArr);
    }

    public <T> List<T> toJavaList(Class<T> cls) {
        ArrayList arrayList = new ArrayList(size());
        h hVarT = h.t();
        Iterator<Object> it = iterator();
        while (it.hasNext()) {
            arrayList.add(TypeUtils.f(it.next(), cls, hVarT));
        }
        return arrayList;
    }
}
