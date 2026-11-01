package com.google.firebase.perf.v1;

import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.MapFieldLite;
import com.google.protobuf.WireFormat;
import com.google.protobuf.b1;
import com.google.protobuf.m0;
import com.google.protobuf.t0;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class c extends GeneratedMessageLite implements t0 {
    public static final int ANDROID_APP_INFO_FIELD_NUMBER = 3;
    public static final int APPLICATION_PROCESS_STATE_FIELD_NUMBER = 5;
    public static final int APP_INSTANCE_ID_FIELD_NUMBER = 2;
    public static final int CUSTOM_ATTRIBUTES_FIELD_NUMBER = 6;
    private static final c DEFAULT_INSTANCE;
    public static final int GOOGLE_APP_ID_FIELD_NUMBER = 1;
    private static volatile b1 PARSER;
    private com.google.firebase.perf.v1.a androidAppInfo_;
    private int applicationProcessState_;
    private int bitField0_;
    private MapFieldLite<String, String> customAttributes_ = MapFieldLite.emptyMapField();
    private String googleAppId_ = "";
    private String appInstanceId_ = "";

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f32394a;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f32394a = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f32394a[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f32394a[GeneratedMessageLite.MethodToInvoke.BUILD_MESSAGE_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f32394a[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f32394a[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f32394a[GeneratedMessageLite.MethodToInvoke.GET_MEMOIZED_IS_INITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f32394a[GeneratedMessageLite.MethodToInvoke.SET_MEMOIZED_IS_INITIALIZED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    public static final class b extends GeneratedMessageLite.b implements t0 {
        private b() {
            super(c.DEFAULT_INSTANCE);
        }

        /* synthetic */ b(a aVar) {
            this();
        }

        public boolean i() {
            return ((c) this.instance).q();
        }

        public b j(Map map) {
            copyOnWrite();
            ((c) this.instance).o().putAll(map);
            return this;
        }

        public b k(com.google.firebase.perf.v1.a.b bVar) {
            copyOnWrite();
            ((c) this.instance).v((com.google.firebase.perf.v1.a) bVar.build());
            return this;
        }

        public b l(String str) {
            copyOnWrite();
            ((c) this.instance).w(str);
            return this;
        }

        public b m(ApplicationProcessState applicationProcessState) {
            copyOnWrite();
            ((c) this.instance).x(applicationProcessState);
            return this;
        }

        public b n(String str) {
            copyOnWrite();
            ((c) this.instance).y(str);
            return this;
        }
    }

    /* JADX INFO: renamed from: com.google.firebase.perf.v1.c$c, reason: collision with other inner class name */
    private static final class C0449c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final m0 f32395a;

        static {
            WireFormat.FieldType fieldType = WireFormat.FieldType.STRING;
            f32395a = m0.newDefaultInstance(fieldType, "", fieldType, "");
        }
    }

    static {
        c cVar = new c();
        DEFAULT_INSTANCE = cVar;
        GeneratedMessageLite.registerDefaultInstance(c.class, cVar);
    }

    private c() {
    }

    public static c n() {
        return DEFAULT_INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Map o() {
        return t();
    }

    private MapFieldLite t() {
        if (!this.customAttributes_.isMutable()) {
            this.customAttributes_ = this.customAttributes_.mutableCopy();
        }
        return this.customAttributes_;
    }

    public static b u() {
        return (b) DEFAULT_INSTANCE.createBuilder();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void v(com.google.firebase.perf.v1.a aVar) {
        aVar.getClass();
        this.androidAppInfo_ = aVar;
        this.bitField0_ |= 4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w(String str) {
        str.getClass();
        this.bitField0_ |= 2;
        this.appInstanceId_ = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void x(ApplicationProcessState applicationProcessState) {
        this.applicationProcessState_ = applicationProcessState.getNumber();
        this.bitField0_ |= 8;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void y(String str) {
        str.getClass();
        this.bitField0_ |= 1;
        this.googleAppId_ = str;
    }

    @Override // com.google.protobuf.GeneratedMessageLite
    protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        a aVar = null;
        switch (a.f32394a[methodToInvoke.ordinal()]) {
            case 1:
                return new c();
            case 2:
                return new b(aVar);
            case 3:
                return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0001\u0005\u0000\u0001\u0001\u0006\u0005\u0001\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003ဉ\u0002\u0005᠌\u0003\u00062", new Object[]{"bitField0_", "googleAppId_", "appInstanceId_", "androidAppInfo_", "applicationProcessState_", ApplicationProcessState.internalGetVerifier(), "customAttributes_", C0449c.f32395a});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                b1 cVar = PARSER;
                if (cVar == null) {
                    synchronized (c.class) {
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

    public com.google.firebase.perf.v1.a m() {
        com.google.firebase.perf.v1.a aVar = this.androidAppInfo_;
        return aVar == null ? com.google.firebase.perf.v1.a.k() : aVar;
    }

    public boolean p() {
        return (this.bitField0_ & 4) != 0;
    }

    public boolean q() {
        return (this.bitField0_ & 2) != 0;
    }

    public boolean r() {
        return (this.bitField0_ & 8) != 0;
    }

    public boolean s() {
        return (this.bitField0_ & 1) != 0;
    }
}
