package com.google.common.reflect;

import com.google.common.base.m;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Proxy;

/* JADX INFO: loaded from: classes4.dex */
public abstract class b {
    public static Object a(Class cls, InvocationHandler invocationHandler) {
        m.o(invocationHandler);
        m.j(cls.isInterface(), "%s is not an interface", cls);
        return cls.cast(Proxy.newProxyInstance(cls.getClassLoader(), new Class[]{cls}, invocationHandler));
    }
}
