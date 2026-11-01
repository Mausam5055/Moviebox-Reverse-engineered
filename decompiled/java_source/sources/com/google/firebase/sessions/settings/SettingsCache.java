package com.google.firebase.sessions.settings;

import android.util.Log;
import androidx.datastore.core.f;
import androidx.datastore.preferences.core.PreferencesKt;
import androidx.datastore.preferences.core.e;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.j;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes4.dex */
public final class SettingsCache {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final a f32714c = new a(null);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final androidx.datastore.preferences.core.c.a f32715d = e.a("firebase_sessions_enabled");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final androidx.datastore.preferences.core.c.a f32716e = e.c("firebase_sessions_sampling_rate");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final androidx.datastore.preferences.core.c.a f32717f = e.e("firebase_sessions_restart_timeout");

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final androidx.datastore.preferences.core.c.a f32718g = e.e("firebase_sessions_cache_duration");

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final androidx.datastore.preferences.core.c.a f32719h = e.f("firebase_sessions_cache_updated_time");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final f f32720a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private c f32721b;

    /* JADX INFO: renamed from: com.google.firebase.sessions.settings.SettingsCache$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {1, 8, 0})
    @DebugMetadata(c = "com.google.firebase.sessions.settings.SettingsCache$1", f = "SettingsCache.kt", l = {46}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        Object L$0;
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return SettingsCache.this.new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            SettingsCache settingsCache;
            Object objF = IntrinsicsKt.f();
            int i11 = this.label;
            if (i11 == 0) {
                ResultKt.b(obj);
                SettingsCache settingsCache2 = SettingsCache.this;
                kotlinx.coroutines.flow.b data = settingsCache2.f32720a.getData();
                this.L$0 = settingsCache2;
                this.label = 1;
                Object objP = kotlinx.coroutines.flow.d.p(data, this);
                if (objP == objF) {
                    return objF;
                }
                settingsCache = settingsCache2;
                obj = objP;
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                settingsCache = (SettingsCache) this.L$0;
                ResultKt.b(obj);
            }
            settingsCache.l(((androidx.datastore.preferences.core.c) obj).d());
            return Unit.f67061a;
        }
    }

    private static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public SettingsCache(f dataStore) {
        Intrinsics.h(dataStore, "dataStore");
        this.f32720a = dataStore;
        j.b(null, new AnonymousClass1(null), 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object h(androidx.datastore.preferences.core.c.a aVar, Object obj, Continuation continuation) throws Throwable {
        SettingsCache$updateConfigValue$1 settingsCache$updateConfigValue$1;
        if (continuation instanceof SettingsCache$updateConfigValue$1) {
            settingsCache$updateConfigValue$1 = (SettingsCache$updateConfigValue$1) continuation;
            int i11 = settingsCache$updateConfigValue$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                settingsCache$updateConfigValue$1.label = i11 - Integer.MIN_VALUE;
            } else {
                settingsCache$updateConfigValue$1 = new SettingsCache$updateConfigValue$1(this, continuation);
            }
        } else {
            settingsCache$updateConfigValue$1 = new SettingsCache$updateConfigValue$1(this, continuation);
        }
        Object obj2 = settingsCache$updateConfigValue$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = settingsCache$updateConfigValue$1.label;
        try {
            if (i12 == 0) {
                ResultKt.b(obj2);
                f fVar = this.f32720a;
                SettingsCache$updateConfigValue$2 settingsCache$updateConfigValue$2 = new SettingsCache$updateConfigValue$2(obj, aVar, this, null);
                settingsCache$updateConfigValue$1.label = 1;
                if (PreferencesKt.a(fVar, settingsCache$updateConfigValue$2, settingsCache$updateConfigValue$1) == objF) {
                    return objF;
                }
            } else {
                if (i12 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj2);
            }
        } catch (IOException e11) {
            Log.w("SettingsCache", "Failed to update cache config value: " + e11);
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void l(androidx.datastore.preferences.core.c cVar) {
        this.f32721b = new c((Boolean) cVar.b(f32715d), (Double) cVar.b(f32716e), (Integer) cVar.b(f32717f), (Integer) cVar.b(f32718g), (Long) cVar.b(f32719h));
    }

    public final boolean d() {
        c cVar = this.f32721b;
        c cVar2 = null;
        if (cVar == null) {
            Intrinsics.z("sessionConfigs");
            cVar = null;
        }
        Long lB = cVar.b();
        c cVar3 = this.f32721b;
        if (cVar3 == null) {
            Intrinsics.z("sessionConfigs");
        } else {
            cVar2 = cVar3;
        }
        Integer numA = cVar2.a();
        return lB == null || numA == null || (System.currentTimeMillis() - lB.longValue()) / ((long) 1000) >= ((long) numA.intValue());
    }

    public final Integer e() {
        c cVar = this.f32721b;
        if (cVar == null) {
            Intrinsics.z("sessionConfigs");
            cVar = null;
        }
        return cVar.d();
    }

    public final Double f() {
        c cVar = this.f32721b;
        if (cVar == null) {
            Intrinsics.z("sessionConfigs");
            cVar = null;
        }
        return cVar.e();
    }

    public final Boolean g() {
        c cVar = this.f32721b;
        if (cVar == null) {
            Intrinsics.z("sessionConfigs");
            cVar = null;
        }
        return cVar.c();
    }

    public final Object i(Double d11, Continuation continuation) throws Throwable {
        Object objH = h(f32716e, d11, continuation);
        return objH == IntrinsicsKt.f() ? objH : Unit.f67061a;
    }

    public final Object j(Integer num, Continuation continuation) throws Throwable {
        Object objH = h(f32718g, num, continuation);
        return objH == IntrinsicsKt.f() ? objH : Unit.f67061a;
    }

    public final Object k(Long l11, Continuation continuation) throws Throwable {
        Object objH = h(f32719h, l11, continuation);
        return objH == IntrinsicsKt.f() ? objH : Unit.f67061a;
    }

    public final Object m(Integer num, Continuation continuation) throws Throwable {
        Object objH = h(f32717f, num, continuation);
        return objH == IntrinsicsKt.f() ? objH : Unit.f67061a;
    }

    public final Object n(Boolean bool, Continuation continuation) throws Throwable {
        Object objH = h(f32715d, bool, continuation);
        return objH == IntrinsicsKt.f() ? objH : Unit.f67061a;
    }
}
