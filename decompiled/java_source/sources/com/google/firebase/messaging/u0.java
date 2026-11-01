package com.google.firebase.messaging;

import android.util.Log;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import java.util.Map;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes4.dex */
class u0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Executor f32165a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map f32166b = new androidx.collection.a();

    interface a {
        Task start();
    }

    u0(Executor executor) {
        this.f32165a = executor;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Task c(String str, Task task) {
        synchronized (this) {
            this.f32166b.remove(str);
        }
        return task;
    }

    synchronized Task b(final String str, a aVar) {
        Task task = (Task) this.f32166b.get(str);
        if (task != null) {
            if (Log.isLoggable("FirebaseMessaging", 3)) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Joining ongoing request for: ");
                sb2.append(str);
            }
            return task;
        }
        if (Log.isLoggable("FirebaseMessaging", 3)) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append("Making new request for: ");
            sb3.append(str);
        }
        Task taskContinueWithTask = aVar.start().continueWithTask(this.f32165a, new Continuation() { // from class: com.google.firebase.messaging.t0
            @Override // com.google.android.gms.tasks.Continuation
            public final Object then(Task task2) {
                return this.f32162a.c(str, task2);
            }
        });
        this.f32166b.put(str, taskContinueWithTask);
        return taskContinueWithTask;
    }
}
