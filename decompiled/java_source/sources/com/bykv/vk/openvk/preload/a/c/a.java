package com.bykv.vk.openvk.preload.a.c;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;

/* JADX INFO: loaded from: classes2.dex */
public class a<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Class<? super T> f20469a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Type f20470b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f20471c;

    protected a() {
        Type genericSuperclass = getClass().getGenericSuperclass();
        if (genericSuperclass instanceof Class) {
            throw new RuntimeException("Missing type parameter.");
        }
        Type typeA = com.bykv.vk.openvk.preload.a.b.a.a(((ParameterizedType) genericSuperclass).getActualTypeArguments()[0]);
        this.f20470b = typeA;
        this.f20469a = (Class<? super T>) com.bykv.vk.openvk.preload.a.b.a.b(typeA);
        this.f20471c = this.f20470b.hashCode();
    }

    private a(Type type) {
        Type typeA = com.bykv.vk.openvk.preload.a.b.a.a((Type) com.bykv.vk.openvk.preload.falconx.a.a.a(type));
        this.f20470b = typeA;
        this.f20469a = (Class<? super T>) com.bykv.vk.openvk.preload.a.b.a.b(typeA);
        this.f20471c = this.f20470b.hashCode();
    }

    public static <T> a<T> a(Class<T> cls) {
        return new a<>(cls);
    }

    public static a<?> a(Type type) {
        return new a<>(type);
    }

    public final Class<? super T> a() {
        return this.f20469a;
    }

    public final Type b() {
        return this.f20470b;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof a) && com.bykv.vk.openvk.preload.a.b.a.a(this.f20470b, ((a) obj).f20470b);
    }

    public final int hashCode() {
        return this.f20471c;
    }

    public final String toString() {
        return com.bykv.vk.openvk.preload.a.b.a.c(this.f20470b);
    }
}
