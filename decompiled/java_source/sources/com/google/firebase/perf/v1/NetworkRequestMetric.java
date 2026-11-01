package com.google.firebase.perf.v1;

import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.MapFieldLite;
import com.google.protobuf.WireFormat;
import com.google.protobuf.b1;
import com.google.protobuf.m0;
import com.google.protobuf.t0;
import com.google.protobuf.y;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class NetworkRequestMetric extends GeneratedMessageLite implements t0 {
    public static final int CLIENT_START_TIME_US_FIELD_NUMBER = 7;
    public static final int CUSTOM_ATTRIBUTES_FIELD_NUMBER = 12;
    private static final NetworkRequestMetric DEFAULT_INSTANCE;
    public static final int HTTP_METHOD_FIELD_NUMBER = 2;
    public static final int HTTP_RESPONSE_CODE_FIELD_NUMBER = 5;
    public static final int NETWORK_CLIENT_ERROR_REASON_FIELD_NUMBER = 11;
    private static volatile b1 PARSER = null;
    public static final int PERF_SESSIONS_FIELD_NUMBER = 13;
    public static final int REQUEST_PAYLOAD_BYTES_FIELD_NUMBER = 3;
    public static final int RESPONSE_CONTENT_TYPE_FIELD_NUMBER = 6;
    public static final int RESPONSE_PAYLOAD_BYTES_FIELD_NUMBER = 4;
    public static final int TIME_TO_REQUEST_COMPLETED_US_FIELD_NUMBER = 8;
    public static final int TIME_TO_RESPONSE_COMPLETED_US_FIELD_NUMBER = 10;
    public static final int TIME_TO_RESPONSE_INITIATED_US_FIELD_NUMBER = 9;
    public static final int URL_FIELD_NUMBER = 1;
    private int bitField0_;
    private long clientStartTimeUs_;
    private int httpMethod_;
    private int httpResponseCode_;
    private int networkClientErrorReason_;
    private long requestPayloadBytes_;
    private long responsePayloadBytes_;
    private long timeToRequestCompletedUs_;
    private long timeToResponseCompletedUs_;
    private long timeToResponseInitiatedUs_;
    private MapFieldLite<String, String> customAttributes_ = MapFieldLite.emptyMapField();
    private String url_ = "";
    private String responseContentType_ = "";
    private y.j perfSessions_ = GeneratedMessageLite.emptyProtobufList();

    public enum HttpMethod implements y.c {
        HTTP_METHOD_UNKNOWN(0),
        GET(1),
        PUT(2),
        POST(3),
        DELETE(4),
        HEAD(5),
        PATCH(6),
        OPTIONS(7),
        TRACE(8),
        CONNECT(9);

        public static final int CONNECT_VALUE = 9;
        public static final int DELETE_VALUE = 4;
        public static final int GET_VALUE = 1;
        public static final int HEAD_VALUE = 5;
        public static final int HTTP_METHOD_UNKNOWN_VALUE = 0;
        public static final int OPTIONS_VALUE = 7;
        public static final int PATCH_VALUE = 6;
        public static final int POST_VALUE = 3;
        public static final int PUT_VALUE = 2;
        public static final int TRACE_VALUE = 8;
        private static final y.d internalValueMap = new a();
        private final int value;

        /* JADX INFO: loaded from: classes4.dex */
        class a implements y.d {
            a() {
            }

            @Override // com.google.protobuf.y.d
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public HttpMethod findValueByNumber(int i11) {
                return HttpMethod.forNumber(i11);
            }
        }

        /* JADX INFO: loaded from: classes4.dex */
        private static final class b implements y.e {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            static final y.e f32385a = new b();

            private b() {
            }

            @Override // com.google.protobuf.y.e
            public boolean isInRange(int i11) {
                return HttpMethod.forNumber(i11) != null;
            }
        }

        HttpMethod(int i11) {
            this.value = i11;
        }

        public static HttpMethod forNumber(int i11) {
            switch (i11) {
                case 0:
                    return HTTP_METHOD_UNKNOWN;
                case 1:
                    return GET;
                case 2:
                    return PUT;
                case 3:
                    return POST;
                case 4:
                    return DELETE;
                case 5:
                    return HEAD;
                case 6:
                    return PATCH;
                case 7:
                    return OPTIONS;
                case 8:
                    return TRACE;
                case 9:
                    return CONNECT;
                default:
                    return null;
            }
        }

        public static y.d internalGetValueMap() {
            return internalValueMap;
        }

        public static y.e internalGetVerifier() {
            return b.f32385a;
        }

        @Deprecated
        public static HttpMethod valueOf(int i11) {
            return forNumber(i11);
        }

        @Override // com.google.protobuf.y.c
        public final int getNumber() {
            return this.value;
        }
    }

    public enum NetworkClientErrorReason implements y.c {
        NETWORK_CLIENT_ERROR_REASON_UNKNOWN(0),
        GENERIC_CLIENT_ERROR(1);

        public static final int GENERIC_CLIENT_ERROR_VALUE = 1;
        public static final int NETWORK_CLIENT_ERROR_REASON_UNKNOWN_VALUE = 0;
        private static final y.d internalValueMap = new a();
        private final int value;

        /* JADX INFO: loaded from: classes4.dex */
        class a implements y.d {
            a() {
            }

            @Override // com.google.protobuf.y.d
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public NetworkClientErrorReason findValueByNumber(int i11) {
                return NetworkClientErrorReason.forNumber(i11);
            }
        }

        /* JADX INFO: loaded from: classes4.dex */
        private static final class b implements y.e {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            static final y.e f32386a = new b();

            private b() {
            }

            @Override // com.google.protobuf.y.e
            public boolean isInRange(int i11) {
                return NetworkClientErrorReason.forNumber(i11) != null;
            }
        }

        NetworkClientErrorReason(int i11) {
            this.value = i11;
        }

        public static NetworkClientErrorReason forNumber(int i11) {
            if (i11 == 0) {
                return NETWORK_CLIENT_ERROR_REASON_UNKNOWN;
            }
            if (i11 != 1) {
                return null;
            }
            return GENERIC_CLIENT_ERROR;
        }

        public static y.d internalGetValueMap() {
            return internalValueMap;
        }

        public static y.e internalGetVerifier() {
            return b.f32386a;
        }

        @Deprecated
        public static NetworkClientErrorReason valueOf(int i11) {
            return forNumber(i11);
        }

        @Override // com.google.protobuf.y.c
        public final int getNumber() {
            return this.value;
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f32387a;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f32387a = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f32387a[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f32387a[GeneratedMessageLite.MethodToInvoke.BUILD_MESSAGE_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f32387a[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f32387a[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f32387a[GeneratedMessageLite.MethodToInvoke.GET_MEMOIZED_IS_INITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f32387a[GeneratedMessageLite.MethodToInvoke.SET_MEMOIZED_IS_INITIALIZED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    public static final class b extends GeneratedMessageLite.b implements t0 {
        private b() {
            super(NetworkRequestMetric.DEFAULT_INSTANCE);
        }

        /* synthetic */ b(a aVar) {
            this();
        }

        public b d(Iterable iterable) {
            copyOnWrite();
            ((NetworkRequestMetric) this.instance).u(iterable);
            return this;
        }

        public b i() {
            copyOnWrite();
            ((NetworkRequestMetric) this.instance).v();
            return this;
        }

        public long j() {
            return ((NetworkRequestMetric) this.instance).H();
        }

        public boolean k() {
            return ((NetworkRequestMetric) this.instance).J();
        }

        public boolean l() {
            return ((NetworkRequestMetric) this.instance).L();
        }

        public boolean m() {
            return ((NetworkRequestMetric) this.instance).P();
        }

        public b n(long j11) {
            copyOnWrite();
            ((NetworkRequestMetric) this.instance).S(j11);
            return this;
        }

        public b o(HttpMethod httpMethod) {
            copyOnWrite();
            ((NetworkRequestMetric) this.instance).T(httpMethod);
            return this;
        }

        public b p(int i11) {
            copyOnWrite();
            ((NetworkRequestMetric) this.instance).U(i11);
            return this;
        }

        public b q(NetworkClientErrorReason networkClientErrorReason) {
            copyOnWrite();
            ((NetworkRequestMetric) this.instance).V(networkClientErrorReason);
            return this;
        }

        public b r(long j11) {
            copyOnWrite();
            ((NetworkRequestMetric) this.instance).W(j11);
            return this;
        }

        public b s(String str) {
            copyOnWrite();
            ((NetworkRequestMetric) this.instance).X(str);
            return this;
        }

        public b t(long j11) {
            copyOnWrite();
            ((NetworkRequestMetric) this.instance).Y(j11);
            return this;
        }

        public b u(long j11) {
            copyOnWrite();
            ((NetworkRequestMetric) this.instance).Z(j11);
            return this;
        }

        public b v(long j11) {
            copyOnWrite();
            ((NetworkRequestMetric) this.instance).a0(j11);
            return this;
        }

        public b w(long j11) {
            copyOnWrite();
            ((NetworkRequestMetric) this.instance).b0(j11);
            return this;
        }

        public b x(String str) {
            copyOnWrite();
            ((NetworkRequestMetric) this.instance).c0(str);
            return this;
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    private static final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final m0 f32388a;

        static {
            WireFormat.FieldType fieldType = WireFormat.FieldType.STRING;
            f32388a = m0.newDefaultInstance(fieldType, "", fieldType, "");
        }
    }

    static {
        NetworkRequestMetric networkRequestMetric = new NetworkRequestMetric();
        DEFAULT_INSTANCE = networkRequestMetric;
        GeneratedMessageLite.registerDefaultInstance(NetworkRequestMetric.class, networkRequestMetric);
    }

    private NetworkRequestMetric() {
    }

    public static b R() {
        return (b) DEFAULT_INSTANCE.createBuilder();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void S(long j11) {
        this.bitField0_ |= 128;
        this.clientStartTimeUs_ = j11;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void T(HttpMethod httpMethod) {
        this.httpMethod_ = httpMethod.getNumber();
        this.bitField0_ |= 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void U(int i11) {
        this.bitField0_ |= 32;
        this.httpResponseCode_ = i11;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void V(NetworkClientErrorReason networkClientErrorReason) {
        this.networkClientErrorReason_ = networkClientErrorReason.getNumber();
        this.bitField0_ |= 16;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void W(long j11) {
        this.bitField0_ |= 4;
        this.requestPayloadBytes_ = j11;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void X(String str) {
        str.getClass();
        this.bitField0_ |= 64;
        this.responseContentType_ = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Y(long j11) {
        this.bitField0_ |= 8;
        this.responsePayloadBytes_ = j11;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Z(long j11) {
        this.bitField0_ |= 256;
        this.timeToRequestCompletedUs_ = j11;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a0(long j11) {
        this.bitField0_ |= 1024;
        this.timeToResponseCompletedUs_ = j11;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b0(long j11) {
        this.bitField0_ |= 512;
        this.timeToResponseInitiatedUs_ = j11;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c0(String str) {
        str.getClass();
        this.bitField0_ |= 1;
        this.url_ = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u(Iterable iterable) {
        w();
        com.google.protobuf.a.addAll(iterable, (List) this.perfSessions_);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void v() {
        this.bitField0_ &= -65;
        this.responseContentType_ = y().D();
    }

    private void w() {
        y.j jVar = this.perfSessions_;
        if (jVar.isModifiable()) {
            return;
        }
        this.perfSessions_ = GeneratedMessageLite.mutableCopy(jVar);
    }

    public static NetworkRequestMetric y() {
        return DEFAULT_INSTANCE;
    }

    public int A() {
        return this.httpResponseCode_;
    }

    public List B() {
        return this.perfSessions_;
    }

    public long C() {
        return this.requestPayloadBytes_;
    }

    public String D() {
        return this.responseContentType_;
    }

    public long E() {
        return this.responsePayloadBytes_;
    }

    public long F() {
        return this.timeToRequestCompletedUs_;
    }

    public long G() {
        return this.timeToResponseCompletedUs_;
    }

    public long H() {
        return this.timeToResponseInitiatedUs_;
    }

    public String I() {
        return this.url_;
    }

    public boolean J() {
        return (this.bitField0_ & 128) != 0;
    }

    public boolean K() {
        return (this.bitField0_ & 2) != 0;
    }

    public boolean L() {
        return (this.bitField0_ & 32) != 0;
    }

    public boolean M() {
        return (this.bitField0_ & 4) != 0;
    }

    public boolean N() {
        return (this.bitField0_ & 8) != 0;
    }

    public boolean O() {
        return (this.bitField0_ & 256) != 0;
    }

    public boolean P() {
        return (this.bitField0_ & 1024) != 0;
    }

    public boolean Q() {
        return (this.bitField0_ & 512) != 0;
    }

    @Override // com.google.protobuf.GeneratedMessageLite
    protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        a aVar = null;
        switch (a.f32387a[methodToInvoke.ordinal()]) {
            case 1:
                return new NetworkRequestMetric();
            case 2:
                return new b(aVar);
            case 3:
                return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0001\r\u0000\u0001\u0001\r\r\u0001\u0001\u0000\u0001ဈ\u0000\u0002᠌\u0001\u0003ဂ\u0002\u0004ဂ\u0003\u0005င\u0005\u0006ဈ\u0006\u0007ဂ\u0007\bဂ\b\tဂ\t\nဂ\n\u000b᠌\u0004\f2\r\u001b", new Object[]{"bitField0_", "url_", "httpMethod_", HttpMethod.internalGetVerifier(), "requestPayloadBytes_", "responsePayloadBytes_", "httpResponseCode_", "responseContentType_", "clientStartTimeUs_", "timeToRequestCompletedUs_", "timeToResponseInitiatedUs_", "timeToResponseCompletedUs_", "networkClientErrorReason_", NetworkClientErrorReason.internalGetVerifier(), "customAttributes_", c.f32388a, "perfSessions_", h.class});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                b1 cVar = PARSER;
                if (cVar == null) {
                    synchronized (NetworkRequestMetric.class) {
                        try {
                            cVar = PARSER;
                            if (cVar == null) {
                                cVar = new GeneratedMessageLite.c(DEFAULT_INSTANCE);
                                PARSER = cVar;
                            }
                        } catch (Throwable th2) {
                            throw th2;
                        }
                        break;
                    }
                }
                return cVar;
            case 6:
                return (byte) 1;
            case 7:
                return null;
            default:
                throw new UnsupportedOperationException();
        }
    }

    public long x() {
        return this.clientStartTimeUs_;
    }

    public HttpMethod z() {
        HttpMethod httpMethodForNumber = HttpMethod.forNumber(this.httpMethod_);
        return httpMethodForNumber == null ? HttpMethod.HTTP_METHOD_UNKNOWN : httpMethodForNumber;
    }
}
