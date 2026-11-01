package com.alibaba.fastjson.util;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class ParameterizedTypeImpl implements ParameterizedType {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Type[] f18164a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Type f18165b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Type f18166c;

    public ParameterizedTypeImpl(Type[] typeArr, Type type, Type type2) {
        this.f18164a = typeArr;
        this.f18165b = type;
        this.f18166c = type2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ParameterizedTypeImpl parameterizedTypeImpl = (ParameterizedTypeImpl) obj;
        if (!Arrays.equals(this.f18164a, parameterizedTypeImpl.f18164a)) {
            return false;
        }
        Type type = this.f18165b;
        if (type == null ? parameterizedTypeImpl.f18165b != null : !type.equals(parameterizedTypeImpl.f18165b)) {
            return false;
        }
        Type type2 = this.f18166c;
        Type type3 = parameterizedTypeImpl.f18166c;
        if (type2 != null) {
            return type2.equals(type3);
        }
        return type3 == null;
    }

    @Override // java.lang.reflect.ParameterizedType
    public Type[] getActualTypeArguments() {
        return this.f18164a;
    }

    @Override // java.lang.reflect.ParameterizedType
    public Type getOwnerType() {
        return this.f18165b;
    }

    @Override // java.lang.reflect.ParameterizedType
    public Type getRawType() {
        return this.f18166c;
    }

    public int hashCode() {
        Type[] typeArr = this.f18164a;
        int iHashCode = (typeArr != null ? Arrays.hashCode(typeArr) : 0) * 31;
        Type type = this.f18165b;
        int iHashCode2 = (iHashCode + (type != null ? type.hashCode() : 0)) * 31;
        Type type2 = this.f18166c;
        return iHashCode2 + (type2 != null ? type2.hashCode() : 0);
    }
}
