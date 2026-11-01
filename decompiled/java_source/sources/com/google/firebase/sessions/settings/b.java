package com.google.firebase.sessions.settings;

import android.content.Context;
import android.os.Bundle;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;

/* JADX INFO: loaded from: classes4.dex */
public final class b implements d {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final a f32722b = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Bundle f32723a;

    private static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public b(Context context) {
        Intrinsics.h(context, "context");
        Bundle bundle = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData;
        this.f32723a = bundle == null ? Bundle.EMPTY : bundle;
    }

    @Override // com.google.firebase.sessions.settings.d
    public Boolean a() {
        if (this.f32723a.containsKey("firebase_sessions_enabled")) {
            return Boolean.valueOf(this.f32723a.getBoolean("firebase_sessions_enabled"));
        }
        return null;
    }

    @Override // com.google.firebase.sessions.settings.d
    public Duration b() {
        if (this.f32723a.containsKey("firebase_sessions_sessions_restart_timeout")) {
            return Duration.g(DurationKt.s(this.f32723a.getInt("firebase_sessions_sessions_restart_timeout"), DurationUnit.SECONDS));
        }
        return null;
    }

    @Override // com.google.firebase.sessions.settings.d
    public Double c() {
        if (this.f32723a.containsKey("firebase_sessions_sampling_rate")) {
            return Double.valueOf(this.f32723a.getDouble("firebase_sessions_sampling_rate"));
        }
        return null;
    }

    @Override // com.google.firebase.sessions.settings.d
    public Object d(Continuation continuation) {
        return d.a.a(this, continuation);
    }
}
