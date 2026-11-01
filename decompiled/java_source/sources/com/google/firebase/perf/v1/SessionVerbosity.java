package com.google.firebase.perf.v1;

import com.google.protobuf.y;

/* JADX INFO: loaded from: classes.dex */
public enum SessionVerbosity implements y.c {
    SESSION_VERBOSITY_NONE(0),
    GAUGES_AND_SYSTEM_EVENTS(1);

    public static final int GAUGES_AND_SYSTEM_EVENTS_VALUE = 1;
    public static final int SESSION_VERBOSITY_NONE_VALUE = 0;
    private static final y.d internalValueMap = new y.d() { // from class: com.google.firebase.perf.v1.SessionVerbosity.a
        @Override // com.google.protobuf.y.d
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public SessionVerbosity findValueByNumber(int i11) {
            return SessionVerbosity.forNumber(i11);
        }
    };
    private final int value;

    /* JADX INFO: loaded from: classes4.dex */
    private static final class b implements y.e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final y.e f32389a = new b();

        private b() {
        }

        @Override // com.google.protobuf.y.e
        public boolean isInRange(int i11) {
            return SessionVerbosity.forNumber(i11) != null;
        }
    }

    SessionVerbosity(int i11) {
        this.value = i11;
    }

    public static SessionVerbosity forNumber(int i11) {
        if (i11 == 0) {
            return SESSION_VERBOSITY_NONE;
        }
        if (i11 != 1) {
            return null;
        }
        return GAUGES_AND_SYSTEM_EVENTS;
    }

    public static y.d internalGetValueMap() {
        return internalValueMap;
    }

    public static y.e internalGetVerifier() {
        return b.f32389a;
    }

    @Deprecated
    public static SessionVerbosity valueOf(int i11) {
        return forNumber(i11);
    }

    @Override // com.google.protobuf.y.c
    public final int getNumber() {
        return this.value;
    }
}
