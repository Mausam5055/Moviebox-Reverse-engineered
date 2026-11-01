package com.therouter.router;

import androidx.collection.x0;
import androidx.fragment.app.Fragment;
import java.lang.reflect.InvocationTargetException;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public abstract class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final x0 f40790a = new x0();

    public static final Fragment a(String className) {
        Intrinsics.h(className, "className");
        try {
            Object objNewInstance = d(className).getConstructor(null).newInstance(null);
            Intrinsics.e(objNewInstance);
            return (Fragment) objNewInstance;
        } catch (IllegalAccessException e11) {
            throw new Fragment.InstantiationException("Unable to instantiate fragment " + className + ": make sure class name exists, is public, and has an empty constructor that is public", e11);
        } catch (InstantiationException e12) {
            throw new Fragment.InstantiationException("Unable to instantiate fragment " + className + ": make sure class name exists, is public, and has an empty constructor that is public", e12);
        } catch (NoSuchMethodException e13) {
            throw new Fragment.InstantiationException("Unable to instantiate fragment " + className + ": could not find Fragment constructor", e13);
        } catch (InvocationTargetException e14) {
            throw new Fragment.InstantiationException("Unable to instantiate fragment " + className + ": calling Fragment constructor caused an exception", e14);
        }
    }

    public static final boolean b(String className) {
        Intrinsics.h(className, "className");
        try {
            return Fragment.class.isAssignableFrom(c(className));
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    public static final Class c(String className) throws ClassNotFoundException {
        Intrinsics.h(className, "className");
        ClassLoader classLoader = Fragment.class.getClassLoader();
        x0 x0Var = f40790a;
        x0 x0Var2 = (x0) x0Var.get(classLoader);
        if (x0Var2 == null) {
            x0Var2 = new x0();
            x0Var.put(classLoader, x0Var2);
        }
        Class<?> cls = (Class) x0Var2.get(className);
        if (cls == null) {
            cls = Class.forName(className, false, classLoader);
            x0Var2.put(className, cls);
        }
        Intrinsics.e(cls);
        return cls;
    }

    public static final Class d(String className) {
        Intrinsics.h(className, "className");
        try {
            Class clsC = c(className);
            Intrinsics.f(clsC, "null cannot be cast to non-null type java.lang.Class<out androidx.fragment.app.Fragment?>");
            return clsC;
        } catch (ClassCastException e11) {
            throw new Fragment.InstantiationException("Unable to instantiate fragment " + className + ": make sure class is a valid subclass of Fragment", e11);
        } catch (ClassNotFoundException e12) {
            throw new Fragment.InstantiationException("Unable to instantiate fragment " + className + ": make sure class name exists", e12);
        }
    }
}
