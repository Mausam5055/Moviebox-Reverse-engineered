package androidx.room;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class ObservedTableStates {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ReentrantLock f14484a = new ReentrantLock();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long[] f14485b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean[] f14486c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f14487d;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0080\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Landroidx/room/ObservedTableStates$ObserveOp;", "", "<init>", "(Ljava/lang/String;I)V", "NO_OP", "ADD", "REMOVE", "room-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public enum ObserveOp {
        NO_OP,
        ADD,
        REMOVE;

        private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.a(values());

        public static EnumEntries<ObserveOp> getEntries() {
            return $ENTRIES;
        }
    }

    public ObservedTableStates(int i11) {
        this.f14485b = new long[i11];
        this.f14486c = new boolean[i11];
    }

    public final void a() {
        ReentrantLock reentrantLock = this.f14484a;
        reentrantLock.lock();
        try {
            this.f14487d = true;
            Unit unit = Unit.f67061a;
        } finally {
            reentrantLock.unlock();
        }
    }

    public final ObserveOp[] b() {
        ObserveOp observeOp;
        ReentrantLock reentrantLock = this.f14484a;
        reentrantLock.lock();
        try {
            if (!this.f14487d) {
                return null;
            }
            this.f14487d = false;
            int length = this.f14485b.length;
            ObserveOp[] observeOpArr = new ObserveOp[length];
            int i11 = 0;
            boolean z10 = false;
            while (i11 < length) {
                boolean z11 = true;
                boolean z12 = this.f14485b[i11] > 0;
                boolean[] zArr = this.f14486c;
                if (z12 != zArr[i11]) {
                    zArr[i11] = z12;
                    observeOp = z12 ? ObserveOp.ADD : ObserveOp.REMOVE;
                } else {
                    z11 = z10;
                    observeOp = ObserveOp.NO_OP;
                }
                observeOpArr[i11] = observeOp;
                i11++;
                z10 = z11;
            }
            return z10 ? observeOpArr : null;
        } finally {
            reentrantLock.unlock();
        }
    }

    public final boolean c(int[] tableIds) {
        Intrinsics.h(tableIds, "tableIds");
        ReentrantLock reentrantLock = this.f14484a;
        reentrantLock.lock();
        try {
            boolean z10 = false;
            for (int i11 : tableIds) {
                long[] jArr = this.f14485b;
                long j11 = jArr[i11];
                jArr[i11] = 1 + j11;
                if (j11 == 0) {
                    z10 = true;
                    this.f14487d = true;
                }
            }
            reentrantLock.unlock();
            return z10;
        } catch (Throwable th2) {
            reentrantLock.unlock();
            throw th2;
        }
    }

    public final boolean d(int[] tableIds) {
        Intrinsics.h(tableIds, "tableIds");
        ReentrantLock reentrantLock = this.f14484a;
        reentrantLock.lock();
        try {
            boolean z10 = false;
            for (int i11 : tableIds) {
                long[] jArr = this.f14485b;
                long j11 = jArr[i11];
                jArr[i11] = j11 - 1;
                if (j11 == 1) {
                    z10 = true;
                    this.f14487d = true;
                }
            }
            reentrantLock.unlock();
            return z10;
        } catch (Throwable th2) {
            reentrantLock.unlock();
            throw th2;
        }
    }

    public final void e() {
        ReentrantLock reentrantLock = this.f14484a;
        reentrantLock.lock();
        try {
            ArraysKt.B(this.f14486c, false, 0, 0, 6, null);
            this.f14487d = true;
            Unit unit = Unit.f67061a;
        } finally {
            reentrantLock.unlock();
        }
    }
}
