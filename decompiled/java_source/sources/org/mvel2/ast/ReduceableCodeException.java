package org.mvel2.ast;

/* JADX INFO: loaded from: classes7.dex */
public class ReduceableCodeException extends RuntimeException {
    private Object literal;

    public ReduceableCodeException(Object obj) {
        this.literal = obj;
    }

    public Object getLiteral() {
        return this.literal;
    }
}
