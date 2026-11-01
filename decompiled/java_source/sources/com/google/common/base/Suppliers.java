package com.google.common.base;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.Serializable;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Suppliers {

    static class MemoizingSupplier<T> implements q, Serializable {
        private static final long serialVersionUID = 0;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private transient Object f30213a = new Object();
        final q delegate;
        volatile transient boolean initialized;
        transient T value;

        MemoizingSupplier(q qVar) {
            this.delegate = (q) m.o(qVar);
        }

        private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
            objectInputStream.defaultReadObject();
            this.f30213a = new Object();
        }

        @Override // com.google.common.base.q
        public T get() {
            if (!this.initialized) {
                synchronized (this.f30213a) {
                    try {
                        if (!this.initialized) {
                            T t11 = (T) this.delegate.get();
                            this.value = t11;
                            this.initialized = true;
                            return t11;
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
            return (T) i.a(this.value);
        }

        public String toString() {
            Object obj;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Suppliers.memoize(");
            if (this.initialized) {
                obj = "<supplier that returned " + this.value + ">";
            } else {
                obj = this.delegate;
            }
            sb2.append(obj);
            sb2.append(")");
            return sb2.toString();
        }
    }

    private static class SupplierOfInstance<T> implements q, Serializable {
        private static final long serialVersionUID = 0;
        final T instance;

        SupplierOfInstance(T t11) {
            this.instance = t11;
        }

        public boolean equals(Object obj) {
            if (obj instanceof SupplierOfInstance) {
                return j.a(this.instance, ((SupplierOfInstance) obj).instance);
            }
            return false;
        }

        @Override // com.google.common.base.q
        public T get() {
            return this.instance;
        }

        public int hashCode() {
            return j.b(this.instance);
        }

        public String toString() {
            return "Suppliers.ofInstance(" + this.instance + ")";
        }
    }

    static class a implements q {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static final q f30214d = new q() { // from class: com.google.common.base.r
            @Override // com.google.common.base.q
            public final Object get() {
                return Suppliers.a.b();
            }
        };

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Object f30215a = new Object();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private volatile q f30216b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private Object f30217c;

        a(q qVar) {
            this.f30216b = (q) m.o(qVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ Void b() {
            throw new IllegalStateException();
        }

        @Override // com.google.common.base.q
        public Object get() {
            q qVar = this.f30216b;
            q qVar2 = f30214d;
            if (qVar != qVar2) {
                synchronized (this.f30215a) {
                    try {
                        if (this.f30216b != qVar2) {
                            Object obj = this.f30216b.get();
                            this.f30217c = obj;
                            this.f30216b = qVar2;
                            return obj;
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
            return i.a(this.f30217c);
        }

        public String toString() {
            Object obj = this.f30216b;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Suppliers.memoize(");
            if (obj == f30214d) {
                obj = "<supplier that returned " + this.f30217c + ">";
            }
            sb2.append(obj);
            sb2.append(")");
            return sb2.toString();
        }
    }

    public static q a(q qVar) {
        if ((qVar instanceof a) || (qVar instanceof MemoizingSupplier)) {
            return qVar;
        }
        return qVar instanceof Serializable ? new MemoizingSupplier(qVar) : new a(qVar);
    }

    public static q b(Object obj) {
        return new SupplierOfInstance(obj);
    }
}
