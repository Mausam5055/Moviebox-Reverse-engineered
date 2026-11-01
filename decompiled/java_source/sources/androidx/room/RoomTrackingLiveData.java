package androidx.room;

import androidx.p009lifecycle.LiveData;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public abstract class RoomTrackingLiveData extends LiveData {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final RoomDatabase f14531l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final k f14532m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final boolean f14533n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final InvalidationTracker.b f14534o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final AtomicBoolean f14535p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final AtomicBoolean f14536q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final AtomicBoolean f14537r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final CoroutineContext f14538s;

    public static final class a extends InvalidationTracker.b {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ RoomTrackingLiveData f14539b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(String[] strArr, RoomTrackingLiveData roomTrackingLiveData) {
            super(strArr);
            this.f14539b = roomTrackingLiveData;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void e(RoomTrackingLiveData roomTrackingLiveData) {
            roomTrackingLiveData.w();
        }

        @Override // androidx.room.InvalidationTracker.b
        public void c(Set tables) {
            Intrinsics.h(tables, "tables");
            j.c cVarH = j.c.h();
            final RoomTrackingLiveData roomTrackingLiveData = this.f14539b;
            cVarH.b(new Runnable() { // from class: androidx.room.h0
                @Override // java.lang.Runnable
                public final void run() {
                    RoomTrackingLiveData.a.e(roomTrackingLiveData);
                }
            });
        }
    }

    private RoomTrackingLiveData(RoomDatabase roomDatabase, k kVar, boolean z10, String[] strArr) {
        this.f14531l = roomDatabase;
        this.f14532m = kVar;
        this.f14533n = z10;
        this.f14534o = new a(strArr, this);
        this.f14535p = new AtomicBoolean(true);
        this.f14536q = new AtomicBoolean(false);
        this.f14537r = new AtomicBoolean(false);
        this.f14538s = roomDatabase.K() ? z10 ? roomDatabase.H() : roomDatabase.A() : EmptyCoroutineContext.INSTANCE;
    }

    public /* synthetic */ RoomTrackingLiveData(RoomDatabase roomDatabase, k kVar, boolean z10, String[] strArr, DefaultConstructorMarker defaultConstructorMarker) {
        this(roomDatabase, kVar, z10, strArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void w() {
        boolean zH = h();
        if (this.f14535p.compareAndSet(false, true) && zH) {
            kotlinx.coroutines.k.d(this.f14531l.x(), this.f14538s, null, new RoomTrackingLiveData$invalidated$1(this, null), 2, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:26:0x005e  */
    /* JADX WARN: Code duplicated, block: B:29:0x0069 A[Catch: all -> 0x0033, Exception -> 0x0035, TRY_ENTER, TRY_LEAVE, TryCatch #1 {Exception -> 0x0035, blocks: (B:12:0x002c, B:29:0x0069), top: B:49:0x002c, outer: #0 }] */
    /* JADX WARN: Code duplicated, block: B:32:0x0076 A[LOOP:0: B:27:0x0061->B:32:0x0076, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:36:0x0083 A[Catch: all -> 0x0033, TRY_LEAVE, TryCatch #0 {all -> 0x0033, blocks: (B:12:0x002c, B:27:0x0061, B:29:0x0069, B:36:0x0083, B:33:0x0079, B:34:0x0080), top: B:48:0x0022, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:40:0x0092  */
    /* JADX WARN: Code duplicated, block: B:42:0x0096  */
    /* JADX WARN: Code duplicated, block: B:52:0x0075 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x005e -> B:27:0x0061). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:40:0x0092 -> B:41:0x0094). Please report as a decompilation issue!!! */
    public final Object x(Continuation continuation) throws Throwable {
        RoomTrackingLiveData$refresh$1 roomTrackingLiveData$refresh$1;
        RoomTrackingLiveData roomTrackingLiveData;
        RoomTrackingLiveData roomTrackingLiveData2;
        int i11;
        Object obj;
        Object objT;
        if (continuation instanceof RoomTrackingLiveData$refresh$1) {
            roomTrackingLiveData$refresh$1 = (RoomTrackingLiveData$refresh$1) continuation;
            int i12 = roomTrackingLiveData$refresh$1.label;
            if ((i12 & Integer.MIN_VALUE) != 0) {
                roomTrackingLiveData$refresh$1.label = i12 - Integer.MIN_VALUE;
            } else {
                roomTrackingLiveData$refresh$1 = new RoomTrackingLiveData$refresh$1(this, continuation);
            }
        } else {
            roomTrackingLiveData$refresh$1 = new RoomTrackingLiveData$refresh$1(this, continuation);
        }
        Object obj2 = roomTrackingLiveData$refresh$1.result;
        Object objF = IntrinsicsKt.f();
        int i13 = roomTrackingLiveData$refresh$1.label;
        try {
            if (i13 == 0) {
                ResultKt.b(obj2);
                if (this.f14537r.compareAndSet(false, true)) {
                    this.f14531l.y().k(this.f14534o);
                }
                roomTrackingLiveData2 = this;
                if (roomTrackingLiveData2.f14536q.compareAndSet(false, true)) {
                    obj = null;
                    roomTrackingLiveData = roomTrackingLiveData2;
                    i11 = 0;
                    while (roomTrackingLiveData.f14535p.compareAndSet(true, false)) {
                        roomTrackingLiveData$refresh$1.L$0 = roomTrackingLiveData;
                        roomTrackingLiveData$refresh$1.I$0 = 1;
                        roomTrackingLiveData$refresh$1.label = 1;
                        objT = roomTrackingLiveData.t(roomTrackingLiveData$refresh$1);
                        if (objT == objF) {
                            return objF;
                        }
                        obj = objT;
                        i11 = 1;
                    }
                    if (i11 != 0) {
                        roomTrackingLiveData.n(obj);
                    }
                    roomTrackingLiveData.f14536q.set(false);
                } else {
                    roomTrackingLiveData = roomTrackingLiveData2;
                    i11 = 0;
                }
                if (i11 != 0) {
                }
                return Unit.f67061a;
            }
            if (i13 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            int i14 = roomTrackingLiveData$refresh$1.I$0;
            roomTrackingLiveData = (RoomTrackingLiveData) roomTrackingLiveData$refresh$1.L$0;
            try {
                ResultKt.b(obj2);
                obj = obj2;
                i11 = i14;
                while (roomTrackingLiveData.f14535p.compareAndSet(true, false)) {
                    roomTrackingLiveData$refresh$1.L$0 = roomTrackingLiveData;
                    roomTrackingLiveData$refresh$1.I$0 = 1;
                    roomTrackingLiveData$refresh$1.label = 1;
                    objT = roomTrackingLiveData.t(roomTrackingLiveData$refresh$1);
                    if (objT == objF) {
                        return objF;
                    }
                    obj = objT;
                    i11 = 1;
                }
                if (i11 != 0) {
                    roomTrackingLiveData.n(obj);
                }
                roomTrackingLiveData.f14536q.set(false);
                if (i11 != 0 || !roomTrackingLiveData.f14535p.get()) {
                    return Unit.f67061a;
                }
                roomTrackingLiveData2 = roomTrackingLiveData;
                if (roomTrackingLiveData2.f14536q.compareAndSet(false, true)) {
                    obj = null;
                    roomTrackingLiveData = roomTrackingLiveData2;
                    i11 = 0;
                    while (roomTrackingLiveData.f14535p.compareAndSet(true, false)) {
                        roomTrackingLiveData$refresh$1.L$0 = roomTrackingLiveData;
                        roomTrackingLiveData$refresh$1.I$0 = 1;
                        roomTrackingLiveData$refresh$1.label = 1;
                        objT = roomTrackingLiveData.t(roomTrackingLiveData$refresh$1);
                        if (objT == objF) {
                            return objF;
                        }
                        obj = objT;
                        i11 = 1;
                    }
                    if (i11 != 0) {
                        roomTrackingLiveData.n(obj);
                    }
                    roomTrackingLiveData.f14536q.set(false);
                } else {
                    roomTrackingLiveData = roomTrackingLiveData2;
                    i11 = 0;
                }
                if (i11 != 0) {
                }
                return Unit.f67061a;
            } catch (Exception e11) {
                throw new RuntimeException("Exception while computing database live data.", e11);
            }
        } catch (Throwable th2) {
            roomTrackingLiveData.f14536q.set(false);
            throw th2;
        }
    }

    @Override // androidx.p009lifecycle.LiveData
    protected void l() {
        super.l();
        this.f14532m.b(this);
        kotlinx.coroutines.k.d(this.f14531l.x(), this.f14538s, null, new RoomTrackingLiveData$onActive$1(this, null), 2, null);
    }

    @Override // androidx.p009lifecycle.LiveData
    protected void m() {
        super.m();
        this.f14532m.c(this);
    }

    public abstract Object t(Continuation continuation);

    protected final RoomDatabase u() {
        return this.f14531l;
    }

    protected final boolean v() {
        return this.f14533n;
    }
}
