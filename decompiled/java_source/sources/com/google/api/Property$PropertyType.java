package com.google.api;

import com.google.protobuf.y;

/* JADX INFO: loaded from: classes4.dex */
public enum Property$PropertyType implements y.c {
    UNSPECIFIED(0),
    INT64(1),
    BOOL(2),
    STRING(3),
    DOUBLE(4),
    UNRECOGNIZED(-1);

    public static final int BOOL_VALUE = 2;
    public static final int DOUBLE_VALUE = 4;
    public static final int INT64_VALUE = 1;
    public static final int STRING_VALUE = 3;
    public static final int UNSPECIFIED_VALUE = 0;
    private static final y.d internalValueMap = new y.d() { // from class: com.google.api.Property$PropertyType.a
        @Override // com.google.protobuf.y.d
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Property$PropertyType findValueByNumber(int i11) {
            return Property$PropertyType.forNumber(i11);
        }
    };
    private final int value;

    private static final class b implements y.e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final y.e f30199a = new b();

        private b() {
        }

        @Override // com.google.protobuf.y.e
        public boolean isInRange(int i11) {
            return Property$PropertyType.forNumber(i11) != null;
        }
    }

    Property$PropertyType(int i11) {
        this.value = i11;
    }

    public static Property$PropertyType forNumber(int i11) {
        if (i11 == 0) {
            return UNSPECIFIED;
        }
        if (i11 == 1) {
            return INT64;
        }
        if (i11 == 2) {
            return BOOL;
        }
        if (i11 == 3) {
            return STRING;
        }
        if (i11 != 4) {
            return null;
        }
        return DOUBLE;
    }

    public static y.d internalGetValueMap() {
        return internalValueMap;
    }

    public static y.e internalGetVerifier() {
        return b.f30199a;
    }

    @Deprecated
    public static Property$PropertyType valueOf(int i11) {
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
