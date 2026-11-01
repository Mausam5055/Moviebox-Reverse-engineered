package com.google.firebase.sessions.settings;

import android.net.Uri;
import java.net.URL;
import java.util.Map;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.i;

/* JADX INFO: loaded from: classes4.dex */
public final class RemoteSettingsFetcher implements com.google.firebase.sessions.settings.a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final a f32705d = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.google.firebase.sessions.b f32706a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final CoroutineContext f32707b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f32708c;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public RemoteSettingsFetcher(com.google.firebase.sessions.b appInfo, CoroutineContext blockingDispatcher, String baseUrl) {
        Intrinsics.h(appInfo, "appInfo");
        Intrinsics.h(blockingDispatcher, "blockingDispatcher");
        Intrinsics.h(baseUrl, "baseUrl");
        this.f32706a = appInfo;
        this.f32707b = blockingDispatcher;
        this.f32708c = baseUrl;
    }

    public /* synthetic */ RemoteSettingsFetcher(com.google.firebase.sessions.b bVar, CoroutineContext coroutineContext, String str, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(bVar, coroutineContext, (i11 & 4) != 0 ? "firebase-settings.crashlytics.com" : str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final URL c() {
        return new URL(new Uri.Builder().scheme("https").authority(this.f32708c).appendPath("spi").appendPath("v2").appendPath("platforms").appendPath("android").appendPath("gmp").appendPath(this.f32706a.b()).appendPath("settings").appendQueryParameter("build_version", this.f32706a.a().a()).appendQueryParameter("display_version", this.f32706a.a().f()).build().toString());
    }

    @Override // com.google.firebase.sessions.settings.a
    public Object a(Map map, Function2 function2, Function2 function3, Continuation continuation) {
        Object objG = i.g(this.f32707b, new RemoteSettingsFetcher$doConfigFetch$2(this, map, function2, function3, null), continuation);
        return objG == IntrinsicsKt.f() ? objG : Unit.f67061a;
    }
}
