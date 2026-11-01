package com.google.firebase.sessions;

import android.content.Context;
import androidx.annotation.Keep;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.sessions.settings.SessionsSettings;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.i0;

/* JADX INFO: loaded from: classes4.dex */
@Keep
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0006\b\u0001\u0018\u0000 \n2\u00020\u0001:\u0001\u000bB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J=\u0010\b\u001a0\u0012,\u0012*\u0012\u000e\b\u0001\u0012\n \u0007*\u0004\u0018\u00010\u00060\u0006 \u0007*\u0014\u0012\u000e\b\u0001\u0012\n \u0007*\u0004\u0018\u00010\u00060\u0006\u0018\u00010\u00050\u00050\u0004H\u0016¢\u0006\u0004\b\b\u0010\t¨\u0006\f"}, d2 = {"Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;", "Lcom/google/firebase/components/ComponentRegistrar;", "<init>", "()V", "", "Lmb/c;", "", "kotlin.jvm.PlatformType", "getComponents", "()Ljava/util/List;", "Companion", "a", "com.google.firebase-firebase-sessions"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class FirebaseSessionsRegistrar implements ComponentRegistrar {
    private static final a Companion = new a(null);
    private static final String LIBRARY_NAME = "fire-sessions";
    private static final mb.b0 backgroundDispatcher;
    private static final mb.b0 blockingDispatcher;
    private static final mb.b0 firebaseApp;
    private static final mb.b0 firebaseInstallationsApi;
    private static final mb.b0 sessionLifecycleServiceBinder;
    private static final mb.b0 sessionsSettings;
    private static final mb.b0 transportFactory;

    private static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        mb.b0 b0VarB = mb.b0.b(com.google.firebase.f.class);
        Intrinsics.g(b0VarB, "unqualified(FirebaseApp::class.java)");
        firebaseApp = b0VarB;
        mb.b0 b0VarB2 = mb.b0.b(jc.e.class);
        Intrinsics.g(b0VarB2, "unqualified(FirebaseInstallationsApi::class.java)");
        firebaseInstallationsApi = b0VarB2;
        mb.b0 b0VarA = mb.b0.a(lb.a.class, i0.class);
        Intrinsics.g(b0VarA, "qualified(Background::cl…neDispatcher::class.java)");
        backgroundDispatcher = b0VarA;
        mb.b0 b0VarA2 = mb.b0.a(lb.b.class, i0.class);
        Intrinsics.g(b0VarA2, "qualified(Blocking::clas…neDispatcher::class.java)");
        blockingDispatcher = b0VarA2;
        mb.b0 b0VarB3 = mb.b0.b(r8.i.class);
        Intrinsics.g(b0VarB3, "unqualified(TransportFactory::class.java)");
        transportFactory = b0VarB3;
        mb.b0 b0VarB4 = mb.b0.b(SessionsSettings.class);
        Intrinsics.g(b0VarB4, "unqualified(SessionsSettings::class.java)");
        sessionsSettings = b0VarB4;
        mb.b0 b0VarB5 = mb.b0.b(y.class);
        Intrinsics.g(b0VarB5, "unqualified(SessionLifec…erviceBinder::class.java)");
        sessionLifecycleServiceBinder = b0VarB5;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final FirebaseSessions getComponents$lambda$0(mb.e eVar) {
        Object objC = eVar.c(firebaseApp);
        Intrinsics.g(objC, "container[firebaseApp]");
        Object objC2 = eVar.c(sessionsSettings);
        Intrinsics.g(objC2, "container[sessionsSettings]");
        Object objC3 = eVar.c(backgroundDispatcher);
        Intrinsics.g(objC3, "container[backgroundDispatcher]");
        Object objC4 = eVar.c(sessionLifecycleServiceBinder);
        Intrinsics.g(objC4, "container[sessionLifecycleServiceBinder]");
        return new FirebaseSessions((com.google.firebase.f) objC, (SessionsSettings) objC2, (CoroutineContext) objC3, (y) objC4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final SessionGenerator getComponents$lambda$1(mb.e eVar) {
        return new SessionGenerator(c0.f32679a, null, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final w getComponents$lambda$2(mb.e eVar) {
        Object objC = eVar.c(firebaseApp);
        Intrinsics.g(objC, "container[firebaseApp]");
        com.google.firebase.f fVar = (com.google.firebase.f) objC;
        Object objC2 = eVar.c(firebaseInstallationsApi);
        Intrinsics.g(objC2, "container[firebaseInstallationsApi]");
        jc.e eVar2 = (jc.e) objC2;
        Object objC3 = eVar.c(sessionsSettings);
        Intrinsics.g(objC3, "container[sessionsSettings]");
        SessionsSettings sessionsSettings2 = (SessionsSettings) objC3;
        ic.b bVarG = eVar.g(transportFactory);
        Intrinsics.g(bVarG, "container.getProvider(transportFactory)");
        f fVar2 = new f(bVarG);
        Object objC4 = eVar.c(backgroundDispatcher);
        Intrinsics.g(objC4, "container[backgroundDispatcher]");
        return new SessionFirelogPublisherImpl(fVar, eVar2, sessionsSettings2, fVar2, (CoroutineContext) objC4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final SessionsSettings getComponents$lambda$3(mb.e eVar) {
        Object objC = eVar.c(firebaseApp);
        Intrinsics.g(objC, "container[firebaseApp]");
        Object objC2 = eVar.c(blockingDispatcher);
        Intrinsics.g(objC2, "container[blockingDispatcher]");
        Object objC3 = eVar.c(backgroundDispatcher);
        Intrinsics.g(objC3, "container[backgroundDispatcher]");
        Object objC4 = eVar.c(firebaseInstallationsApi);
        Intrinsics.g(objC4, "container[firebaseInstallationsApi]");
        return new SessionsSettings((com.google.firebase.f) objC, (CoroutineContext) objC2, (CoroutineContext) objC3, (jc.e) objC4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final s getComponents$lambda$4(mb.e eVar) {
        Context contextK = ((com.google.firebase.f) eVar.c(firebaseApp)).k();
        Intrinsics.g(contextK, "container[firebaseApp].applicationContext");
        Object objC = eVar.c(backgroundDispatcher);
        Intrinsics.g(objC, "container[backgroundDispatcher]");
        return new SessionDatastoreImpl(contextK, (CoroutineContext) objC);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final y getComponents$lambda$5(mb.e eVar) {
        Object objC = eVar.c(firebaseApp);
        Intrinsics.g(objC, "container[firebaseApp]");
        return new z((com.google.firebase.f) objC);
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    public List<mb.c> getComponents() {
        mb.c.b bVarH = mb.c.c(FirebaseSessions.class).h(LIBRARY_NAME);
        mb.b0 b0Var = firebaseApp;
        mb.c.b bVarB = bVarH.b(mb.r.l(b0Var));
        mb.b0 b0Var2 = sessionsSettings;
        mb.c.b bVarB2 = bVarB.b(mb.r.l(b0Var2));
        mb.b0 b0Var3 = backgroundDispatcher;
        mb.c cVarD = bVarB2.b(mb.r.l(b0Var3)).b(mb.r.l(sessionLifecycleServiceBinder)).f(new mb.h() { // from class: com.google.firebase.sessions.j
            @Override // mb.h
            public final Object a(mb.e eVar) {
                return FirebaseSessionsRegistrar.getComponents$lambda$0(eVar);
            }
        }).e().d();
        mb.c cVarD2 = mb.c.c(SessionGenerator.class).h("session-generator").f(new mb.h() { // from class: com.google.firebase.sessions.k
            @Override // mb.h
            public final Object a(mb.e eVar) {
                return FirebaseSessionsRegistrar.getComponents$lambda$1(eVar);
            }
        }).d();
        mb.c.b bVarB3 = mb.c.c(w.class).h("session-publisher").b(mb.r.l(b0Var));
        mb.b0 b0Var4 = firebaseInstallationsApi;
        return CollectionsKt.o(cVarD, cVarD2, bVarB3.b(mb.r.l(b0Var4)).b(mb.r.l(b0Var2)).b(mb.r.n(transportFactory)).b(mb.r.l(b0Var3)).f(new mb.h() { // from class: com.google.firebase.sessions.l
            @Override // mb.h
            public final Object a(mb.e eVar) {
                return FirebaseSessionsRegistrar.getComponents$lambda$2(eVar);
            }
        }).d(), mb.c.c(SessionsSettings.class).h("sessions-settings").b(mb.r.l(b0Var)).b(mb.r.l(blockingDispatcher)).b(mb.r.l(b0Var3)).b(mb.r.l(b0Var4)).f(new mb.h() { // from class: com.google.firebase.sessions.m
            @Override // mb.h
            public final Object a(mb.e eVar) {
                return FirebaseSessionsRegistrar.getComponents$lambda$3(eVar);
            }
        }).d(), mb.c.c(s.class).h("sessions-datastore").b(mb.r.l(b0Var)).b(mb.r.l(b0Var3)).f(new mb.h() { // from class: com.google.firebase.sessions.n
            @Override // mb.h
            public final Object a(mb.e eVar) {
                return FirebaseSessionsRegistrar.getComponents$lambda$4(eVar);
            }
        }).d(), mb.c.c(y.class).h("sessions-service-binder").b(mb.r.l(b0Var)).f(new mb.h() { // from class: com.google.firebase.sessions.o
            @Override // mb.h
            public final Object a(mb.e eVar) {
                return FirebaseSessionsRegistrar.getComponents$lambda$5(eVar);
            }
        }).d(), xc.h.b(LIBRARY_NAME, "2.0.7"));
    }
}
