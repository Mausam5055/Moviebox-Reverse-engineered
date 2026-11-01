package com.transsion.json;

import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f46042a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f46043b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final c f46044c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Class f46045d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected final Field f46046e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected Method f46047f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected Method f46048g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    protected final Map f46049h = new HashMap();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    protected g f46050i = null;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    protected g f46051j = null;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    protected Boolean f46052k = null;

    public d(String str, c cVar) {
        this.f46043b = str;
        this.f46042a = str;
        this.f46044c = cVar;
        Field fieldB = cVar.b(str);
        this.f46046e = fieldB;
        if (fieldB == null || !fieldB.isAnnotationPresent(fm.a.class)) {
            return;
        }
        c((fm.a) fieldB.getAnnotation(fm.a.class));
    }

    public d(Field field, c cVar) {
        String name = field.getName();
        this.f46043b = name;
        this.f46042a = name;
        this.f46044c = cVar;
        this.f46046e = field;
        this.f46045d = field.getType();
        if (field.isAnnotationPresent(fm.a.class)) {
            c((fm.a) field.getAnnotation(fm.a.class));
        }
    }

    private void c(fm.a aVar) {
        this.f46043b = aVar.name().length() > 0 ? aVar.name() : this.f46042a;
        this.f46050i = aVar.transformer() == com.transsion.json.b.n.class ? null : new g(aVar.transformer());
        this.f46051j = aVar.objectFactory() != o.class ? new g(aVar.objectFactory()) : null;
        this.f46052k = Boolean.valueOf(aVar.include());
    }

    public Object a(Object obj) {
        try {
            Method methodI = i();
            if (methodI != null) {
                return methodI.invoke(obj, null);
            }
            Field field = this.f46046e;
            if (field != null) {
                return field.get(obj);
            }
            return null;
        } catch (IllegalAccessException e11) {
            e = e11;
            throw new k("Error while reading property " + this.f46045d.getName() + "." + this.f46042a, e);
        } catch (InvocationTargetException e12) {
            e = e12;
            throw new k("Error while reading property " + this.f46045d.getName() + "." + this.f46042a, e);
        }
    }

    public String b() {
        return this.f46043b;
    }

    public void d(Method method) {
        Class<?> cls = method.getParameterTypes()[0];
        if (this.f46045d == null) {
            this.f46045d = cls;
        }
        this.f46049h.put(cls, method);
        method.setAccessible(true);
    }

    public String e() {
        return this.f46042a;
    }

    public void f(Method method) {
        if (this.f46045d == null) {
            this.f46045d = method.getReturnType();
            this.f46047f = method;
            method.setAccessible(true);
        } else if (method.getReturnType().isAssignableFrom(this.f46045d)) {
            this.f46047f = method;
            method.setAccessible(true);
        }
        Method method2 = this.f46047f;
        if (method2 == null || !method2.isAnnotationPresent(fm.a.class)) {
            return;
        }
        c((fm.a) this.f46047f.getAnnotation(fm.a.class));
    }

    public Field g() {
        return this.f46046e;
    }

    public Class h() {
        return this.f46045d;
    }

    public Method i() {
        return (this.f46047f == null && this.f46044c.e() != null && this.f46044c.e().h(this.f46042a)) ? this.f46044c.e().f(this.f46042a).i() : this.f46047f;
    }

    public com.transsion.json.b.n j() {
        g gVar = this.f46050i;
        if (gVar != null) {
            return (com.transsion.json.b.n) gVar.a();
        }
        return null;
    }

    public Method k() {
        if (this.f46048g == null) {
            Method method = (Method) this.f46049h.get(this.f46045d);
            this.f46048g = method;
            if (method == null && this.f46044c.e() != null && this.f46044c.e().h(this.f46042a)) {
                return this.f46044c.e().f(this.f46042a).k();
            }
        }
        return this.f46048g;
    }

    public Boolean l() {
        return this.f46052k;
    }

    protected boolean m() {
        return i() == null && k() == null && !Modifier.isPublic(this.f46046e.getModifiers());
    }

    public Boolean n() {
        Field field;
        Method methodI = i();
        return Boolean.valueOf(((methodI == null || Modifier.isStatic(methodI.getModifiers())) && ((field = this.f46046e) == null || Modifier.isStatic(field.getModifiers()) || Modifier.isTransient(this.f46046e.getModifiers()))) ? false : true);
    }

    public Boolean o() {
        Field field = this.f46046e;
        return Boolean.valueOf(field != null && Modifier.isTransient(field.getModifiers()));
    }

    public Boolean p() {
        Field field;
        return Boolean.valueOf((k() == null && ((field = this.f46046e) == null || !Modifier.isPublic(field.getModifiers()) || Modifier.isTransient(this.f46046e.getModifiers()))) ? false : true);
    }
}
