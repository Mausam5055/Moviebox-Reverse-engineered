package com.google.firebase.messaging.reporting;

/* JADX INFO: loaded from: classes4.dex */
public final class MessagingClientEvent {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final MessagingClientEvent f32126p = new a().a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f32127a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f32128b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f32129c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final MessageType f32130d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final SDKPlatform f32131e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f32132f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final String f32133g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final int f32134h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final int f32135i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final String f32136j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final long f32137k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final Event f32138l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final String f32139m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final long f32140n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final String f32141o;

    public enum Event implements ec.a {
        UNKNOWN_EVENT(0),
        MESSAGE_DELIVERED(1),
        MESSAGE_OPEN(2);

        private final int number_;

        Event(int i11) {
            this.number_ = i11;
        }

        @Override // ec.a
        public int getNumber() {
            return this.number_;
        }
    }

    public enum MessageType implements ec.a {
        UNKNOWN(0),
        DATA_MESSAGE(1),
        TOPIC(2),
        DISPLAY_NOTIFICATION(3);

        private final int number_;

        MessageType(int i11) {
            this.number_ = i11;
        }

        @Override // ec.a
        public int getNumber() {
            return this.number_;
        }
    }

    public enum SDKPlatform implements ec.a {
        UNKNOWN_OS(0),
        ANDROID(1),
        IOS(2),
        WEB(3);

        private final int number_;

        SDKPlatform(int i11) {
            this.number_ = i11;
        }

        @Override // ec.a
        public int getNumber() {
            return this.number_;
        }
    }

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private long f32142a = 0;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f32143b = "";

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private String f32144c = "";

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private MessageType f32145d = MessageType.UNKNOWN;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private SDKPlatform f32146e = SDKPlatform.UNKNOWN_OS;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private String f32147f = "";

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private String f32148g = "";

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private int f32149h = 0;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private int f32150i = 0;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private String f32151j = "";

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private long f32152k = 0;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private Event f32153l = Event.UNKNOWN_EVENT;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private String f32154m = "";

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private long f32155n = 0;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private String f32156o = "";

        a() {
        }

        public MessagingClientEvent a() {
            return new MessagingClientEvent(this.f32142a, this.f32143b, this.f32144c, this.f32145d, this.f32146e, this.f32147f, this.f32148g, this.f32149h, this.f32150i, this.f32151j, this.f32152k, this.f32153l, this.f32154m, this.f32155n, this.f32156o);
        }

        public a b(String str) {
            this.f32154m = str;
            return this;
        }

        public a c(String str) {
            this.f32148g = str;
            return this;
        }

        public a d(String str) {
            this.f32156o = str;
            return this;
        }

        public a e(Event event) {
            this.f32153l = event;
            return this;
        }

        public a f(String str) {
            this.f32144c = str;
            return this;
        }

        public a g(String str) {
            this.f32143b = str;
            return this;
        }

        public a h(MessageType messageType) {
            this.f32145d = messageType;
            return this;
        }

        public a i(String str) {
            this.f32147f = str;
            return this;
        }

        public a j(int i11) {
            this.f32149h = i11;
            return this;
        }

        public a k(long j11) {
            this.f32142a = j11;
            return this;
        }

        public a l(SDKPlatform sDKPlatform) {
            this.f32146e = sDKPlatform;
            return this;
        }

        public a m(String str) {
            this.f32151j = str;
            return this;
        }

        public a n(int i11) {
            this.f32150i = i11;
            return this;
        }
    }

    MessagingClientEvent(long j11, String str, String str2, MessageType messageType, SDKPlatform sDKPlatform, String str3, String str4, int i11, int i12, String str5, long j12, Event event, String str6, long j13, String str7) {
        this.f32127a = j11;
        this.f32128b = str;
        this.f32129c = str2;
        this.f32130d = messageType;
        this.f32131e = sDKPlatform;
        this.f32132f = str3;
        this.f32133g = str4;
        this.f32134h = i11;
        this.f32135i = i12;
        this.f32136j = str5;
        this.f32137k = j12;
        this.f32138l = event;
        this.f32139m = str6;
        this.f32140n = j13;
        this.f32141o = str7;
    }

    public static a p() {
        return new a();
    }

    public String a() {
        return this.f32139m;
    }

    public long b() {
        return this.f32137k;
    }

    public long c() {
        return this.f32140n;
    }

    public String d() {
        return this.f32133g;
    }

    public String e() {
        return this.f32141o;
    }

    public Event f() {
        return this.f32138l;
    }

    public String g() {
        return this.f32129c;
    }

    public String h() {
        return this.f32128b;
    }

    public MessageType i() {
        return this.f32130d;
    }

    public String j() {
        return this.f32132f;
    }

    public int k() {
        return this.f32134h;
    }

    public long l() {
        return this.f32127a;
    }

    public SDKPlatform m() {
        return this.f32131e;
    }

    public String n() {
        return this.f32136j;
    }

    public int o() {
        return this.f32135i;
    }
}
