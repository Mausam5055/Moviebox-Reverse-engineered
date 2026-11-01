package com.google.firebase.sessions.settings;

import android.content.Context;
import android.util.Log;
import androidx.datastore.core.CorruptionException;
import androidx.datastore.core.f;
import androidx.datastore.preferences.PreferenceDataStoreDelegateKt;
import com.google.firebase.l;
import com.google.firebase.sessions.q;
import com.google.firebase.sessions.r;
import com.google.firebase.sessions.v;
import jc.e;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference2Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.properties.ReadOnlyProperty;
import kotlin.reflect.KProperty;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;

/* JADX INFO: loaded from: classes4.dex */
public final class SessionsSettings {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final a f32709c = new a(null);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final ReadOnlyProperty f32710d = PreferenceDataStoreDelegateKt.b(r.f32692a.b(), new j1.b(new Function1<CorruptionException, androidx.datastore.preferences.core.c>() { // from class: com.google.firebase.sessions.settings.SessionsSettings$Companion$dataStore$2
        @Override // kotlin.jvm.functions.Function1
        public final androidx.datastore.preferences.core.c invoke(CorruptionException ex2) {
            Intrinsics.h(ex2, "ex");
            Log.w("SessionsSettings", "CorruptionException in settings DataStore in " + q.f32691a.e() + '.', ex2);
            return androidx.datastore.preferences.core.d.a();
        }
    }), null, null, 12, null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final d f32711a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final d f32712b;

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ KProperty[] f32713a = {Reflection.j(new PropertyReference2Impl(a.class, "dataStore", "getDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;", 0))};

        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final f b(Context context) {
            return (f) SessionsSettings.f32710d.a(context, f32713a[0]);
        }

        public final SessionsSettings c() {
            Object objJ = l.a(com.google.firebase.c.f31069a).j(SessionsSettings.class);
            Intrinsics.g(objJ, "Firebase.app[SessionsSettings::class.java]");
            return (SessionsSettings) objJ;
        }
    }

    private SessionsSettings(Context context, CoroutineContext coroutineContext, CoroutineContext coroutineContext2, e eVar, com.google.firebase.sessions.b bVar) {
        this(new b(context), new RemoteSettings(coroutineContext2, eVar, bVar, new RemoteSettingsFetcher(bVar, coroutineContext, null, 4, null), f32709c.b(context)));
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public SessionsSettings(com.google.firebase.f firebaseApp, CoroutineContext blockingDispatcher, CoroutineContext backgroundDispatcher, e firebaseInstallationsApi) {
        Intrinsics.h(firebaseApp, "firebaseApp");
        Intrinsics.h(blockingDispatcher, "blockingDispatcher");
        Intrinsics.h(backgroundDispatcher, "backgroundDispatcher");
        Intrinsics.h(firebaseInstallationsApi, "firebaseInstallationsApi");
        Context contextK = firebaseApp.k();
        Intrinsics.g(contextK, "firebaseApp.applicationContext");
        this(contextK, blockingDispatcher, backgroundDispatcher, firebaseInstallationsApi, v.f32736a.b(firebaseApp));
    }

    public SessionsSettings(d localOverrideSettings, d remoteSettings) {
        Intrinsics.h(localOverrideSettings, "localOverrideSettings");
        Intrinsics.h(remoteSettings, "remoteSettings");
        this.f32711a = localOverrideSettings;
        this.f32712b = remoteSettings;
    }

    private final boolean e(double d11) {
        return 0.0d <= d11 && d11 <= 1.0d;
    }

    private final boolean f(long j11) {
        return Duration.E(j11) && Duration.z(j11);
    }

    public final double b() {
        Double dC = this.f32711a.c();
        if (dC != null) {
            double dDoubleValue = dC.doubleValue();
            if (e(dDoubleValue)) {
                return dDoubleValue;
            }
        }
        Double dC2 = this.f32712b.c();
        if (dC2 == null) {
            return 1.0d;
        }
        double dDoubleValue2 = dC2.doubleValue();
        if (e(dDoubleValue2)) {
            return dDoubleValue2;
        }
        return 1.0d;
    }

    public final long c() {
        Duration durationB = this.f32711a.b();
        if (durationB != null) {
            long rawValue = durationB.getRawValue();
            if (f(rawValue)) {
                return rawValue;
            }
        }
        Duration durationB2 = this.f32712b.b();
        if (durationB2 != null) {
            long rawValue2 = durationB2.getRawValue();
            if (f(rawValue2)) {
                return rawValue2;
            }
        }
        Duration.Companion companion = Duration.INSTANCE;
        return DurationKt.s(30, DurationUnit.MINUTES);
    }

    public final boolean d() {
        Boolean boolA = this.f32711a.a();
        if (boolA != null) {
            return boolA.booleanValue();
        }
        Boolean boolA2 = this.f32712b.a();
        if (boolA2 != null) {
            return boolA2.booleanValue();
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object g(Continuation continuation) throws Throwable {
        SessionsSettings$updateSettings$1 sessionsSettings$updateSettings$1;
        SessionsSettings sessionsSettings;
        if (continuation instanceof SessionsSettings$updateSettings$1) {
            sessionsSettings$updateSettings$1 = (SessionsSettings$updateSettings$1) continuation;
            int i11 = sessionsSettings$updateSettings$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                sessionsSettings$updateSettings$1.label = i11 - Integer.MIN_VALUE;
            } else {
                sessionsSettings$updateSettings$1 = new SessionsSettings$updateSettings$1(this, continuation);
            }
        } else {
            sessionsSettings$updateSettings$1 = new SessionsSettings$updateSettings$1(this, continuation);
        }
        Object obj = sessionsSettings$updateSettings$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = sessionsSettings$updateSettings$1.label;
        if (i12 != 0) {
            if (i12 == 1) {
                sessionsSettings = (SessionsSettings) sessionsSettings$updateSettings$1.L$0;
                ResultKt.b(obj);
            } else {
                if (i12 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            return Unit.f67061a;
        }
        ResultKt.b(obj);
        d dVar = this.f32711a;
        sessionsSettings$updateSettings$1.L$0 = this;
        sessionsSettings$updateSettings$1.label = 1;
        if (dVar.d(sessionsSettings$updateSettings$1) == objF) {
            return objF;
        }
        sessionsSettings = this;
        d dVar2 = sessionsSettings.f32712b;
        sessionsSettings$updateSettings$1.L$0 = null;
        sessionsSettings$updateSettings$1.label = 2;
        if (dVar2.d(sessionsSettings$updateSettings$1) == objF) {
            return objF;
        }
        return Unit.f67061a;
    }
}
