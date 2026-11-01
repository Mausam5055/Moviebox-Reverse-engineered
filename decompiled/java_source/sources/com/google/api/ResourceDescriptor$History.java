package com.google.api;

import com.google.protobuf.y;

/* JADX INFO: loaded from: classes4.dex */
public enum ResourceDescriptor$History implements y.c {
    HISTORY_UNSPECIFIED(0),
    ORIGINALLY_SINGLE_PATTERN(1),
    FUTURE_MULTI_PATTERN(2),
    UNRECOGNIZED(-1);

    public static final int FUTURE_MULTI_PATTERN_VALUE = 2;
    public static final int HISTORY_UNSPECIFIED_VALUE = 0;
    public static final int ORIGINALLY_SINGLE_PATTERN_VALUE = 1;
    private static final y.d internalValueMap = new y.d() { // from class: com.google.api.ResourceDescriptor$History.a
        @Override // com.google.protobuf.y.d
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public ResourceDescriptor$History findValueByNumber(int i11) {
            return ResourceDescriptor$History.forNumber(i11);
        }
    };
    private final int value;

    private static final class b implements y.e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final y.e f30200a = new b();

        private b() {
        }

        @Override // com.google.protobuf.y.e
        public boolean isInRange(int i11) {
            return ResourceDescriptor$History.forNumber(i11) != null;
        }
    }

    ResourceDescriptor$History(int i11) {
        this.value = i11;
    }

    public static ResourceDescriptor$History forNumber(int i11) {
        if (i11 == 0) {
            return HISTORY_UNSPECIFIED;
        }
        if (i11 == 1) {
            return ORIGINALLY_SINGLE_PATTERN;
        }
        if (i11 != 2) {
            return null;
        }
        return FUTURE_MULTI_PATTERN;
    }

    public static y.d internalGetValueMap() {
        return internalValueMap;
    }

    public static y.e internalGetVerifier() {
        return b.f30200a;
    }

    @Deprecated
    public static ResourceDescriptor$History valueOf(int i11) {
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
