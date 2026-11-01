package retrofit2;

import java.lang.reflect.Method;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public final class v {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Class f74508a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object f74509b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Method f74510c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final List f74511d;

    v(Class cls, Object obj, Method method, List list) {
        this.f74508a = cls;
        this.f74509b = obj;
        this.f74510c = method;
        this.f74511d = Collections.unmodifiableList(list);
    }

    public Method a() {
        return this.f74510c;
    }

    public Class b() {
        return this.f74508a;
    }

    public String toString() {
        return String.format("%s.%s() %s", this.f74508a.getName(), this.f74510c.getName(), this.f74511d);
    }
}
