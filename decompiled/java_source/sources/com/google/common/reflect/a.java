package com.google.common.reflect;

import com.google.common.base.m;
import java.lang.annotation.Annotation;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.AnnotatedElement;
import java.lang.reflect.Constructor;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.util.Arrays;

/* JADX INFO: loaded from: classes4.dex */
public abstract class a implements AnnotatedElement, Member {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final boolean f30950c = b();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final AccessibleObject f30951a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Member f30952b;

    /* JADX INFO: renamed from: com.google.common.reflect.a$a, reason: collision with other inner class name */
    static class C0415a extends a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final Constructor f30953d;

        C0415a(Constructor constructor) {
            super(constructor);
            this.f30953d = constructor;
        }

        private boolean d() {
            Class declaringClass = this.f30953d.getDeclaringClass();
            if (declaringClass.getEnclosingConstructor() != null) {
                return true;
            }
            Method enclosingMethod = declaringClass.getEnclosingMethod();
            if (enclosingMethod != null) {
                return !Modifier.isStatic(enclosingMethod.getModifiers());
            }
            return (declaringClass.getEnclosingClass() == null || Modifier.isStatic(declaringClass.getModifiers())) ? false : true;
        }

        Type[] c() {
            Type[] genericParameterTypes = this.f30953d.getGenericParameterTypes();
            if (genericParameterTypes.length <= 0 || !d()) {
                return genericParameterTypes;
            }
            Class<?>[] parameterTypes = this.f30953d.getParameterTypes();
            return (genericParameterTypes.length == parameterTypes.length && parameterTypes[0] == getDeclaringClass().getEnclosingClass()) ? (Type[]) Arrays.copyOfRange(genericParameterTypes, 1, genericParameterTypes.length) : genericParameterTypes;
        }
    }

    static class b extends a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final Method f30954d;

        b(Method method) {
            super(method);
            this.f30954d = method;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    a(AccessibleObject accessibleObject) {
        m.o(accessibleObject);
        this.f30951a = accessibleObject;
        this.f30952b = (Member) accessibleObject;
    }

    private static boolean b() {
        try {
            Class.forName("java.lang.reflect.AnnotatedType");
            return true;
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    public abstract TypeToken a();

    public boolean equals(Object obj) {
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return a().equals(aVar.a()) && this.f30952b.equals(aVar.f30952b);
    }

    @Override // java.lang.reflect.AnnotatedElement
    public final Annotation getAnnotation(Class cls) {
        return this.f30951a.getAnnotation(cls);
    }

    @Override // java.lang.reflect.AnnotatedElement
    public final Annotation[] getAnnotations() {
        return this.f30951a.getAnnotations();
    }

    @Override // java.lang.reflect.AnnotatedElement
    public final Annotation[] getDeclaredAnnotations() {
        return this.f30951a.getDeclaredAnnotations();
    }

    @Override // java.lang.reflect.Member
    public final Class getDeclaringClass() {
        return this.f30952b.getDeclaringClass();
    }

    @Override // java.lang.reflect.Member
    public final int getModifiers() {
        return this.f30952b.getModifiers();
    }

    @Override // java.lang.reflect.Member
    public final String getName() {
        return this.f30952b.getName();
    }

    public int hashCode() {
        return this.f30952b.hashCode();
    }

    @Override // java.lang.reflect.AnnotatedElement
    public final boolean isAnnotationPresent(Class cls) {
        return this.f30951a.isAnnotationPresent(cls);
    }

    @Override // java.lang.reflect.Member
    public final boolean isSynthetic() {
        return this.f30952b.isSynthetic();
    }

    public String toString() {
        return this.f30952b.toString();
    }
}
