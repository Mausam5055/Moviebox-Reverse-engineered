package com.google.logging.type;

import com.google.protobuf.y;

/* JADX INFO: loaded from: classes4.dex */
public enum LogSeverity implements y.c {
    DEFAULT(0),
    DEBUG(100),
    INFO(200),
    NOTICE(300),
    WARNING(400),
    ERROR(500),
    CRITICAL(600),
    ALERT(ALERT_VALUE),
    EMERGENCY(EMERGENCY_VALUE),
    UNRECOGNIZED(-1);

    public static final int ALERT_VALUE = 700;
    public static final int CRITICAL_VALUE = 600;
    public static final int DEBUG_VALUE = 100;
    public static final int DEFAULT_VALUE = 0;
    public static final int EMERGENCY_VALUE = 800;
    public static final int ERROR_VALUE = 500;
    public static final int INFO_VALUE = 200;
    public static final int NOTICE_VALUE = 300;
    public static final int WARNING_VALUE = 400;
    private static final y.d internalValueMap = new y.d() { // from class: com.google.logging.type.LogSeverity.a
        @Override // com.google.protobuf.y.d
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public LogSeverity findValueByNumber(int i11) {
            return LogSeverity.forNumber(i11);
        }
    };
    private final int value;

    private static final class b implements y.e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final y.e f32750a = new b();

        private b() {
        }

        @Override // com.google.protobuf.y.e
        public boolean isInRange(int i11) {
            return LogSeverity.forNumber(i11) != null;
        }
    }

    LogSeverity(int i11) {
        this.value = i11;
    }

    public static LogSeverity forNumber(int i11) {
        if (i11 == 0) {
            return DEFAULT;
        }
        if (i11 == 100) {
            return DEBUG;
        }
        if (i11 == 200) {
            return INFO;
        }
        if (i11 == 300) {
            return NOTICE;
        }
        if (i11 == 400) {
            return WARNING;
        }
        if (i11 == 500) {
            return ERROR;
        }
        if (i11 == 600) {
            return CRITICAL;
        }
        if (i11 == 700) {
            return ALERT;
        }
        if (i11 != 800) {
            return null;
        }
        return EMERGENCY;
    }

    public static y.d internalGetValueMap() {
        return internalValueMap;
    }

    public static y.e internalGetVerifier() {
        return b.f32750a;
    }

    @Deprecated
    public static LogSeverity valueOf(int i11) {
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
