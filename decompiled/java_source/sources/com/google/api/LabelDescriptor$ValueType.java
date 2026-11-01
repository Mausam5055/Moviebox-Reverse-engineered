package com.google.api;

import com.google.protobuf.y;

/* JADX INFO: loaded from: classes4.dex */
public enum LabelDescriptor$ValueType implements y.c {
    STRING(0),
    BOOL(1),
    INT64(2),
    UNRECOGNIZED(-1);

    public static final int BOOL_VALUE = 1;
    public static final int INT64_VALUE = 2;
    public static final int STRING_VALUE = 0;
    private static final y.d internalValueMap = new y.d() { // from class: com.google.api.LabelDescriptor$ValueType.a
        @Override // com.google.protobuf.y.d
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public LabelDescriptor$ValueType findValueByNumber(int i11) {
            return LabelDescriptor$ValueType.forNumber(i11);
        }
    };
    private final int value;

    private static final class b implements y.e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final y.e f30195a = new b();

        private b() {
        }

        @Override // com.google.protobuf.y.e
        public boolean isInRange(int i11) {
            return LabelDescriptor$ValueType.forNumber(i11) != null;
        }
    }

    LabelDescriptor$ValueType(int i11) {
        this.value = i11;
    }

    public static LabelDescriptor$ValueType forNumber(int i11) {
        if (i11 == 0) {
            return STRING;
        }
        if (i11 == 1) {
            return BOOL;
        }
        if (i11 != 2) {
            return null;
        }
        return INT64;
    }

    public static y.d internalGetValueMap() {
        return internalValueMap;
    }

    public static y.e internalGetVerifier() {
        return b.f30195a;
    }

    @Deprecated
    public static LabelDescriptor$ValueType valueOf(int i11) {
        return forNumber(i11);
    }

    @Override // com.google.protobuf.y.c
    public final int getNumber() {
        if (this != UNRECOGNIZED) {
            return this.value;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }
}
