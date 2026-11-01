package com.google.firebase.sessions;

import android.content.Context;
import android.util.Log;
import androidx.datastore.core.CorruptionException;
import androidx.datastore.preferences.PreferenceDataStoreDelegateKt;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference2Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.properties.ReadOnlyProperty;
import kotlin.reflect.KProperty;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.o0;

/* JADX INFO: loaded from: classes4.dex */
public final class SessionDatastoreImpl implements s {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final a f32581f = new a(null);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final ReadOnlyProperty f32582g = PreferenceDataStoreDelegateKt.b(r.f32692a.a(), new j1.b(new Function1<CorruptionException, androidx.datastore.preferences.core.c>() { // from class: com.google.firebase.sessions.SessionDatastoreImpl$Companion$dataStore$2
        @Override // kotlin.jvm.functions.Function1
        public final androidx.datastore.preferences.core.c invoke(CorruptionException ex2) {
            Intrinsics.h(ex2, "ex");
            Log.w("FirebaseSessionsRepo", "CorruptionException in sessions DataStore in " + q.f32691a.e() + '.', ex2);
            return androidx.datastore.preferences.core.d.a();
        }
    }), null, null, 12, null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Context f32583b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final CoroutineContext f32584c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final AtomicReference f32585d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final kotlinx.coroutines.flow.b f32586e;

    /* JADX INFO: renamed from: com.google.firebase.sessions.SessionDatastoreImpl$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {1, 8, 0})
    @DebugMetadata(c = "com.google.firebase.sessions.SessionDatastoreImpl$1", f = "SessionDatastore.kt", l = {TmcConstants.NOTIFY_ADDHOME_GUIDE_BOTTOM_SHOW}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        int label;

        /* JADX INFO: renamed from: com.google.firebase.sessions.SessionDatastoreImpl$1$a */
        static final class a implements kotlinx.coroutines.flow.c {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ SessionDatastoreImpl f32587a;

            a(SessionDatastoreImpl sessionDatastoreImpl) {
                this.f32587a = sessionDatastoreImpl;
            }

            @Override // kotlinx.coroutines.flow.c
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public final Object emit(i iVar, Continuation continuation) {
                this.f32587a.f32585d.set(iVar);
                return Unit.f67061a;
            }
        }

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return SessionDatastoreImpl.this.new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object objF = IntrinsicsKt.f();
            int i11 = this.label;
            if (i11 == 0) {
                ResultKt.b(obj);
                kotlinx.coroutines.flow.b bVar = SessionDatastoreImpl.this.f32586e;
                a aVar = new a(SessionDatastoreImpl.this);
                this.label = 1;
                if (bVar.a(aVar, this) == objF) {
                    return objF;
                }
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            return Unit.f67061a;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ KProperty[] f32588a = {Reflection.j(new PropertyReference2Impl(a.class, "dataStore", "getDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;", 0))};

        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final androidx.datastore.core.f b(Context context) {
            return (androidx.datastore.core.f) SessionDatastoreImpl.f32582g.a(context, f32588a[0]);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final b f32589a = new b();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final androidx.datastore.preferences.core.c.a f32590b = androidx.datastore.preferences.core.e.g("session_id");

        private b() {
        }

        public final androidx.datastore.preferences.core.c.a a() {
            return f32590b;
        }
    }

    public SessionDatastoreImpl(Context context, CoroutineContext backgroundDispatcher) {
        Intrinsics.h(context, "context");
        Intrinsics.h(backgroundDispatcher, "backgroundDispatcher");
        this.f32583b = context;
        this.f32584c = backgroundDispatcher;
        this.f32585d = new AtomicReference();
        final kotlinx.coroutines.flow.b bVarF = kotlinx.coroutines.flow.d.f(f32581f.b(context).getData(), new SessionDatastoreImpl$firebaseSessionDataFlow$1(null));
        this.f32586e = new kotlinx.coroutines.flow.b() { // from class: com.google.firebase.sessions.SessionDatastoreImpl$special$$inlined$map$1

            /* JADX INFO: renamed from: com.google.firebase.sessions.SessionDatastoreImpl$special$$inlined$map$1$2, reason: invalid class name */
            public static final class AnonymousClass2 implements kotlinx.coroutines.flow.c {

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                final /* synthetic */ kotlinx.coroutines.flow.c f32593a;

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                final /* synthetic */ SessionDatastoreImpl f32594b;

                /* JADX INFO: renamed from: com.google.firebase.sessions.SessionDatastoreImpl$special$$inlined$map$1$2$1, reason: invalid class name */
                @Metadata(k = 3, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
                @DebugMetadata(c = "com.google.firebase.sessions.SessionDatastoreImpl$special$$inlined$map$1$2", f = "SessionDatastore.kt", l = {Sdk$SDKError.Reason.STALE_CACHED_RESPONSE_VALUE}, m = "emit")
                @SourceDebugExtension
                public static final class AnonymousClass1 extends ContinuationImpl {
                    Object L$0;
                    int label;
                    /* synthetic */ Object result;

                    public AnonymousClass1(Continuation continuation) {
                        super(continuation);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) {
                        this.result = obj;
                        this.label |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, this);
                    }
                }

                public AnonymousClass2(kotlinx.coroutines.flow.c cVar, SessionDatastoreImpl sessionDatastoreImpl) {
                    this.f32593a = cVar;
                    this.f32594b = sessionDatastoreImpl;
                }

                /* JADX WARN: Code duplicated, block: B:7:0x0013  */
                @Override // kotlinx.coroutines.flow.c
                public final Object emit(Object obj, Continuation continuation) throws Throwable {
                    AnonymousClass1 anonymousClass1;
                    if (continuation instanceof AnonymousClass1) {
                        anonymousClass1 = (AnonymousClass1) continuation;
                        int i11 = anonymousClass1.label;
                        if ((i11 & Integer.MIN_VALUE) != 0) {
                            anonymousClass1.label = i11 - Integer.MIN_VALUE;
                        } else {
                            anonymousClass1 = new AnonymousClass1(continuation);
                        }
                    } else {
                        anonymousClass1 = new AnonymousClass1(continuation);
                    }
                    Object obj2 = anonymousClass1.result;
                    Object objF = IntrinsicsKt.f();
                    int i12 = anonymousClass1.label;
                    if (i12 == 0) {
                        ResultKt.b(obj2);
                        kotlinx.coroutines.flow.c cVar = this.f32593a;
                        i iVarI = this.f32594b.i((androidx.datastore.preferences.core.c) obj);
                        anonymousClass1.label = 1;
                        if (cVar.emit(iVarI, anonymousClass1) == objF) {
                            return objF;
                        }
                    } else {
                        if (i12 != 1) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        ResultKt.b(obj2);
                    }
                    return Unit.f67061a;
                }
            }

            @Override // kotlinx.coroutines.flow.b
            public Object a(kotlinx.coroutines.flow.c cVar, Continuation continuation) {
                Object objA = bVarF.a(new AnonymousClass2(cVar, this), continuation);
                return objA == IntrinsicsKt.f() ? objA : Unit.f67061a;
            }
        };
        kotlinx.coroutines.k.d(o0.a(backgroundDispatcher), null, null, new AnonymousClass1(null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final i i(androidx.datastore.preferences.core.c cVar) {
        return new i((String) cVar.b(b.f32589a.a()));
    }

    @Override // com.google.firebase.sessions.s
    public String a() {
        i iVar = (i) this.f32585d.get();
        if (iVar != null) {
            return iVar.a();
        }
        return null;
    }

    @Override // com.google.firebase.sessions.s
    public void b(String sessionId) {
        Intrinsics.h(sessionId, "sessionId");
        kotlinx.coroutines.k.d(o0.a(this.f32584c), null, null, new SessionDatastoreImpl$updateSessionId$1(this, sessionId, null), 3, null);
    }
}
