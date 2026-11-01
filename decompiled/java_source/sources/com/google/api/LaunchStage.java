package com.google.api;

import com.google.protobuf.y;

/* JADX INFO: loaded from: classes4.dex */
public enum LaunchStage implements y.c {
    LAUNCH_STAGE_UNSPECIFIED(0),
    EARLY_ACCESS(1),
    ALPHA(2),
    BETA(3),
    GA(4),
    DEPRECATED(5),
    UNRECOGNIZED(-1);

    public static final int ALPHA_VALUE = 2;
    public static final int BETA_VALUE = 3;
    public static final int DEPRECATED_VALUE = 5;
    public static final int EARLY_ACCESS_VALUE = 1;
    public static final int GA_VALUE = 4;
    public static final int LAUNCH_STAGE_UNSPECIFIED_VALUE = 0;
    private static final y.d internalValueMap = new y.d() { // from class: com.google.api.LaunchStage.a
        @Override // com.google.protobuf.y.d
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public LaunchStage findValueByNumber(int i11) {
            return LaunchStage.forNumber(i11);
        }
    };
    private final int value;

    private static final class b implements y.e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final y.e f30196a = new b();

        private b() {
        }

        @Override // com.google.protobuf.y.e
        public boolean isInRange(int i11) {
            return LaunchStage.forNumber(i11) != null;
        }
    }

    LaunchStage(int i11) {
        this.value = i11;
    }

    public static LaunchStage forNumber(int i11) {
        if (i11 == 0) {
            return LAUNCH_STAGE_UNSPECIFIED;
        }
        if (i11 == 1) {
            return EARLY_ACCESS;
        }
        if (i11 == 2) {
            return ALPHA;
        }
        if (i11 == 3) {
            return BETA;
        }
        if (i11 == 4) {
            return GA;
        }
        if (i11 != 5) {
            return null;
        }
        return DEPRECATED;
    }

    public static y.d internalGetValueMap() {
        return internalValueMap;
    }

    public static y.e internalGetVerifier() {
        return b.f30196a;
    }

    @Deprecated
    public static LaunchStage valueOf(int i11) {
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
