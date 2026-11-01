package com.google.api;

import com.google.protobuf.y;

/* JADX INFO: loaded from: classes4.dex */
public enum MetricDescriptor$MetricKind implements y.c {
    METRIC_KIND_UNSPECIFIED(0),
    GAUGE(1),
    DELTA(2),
    CUMULATIVE(3),
    UNRECOGNIZED(-1);

    public static final int CUMULATIVE_VALUE = 3;
    public static final int DELTA_VALUE = 2;
    public static final int GAUGE_VALUE = 1;
    public static final int METRIC_KIND_UNSPECIFIED_VALUE = 0;
    private static final y.d internalValueMap = new y.d() { // from class: com.google.api.MetricDescriptor$MetricKind.a
        @Override // com.google.protobuf.y.d
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public MetricDescriptor$MetricKind findValueByNumber(int i11) {
            return MetricDescriptor$MetricKind.forNumber(i11);
        }
    };
    private final int value;

    private static final class b implements y.e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final y.e f30197a = new b();

        private b() {
        }

        @Override // com.google.protobuf.y.e
        public boolean isInRange(int i11) {
            return MetricDescriptor$MetricKind.forNumber(i11) != null;
        }
    }

    MetricDescriptor$MetricKind(int i11) {
        this.value = i11;
    }

    public static MetricDescriptor$MetricKind forNumber(int i11) {
        if (i11 == 0) {
            return METRIC_KIND_UNSPECIFIED;
        }
        if (i11 == 1) {
            return GAUGE;
        }
        if (i11 == 2) {
            return DELTA;
        }
        if (i11 != 3) {
            return null;
        }
        return CUMULATIVE;
    }

    public static y.d internalGetValueMap() {
        return internalValueMap;
    }

    public static y.e internalGetVerifier() {
        return b.f30197a;
    }

    @Deprecated
    public static MetricDescriptor$MetricKind valueOf(int i11) {
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
