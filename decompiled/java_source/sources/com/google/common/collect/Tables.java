package com.google.common.collect;

import java.io.Serializable;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Tables {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final com.google.common.base.f f30699a = new a();

    static final class ImmutableCell<R, C, V> extends b implements Serializable {
        private static final long serialVersionUID = 0;
        private final C columnKey;
        private final R rowKey;
        private final V value;

        ImmutableCell(R r11, C c11, V v11) {
            this.rowKey = r11;
            this.columnKey = c11;
            this.value = v11;
        }

        @Override // com.google.common.collect.c4.a
        public C getColumnKey() {
            return this.columnKey;
        }

        @Override // com.google.common.collect.c4.a
        public R getRowKey() {
            return this.rowKey;
        }

        @Override // com.google.common.collect.c4.a
        public V getValue() {
            return this.value;
        }
    }

    class a implements com.google.common.base.f {
        a() {
        }

        @Override // com.google.common.base.f
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Map apply(Map map) {
            return Collections.unmodifiableMap(map);
        }
    }

    static abstract class b implements c4.a {
        b() {
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof c4.a)) {
                return false;
            }
            c4.a aVar = (c4.a) obj;
            return com.google.common.base.j.a(getRowKey(), aVar.getRowKey()) && com.google.common.base.j.a(getColumnKey(), aVar.getColumnKey()) && com.google.common.base.j.a(getValue(), aVar.getValue());
        }

        public int hashCode() {
            return com.google.common.base.j.b(getRowKey(), getColumnKey(), getValue());
        }

        public String toString() {
            return "(" + getRowKey() + "," + getColumnKey() + ")=" + getValue();
        }
    }

    static boolean a(c4 c4Var, Object obj) {
        if (obj == c4Var) {
            return true;
        }
        if (obj instanceof c4) {
            return c4Var.cellSet().equals(((c4) obj).cellSet());
        }
        return false;
    }

    public static c4.a b(Object obj, Object obj2, Object obj3) {
        return new ImmutableCell(obj, obj2, obj3);
    }
}
