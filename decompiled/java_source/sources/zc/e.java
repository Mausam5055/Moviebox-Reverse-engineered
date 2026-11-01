package zc;

import android.util.Log;
import bd.f;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.Task;
import com.google.firebase.remoteconfig.FirebaseRemoteConfigException;
import java.util.Collections;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes5.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private com.google.firebase.remoteconfig.internal.e f79408a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private a f79409b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Executor f79410c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Set f79411d = Collections.newSetFromMap(new ConcurrentHashMap());

    public e(com.google.firebase.remoteconfig.internal.e eVar, a aVar, Executor executor) {
        this.f79408a = eVar;
        this.f79409b = aVar;
        this.f79410c = executor;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void f(Task task, final f fVar, com.google.firebase.remoteconfig.internal.f fVar2) {
        try {
            com.google.firebase.remoteconfig.internal.f fVar3 = (com.google.firebase.remoteconfig.internal.f) task.getResult();
            if (fVar3 != null) {
                final bd.e eVarB = this.f79409b.b(fVar3);
                this.f79410c.execute(new Runnable() { // from class: zc.d
                    @Override // java.lang.Runnable
                    public final void run() {
                        fVar.a(eVarB);
                    }
                });
            }
        } catch (FirebaseRemoteConfigException e11) {
            Log.w("FirebaseRemoteConfig", "Exception publishing RolloutsState to subscriber. Continuing to listen for changes.", e11);
        }
    }

    public void g(com.google.firebase.remoteconfig.internal.f fVar) {
        try {
            final bd.e eVarB = this.f79409b.b(fVar);
            for (final f fVar2 : this.f79411d) {
                this.f79410c.execute(new Runnable() { // from class: zc.b
                    @Override // java.lang.Runnable
                    public final void run() {
                        fVar2.a(eVarB);
                    }
                });
            }
        } catch (FirebaseRemoteConfigException e11) {
            Log.w("FirebaseRemoteConfig", "Exception publishing RolloutsState to subscribers. Continuing to listen for changes.", e11);
        }
    }

    public void h(final f fVar) {
        this.f79411d.add(fVar);
        final Task taskE = this.f79408a.e();
        taskE.addOnSuccessListener(this.f79410c, new OnSuccessListener() { // from class: zc.c
            @Override // com.google.android.gms.tasks.OnSuccessListener
            public final void onSuccess(Object obj) {
                this.f79403a.f(taskE, fVar, (com.google.firebase.remoteconfig.internal.f) obj);
            }
        });
    }
}
