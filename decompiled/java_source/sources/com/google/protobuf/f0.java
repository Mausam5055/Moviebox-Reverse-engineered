package com.google.protobuf;

import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public class f0 extends g0 {
    private final s0 defaultInstance;

    static class b implements Map.Entry {
        private Map.Entry<Object, f0> entry;

        private b(Map.Entry<Object, f0> entry) {
            this.entry = entry;
        }

        public f0 getField() {
            return this.entry.getValue();
        }

        @Override // java.util.Map.Entry
        public Object getKey() {
            return this.entry.getKey();
        }

        @Override // java.util.Map.Entry
        public Object getValue() {
            f0 value = this.entry.getValue();
            if (value == null) {
                return null;
            }
            return value.getValue();
        }

        @Override // java.util.Map.Entry
        public Object setValue(Object obj) {
            if (obj instanceof s0) {
                return this.entry.getValue().setValue((s0) obj);
            }
            throw new IllegalArgumentException("LazyField now only used for MessageSet, and the value of MessageSet must be an instance of MessageLite");
        }
    }

    static class c implements Iterator {
        private Iterator<Map.Entry<Object, Object>> iterator;

        public c(Iterator<Map.Entry<Object, Object>> it) {
            this.iterator = it;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.iterator.hasNext();
        }

        @Override // java.util.Iterator
        public Map.Entry<Object, Object> next() {
            Map.Entry<Object, Object> next = this.iterator.next();
            return next.getValue() instanceof f0 ? new b(next) : next;
        }

        @Override // java.util.Iterator
        public void remove() {
            this.iterator.remove();
        }
    }

    public f0(s0 s0Var, o oVar, ByteString byteString) {
        super(oVar, byteString);
        this.defaultInstance = s0Var;
    }

    @Override // com.google.protobuf.g0
    public boolean containsDefaultInstance() {
        return super.containsDefaultInstance() || this.value == this.defaultInstance;
    }

    @Override // com.google.protobuf.g0
    public boolean equals(Object obj) {
        return getValue().equals(obj);
    }

    public s0 getValue() {
        return getValue(this.defaultInstance);
    }

    @Override // com.google.protobuf.g0
    public int hashCode() {
        return getValue().hashCode();
    }

    public String toString() {
        return getValue().toString();
    }
}
