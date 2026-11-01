package com.alibaba.fastjson.util;

import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;

/* JADX INFO: loaded from: classes2.dex */
public class GenericArrayTypeImpl implements GenericArrayType {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Type f18163a;

    public GenericArrayTypeImpl(Type type) {
        this.f18163a = type;
    }

    public boolean equals(Object obj) {
        if (obj instanceof GenericArrayType) {
            return this.f18163a.equals(((GenericArrayType) obj).getGenericComponentType());
        }
        return false;
    }

    @Override // java.lang.reflect.GenericArrayType
    public Type getGenericComponentType() {
        return this.f18163a;
    }

    public int hashCode() {
        return this.f18163a.hashCode();
    }

    public String toString() {
        Type genericComponentType = getGenericComponentType();
        StringBuilder sb2 = new StringBuilder();
        if (genericComponentType instanceof Class) {
            sb2.append(((Class) genericComponentType).getName());
        } else {
            sb2.append(genericComponentType.toString());
        }
        sb2.append("[]");
        return sb2.toString();
    }
}
