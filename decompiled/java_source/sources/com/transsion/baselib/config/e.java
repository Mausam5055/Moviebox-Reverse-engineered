package com.transsion.baselib.config;

import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import yc.j;
import yc.n;

/* JADX INFO: loaded from: classes.dex */
public final class e {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final a f43019c = new a(null);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Lazy f43020d = LazyKt.b(new Function0() { // from class: com.transsion.baselib.config.b
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return e.h();
        }
    });

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private com.google.firebase.remoteconfig.a f43021a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f43022b;

    /* JADX INFO: loaded from: classes5.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final e a() {
            return (e) e.f43020d.getValue();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit f(j.b remoteConfigSettings) {
        Intrinsics.h(remoteConfigSettings, "$this$remoteConfigSettings");
        remoteConfigSettings.e(3600L);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g(e eVar, Function2 function2, Task task) {
        Intrinsics.h(task, "task");
        boolean zIsSuccessful = task.isSuccessful();
        eVar.f43022b = zIsSuccessful;
        Boolean boolValueOf = Boolean.valueOf(zIsSuccessful);
        com.google.firebase.remoteconfig.a aVar = eVar.f43021a;
        if (aVar == null) {
            Intrinsics.z("remoteConfig");
            aVar = null;
        }
        function2.invoke(boolValueOf, aVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final e h() {
        return new e();
    }

    public final void e(final Function2 callback) {
        Intrinsics.h(callback, "callback");
        com.google.firebase.remoteconfig.a aVarA = n.a(com.google.firebase.c.f31069a);
        this.f43021a = aVarA;
        com.google.firebase.remoteconfig.a aVar = null;
        if (aVarA == null) {
            Intrinsics.z("remoteConfig");
            aVarA = null;
        }
        aVarA.w(n.b(new Function1() { // from class: com.transsion.baselib.config.c
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return e.f((j.b) obj);
            }
        }));
        com.google.firebase.remoteconfig.a aVar2 = this.f43021a;
        if (aVar2 == null) {
            Intrinsics.z("remoteConfig");
        } else {
            aVar = aVar2;
        }
        aVar.h().addOnCompleteListener(new OnCompleteListener() { // from class: com.transsion.baselib.config.d
            @Override // com.google.android.gms.tasks.OnCompleteListener
            public final void onComplete(Task task) {
                e.g(this.f43017a, callback, task);
            }
        });
    }
}
