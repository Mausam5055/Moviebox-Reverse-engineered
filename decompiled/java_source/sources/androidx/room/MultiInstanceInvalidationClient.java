package androidx.room;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.SetsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.d1;
import kotlinx.coroutines.flow.x0;

/* JADX INFO: loaded from: classes2.dex */
public final class MultiInstanceInvalidationClient {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f14460a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final InvalidationTracker f14461b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Context f14462c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final kotlinx.coroutines.n0 f14463d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final AtomicBoolean f14464e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f14465f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private j f14466g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final x0 f14467h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final a f14468i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final i f14469j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final ServiceConnection f14470k;

    public static final class a extends InvalidationTracker.b {
        a(String[] strArr) {
            super(strArr);
        }

        @Override // androidx.room.InvalidationTracker.b
        public boolean b() {
            return true;
        }

        @Override // androidx.room.InvalidationTracker.b
        public void c(Set tables) {
            Intrinsics.h(tables, "tables");
            if (MultiInstanceInvalidationClient.this.f14464e.get()) {
                return;
            }
            try {
                j jVar = MultiInstanceInvalidationClient.this.f14466g;
                if (jVar != null) {
                    jVar.Z(MultiInstanceInvalidationClient.this.f14465f, (String[]) tables.toArray(new String[0]));
                }
            } catch (RemoteException e11) {
                Log.w("ROOM", "Cannot broadcast invalidation", e11);
            }
        }
    }

