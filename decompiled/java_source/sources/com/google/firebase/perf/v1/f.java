package com.google.firebase.perf.v1;

import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.b1;
import com.google.protobuf.t0;
import com.google.protobuf.y;

/* JADX INFO: loaded from: classes4.dex */
public final class f extends GeneratedMessageLite implements t0 {
    public static final int ANDROID_MEMORY_READINGS_FIELD_NUMBER = 4;
    public static final int CPU_METRIC_READINGS_FIELD_NUMBER = 2;
    private static final f DEFAULT_INSTANCE;
    public static final int GAUGE_METADATA_FIELD_NUMBER = 3;
    private static volatile b1 PARSER = null;
    public static final int SESSION_ID_FIELD_NUMBER = 1;
    private int bitField0_;
    private e gaugeMetadata_;
    private String sessionId_ = "";
    private y.j cpuMetricReadings_ = GeneratedMessageLite.emptyProtobufList();
    private y.j androidMemoryReadings_ = GeneratedMessageLite.emptyProtobufList();

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f32398a;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f32398a = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f32398a[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f32398a[GeneratedMessageLite.MethodToInvoke.BUILD_MESSAGE_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f32398a[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f32398a[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f32398a[GeneratedMessageLite.MethodToInvoke.GET_MEMOIZED_IS_INITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f32398a[GeneratedMessageLite.MethodToInvoke.SET_MEMOIZED_IS_INITIALIZED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    public static final class b extends GeneratedMessageLite.b implements t0 {
        private b() {
            super(f.DEFAULT_INSTANCE);
        }

        /* synthetic */ b(a aVar) {
            this();
        }

        public b d(com.google.firebase.perf.v1.b bVar) {
            copyOnWrite();
            ((f) this.instance).l(bVar);
            return this;
        }

        public b i(d dVar) {
            copyOnWrite();
            ((f) this.instance).m(dVar);
            return this;
        }

        public b j(e eVar) {
            copyOnWrite();
            ((f) this.instance).w(eVar);
            return this;
        }

        public b k(String str) {
            copyOnWrite();
            ((f) this.instance).setSessionId(str);
            return this;
        }
    }

    static {
        f fVar = new f();
        DEFAULT_INSTANCE = fVar;
        GeneratedMessageLite.registerDefaultInstance(f.class, fVar);
    }

    private f() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(com.google.firebase.perf.v1.b bVar) {
        bVar.getClass();
        n();
        this.androidMemoryReadings_.add(bVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m(d dVar) {
        dVar.getClass();
        o();
        this.cpuMetricReadings_.add(dVar);
    }

    private void n() {
        y.j jVar = this.androidMemoryReadings_;
        if (jVar.isModifiable()) {
            return;
        }
        this.androidMemoryReadings_ = GeneratedMessageLite.mutableCopy(jVar);
    }

    private void o() {
        y.j jVar = this.cpuMetricReadings_;
        if (jVar.isModifiable()) {
            return;
        }
        this.cpuMetricReadings_ = GeneratedMessageLite.mutableCopy(jVar);
    }

    public static f r() {
        return DEFAULT_INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSessionId(String str) {
        str.getClass();
        this.bitField0_ |= 1;
        this.sessionId_ = str;
    }

    public static b v() {
        return (b) DEFAULT_INSTANCE.createBuilder();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w(e eVar) {
        eVar.getClass();
        this.gaugeMetadata_ = eVar;
        this.bitField0_ |= 2;
    }

    @Override // com.google.protobuf.GeneratedMessageLite
    protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        a aVar = null;
        switch (a.f32398a[methodToInvoke.ordinal()]) {
            case 1:
                return new f();
            case 2:
                return new b(aVar);
            case 3:
                return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0002\u0000\u0001ဈ\u0000\u0002\u001b\u0003ဉ\u0001\u0004\u001b", new Object[]{"bitField0_", "sessionId_", "cpuMetricReadings_", d.class, "gaugeMetadata_", "androidMemoryReadings_", com.google.firebase.perf.v1.b.class});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                b1 cVar = PARSER;
                if (cVar == null) {
                    synchronized (f.class) {
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

    public int p() {
        return this.androidMemoryReadings_.size();
    }

    public int q() {
        return this.cpuMetricReadings_.size();
    }

    public e s() {
        e eVar = this.gaugeMetadata_;
        return eVar == null ? e.k() : eVar;
    }

    public boolean t() {
        return (this.bitField0_ & 2) != 0;
    }

    public boolean u() {
        return (this.bitField0_ & 1) != 0;
    }
}
