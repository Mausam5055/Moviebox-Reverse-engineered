package com.google.api;

import com.google.protobuf.y;

/* JADX INFO: loaded from: classes4.dex */
public enum MetricDescriptor$ValueType implements y.c {
    VALUE_TYPE_UNSPECIFIED(0),
    BOOL(1),
    INT64(2),
    DOUBLE(3),
    STRING(4),
    DISTRIBUTION(5),
    MONEY(6),
    UNRECOGNIZED(-1);

    public static final int BOOL_VALUE = 1;
    public static final int DISTRIBUTION_VALUE = 5;
    public static final int DOUBLE_VALUE = 3;
    public static final int INT64_VALUE = 2;
    public static final int MONEY_VALUE = 6;
    public static final int STRING_VALUE = 4;
    public static final int VALUE_TYPE_UNSPECIFIED_VALUE = 0;
    private static final y.d internalValueMap = new y.d() { // from class: com.google.api.MetricDescriptor$ValueType.a
        @Override // com.google.protobuf.y.d
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public MetricDescriptor$ValueType findValueByNumber(int i11) {
            return MetricDescriptor$ValueType.forNumber(i11);
        }
    };
    private final int value;

    private static final class b implements y.e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final y.e f30198a = new b();

        private b() {
        }

        @Override // com.google.protobuf.y.e
        public boolean isInRange(int i11) {
            return MetricDescriptor$ValueType.forNumber(i11) != null;
        }
    }

    MetricDescriptor$ValueType(int i11) {
        this.value = i11;
    }

    public static MetricDescriptor$ValueType forNumber(int i11) {
        switch (i11) {
            case 0:
                return VALUE_TYPE_UNSPECIFIED;
            case 1:
                return BOOL;
            case 2:
                return INT64;
            case 3:
                return DOUBLE;
            case 4:
                return STRING;
            case 5:
                return DISTRIBUTION;
            case 6:
                return MONEY;
            default:
                return null;
        }
    }

    public static y.d internalGetValueMap() {
        return internalValueMap;
    }

    public static y.e internalGetVerifier() {
        return b.f30198a;
    }

    @Deprecated
    public static MetricDescriptor$ValueType valueOf(int i11) {
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
