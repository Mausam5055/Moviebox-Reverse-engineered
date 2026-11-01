package com.google.firebase.sessions;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Locale;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes4.dex */
public final class SessionGenerator {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final a f32602f = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final b0 f32603a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Function0 f32604b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f32605c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f32606d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private t f32607e;

    /* JADX INFO: renamed from: com.google.firebase.sessions.SessionGenerator$1, reason: invalid class name */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    /* synthetic */ class AnonymousClass1 extends FunctionReferenceImpl implements Function0<UUID> {
        public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

        AnonymousClass1() {
            super(0, UUID.class, "randomUUID", "randomUUID()Ljava/util/UUID;", 0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final UUID invoke() {
            return UUID.randomUUID();
        }
    }

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final SessionGenerator a() {
            Object objJ = com.google.firebase.l.a(com.google.firebase.c.f31069a).j(SessionGenerator.class);
            Intrinsics.g(objJ, "Firebase.app[SessionGenerator::class.java]");
            return (SessionGenerator) objJ;
        }
    }

    public SessionGenerator(b0 timeProvider, Function0 uuidGenerator) {
        Intrinsics.h(timeProvider, "timeProvider");
        Intrinsics.h(uuidGenerator, "uuidGenerator");
        this.f32603a = timeProvider;
        this.f32604b = uuidGenerator;
        this.f32605c = b();
        this.f32606d = -1;
    }

    public /* synthetic */ SessionGenerator(b0 b0Var, Function0 function0, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(b0Var, (i11 & 2) != 0 ? AnonymousClass1.INSTANCE : function0);
    }

    private final String b() {
        String string = ((UUID) this.f32604b.invoke()).toString();
        Intrinsics.g(string, "uuidGenerator().toString()");
        String lowerCase = StringsKt.Q(string, "-", "", false, 4, null).toLowerCase(Locale.ROOT);
        Intrinsics.g(lowerCase, "this as java.lang.String).toLowerCase(Locale.ROOT)");
        return lowerCase;
    }

    public final t a() {
        int i11 = this.f32606d + 1;
        this.f32606d = i11;
        this.f32607e = new t(i11 == 0 ? this.f32605c : b(), this.f32605c, this.f32606d, this.f32603a.a());
        return c();
    }

    public final t c() {
        t tVar = this.f32607e;
        if (tVar != null) {
            return tVar;
        }
        Intrinsics.z("currentSession");
        return null;
    }
}
