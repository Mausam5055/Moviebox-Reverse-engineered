package com.google.api;

import com.google.protobuf.y;

/* JADX INFO: loaded from: classes4.dex */
public enum BackendRule$PathTranslation implements y.c {
    PATH_TRANSLATION_UNSPECIFIED(0),
    CONSTANT_ADDRESS(1),
    APPEND_PATH_TO_ADDRESS(2),
    UNRECOGNIZED(-1);

    public static final int APPEND_PATH_TO_ADDRESS_VALUE = 2;
    public static final int CONSTANT_ADDRESS_VALUE = 1;
    public static final int PATH_TRANSLATION_UNSPECIFIED_VALUE = 0;
    private static final y.d internalValueMap = new y.d() { // from class: com.google.api.BackendRule$PathTranslation.a
        @Override // com.google.protobuf.y.d
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public BackendRule$PathTranslation findValueByNumber(int i11) {
            return BackendRule$PathTranslation.forNumber(i11);
        }
    };
    private final int value;

    private static final class b implements y.e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final y.e f30192a = new b();

        private b() {
        }

        @Override // com.google.protobuf.y.e
        public boolean isInRange(int i11) {
            return BackendRule$PathTranslation.forNumber(i11) != null;
        }
    }

    BackendRule$PathTranslation(int i11) {
        this.value = i11;
    }

    public static BackendRule$PathTranslation forNumber(int i11) {
        if (i11 == 0) {
            return PATH_TRANSLATION_UNSPECIFIED;
        }
        if (i11 == 1) {
            return CONSTANT_ADDRESS;
        }
        if (i11 != 2) {
            return null;
        }
        return APPEND_PATH_TO_ADDRESS;
    }

    public static y.d internalGetValueMap() {
        return internalValueMap;
    }

    public static y.e internalGetVerifier() {
        return b.f30192a;
    }

    @Deprecated
    public static BackendRule$PathTranslation valueOf(int i11) {
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
