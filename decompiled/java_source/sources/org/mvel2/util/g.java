package org.mvel2.util;

import org.mvel2.ScriptRuntimeException;

/* JADX INFO: loaded from: classes7.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private StackElement f72046a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f72047b = 0;

    public void a(Object obj) {
        this.f72047b++;
        StackElement stackElement = this.f72046a;
        if (stackElement == null) {
            this.f72046a = new StackElement(null, obj);
            return;
        }
        while (true) {
            StackElement stackElement2 = stackElement.next;
            if (stackElement2 == null) {
                stackElement.next = new StackElement(null, obj);
                return;
            }
            stackElement = stackElement2;
        }
    }

    public void b() {
        this.f72047b = 0;
        this.f72046a = null;
    }

    public void c(g gVar) {
        this.f72046a = new StackElement(new StackElement(this.f72046a, gVar.f72046a.value), gVar.f72046a.next.value);
        gVar.f72046a = gVar.f72046a.next.next;
        this.f72047b += 2;
        gVar.f72047b -= 2;
    }

    public void d(g gVar) {
        this.f72046a = new StackElement(new StackElement(this.f72046a, gVar.f72046a.next.value), gVar.f72046a.value);
        gVar.f72046a = gVar.f72046a.next.next;
        this.f72047b += 2;
        gVar.f72047b -= 2;
    }

    public void e() {
        int i11 = this.f72047b;
        if (i11 != 0) {
            this.f72047b = i11 - 1;
            this.f72046a = this.f72046a.next;
        }
    }

    public void f() {
        this.f72047b++;
        StackElement stackElement = this.f72046a;
        this.f72046a = new StackElement(stackElement, stackElement.value);
    }

    public boolean g() {
        return this.f72047b == 0;
    }

    public boolean h() {
        return this.f72047b > 1;
    }

    public void i() {
        StackElement stackElement = this.f72046a;
        StackElement stackElement2 = stackElement.next.next;
        this.f72046a = new StackElement(stackElement2.next, m10.a.g(stackElement2.value, ((Integer) stackElement.value).intValue(), this.f72046a.next.value));
        this.f72047b -= 2;
    }

    public void j(int i11) {
        StackElement stackElement = this.f72046a;
        StackElement stackElement2 = stackElement.next;
        this.f72046a = new StackElement(stackElement2.next, m10.a.g(stackElement2.value, i11, stackElement.value));
        this.f72047b--;
    }

    public Object k() {
        if (this.f72047b == 0) {
            return null;
        }
        return this.f72046a.value;
    }

    public Object l() {
        return this.f72046a.next.value;
    }

    public Boolean m() {
        if (this.f72047b == 0) {
            return null;
        }
        Object obj = this.f72046a.value;
        if (obj instanceof Boolean) {
            return (Boolean) obj;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("expected Boolean; but found: ");
        Object obj2 = this.f72046a.value;
        sb2.append(obj2 == null ? "null" : obj2.getClass().getName());
        throw new ScriptRuntimeException(sb2.toString());
    }

    public Object n() {
        int i11 = this.f72047b;
        if (i11 == 0) {
            return null;
        }
        try {
            this.f72047b = i11 - 1;
            return this.f72046a.value;
        } finally {
            this.f72046a = this.f72046a.next;
        }
    }

    public Object o() {
        try {
            this.f72047b -= 2;
            return this.f72046a.value;
        } finally {
            this.f72046a = this.f72046a.next.next;
        }
    }

    public Boolean p() {
        int i11 = this.f72047b;
        this.f72047b = i11 - 1;
        if (i11 == 0) {
            return null;
        }
        try {
            StackElement stackElement = this.f72046a;
            Object obj = stackElement.value;
            if (obj instanceof Boolean) {
                Boolean bool = (Boolean) obj;
                this.f72046a = stackElement.next;
                return bool;
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append("expected Boolean; but found: ");
            Object obj2 = this.f72046a.value;
            sb2.append(obj2 == null ? "null" : obj2.getClass().getName());
            throw new ScriptRuntimeException(sb2.toString());
        } catch (Throwable th2) {
            this.f72046a = this.f72046a.next;
            throw th2;
        }
    }

    public void q(Object obj) {
        this.f72047b++;
        this.f72046a = new StackElement(this.f72046a, obj);
    }

    public void r(Object obj, Object obj2) {
        this.f72047b += 2;
        this.f72046a = new StackElement(new StackElement(this.f72046a, obj), obj2);
    }

    public void s(Object obj, Object obj2, Object obj3) {
        this.f72047b += 3;
        this.f72046a = new StackElement(new StackElement(new StackElement(this.f72046a, obj), obj2), obj3);
    }

    public int t() {
        return this.f72047b;
    }

    public String toString() {
        StackElement stackElement = this.f72046a;
        if (stackElement == null) {
            return "<EMPTY>";
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("[");
        do {
            sb2.append(String.valueOf(stackElement.value));
            if (stackElement.next != null) {
                sb2.append(", ");
            }
            stackElement = stackElement.next;
        } while (stackElement != null);
        sb2.append("]");
        return sb2.toString();
    }

    public void u() {
        StackElement stackElement = this.f72046a;
        StackElement stackElement2 = stackElement.next;
        StackElement stackElement3 = stackElement2.next;
        stackElement2.next = stackElement;
        this.f72046a = stackElement2;
        stackElement.next = stackElement3;
    }

    public void v() {
        StackElement stackElement = this.f72046a;
        StackElement stackElement2 = stackElement.next;
        StackElement stackElement3 = stackElement2.next;
        stackElement2.next = stackElement;
        stackElement.next = stackElement3.next;
        this.f72046a = stackElement3;
        stackElement3.next = stackElement2;
    }

    public void w() {
        StackElement stackElement = this.f72046a.next;
        StackElement stackElement2 = stackElement.next;
        this.f72046a = new StackElement(stackElement2.next, m10.a.g(stackElement2.value, ((Integer) stackElement.value).intValue(), this.f72046a.value));
        this.f72047b -= 2;
    }
}
