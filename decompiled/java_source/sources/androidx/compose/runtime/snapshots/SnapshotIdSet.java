package androidx.compose.runtime.snapshots;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.sequences.SequenceScope;
import kotlin.sequences.SequencesKt;

/* JADX INFO: loaded from: classes.dex */
public final class SnapshotIdSet implements Iterable, KMappedMarker {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final a f3916e = new a(null);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final SnapshotIdSet f3917f = new SnapshotIdSet(0, 0, 0, null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f3918a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f3919b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f3920c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int[] f3921d;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final SnapshotIdSet a() {
            return SnapshotIdSet.f3917f;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.runtime.snapshots.SnapshotIdSet$iterator$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlin/sequences/SequenceScope;", ""}, k = 3, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    @DebugMetadata(c = "androidx.compose.runtime.snapshots.SnapshotIdSet$iterator$1", f = "SnapshotIdSet.kt", l = {295, 300, 307}, m = "invokeSuspend")
    static final class AnonymousClass1 extends RestrictedSuspendLambda implements Function2<SequenceScope<? super Integer>, Continuation<? super Unit>, Object> {
        int I$0;
        int I$1;
        private /* synthetic */ Object L$0;
        Object L$1;
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = SnapshotIdSet.this.new AnonymousClass1(continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(SequenceScope<? super Integer> sequenceScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(sequenceScope, continuation)).invokeSuspend(Unit.f67061a);
        }

        /* JADX WARN: Code duplicated, block: B:36:0x00bf  */
        /* JADX WARN: Code duplicated, block: B:38:0x00cc  */
        /* JADX WARN: Code duplicated, block: B:40:0x00e7 A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:41:0x00e8  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0072 -> B:19:0x0075). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x0092 -> B:30:0x00ae). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x00ab -> B:30:0x00ae). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x00ca -> B:43:0x00ea). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:41:0x00e8 -> B:42:0x00e9). Please report as a decompilation issue!!! */
        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
            */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final java.lang.Object invokeSuspend(java.lang.Object r20) {
            /*
                Method dump skipped, instruction units count: 239
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.snapshots.SnapshotIdSet.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    private SnapshotIdSet(long j11, long j12, int i11, int[] iArr) {
        this.f3918a = j11;
        this.f3919b = j12;
        this.f3920c = i11;
        this.f3921d = iArr;
    }

    @Override // java.lang.Iterable
    public Iterator iterator() {
        return SequencesKt.b(new AnonymousClass1(null)).getF67431a();
    }

    public final SnapshotIdSet j(SnapshotIdSet snapshotIdSet) {
        SnapshotIdSet snapshotIdSetL;
        SnapshotIdSet snapshotIdSet2 = f3917f;
        if (snapshotIdSet == snapshotIdSet2) {
            return this;
        }
        if (this == snapshotIdSet2) {
            return snapshotIdSet2;
        }
        int i11 = snapshotIdSet.f3920c;
        int i12 = this.f3920c;
        if (i11 == i12) {
            int[] iArr = snapshotIdSet.f3921d;
            int[] iArr2 = this.f3921d;
            if (iArr == iArr2) {
                return new SnapshotIdSet(this.f3918a & (~snapshotIdSet.f3918a), this.f3919b & (~snapshotIdSet.f3919b), i12, iArr2);
            }
        }
        int[] iArr3 = snapshotIdSet.f3921d;
        if (iArr3 != null) {
            snapshotIdSetL = this;
            for (int i13 : iArr3) {
                snapshotIdSetL = snapshotIdSetL.l(i13);
            }
        } else {
            snapshotIdSetL = this;
        }
        if (snapshotIdSet.f3919b != 0) {
            for (int i14 = 0; i14 < 64; i14++) {
                if ((snapshotIdSet.f3919b & (1 << i14)) != 0) {
                    snapshotIdSetL = snapshotIdSetL.l(snapshotIdSet.f3920c + i14);
                }
            }
        }
        if (snapshotIdSet.f3918a != 0) {
            for (int i15 = 0; i15 < 64; i15++) {
                if ((snapshotIdSet.f3918a & (1 << i15)) != 0) {
                    snapshotIdSetL = snapshotIdSetL.l(i15 + 64 + snapshotIdSet.f3920c);
                }
            }
        }
        return snapshotIdSetL;
    }

    public final SnapshotIdSet l(int i11) {
        int[] iArr;
        int iA;
        int i12 = this.f3920c;
        int i13 = i11 - i12;
        if (i13 >= 0 && i13 < 64) {
            long j11 = 1 << i13;
            long j12 = this.f3919b;
            if ((j12 & j11) != 0) {
                return new SnapshotIdSet(this.f3918a, j12 & (~j11), i12, this.f3921d);
            }
        } else if (i13 >= 64 && i13 < 128) {
            long j13 = 1 << (i13 - 64);
            long j14 = this.f3918a;
            if ((j14 & j13) != 0) {
                return new SnapshotIdSet(j14 & (~j13), this.f3919b, i12, this.f3921d);
            }
        } else if (i13 < 0 && (iArr = this.f3921d) != null && (iA = m.a(iArr, i11)) >= 0) {
            int length = iArr.length;
            int i14 = length - 1;
            if (i14 == 0) {
                return new SnapshotIdSet(this.f3918a, this.f3919b, this.f3920c, null);
            }
            int[] iArr2 = new int[i14];
            if (iA > 0) {
                ArraysKt.l(iArr, iArr2, 0, 0, iA);
            }
            if (iA < i14) {
                ArraysKt.l(iArr, iArr2, iA, iA + 1, length);
            }
            return new SnapshotIdSet(this.f3918a, this.f3919b, this.f3920c, iArr2);
        }
        return this;
    }

    public final boolean m(int i11) {
        int[] iArr;
        int i12 = i11 - this.f3920c;
        if (i12 >= 0 && i12 < 64) {
            return ((1 << i12) & this.f3919b) != 0;
        }
        if (i12 >= 64 && i12 < 128) {
            return ((1 << (i12 - 64)) & this.f3918a) != 0;
        }
        if (i12 <= 0 && (iArr = this.f3921d) != null) {
            return m.a(iArr, i11) >= 0;
        }
        return false;
    }

    public final int n(int i11) {
        int[] iArr = this.f3921d;
        if (iArr != null) {
            return iArr[0];
        }
        long j11 = this.f3919b;
        if (j11 != 0) {
            return this.f3920c + Long.numberOfTrailingZeros(j11);
        }
        long j12 = this.f3918a;
        return j12 != 0 ? this.f3920c + 64 + Long.numberOfTrailingZeros(j12) : i11;
    }

    public final SnapshotIdSet o(SnapshotIdSet snapshotIdSet) {
        SnapshotIdSet snapshotIdSetP;
        SnapshotIdSet snapshotIdSet2 = f3917f;
        if (snapshotIdSet == snapshotIdSet2) {
            return this;
        }
        if (this == snapshotIdSet2) {
            return snapshotIdSet;
        }
        int i11 = snapshotIdSet.f3920c;
        int i12 = this.f3920c;
        if (i11 == i12) {
            int[] iArr = snapshotIdSet.f3921d;
            int[] iArr2 = this.f3921d;
            if (iArr == iArr2) {
                return new SnapshotIdSet(this.f3918a | snapshotIdSet.f3918a, this.f3919b | snapshotIdSet.f3919b, i12, iArr2);
            }
        }
        int i13 = 0;
        if (this.f3921d == null) {
            int[] iArr3 = this.f3921d;
            if (iArr3 != null) {
                for (int i14 : iArr3) {
                    snapshotIdSet = snapshotIdSet.p(i14);
                }
            }
            if (this.f3919b != 0) {
                for (int i15 = 0; i15 < 64; i15++) {
                    if ((this.f3919b & (1 << i15)) != 0) {
                        snapshotIdSet = snapshotIdSet.p(this.f3920c + i15);
                    }
                }
            }
            if (this.f3918a != 0) {
                while (i13 < 64) {
                    if ((this.f3918a & (1 << i13)) != 0) {
                        snapshotIdSet = snapshotIdSet.p(i13 + 64 + this.f3920c);
                    }
                    i13++;
                }
            }
            return snapshotIdSet;
        }
        int[] iArr4 = snapshotIdSet.f3921d;
        if (iArr4 != null) {
            snapshotIdSetP = this;
            for (int i16 : iArr4) {
                snapshotIdSetP = snapshotIdSetP.p(i16);
            }
        } else {
            snapshotIdSetP = this;
        }
        if (snapshotIdSet.f3919b != 0) {
            for (int i17 = 0; i17 < 64; i17++) {
                if ((snapshotIdSet.f3919b & (1 << i17)) != 0) {
                    snapshotIdSetP = snapshotIdSetP.p(snapshotIdSet.f3920c + i17);
                }
            }
        }
        if (snapshotIdSet.f3918a != 0) {
            while (i13 < 64) {
                if ((snapshotIdSet.f3918a & (1 << i13)) != 0) {
                    snapshotIdSetP = snapshotIdSetP.p(i13 + 64 + snapshotIdSet.f3920c);
                }
                i13++;
            }
        }
        return snapshotIdSetP;
    }

    public final SnapshotIdSet p(int i11) {
        int i12;
        int[] iArrQ0;
        int i13 = this.f3920c;
        int i14 = i11 - i13;
        long j11 = 0;
        if (i14 >= 0 && i14 < 64) {
            long j12 = 1 << i14;
            long j13 = this.f3919b;
            if ((j13 & j12) == 0) {
                return new SnapshotIdSet(this.f3918a, j13 | j12, i13, this.f3921d);
            }
        } else if (i14 >= 64 && i14 < 128) {
            long j14 = 1 << (i14 - 64);
            long j15 = this.f3918a;
            if ((j15 & j14) == 0) {
                return new SnapshotIdSet(j15 | j14, this.f3919b, i13, this.f3921d);
            }
        } else if (i14 < 128) {
            int[] iArr = this.f3921d;
            if (iArr == null) {
                return new SnapshotIdSet(this.f3918a, this.f3919b, i13, new int[]{i11});
            }
            int iA = m.a(iArr, i11);
            if (iA < 0) {
                int i15 = -(iA + 1);
                int length = iArr.length;
                int[] iArr2 = new int[length + 1];
                ArraysKt.l(iArr, iArr2, 0, 0, i15);
                ArraysKt.l(iArr, iArr2, i15 + 1, i15, length);
                iArr2[i15] = i11;
                return new SnapshotIdSet(this.f3918a, this.f3919b, this.f3920c, iArr2);
            }
        } else if (!m(i11)) {
            long j16 = this.f3918a;
            long j17 = this.f3919b;
            int i16 = this.f3920c;
            int i17 = ((i11 + 1) / 64) * 64;
            ArrayList arrayList = null;
            long j18 = j17;
            long j19 = j16;
            while (true) {
                if (i16 >= i17) {
                    i12 = i16;
                    break;
                }
                if (j18 != j11) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                        int[] iArr3 = this.f3921d;
                        if (iArr3 != null) {
                            for (int i18 : iArr3) {
                                arrayList.add(Integer.valueOf(i18));
                            }
                        }
                    }
                    for (int i19 = 0; i19 < 64; i19++) {
                        if (((1 << i19) & j18) != 0) {
                            arrayList.add(Integer.valueOf(i19 + i16));
                        }
                    }
                    j11 = 0;
                }
                if (j19 == j11) {
                    i12 = i17;
                    j18 = j11;
                    break;
                }
                i16 += 64;
                j18 = j19;
                j19 = j11;
            }
            if (arrayList == null || (iArrQ0 = CollectionsKt.Q0(arrayList)) == null) {
                iArrQ0 = this.f3921d;
            }
            return new SnapshotIdSet(j19, j18, i12, iArrQ0).p(i11);
        }
        return this;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(super.toString());
        sb2.append(" [");
        ArrayList arrayList = new ArrayList(CollectionsKt.v(this, 10));
        Iterator it = iterator();
        while (it.hasNext()) {
            arrayList.add(String.valueOf(((Number) it.next()).intValue()));
        }
        sb2.append(androidx.compose.runtime.snapshots.a.d(arrayList, null, null, null, 0, null, null, 63, null));
        sb2.append(']');
        return sb2.toString();
    }
}
