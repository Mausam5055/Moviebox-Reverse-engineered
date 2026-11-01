package org.mvel2.util;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import org.mvel2.integration.VariableResolverFactory;

/* JADX INFO: loaded from: classes7.dex */
public class MethodStub implements StaticStub {
    private Class classReference;
    private transient Method method;
    private String name;

    public MethodStub(Class cls, String str) {
        this.classReference = cls;
        this.name = str;
    }

    public MethodStub(Method method) {
        this.classReference = method.getDeclaringClass();
        this.name = method.getName();
    }

    @Override // org.mvel2.util.StaticStub
    public Object call(Object obj, Object obj2, VariableResolverFactory variableResolverFactory, Object[] objArr) throws IllegalAccessException, InvocationTargetException {
        return this.method.invoke(obj, objArr);
    }

    public Class getClassReference() {
        return this.classReference;
    }

    public Method getMethod() {
        if (this.method == null) {
            for (Method method : this.classReference.getMethods()) {
                if (this.name.equals(method.getName())) {
                    this.method = method;
                    return method;
                }
            }
        }
        return this.method;
    }

    public String getMethodName() {
        return this.name;
    }

    public void setClassReference(Class cls) {
        this.classReference = cls;
    }

    public void setMethodName(String str) {
        this.name = str;
    }
}
