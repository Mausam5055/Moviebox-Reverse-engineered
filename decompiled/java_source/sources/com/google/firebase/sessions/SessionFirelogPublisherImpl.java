package com.google.firebase.sessions;

import android.util.Log;
import com.google.firebase.sessions.settings.SessionsSettings;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.o0;

/* JADX INFO: loaded from: classes4.dex */
public final class SessionFirelogPublisherImpl implements w {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final a f32595g = new a(null);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final double f32596h = Math.random();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.google.firebase.f f32597b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final jc.e f32598c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final SessionsSettings f32599d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final g f32600e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final CoroutineContext f32601f;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public SessionFirelogPublisherImpl(com.google.firebase.f firebaseApp, jc.e firebaseInstallations, SessionsSettings sessionSettings, g eventGDTLogger, CoroutineContext backgroundDispatcher) {
        Intrinsics.h(firebaseApp, "firebaseApp");
        Intrinsics.h(firebaseInstallations, "firebaseInstallations");
        Intrinsics.h(sessionSettings, "sessionSettings");
        Intrinsics.h(eventGDTLogger, "eventGDTLogger");
        Intrinsics.h(backgroundDispatcher, "backgroundDispatcher");
        this.f32597b = firebaseApp;
        this.f32598c = firebaseInstallations;
        this.f32599d = sessionSettings;
        this.f32600e = eventGDTLogger;
        this.f32601f = backgroundDispatcher;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void g(u uVar) {
        try {
            this.f32600e.a(uVar);
        } catch (RuntimeException e11) {
            Log.e("SessionFirelogPublisher", "Error logging Session Start event to DataTransport: ", e11);
        }
    }

    private final boolean h() {
        return f32596h <= this.f32599d.b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object i(Continuation continuation) throws Throwable {
        SessionFirelogPublisherImpl$shouldLogSession$1 sessionFirelogPublisherImpl$shouldLogSession$1;
        SessionFirelogPublisherImpl sessionFirelogPublisherImpl;
        if (continuation instanceof SessionFirelogPublisherImpl$shouldLogSession$1) {
            sessionFirelogPublisherImpl$shouldLogSession$1 = (SessionFirelogPublisherImpl$shouldLogSession$1) continuation;
            int i11 = sessionFirelogPublisherImpl$shouldLogSession$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                sessionFirelogPublisherImpl$shouldLogSession$1.label = i11 - Integer.MIN_VALUE;
            } else {
                sessionFirelogPublisherImpl$shouldLogSession$1 = new SessionFirelogPublisherImpl$shouldLogSession$1(this, continuation);
            }
        } else {
            sessionFirelogPublisherImpl$shouldLogSession$1 = new SessionFirelogPublisherImpl$shouldLogSession$1(this, continuation);
        }
        Object obj = sessionFirelogPublisherImpl$shouldLogSession$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = sessionFirelogPublisherImpl$shouldLogSession$1.label;
        if (i12 == 0) {
            ResultKt.b(obj);
            SessionsSettings sessionsSettings = this.f32599d;
            sessionFirelogPublisherImpl$shouldLogSession$1.L$0 = this;
            sessionFirelogPublisherImpl$shouldLogSession$1.label = 1;
            if (sessionsSettings.g(sessionFirelogPublisherImpl$shouldLogSession$1) == objF) {
                return objF;
            }
            sessionFirelogPublisherImpl = this;
        } else {
            if (i12 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            sessionFirelogPublisherImpl = (SessionFirelogPublisherImpl) sessionFirelogPublisherImpl$shouldLogSession$1.L$0;
            ResultKt.b(obj);
        }
        if (sessionFirelogPublisherImpl.f32599d.d() && sessionFirelogPublisherImpl.h()) {
            return Boxing.a(true);
        }
        return Boxing.a(false);
    }

    @Override // com.google.firebase.sessions.w
    public void a(t sessionDetails) {
        Intrinsics.h(sessionDetails, "sessionDetails");
        kotlinx.coroutines.k.d(o0.a(this.f32601f), null, null, new SessionFirelogPublisherImpl$logSession$1(this, sessionDetails, null), 3, null);
    }
}
