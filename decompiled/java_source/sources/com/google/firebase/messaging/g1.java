package com.google.firebase.messaging;

import android.content.Intent;
import android.os.Binder;
import android.os.Process;
import android.util.Log;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;

/* JADX INFO: loaded from: classes4.dex */
class g1 extends Binder {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final a f32087a;

    interface a {
        Task a(Intent intent);
    }

    g1(a aVar) {
        this.f32087a = aVar;
    }

    void c(final j1.a aVar) {
        if (Binder.getCallingUid() != Process.myUid()) {
            throw new SecurityException("Binding only allowed within app");
        }
        Log.isLoggable("FirebaseMessaging", 3);
        this.f32087a.a(aVar.f32109a).addOnCompleteListener(new w3.m(), new OnCompleteListener() { // from class: com.google.firebase.messaging.f1
            @Override // com.google.android.gms.tasks.OnCompleteListener
            public final void onComplete(Task task) {
                aVar.d();
            }
        });
    }
}
