package com.google.firebase.sessions;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import com.google.firebase.sessions.api.SessionSubscriber;
import com.google.firebase.sessions.settings.SessionsSettings;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class v {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final v f32736a = new v();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final bc.a f32737b;

    static {
        bc.a aVarI = new dc.d().j(c.f32643a).k(true).i();
        Intrinsics.g(aVarI, "JsonDataEncoderBuilder()…lues(true)\n      .build()");
        f32737b = aVarI;
    }

    private v() {
    }

    private final DataCollectionState d(SessionSubscriber sessionSubscriber) {
        if (sessionSubscriber == null) {
            return DataCollectionState.COLLECTION_SDK_NOT_INSTALLED;
        }
        return sessionSubscriber.a() ? DataCollectionState.COLLECTION_ENABLED : DataCollectionState.COLLECTION_DISABLED;
    }

    public final u a(com.google.firebase.f firebaseApp, t sessionDetails, SessionsSettings sessionsSettings, Map subscribers, String firebaseInstallationId, String firebaseAuthenticationToken) {
        Intrinsics.h(firebaseApp, "firebaseApp");
        Intrinsics.h(sessionDetails, "sessionDetails");
        Intrinsics.h(sessionsSettings, "sessionsSettings");
        Intrinsics.h(subscribers, "subscribers");
        Intrinsics.h(firebaseInstallationId, "firebaseInstallationId");
        Intrinsics.h(firebaseAuthenticationToken, "firebaseAuthenticationToken");
        return new u(EventType.SESSION_START, new x(sessionDetails.b(), sessionDetails.a(), sessionDetails.c(), sessionDetails.d(), new d(d((SessionSubscriber) subscribers.get(SessionSubscriber.Name.PERFORMANCE)), d((SessionSubscriber) subscribers.get(SessionSubscriber.Name.CRASHLYTICS)), sessionsSettings.b()), firebaseInstallationId, firebaseAuthenticationToken), b(firebaseApp));
    }

    public final b b(com.google.firebase.f firebaseApp) throws PackageManager.NameNotFoundException {
        Intrinsics.h(firebaseApp, "firebaseApp");
        Context contextK = firebaseApp.k();
        Intrinsics.g(contextK, "firebaseApp.applicationContext");
        String packageName = contextK.getPackageName();
        PackageInfo packageInfo = contextK.getPackageManager().getPackageInfo(packageName, 0);
        String strValueOf = Build.VERSION.SDK_INT >= 28 ? String.valueOf(packageInfo.getLongVersionCode()) : String.valueOf(packageInfo.versionCode);
        String strC = firebaseApp.n().c();
        Intrinsics.g(strC, "firebaseApp.options.applicationId");
        String MODEL = Build.MODEL;
        Intrinsics.g(MODEL, "MODEL");
        String RELEASE = Build.VERSION.RELEASE;
        Intrinsics.g(RELEASE, "RELEASE");
        LogEnvironment logEnvironment = LogEnvironment.LOG_ENVIRONMENT_PROD;
        Intrinsics.g(packageName, "packageName");
        String str = packageInfo.versionName;
        String str2 = str == null ? strValueOf : str;
        String MANUFACTURER = Build.MANUFACTURER;
        Intrinsics.g(MANUFACTURER, "MANUFACTURER");
        q qVar = q.f32691a;
        Context contextK2 = firebaseApp.k();
        Intrinsics.g(contextK2, "firebaseApp.applicationContext");
        p pVarD = qVar.d(contextK2);
        Context contextK3 = firebaseApp.k();
        Intrinsics.g(contextK3, "firebaseApp.applicationContext");
        return new b(strC, MODEL, "2.0.7", RELEASE, logEnvironment, new a(packageName, str2, strValueOf, MANUFACTURER, pVarD, qVar.c(contextK3)));
    }

    public final bc.a c() {
        return f32737b;
    }
}
