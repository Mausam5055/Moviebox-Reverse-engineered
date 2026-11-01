package com.bytedance.sdk.component.Sj;

/* JADX INFO: loaded from: classes2.dex */
public enum ib {
    PUBLIC,
    PROTECTED,
    PRIVATE;

    @Override // java.lang.Enum
    public String toString() {
        if (this == PRIVATE) {
            return "private";
        }
        return this == PROTECTED ? "protected" : "public";
    }
}
