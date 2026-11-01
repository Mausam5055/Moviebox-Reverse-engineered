package com.google.api;

import com.google.protobuf.y;

/* JADX INFO: loaded from: classes4.dex */
public enum ChangeType implements y.c {
    CHANGE_TYPE_UNSPECIFIED(0),
    ADDED(1),
    REMOVED(2),
    MODIFIED(3),
    UNRECOGNIZED(-1);

    public static final int ADDED_VALUE = 1;
    public static final int CHANGE_TYPE_UNSPECIFIED_VALUE = 0;
    public static final int MODIFIED_VALUE = 3;
    public static final int REMOVED_VALUE = 2;
    private static final y.d internalValueMap = new y.d() { // from class: com.google.api.ChangeType.a
        @Override // com.google.protobuf.y.d
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public ChangeType findValueByNumber(int i11) {
            return ChangeType.forNumber(i11);
        }
    };
    private final int value;

    private static final class b implements y.e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final y.e f30193a = new b();

        private b() {
        }

        @Override // com.google.protobuf.y.e
        public boolean isInRange(int i11) {
            return ChangeType.forNumber(i11) != null;
        }
    }

    ChangeType(int i11) {
        this.value = i11;
    }

    public static ChangeType forNumber(int i11) {
        if (i11 == 0) {
            return CHANGE_TYPE_UNSPECIFIED;
        }
        if (i11 == 1) {
            return ADDED;
        }
        if (i11 == 2) {
            return REMOVED;
        }
        if (i11 != 3) {
            return null;
        }
        return MODIFIED;
    }

    public static y.d internalGetValueMap() {
        return internalValueMap;
    }

    public static y.e internalGetVerifier() {
        return b.f30193a;
    }

    @Deprecated
    public static ChangeType valueOf(int i11) {
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
