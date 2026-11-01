package com.google.firebase.sessions;

import android.app.Application;
import android.content.Context;
import android.util.Log;
import com.google.firebase.sessions.api.FirebaseSessionsDependencies;
import com.google.firebase.sessions.api.SessionSubscriber;
import com.google.firebase.sessions.settings.SessionsSettings;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.o0;

/* JADX INFO: loaded from: classes4.dex */
public final class FirebaseSessions {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final a f32575c = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.google.firebase.f f32576a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final SessionsSettings f32577b;

    /* JADX INFO: renamed from: com.google.firebase.sessions.FirebaseSessions$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {1, 8, 0})
    @DebugMetadata(c = "com.google.firebase.sessions.FirebaseSessions$1", f = "FirebaseSessions.kt", l = {45, Sdk$SDKMetric.SDKMetricType.AD_VALIDATION_TO_PRESENT_DURATION_MS_VALUE}, m = "invokeSuspend")
    @SourceDebugExtension
    static final class AnonymousClass1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        final /* synthetic */ CoroutineContext $backgroundDispatcher;
        final /* synthetic */ y $lifecycleServiceBinder;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(CoroutineContext coroutineContext, y yVar, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$backgroundDispatcher = coroutineContext;
            this.$lifecycleServiceBinder = yVar;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return FirebaseSessions.this.new AnonymousClass1(this.$backgroundDispatcher, this.$lifecycleServiceBinder, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
        }

        /* JADX WARN: Code duplicated, block: B:29:0x0074  */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object objF = IntrinsicsKt.f();
            int i11 = this.label;
            if (i11 != 0) {
                if (i11 == 1) {
                    ResultKt.b(obj);
                } else {
                    if (i11 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.b(obj);
                }
                if (FirebaseSessions.this.f32577b.d()) {
                    SessionLifecycleClient sessionLifecycleClient = new SessionLifecycleClient(this.$backgroundDispatcher);
                    sessionLifecycleClient.i(this.$lifecycleServiceBinder);
                    a0.f32629a.a(sessionLifecycleClient);
                    FirebaseSessions.this.f32576a.h(new com.google.firebase.g() { // from class: com.google.firebase.sessions.h
                    });
                }
                return Unit.f67061a;
            }
            ResultKt.b(obj);
            FirebaseSessionsDependencies firebaseSessionsDependencies = FirebaseSessionsDependencies.f32632a;
            this.label = 1;
            obj = firebaseSessionsDependencies.c(this);
            if (obj == objF) {
                return objF;
            }
            Collection collectionValues = ((Map) obj).values();
            if (!(collectionValues instanceof Collection) || !collectionValues.isEmpty()) {
                Iterator it = collectionValues.iterator();
                do {
                    if (it.hasNext()) {
                    }
                } while (!((SessionSubscriber) it.next()).a());
                SessionsSettings sessionsSettings = FirebaseSessions.this.f32577b;
                this.label = 2;
                if (sessionsSettings.g(this) == objF) {
                    return objF;
                }
                if (FirebaseSessions.this.f32577b.d()) {
                    SessionLifecycleClient sessionLifecycleClient2 = new SessionLifecycleClient(this.$backgroundDispatcher);
                    sessionLifecycleClient2.i(this.$lifecycleServiceBinder);
                    a0.f32629a.a(sessionLifecycleClient2);
                    FirebaseSessions.this.f32576a.h(new com.google.firebase.g() { // from class: com.google.firebase.sessions.h
                    });
                }
            }
            return Unit.f67061a;
        }
    }

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public FirebaseSessions(com.google.firebase.f firebaseApp, SessionsSettings settings, CoroutineContext backgroundDispatcher, y lifecycleServiceBinder) {
        Intrinsics.h(firebaseApp, "firebaseApp");
        Intrinsics.h(settings, "settings");
        Intrinsics.h(backgroundDispatcher, "backgroundDispatcher");
        Intrinsics.h(lifecycleServiceBinder, "lifecycleServiceBinder");
        this.f32576a = firebaseApp;
        this.f32577b = settings;
        Context applicationContext = firebaseApp.k().getApplicationContext();
        if (applicationContext instanceof Application) {
            ((Application) applicationContext).registerActivityLifecycleCallbacks(a0.f32629a);
            kotlinx.coroutines.k.d(o0.a(backgroundDispatcher), null, null, new AnonymousClass1(backgroundDispatcher, lifecycleServiceBinder, null), 3, null);
            return;
        }
        Log.e("FirebaseSessions", "Failed to register lifecycle callbacks, unexpected context " + applicationContext.getClass() + '.');
    }
}
