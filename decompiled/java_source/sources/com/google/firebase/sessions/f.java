package com.google.firebase.sessions;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;

/* JADX INFO: loaded from: classes4.dex */
public final class f implements g {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a f32684b = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ic.b f32685a;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public f(ic.b transportFactoryProvider) {
        Intrinsics.h(transportFactoryProvider, "transportFactoryProvider");
        this.f32685a = transportFactoryProvider;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final byte[] c(u uVar) {
        String strB = v.f32736a.c().b(uVar);
        Intrinsics.g(strB, "SessionEvents.SESSION_EVENT_ENCODER.encode(value)");
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Session Event Type: ");
        sb2.append(uVar.b().name());
        byte[] bytes = strB.getBytes(Charsets.UTF_8);
        Intrinsics.g(bytes, "this as java.lang.String).getBytes(charset)");
        return bytes;
    }

    @Override // com.google.firebase.sessions.g
    public void a(u sessionEvent) {
        Intrinsics.h(sessionEvent, "sessionEvent");
        ((r8.i) this.f32685a.get()).b("FIREBASE_APPQUALITY_SESSION", u.class, r8.c.b("json"), new r8.g() { // from class: com.google.firebase.sessions.e
            @Override // r8.g
            public final Object apply(Object obj) {
                return this.f32683a.c((u) obj);
            }
        }).b(r8.d.f(sessionEvent));
    }
}
