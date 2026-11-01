package kotlinx.coroutines.flow;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.channels.BufferOverflow;

/* JADX INFO: loaded from: classes7.dex */
final class StateFlowImpl extends kotlinx.coroutines.flow.internal.a implements y0, b, kotlinx.coroutines.flow.internal.j {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f67770f = AtomicReferenceFieldUpdater.newUpdater(StateFlowImpl.class, Object.class, "_state$volatile");
    private volatile /* synthetic */ Object _state$volatile;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f67771e;

    public StateFlowImpl(Object obj) {
        this._state$volatile = obj;
    }

    private final boolean r(Object obj, Object obj2) {
        int i11;
        kotlinx.coroutines.flow.internal.c[] cVarArrN;
        synchronized (this) {
            Object obj3 = f67770f.get(this);
            if (obj != null && !Intrinsics.c(obj3, obj)) {
                return false;
            }
            if (Intrinsics.c(obj3, obj2)) {
                return true;
            }
            f67770f.set(this, obj2);
            int i12 = this.f67771e;
            if ((i12 & 1) != 0) {
                this.f67771e = i12 + 2;
                return true;
            }
            int i13 = i12 + 1;
            this.f67771e = i13;
            kotlinx.coroutines.flow.internal.c[] cVarArrN2 = n();
            Unit unit = Unit.f67061a;
            while (true) {
                k1[] k1VarArr = (k1[]) cVarArrN2;
                if (k1VarArr != null) {
                    for (k1 k1Var : k1VarArr) {
                        if (k1Var != null) {
                            k1Var.g();
                        }
                    }
                }
                synchronized (this) {
                    i11 = this.f67771e;
                    if (i11 == i13) {
                        this.f67771e = i13 + 1;
                        return true;
                    }
                    cVarArrN = n();
                    Unit unit2 = Unit.f67061a;
                }
                cVarArrN2 = cVarArrN;
                i13 = i11;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:31:0x0099 A[Catch: all -> 0x0042, TryCatch #0 {all -> 0x0042, blocks: (B:15:0x003e, B:29:0x008f, B:31:0x0099, B:33:0x009e, B:43:0x00bf, B:45:0x00c5, B:35:0x00a4, B:39:0x00ab, B:22:0x005f, B:25:0x0071, B:28:0x0080), top: B:50:0x0023 }] */
    /* JADX WARN: Code duplicated, block: B:33:0x009e A[Catch: all -> 0x0042, TryCatch #0 {all -> 0x0042, blocks: (B:15:0x003e, B:29:0x008f, B:31:0x0099, B:33:0x009e, B:43:0x00bf, B:45:0x00c5, B:35:0x00a4, B:39:0x00ab, B:22:0x005f, B:25:0x0071, B:28:0x0080), top: B:50:0x0023 }] */
    /* JADX WARN: Code duplicated, block: B:35:0x00a4 A[Catch: all -> 0x0042, TryCatch #0 {all -> 0x0042, blocks: (B:15:0x003e, B:29:0x008f, B:31:0x0099, B:33:0x009e, B:43:0x00bf, B:45:0x00c5, B:35:0x00a4, B:39:0x00ab, B:22:0x005f, B:25:0x0071, B:28:0x0080), top: B:50:0x0023 }] */
    /* JADX WARN: Code duplicated, block: B:37:0x00a8  */
    /* JADX WARN: Code duplicated, block: B:38:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:41:0x00bd A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:42:0x00be  */
    /* JADX WARN: Code duplicated, block: B:45:0x00c5 A[Catch: all -> 0x0042, TRY_LEAVE, TryCatch #0 {all -> 0x0042, blocks: (B:15:0x003e, B:29:0x008f, B:31:0x0099, B:33:0x009e, B:43:0x00bf, B:45:0x00c5, B:35:0x00a4, B:39:0x00ab, B:22:0x005f, B:25:0x0071, B:28:0x0080), top: B:50:0x0023 }] */
    /* JADX WARN: Code duplicated, block: B:47:0x00d7 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:44:0x00c3 -> B:29:0x008f). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:46:0x00d5 -> B:29:0x008f). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached at block B:42:0x00be
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // kotlinx.coroutines.flow.c1, kotlinx.coroutines.flow.b
    public java.lang.Object a(kotlinx.coroutines.flow.c r11, kotlin.coroutines.Continuation r12) {
        /*
            Method dump skipped, instruction units count: 220
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.StateFlowImpl.a(kotlinx.coroutines.flow.c, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // kotlinx.coroutines.flow.x0
    public boolean b(Object obj) {
        setValue(obj);
        return true;
    }

    @Override // kotlinx.coroutines.flow.internal.j
    public b d(CoroutineContext coroutineContext, int i11, BufferOverflow bufferOverflow) {
        return j1.d(this, coroutineContext, i11, bufferOverflow);
    }

    @Override // kotlinx.coroutines.flow.y0
    public boolean e(Object obj, Object obj2) {
        if (obj == null) {
            obj = kotlinx.coroutines.flow.internal.m.f67813a;
        }
        if (obj2 == null) {
            obj2 = kotlinx.coroutines.flow.internal.m.f67813a;
        }
        return r(obj, obj2);
    }

    @Override // kotlinx.coroutines.flow.x0, kotlinx.coroutines.flow.c
    public Object emit(Object obj, Continuation continuation) {
        setValue(obj);
        return Unit.f67061a;
    }

    @Override // kotlinx.coroutines.flow.x0
    public void f() {
        throw new UnsupportedOperationException("MutableStateFlow.resetReplayCache is not supported");
    }

    @Override // kotlinx.coroutines.flow.y0, kotlinx.coroutines.flow.i1
    public Object getValue() {
        kotlinx.coroutines.internal.z zVar = kotlinx.coroutines.flow.internal.m.f67813a;
        Object obj = f67770f.get(this);
        if (obj == zVar) {
            return null;
        }
        return obj;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.flow.internal.a
    /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
    public k1 j() {
        return new k1();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.flow.internal.a
    /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
    public k1[] k(int i11) {
        return new k1[i11];
    }

    @Override // kotlinx.coroutines.flow.y0
    public void setValue(Object obj) {
        if (obj == null) {
            obj = kotlinx.coroutines.flow.internal.m.f67813a;
        }
        r(null, obj);
    }
}
