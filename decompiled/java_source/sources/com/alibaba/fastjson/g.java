package com.alibaba.fastjson;

import com.alibaba.fastjson.util.ParameterizedTypeImpl;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* JADX INFO: loaded from: classes2.dex */
public abstract class g {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static ConcurrentMap f18145b = new ConcurrentHashMap(16, 0.75f, 1);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Type f18146c = new a().a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final Type f18147a;

    static class a extends g {
        a() {
        }
    }

    protected g() {
        Type type = ((ParameterizedType) getClass().getGenericSuperclass()).getActualTypeArguments()[0];
        Type type2 = (Type) f18145b.get(type);
        if (type2 == null) {
            f18145b.putIfAbsent(type, type);
            type2 = (Type) f18145b.get(type);
        }
        this.f18147a = type2;
    }

    public static Type b(ParameterizedTypeImpl parameterizedTypeImpl) {
        Type type = (Type) f18145b.get(parameterizedTypeImpl);
        if (type != null) {
            return type;
        }
        f18145b.putIfAbsent(parameterizedTypeImpl, parameterizedTypeImpl);
        return (Type) f18145b.get(parameterizedTypeImpl);
    }

    public Type a() {
        return this.f18147a;
    }
}
