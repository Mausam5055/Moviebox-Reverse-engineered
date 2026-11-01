package com.google.firebase.sessions.settings;

import android.os.Build;
import android.util.Log;
import androidx.datastore.core.f;
import com.google.firebase.sessions.InstallationId;
import java.util.Arrays;
import java.util.Map;
import jc.e;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.Regex;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;
import kotlinx.coroutines.sync.g;

/* JADX INFO: loaded from: classes4.dex */
public final class RemoteSettings implements d {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final a f32698g = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final CoroutineContext f32699a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final e f32700b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.google.firebase.sessions.b f32701c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.google.firebase.sessions.settings.a f32702d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Lazy f32703e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final kotlinx.coroutines.sync.a f32704f;

    private static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public RemoteSettings(CoroutineContext backgroundDispatcher, e firebaseInstallationsApi, com.google.firebase.sessions.b appInfo, com.google.firebase.sessions.settings.a configsFetcher, final f dataStore) {
        Intrinsics.h(backgroundDispatcher, "backgroundDispatcher");
        Intrinsics.h(firebaseInstallationsApi, "firebaseInstallationsApi");
        Intrinsics.h(appInfo, "appInfo");
        Intrinsics.h(configsFetcher, "configsFetcher");
        Intrinsics.h(dataStore, "dataStore");
        this.f32699a = backgroundDispatcher;
        this.f32700b = firebaseInstallationsApi;
        this.f32701c = appInfo;
        this.f32702d = configsFetcher;
        this.f32703e = LazyKt.b(new Function0<SettingsCache>() { // from class: com.google.firebase.sessions.settings.RemoteSettings$settingsCache$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final SettingsCache invoke() {
                return new SettingsCache(dataStore);
            }
        });
        this.f32704f = g.b(false, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final SettingsCache f() {
        return (SettingsCache) this.f32703e.getValue();
    }

    private final String g(String str) {
        return new Regex("/").replace(str, "");
    }

    @Override // com.google.firebase.sessions.settings.d
    public Boolean a() {
        return f().g();
    }

    @Override // com.google.firebase.sessions.settings.d
    public Duration b() {
        Integer numE = f().e();
        if (numE == null) {
            return null;
        }
        Duration.Companion companion = Duration.INSTANCE;
        return Duration.g(DurationKt.s(numE.intValue(), DurationUnit.SECONDS));
    }

    @Override // com.google.firebase.sessions.settings.d
    public Double c() {
        return f().f();
    }

    /* JADX WARN: Code duplicated, block: B:46:0x00b9 A[Catch: all -> 0x0051, TRY_LEAVE, TryCatch #0 {all -> 0x0051, blocks: (B:21:0x004d, B:44:0x00ab, B:46:0x00b9, B:49:0x00c6, B:36:0x008a, B:38:0x0094, B:41:0x009a), top: B:58:0x0029 }] */
    /* JADX WARN: Code duplicated, block: B:49:0x00c6 A[Catch: all -> 0x0051, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x0051, blocks: (B:21:0x004d, B:44:0x00ab, B:46:0x00b9, B:49:0x00c6, B:36:0x008a, B:38:0x0094, B:41:0x009a), top: B:58:0x0029 }] */
    /* JADX WARN: Code duplicated, block: B:51:0x0149 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:52:0x014a  */
    /* JADX WARN: Code duplicated, block: B:7:0x001b  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v10, types: [kotlinx.coroutines.sync.a] */
    /* JADX WARN: Type inference failed for: r2v11 */
    /* JADX WARN: Type inference failed for: r2v2, types: [kotlinx.coroutines.sync.a] */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r2v7, types: [kotlinx.coroutines.sync.a] */
    /* JADX WARN: Type inference failed for: r8v0, types: [int] */
    @Override // com.google.firebase.sessions.settings.d
    public Object d(Continuation continuation) throws Throwable {
        RemoteSettings$updateSettings$1 remoteSettings$updateSettings$1;
        ?? r11;
        kotlinx.coroutines.sync.a aVar;
        RemoteSettings remoteSettings;
        String strB;
        Map mapL;
        com.google.firebase.sessions.settings.a aVar2;
        RemoteSettings$updateSettings$2$1 remoteSettings$updateSettings$2$1;
        RemoteSettings$updateSettings$2$2 remoteSettings$updateSettings$2$2;
        if (continuation instanceof RemoteSettings$updateSettings$1) {
            remoteSettings$updateSettings$1 = (RemoteSettings$updateSettings$1) continuation;
            int i11 = remoteSettings$updateSettings$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                remoteSettings$updateSettings$1.label = i11 - Integer.MIN_VALUE;
            } else {
                remoteSettings$updateSettings$1 = new RemoteSettings$updateSettings$1(this, continuation);
            }
        } else {
            remoteSettings$updateSettings$1 = new RemoteSettings$updateSettings$1(this, continuation);
        }
        Object objA = remoteSettings$updateSettings$1.result;
        Object objF = IntrinsicsKt.f();
        ?? r12 = remoteSettings$updateSettings$1.label;
        try {
            if (r12 == 0) {
                ResultKt.b(objA);
                if (!this.f32704f.d() && !f().d()) {
                    return Unit.f67061a;
                }
                kotlinx.coroutines.sync.a aVar3 = this.f32704f;
                remoteSettings$updateSettings$1.L$0 = this;
                remoteSettings$updateSettings$1.L$1 = aVar3;
                remoteSettings$updateSettings$1.label = 1;
                if (aVar3.h(null, remoteSettings$updateSettings$1) == objF) {
                    return objF;
                }
                aVar = aVar3;
                remoteSettings = this;
            } else {
                if (r12 != 1) {
                    if (r12 != 2) {
                        if (r12 != 3) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        r11 = (kotlinx.coroutines.sync.a) remoteSettings$updateSettings$1.L$0;
                        try {
                            ResultKt.b(objA);
                            r11 = r11;
                            Unit unit = Unit.f67061a;
                            r11.unlock(null);
                            return Unit.f67061a;
                        } catch (Throwable th2) {
                            th = th2;
                            r11.unlock(null);
                            throw th;
                        }
                    }
                    aVar = (kotlinx.coroutines.sync.a) remoteSettings$updateSettings$1.L$1;
                    remoteSettings = (RemoteSettings) remoteSettings$updateSettings$1.L$0;
                    ResultKt.b(objA);
                    strB = ((InstallationId) objA).b();
                    if (Intrinsics.c(strB, "")) {
                        Log.w("SessionConfigFetcher", "Error getting Firebase Installation ID. Skipping this Session Event.");
                        Unit unit2 = Unit.f67061a;
                        aVar.unlock(null);
                        return unit2;
                    }
                    Pair pairA = TuplesKt.a("X-Crashlytics-Installation-ID", strB);
                    StringCompanionObject stringCompanionObject = StringCompanionObject.f67289a;
                    String str = String.format("%s/%s", Arrays.copyOf(new Object[]{Build.MANUFACTURER, Build.MODEL}, 2));
                    Intrinsics.g(str, "format(format, *args)");
                    Pair pairA2 = TuplesKt.a("X-Crashlytics-Device-Model", remoteSettings.g(str));
                    String INCREMENTAL = Build.VERSION.INCREMENTAL;
                    Intrinsics.g(INCREMENTAL, "INCREMENTAL");
                    Pair pairA3 = TuplesKt.a("X-Crashlytics-OS-Build-Version", remoteSettings.g(INCREMENTAL));
                    String RELEASE = Build.VERSION.RELEASE;
                    Intrinsics.g(RELEASE, "RELEASE");
                    mapL = MapsKt.l(pairA, pairA2, pairA3, TuplesKt.a("X-Crashlytics-OS-Display-Version", remoteSettings.g(RELEASE)), TuplesKt.a("X-Crashlytics-API-Client-Version", remoteSettings.f32701c.f()));
                    aVar2 = remoteSettings.f32702d;
                    remoteSettings$updateSettings$2$1 = new RemoteSettings$updateSettings$2$1(remoteSettings, null);
                    remoteSettings$updateSettings$2$2 = new RemoteSettings$updateSettings$2$2(null);
                    remoteSettings$updateSettings$1.L$0 = aVar;
                    remoteSettings$updateSettings$1.L$1 = null;
                    remoteSettings$updateSettings$1.label = 3;
                    if (aVar2.a(mapL, remoteSettings$updateSettings$2$1, remoteSettings$updateSettings$2$2, remoteSettings$updateSettings$1) == objF) {
                        return objF;
                    }
                    r11 = aVar;
                    Unit unit3 = Unit.f67061a;
                    r11.unlock(null);
                    return Unit.f67061a;
                }
                aVar = (kotlinx.coroutines.sync.a) remoteSettings$updateSettings$1.L$1;
                remoteSettings = (RemoteSettings) remoteSettings$updateSettings$1.L$0;
                ResultKt.b(objA);
            }
            if (!remoteSettings.f().d()) {
                Unit unit4 = Unit.f67061a;
                aVar.unlock(null);
                return unit4;
            }
            InstallationId.Companion companion = InstallationId.f32578c;
            e eVar = remoteSettings.f32700b;
            remoteSettings$updateSettings$1.L$0 = remoteSettings;
            remoteSettings$updateSettings$1.L$1 = aVar;
            remoteSettings$updateSettings$1.label = 2;
            objA = companion.a(eVar, remoteSettings$updateSettings$1);
            if (objA == objF) {
                return objF;
            }
            strB = ((InstallationId) objA).b();
            if (Intrinsics.c(strB, "")) {
                Log.w("SessionConfigFetcher", "Error getting Firebase Installation ID. Skipping this Session Event.");
                Unit unit5 = Unit.f67061a;
                aVar.unlock(null);
                return unit5;
            }
            Pair pairA4 = TuplesKt.a("X-Crashlytics-Installation-ID", strB);
            StringCompanionObject stringCompanionObject2 = StringCompanionObject.f67289a;
            String str2 = String.format("%s/%s", Arrays.copyOf(new Object[]{Build.MANUFACTURER, Build.MODEL}, 2));
            Intrinsics.g(str2, "format(format, *args)");
            Pair pairA5 = TuplesKt.a("X-Crashlytics-Device-Model", remoteSettings.g(str2));
            String INCREMENTAL2 = Build.VERSION.INCREMENTAL;
            Intrinsics.g(INCREMENTAL2, "INCREMENTAL");
            Pair pairA6 = TuplesKt.a("X-Crashlytics-OS-Build-Version", remoteSettings.g(INCREMENTAL2));
            String RELEASE2 = Build.VERSION.RELEASE;
            Intrinsics.g(RELEASE2, "RELEASE");
            mapL = MapsKt.l(pairA4, pairA5, pairA6, TuplesKt.a("X-Crashlytics-OS-Display-Version", remoteSettings.g(RELEASE2)), TuplesKt.a("X-Crashlytics-API-Client-Version", remoteSettings.f32701c.f()));
            aVar2 = remoteSettings.f32702d;
            remoteSettings$updateSettings$2$1 = new RemoteSettings$updateSettings$2$1(remoteSettings, null);
            remoteSettings$updateSettings$2$2 = new RemoteSettings$updateSettings$2$2(null);
            remoteSettings$updateSettings$1.L$0 = aVar;
            remoteSettings$updateSettings$1.L$1 = null;
            remoteSettings$updateSettings$1.label = 3;
            if (aVar2.a(mapL, remoteSettings$updateSettings$2$1, remoteSettings$updateSettings$2$2, remoteSettings$updateSettings$1) == objF) {
                return objF;
            }
            r11 = aVar;
            Unit unit6 = Unit.f67061a;
            r11.unlock(null);
            return Unit.f67061a;
        } catch (Throwable th3) {
            th = th3;
            r11 = r12;
        }
    }
}
