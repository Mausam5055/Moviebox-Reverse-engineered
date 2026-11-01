package com.google.firebase.messaging;

import android.content.Context;
import android.content.Intent;
import android.util.Base64;
import android.util.Log;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes4.dex */
public class m {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Object f32113c = new Object();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static j1 f32114d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f32115a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Executor f32116b = new w3.m();

    public m(Context context) {
        this.f32115a = context;
    }

    private static Task e(Context context, Intent intent, boolean z10) {
        Log.isLoggable("FirebaseMessaging", 3);
        j1 j1VarF = f(context, "com.google.firebase.MESSAGING_EVENT");
        if (!z10) {
            return j1VarF.d(intent).continueWith(new w3.m(), new Continuation() { // from class: com.google.firebase.messaging.l
                @Override // com.google.android.gms.tasks.Continuation
                public final Object then(Task task) {
                    return m.g(task);
                }
            });
        }
        if (v0.b().e(context)) {
            e1.f(context, j1VarF, intent);
        } else {
            j1VarF.d(intent);
        }
        return Tasks.forResult(-1);
    }

    private static j1 f(Context context, String str) {
        j1 j1Var;
        synchronized (f32113c) {
            try {
                if (f32114d == null) {
                    f32114d = new j1(context, str);
                }
                j1Var = f32114d;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return j1Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Integer g(Task task) {
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Integer h(Context context, Intent intent) {
        return Integer.valueOf(v0.b().g(context, intent));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Integer i(Task task) {
        return Integer.valueOf(TTAdConstant.DEEPLINK_UNAVAILABLE_CODE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Task j(Context context, Intent intent, boolean z10, Task task) {
        return (PlatformVersion.isAtLeastO() && ((Integer) task.getResult()).intValue() == 402) ? e(context, intent, z10).continueWith(new w3.m(), new Continuation() { // from class: com.google.firebase.messaging.k
            @Override // com.google.android.gms.tasks.Continuation
            public final Object then(Task task2) {
                return m.i(task2);
            }
        }) : task;
    }

    public Task k(Intent intent) {
        String stringExtra = intent.getStringExtra("gcm.rawData64");
        if (stringExtra != null) {
            intent.putExtra("rawData", Base64.decode(stringExtra, 0));
            intent.removeExtra("gcm.rawData64");
        }
        return l(this.f32115a, intent);
    }

    public Task l(final Context context, final Intent intent) {
        boolean z10 = PlatformVersion.isAtLeastO() && context.getApplicationInfo().targetSdkVersion >= 26;
        final boolean z11 = (intent.getFlags() & ASTNode.DEOP) != 0;
        return (!z10 || z11) ? Tasks.call(this.f32116b, new Callable() { // from class: com.google.firebase.messaging.i
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return m.h(context, intent);
            }
        }).continueWithTask(this.f32116b, new Continuation() { // from class: com.google.firebase.messaging.j
            @Override // com.google.android.gms.tasks.Continuation
            public final Object then(Task task) {
                return m.j(context, intent, z11, task);
            }
        }) : e(context, intent, z11);
    }
}
