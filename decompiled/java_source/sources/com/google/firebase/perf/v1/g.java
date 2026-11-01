package com.google.firebase.perf.v1;

import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.b1;

/* JADX INFO: loaded from: classes4.dex */
public final class g extends GeneratedMessageLite implements wc.a {
    public static final int APPLICATION_INFO_FIELD_NUMBER = 1;
    private static final g DEFAULT_INSTANCE;
    public static final int GAUGE_METRIC_FIELD_NUMBER = 4;
    public static final int NETWORK_REQUEST_METRIC_FIELD_NUMBER = 3;
    private static volatile b1 PARSER = null;
    public static final int TRACE_METRIC_FIELD_NUMBER = 2;
    public static final int TRANSPORT_INFO_FIELD_NUMBER = 5;
    private c applicationInfo_;
    private int bitField0_;
    private f gaugeMetric_;
    private NetworkRequestMetric networkRequestMetric_;
    private i traceMetric_;
    private TransportInfo transportInfo_;

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f32399a;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f32399a = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f32399a[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f32399a[GeneratedMessageLite.MethodToInvoke.BUILD_MESSAGE_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f32399a[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f32399a[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f32399a[GeneratedMessageLite.MethodToInvoke.GET_MEMOIZED_IS_INITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f32399a[GeneratedMessageLite.MethodToInvoke.SET_MEMOIZED_IS_INITIALIZED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    public static final class b extends GeneratedMessageLite.b implements wc.a {
        private b() {
            super(g.DEFAULT_INSTANCE);
        }

        /* synthetic */ b(a aVar) {
            this();
        }

        @Override // wc.a
        public boolean a() {
            return ((g) this.instance).a();
        }

        @Override // wc.a
        public boolean b() {
            return ((g) this.instance).b();
        }

        @Override // wc.a
        public NetworkRequestMetric c() {
            return ((g) this.instance).c();
        }

        public b d(c.b bVar) {
            copyOnWrite();
            ((g) this.instance).o((c) bVar.build());
            return this;
        }

        @Override // wc.a
        public boolean e() {
            return ((g) this.instance).e();
        }

        @Override // wc.a
        public i f() {
            return ((g) this.instance).f();
        }

        @Override // wc.a
        public f g() {
            return ((g) this.instance).g();
        }

        public b i(f fVar) {
            copyOnWrite();
            ((g) this.instance).p(fVar);
            return this;
        }

        public b j(NetworkRequestMetric networkRequestMetric) {
            copyOnWrite();
            ((g) this.instance).q(networkRequestMetric);
            return this;
        }

        public b k(i iVar) {
            copyOnWrite();
            ((g) this.instance).r(iVar);
            return this;
        }
    }

    static {
        g gVar = new g();
        DEFAULT_INSTANCE = gVar;
        GeneratedMessageLite.registerDefaultInstance(g.class, gVar);
    }

    private g() {
    }

    public static b n() {
        return (b) DEFAULT_INSTANCE.createBuilder();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o(c cVar) {
        cVar.getClass();
        this.applicationInfo_ = cVar;
        this.bitField0_ |= 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p(f fVar) {
        fVar.getClass();
        this.gaugeMetric_ = fVar;
        this.bitField0_ |= 8;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q(NetworkRequestMetric networkRequestMetric) {
        networkRequestMetric.getClass();
        this.networkRequestMetric_ = networkRequestMetric;
        this.bitField0_ |= 4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void r(i iVar) {
        iVar.getClass();
        this.traceMetric_ = iVar;
        this.bitField0_ |= 2;
    }

    @Override // wc.a
    public boolean a() {
        return (this.bitField0_ & 8) != 0;
    }

    @Override // wc.a
    public boolean b() {
        return (this.bitField0_ & 4) != 0;
    }

    @Override // wc.a
    public NetworkRequestMetric c() {
        NetworkRequestMetric networkRequestMetric = this.networkRequestMetric_;
        return networkRequestMetric == null ? NetworkRequestMetric.y() : networkRequestMetric;
    }

    @Override // com.google.protobuf.GeneratedMessageLite
    protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        a aVar = null;
        switch (a.f32399a[methodToInvoke.ordinal()]) {
            case 1:
                return new g();
            case 2:
                return new b(aVar);
            case 3:
                return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001ဉ\u0000\u0002ဉ\u0001\u0003ဉ\u0002\u0004ဉ\u0003\u0005ဉ\u0004", new Object[]{"bitField0_", "applicationInfo_", "traceMetric_", "networkRequestMetric_", "gaugeMetric_", "transportInfo_"});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                b1 cVar = PARSER;
                if (cVar == null) {
                    synchronized (g.class) {
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

    @Override // wc.a
    public boolean e() {
        return (this.bitField0_ & 2) != 0;
    }

    @Override // wc.a
    public i f() {
        i iVar = this.traceMetric_;
        return iVar == null ? i.A() : iVar;
    }

    @Override // wc.a
    public f g() {
        f fVar = this.gaugeMetric_;
        return fVar == null ? f.r() : fVar;
    }

    public c l() {
        c cVar = this.applicationInfo_;
        return cVar == null ? c.n() : cVar;
    }

    public boolean m() {
        return (this.bitField0_ & 1) != 0;
    }
}
