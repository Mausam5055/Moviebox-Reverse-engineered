package com.google.api;

/* JADX INFO: loaded from: classes4.dex */
public enum Distribution$BucketOptions$OptionsCase {
    LINEAR_BUCKETS(1),
    EXPONENTIAL_BUCKETS(2),
    EXPLICIT_BUCKETS(3),
    OPTIONS_NOT_SET(0);

    private final int value;

    Distribution$BucketOptions$OptionsCase(int i11) {
        this.value = i11;
    }

    public static Distribution$BucketOptions$OptionsCase forNumber(int i11) {
        if (i11 == 0) {
            return OPTIONS_NOT_SET;
        }
        if (i11 == 1) {
            return LINEAR_BUCKETS;
        }
        if (i11 == 2) {
            return EXPONENTIAL_BUCKETS;
        }
        if (i11 != 3) {
            return null;
        }
        return EXPLICIT_BUCKETS;
    }

    @Deprecated
    public static Distribution$BucketOptions$OptionsCase valueOf(int i11) {
        return forNumber(i11);
    }

    public int getNumber() {
        return this.value;
    }
}