    public static final class b implements ServiceConnection {
        b() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName name, IBinder service) {
            Intrinsics.h(name, "name");
            Intrinsics.h(service, "service");
            MultiInstanceInvalidationClient.this.f14466g = j.a.Y0(service);
            MultiInstanceInvalidationClient.this.j();
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName name) {
            Intrinsics.h(name, "name");
            MultiInstanceInvalidationClient.this.f14466g = null;
        }
    }

    public MultiInstanceInvalidationClient(Context context, String name, InvalidationTracker invalidationTracker) {
        Intrinsics.h(context, "context");
        Intrinsics.h(name, "name");
        Intrinsics.h(invalidationTracker, "invalidationTracker");
        this.f14460a = name;
        this.f14461b = invalidationTracker;
        this.f14462c = context.getApplicationContext();
        this.f14463d = invalidationTracker.o().x();
        this.f14464e = new AtomicBoolean(true);
        this.f14467h = d1.a(0, 0, BufferOverflow.SUSPEND);
        this.f14468i = new a(invalidationTracker.p());
        this.f14469j = new i.a() { // from class: androidx.room.MultiInstanceInvalidationClient$invalidationCallback$1
            @Override // androidx.room.i
            public void n(String[] tables) {
                Intrinsics.h(tables, "tables");
                kotlinx.coroutines.k.d(this.f14477a.f14463d, null, null, new MultiInstanceInvalidationClient$invalidationCallback$1$onInvalidation$1(tables, this.f14477a, null), 3, null);
            }
        };
        this.f14470k = new b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void j() {
        try {
            j jVar = this.f14466g;
            if (jVar != null) {
                this.f14465f = jVar.r0(this.f14469j, this.f14460a);
            }
        } catch (RemoteException e11) {
            Log.w("ROOM", "Cannot register multi-instance invalidation callback", e11);
        }
    }

    public final kotlinx.coroutines.flow.b h(final String[] resolvedTableNames) {
        Intrinsics.h(resolvedTableNames, "resolvedTableNames");
        final x0 x0Var = this.f14467h;
        return new kotlinx.coroutines.flow.b() { // from class: androidx.room.MultiInstanceInvalidationClient$createFlow$$inlined$mapNotNull$1

            /* JADX INFO: renamed from: androidx.room.MultiInstanceInvalidationClient$createFlow$$inlined$mapNotNull$1$2, reason: invalid class name */
            public static final class AnonymousClass2 implements kotlinx.coroutines.flow.c {

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                final /* synthetic */ kotlinx.coroutines.flow.c f14475a;

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                final /* synthetic */ String[] f14476b;

                /* JADX INFO: renamed from: androidx.room.MultiInstanceInvalidationClient$createFlow$$inlined$mapNotNull$1$2$1, reason: invalid class name */
                @Metadata(k = 3, mv = {2, 0, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
                @DebugMetadata(c = "androidx.room.MultiInstanceInvalidationClient$createFlow$$inlined$mapNotNull$1$2", f = "MultiInstanceInvalidationClient.android.kt", l = {239}, m = "emit")
                public static final class AnonymousClass1 extends ContinuationImpl {
                    Object L$0;
                    int label;
                    /* synthetic */ Object result;

                    public AnonymousClass1(Continuation continuation) {
                        super(continuation);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) {
                        this.result = obj;
                        this.label |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, this);
                    }
                }

                public AnonymousClass2(kotlinx.coroutines.flow.c cVar, String[] strArr) {
                    this.f14475a = cVar;
                    this.f14476b = strArr;
                }

                /* JADX WARN: Code duplicated, block: B:7:0x0013  */
                @Override // kotlinx.coroutines.flow.c
                public final Object emit(Object obj, Continuation continuation) throws Throwable {
                    AnonymousClass1 anonymousClass1;
                    if (continuation instanceof AnonymousClass1) {
                        anonymousClass1 = (AnonymousClass1) continuation;
                        int i11 = anonymousClass1.label;
                        if ((i11 & Integer.MIN_VALUE) != 0) {
                            anonymousClass1.label = i11 - Integer.MIN_VALUE;
                        } else {
                            anonymousClass1 = new AnonymousClass1(continuation);
                        }
                    } else {
                        anonymousClass1 = new AnonymousClass1(continuation);
                    }
                    Object obj2 = anonymousClass1.result;
                    Object objF = IntrinsicsKt.f();
                    int i12 = anonymousClass1.label;
                    if (i12 == 0) {
                        ResultKt.b(obj2);
                        kotlinx.coroutines.flow.c cVar = this.f14475a;
                        Set set = (Set) obj;
                        Set setB = SetsKt.b();
                        for (String str : this.f14476b) {
                            Iterator it = set.iterator();
                            while (it.hasNext()) {
                                if (StringsKt.H(str, (String) it.next(), true)) {
                                    setB.add(str);
                                }
                            }
                        }
                        Set setA = SetsKt.a(setB);
                        if (setA.isEmpty()) {
                            setA = null;
                        }
                        if (setA != null) {
                            anonymousClass1.label = 1;
                            if (cVar.emit(setA, anonymousClass1) == objF) {
                                return objF;
                            }
                        }
                    } else {
                        if (i12 != 1) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        ResultKt.b(obj2);
                    }
                    return Unit.f67061a;
                }
            }

            @Override // kotlinx.coroutines.flow.b
            public Object a(kotlinx.coroutines.flow.c cVar, Continuation continuation) {
                Object objA = x0Var.a(new AnonymousClass2(cVar, resolvedTableNames), continuation);
                return objA == IntrinsicsKt.f() ? objA : Unit.f67061a;
            }
        };
    }

    public final InvalidationTracker i() {
        return this.f14461b;
    }

    public final void k(Intent serviceIntent) {
        Intrinsics.h(serviceIntent, "serviceIntent");
        if (this.f14464e.compareAndSet(true, false)) {
            this.f14462c.bindService(serviceIntent, this.f14470k, 1);
            this.f14461b.j(this.f14468i);
        }
    }

    public final void l() {
        if (this.f14464e.compareAndSet(false, true)) {
            this.f14461b.z(this.f14468i);
            try {
                j jVar = this.f14466g;
                if (jVar != null) {
                    jVar.W0(this.f14469j, this.f14465f);
                }
            } catch (RemoteException e11) {
                Log.w("ROOM", "Cannot unregister multi-instance invalidation callback", e11);
            }
            this.f14462c.unbindService(this.f14470k);
        }
    }
}
