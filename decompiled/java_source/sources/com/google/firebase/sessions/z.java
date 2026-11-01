package com.google.firebase.sessions;

import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Messenger;
import android.os.Process;
import android.util.Log;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class z implements y {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final a f32747b = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.google.firebase.f f32748a;

    private static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public z(com.google.firebase.f firebaseApp) {
        Intrinsics.h(firebaseApp, "firebaseApp");
        this.f32748a = firebaseApp;
    }

    private final Object b(Context context, ServiceConnection serviceConnection) {
        try {
            context.unbindService(serviceConnection);
            return Unit.f67061a;
        } catch (IllegalArgumentException e11) {
            return Integer.valueOf(Log.w("LifecycleServiceBinder", "Session lifecycle service binding failed.", e11));
        }
    }

    @Override // com.google.firebase.sessions.y
    public void a(Messenger callback, ServiceConnection serviceConnection) {
        boolean zBindService;
        Intrinsics.h(callback, "callback");
        Intrinsics.h(serviceConnection, "serviceConnection");
        Context applicationContext = this.f32748a.k().getApplicationContext();
        Intrinsics.g(applicationContext, "firebaseApp.applicationContext.applicationContext");
        Intent intent = new Intent(applicationContext, (Class<?>) SessionLifecycleService.class);
        intent.setAction(String.valueOf(Process.myPid()));
        intent.putExtra("ClientCallbackMessenger", callback);
        intent.setPackage(applicationContext.getPackageName());
        try {
            zBindService = applicationContext.bindService(intent, serviceConnection, 65);
        } catch (SecurityException e11) {
            Log.w("LifecycleServiceBinder", "Failed to bind session lifecycle service to application.", e11);
            zBindService = false;
        }
        if (zBindService) {
            return;
        }
        b(applicationContext, serviceConnection);
    }
}
