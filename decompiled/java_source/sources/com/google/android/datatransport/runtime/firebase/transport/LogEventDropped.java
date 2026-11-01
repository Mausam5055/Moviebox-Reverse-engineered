package com.google.android.datatransport.runtime.firebase.transport;

/* JADX INFO: loaded from: classes3.dex */
public final class LogEventDropped {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final LogEventDropped f24404c = new a().a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f24405a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Reason f24406b;

    public enum Reason implements ec.a {
        REASON_UNKNOWN(0),
        MESSAGE_TOO_OLD(1),
        CACHE_FULL(2),
        PAYLOAD_TOO_BIG(3),
        MAX_RETRIES_REACHED(4),
        INVALID_PAYLOD(5),
        SERVER_ERROR(6);

        private final int number_;

        Reason(int i11) {
            this.number_ = i11;
        }

        @Override // ec.a
        public int getNumber() {
            return this.number_;
        }
    }

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private long f24407a = 0;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Reason f24408b = Reason.REASON_UNKNOWN;

        a() {
        }

        public LogEventDropped a() {
            return new LogEventDropped(this.f24407a, this.f24408b);
        }

        public a b(long j11) {
            this.f24407a = j11;
            return this;
        }

        public a c(Reason reason) {
            this.f24408b = reason;
            return this;
        }
    }

    LogEventDropped(long j11, Reason reason) {
        this.f24405a = j11;
        this.f24406b = reason;
    }

    public static a c() {
        return new a();
    }

    public long a() {
        return this.f24405a;
    }

    public Reason b() {
        return this.f24406b;
    }
}
