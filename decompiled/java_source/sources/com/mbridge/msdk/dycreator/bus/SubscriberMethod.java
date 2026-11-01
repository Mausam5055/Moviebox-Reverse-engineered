package com.mbridge.msdk.dycreator.bus;

import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes5.dex */
final class SubscriberMethod {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final Method f34809a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final ThreadMode f34810b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final Class<?> f34811c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    String f34812d;

    SubscriberMethod(Method method, ThreadMode threadMode, Class<?> cls) {
        this.f34809a = method;
        this.f34810b = threadMode;
        this.f34811c = cls;
    }

    private synchronized void a() {
        if (this.f34812d == null) {
            StringBuilder sb2 = new StringBuilder(64);
            sb2.append(this.f34809a.getDeclaringClass().getName());
            sb2.append('#');
            sb2.append(this.f34809a.getName());
            sb2.append('(');
            sb2.append(this.f34811c.getName());
            this.f34812d = sb2.toString();
        }
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof SubscriberMethod)) {
            return false;
        }
        a();
        return this.f34812d.equals(((SubscriberMethod) obj).f34812d);
    }

    public int hashCode() {
        return this.f34809a.hashCode();
    }
}
