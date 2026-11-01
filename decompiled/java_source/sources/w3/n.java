package w3;

import android.adservices.measurement.DeletionRequest;
import android.adservices.measurement.MeasurementManager;
import android.adservices.measurement.WebSourceRegistrationRequest;
import android.adservices.measurement.WebTriggerRegistrationRequest;
import android.content.Context;
import android.net.Uri;
import android.view.InputEvent;
import androidx.core.os.r;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CancellableContinuationImpl;

/* JADX INFO: loaded from: classes2.dex */
public abstract class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final b f77561a = new b(null);

    private static final class a extends n {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final MeasurementManager f77562b;

        public a(MeasurementManager mMeasurementManager) {
            Intrinsics.h(mMeasurementManager, "mMeasurementManager");
            this.f77562b = mMeasurementManager;
        }

        /* JADX WARN: Illegal instructions before constructor call */
        public a(Context context) {
            Intrinsics.h(context, "context");
            Object systemService = context.getSystemService((Class<Object>) f.a());
            Intrinsics.g(systemService, "context.getSystemService…:class.java\n            )");
            this(g.a(systemService));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final DeletionRequest k(w3.a aVar) {
            k.a();
            throw null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final WebSourceRegistrationRequest l(o oVar) {
            l.a();
            throw null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final WebTriggerRegistrationRequest m(p pVar) {
            c.a();
            throw null;
        }

        @Override // w3.n
        public Object a(w3.a aVar, Continuation<? super Unit> continuation) {
            CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.c(continuation), 1);
            cancellableContinuationImpl.initCancellability();
            this.f77562b.deleteRegistrations(k(aVar), new m(), r.a(cancellableContinuationImpl));
            Object result = cancellableContinuationImpl.getResult();
            if (result == IntrinsicsKt.f()) {
                DebugProbesKt.c(continuation);
            }
            return result == IntrinsicsKt.f() ? result : Unit.f67061a;
        }

        @Override // w3.n
        public Object b(Continuation<? super Integer> continuation) {
            CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.c(continuation), 1);
            cancellableContinuationImpl.initCancellability();
            this.f77562b.getMeasurementApiStatus(new m(), r.a(cancellableContinuationImpl));
            Object result = cancellableContinuationImpl.getResult();
            if (result == IntrinsicsKt.f()) {
                DebugProbesKt.c(continuation);
            }
            return result;
        }

        @Override // w3.n
        public Object c(Uri uri, InputEvent inputEvent, Continuation<? super Unit> continuation) {
            CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.c(continuation), 1);
            cancellableContinuationImpl.initCancellability();
            this.f77562b.registerSource(uri, inputEvent, new m(), r.a(cancellableContinuationImpl));
            Object result = cancellableContinuationImpl.getResult();
            if (result == IntrinsicsKt.f()) {
                DebugProbesKt.c(continuation);
            }
            return result == IntrinsicsKt.f() ? result : Unit.f67061a;
        }

        @Override // w3.n
        public Object d(Uri uri, Continuation<? super Unit> continuation) {
            CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.c(continuation), 1);
            cancellableContinuationImpl.initCancellability();
            this.f77562b.registerTrigger(uri, new m(), r.a(cancellableContinuationImpl));
            Object result = cancellableContinuationImpl.getResult();
            if (result == IntrinsicsKt.f()) {
                DebugProbesKt.c(continuation);
            }
            return result == IntrinsicsKt.f() ? result : Unit.f67061a;
        }

        @Override // w3.n
        public Object e(o oVar, Continuation<? super Unit> continuation) {
            CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.c(continuation), 1);
            cancellableContinuationImpl.initCancellability();
            this.f77562b.registerWebSource(l(oVar), new m(), r.a(cancellableContinuationImpl));
            Object result = cancellableContinuationImpl.getResult();
            if (result == IntrinsicsKt.f()) {
                DebugProbesKt.c(continuation);
            }
            return result == IntrinsicsKt.f() ? result : Unit.f67061a;
        }

        @Override // w3.n
        public Object f(p pVar, Continuation<? super Unit> continuation) {
            CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.c(continuation), 1);
            cancellableContinuationImpl.initCancellability();
            this.f77562b.registerWebTrigger(m(pVar), new m(), r.a(cancellableContinuationImpl));
            Object result = cancellableContinuationImpl.getResult();
            if (result == IntrinsicsKt.f()) {
                DebugProbesKt.c(continuation);
            }
            return result == IntrinsicsKt.f() ? result : Unit.f67061a;
        }
    }

    public static final class b {
        private b() {
        }

        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final n a(Context context) {
            Intrinsics.h(context, "context");
            StringBuilder sb2 = new StringBuilder();
            sb2.append("AdServicesInfo.version=");
            v3.a aVar = v3.a.f77017a;
            sb2.append(aVar.a());
            if (aVar.a() >= 5) {
                return new a(context);
            }
            return null;
        }
    }

    public abstract Object a(w3.a aVar, Continuation continuation);

    public abstract Object b(Continuation continuation);

    public abstract Object c(Uri uri, InputEvent inputEvent, Continuation continuation);

    public abstract Object d(Uri uri, Continuation continuation);

    public abstract Object e(o oVar, Continuation continuation);

    public abstract Object f(p pVar, Continuation continuation);
}
