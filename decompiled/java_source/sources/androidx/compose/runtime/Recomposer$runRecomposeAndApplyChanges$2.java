package androidx.compose.runtime;

import androidx.collection.MutableScatterSet;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\u008a@¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"Lkotlinx/coroutines/n0;", "Landroidx/compose/runtime/u0;", "parentFrameClock", "", "<anonymous>", "(Lkotlinx/coroutines/n0;Landroidx/compose/runtime/u0;)V"}, k = 3, mv = {1, 8, 0})
@DebugMetadata(c = "androidx.compose.runtime.Recomposer$runRecomposeAndApplyChanges$2", f = "Recomposer.kt", l = {574, 585}, m = "invokeSuspend")
@SourceDebugExtension
final class Recomposer$runRecomposeAndApplyChanges$2 extends SuspendLambda implements Function3<kotlinx.coroutines.n0, u0, Continuation<? super Unit>, Object> {
    /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    Object L$4;
    Object L$5;
    Object L$6;
    Object L$7;
    Object L$8;
    int label;
    final /* synthetic */ Recomposer this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    Recomposer$runRecomposeAndApplyChanges$2(Recomposer recomposer, Continuation<? super Recomposer$runRecomposeAndApplyChanges$2> continuation) {
        super(3, continuation);
        this.this$0 = recomposer;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:22:0x0083 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:23:0x0085 A[Catch: all -> 0x002b, LOOP:1: B:12:0x0043->B:23:0x0085, LOOP_END, TryCatch #0 {all -> 0x002b, blocks: (B:4:0x000d, B:6:0x001a, B:9:0x002e, B:12:0x0043, B:14:0x004e, B:16:0x005a, B:18:0x0064, B:19:0x0074, B:23:0x0085, B:24:0x008e, B:27:0x009b, B:29:0x00aa, B:31:0x00b6, B:33:0x00c0, B:34:0x00ca, B:38:0x00d6, B:39:0x00d9, B:42:0x00e9, B:44:0x00f8, B:46:0x0104, B:48:0x010e, B:49:0x011e, B:55:0x013a, B:56:0x013d), top: B:61:0x000d }] */
    /* JADX WARN: Code duplicated, block: B:37:0x00d4 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:38:0x00d6 A[Catch: all -> 0x002b, LOOP:3: B:27:0x009b->B:38:0x00d6, LOOP_END, TryCatch #0 {all -> 0x002b, blocks: (B:4:0x000d, B:6:0x001a, B:9:0x002e, B:12:0x0043, B:14:0x004e, B:16:0x005a, B:18:0x0064, B:19:0x0074, B:23:0x0085, B:24:0x008e, B:27:0x009b, B:29:0x00aa, B:31:0x00b6, B:33:0x00c0, B:34:0x00ca, B:38:0x00d6, B:39:0x00d9, B:42:0x00e9, B:44:0x00f8, B:46:0x0104, B:48:0x010e, B:49:0x011e, B:55:0x013a, B:56:0x013d), top: B:61:0x000d }] */
    /* JADX WARN: Code duplicated, block: B:65:0x008e A[EDGE_INSN: B:65:0x008e->B:24:0x008e BREAK  A[LOOP:1: B:12:0x0043->B:23:0x0085], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:70:0x00d9 A[EDGE_INSN: B:70:0x00d9->B:39:0x00d9 BREAK  A[LOOP:3: B:27:0x009b->B:38:0x00d6], SYNTHETIC] */
    public static final void a(Recomposer recomposer, List list, List list2, List list3, MutableScatterSet mutableScatterSet, MutableScatterSet mutableScatterSet2, MutableScatterSet mutableScatterSet3, MutableScatterSet mutableScatterSet4) {
        synchronized (recomposer.f3638c) {
            try {
                list.clear();
                list2.clear();
                int size = list3.size();
                for (int i11 = 0; i11 < size; i11++) {
                    y yVar = (y) list3.get(i11);
                    yVar.s();
                    recomposer.v0(yVar);
                }
                list3.clear();
                Object[] objArr = mutableScatterSet.f2247b;
                long[] jArr = mutableScatterSet.f2246a;
                int length = jArr.length - 2;
                long j11 = -9187201950435737472L;
                if (length >= 0) {
                    int i12 = 0;
                    while (true) {
                        long j12 = jArr[i12];
                        long[] jArr2 = jArr;
                        if ((((~j12) << 7) & j12 & j11) != j11) {
                            int i13 = 8 - ((~(i12 - length)) >>> 31);
                            for (int i14 = 0; i14 < i13; i14++) {
                                if ((j12 & 255) < 128) {
                                    y yVar2 = (y) objArr[(i12 << 3) + i14];
                                    yVar2.s();
                                    recomposer.v0(yVar2);
                                }
                                j12 >>= 8;
                            }
                            if (i13 != 8) {
                                break;
                            }
                            if (i12 != length) {
                                break;
                            }
                            i12++;
                            jArr = jArr2;
                            j11 = -9187201950435737472L;
                        } else if (i12 != length) {
                            break;
                            break;
                        } else {
                            i12++;
                            jArr = jArr2;
                            j11 = -9187201950435737472L;
                        }
                    }
                }
                mutableScatterSet.m();
                Object[] objArr2 = mutableScatterSet2.f2247b;
                long[] jArr3 = mutableScatterSet2.f2246a;
                int length2 = jArr3.length - 2;
                if (length2 >= 0) {
                    int i15 = 0;
                    while (true) {
                        long j13 = jArr3[i15];
                        if ((((~j13) << 7) & j13 & (-9187201950435737472L)) == -9187201950435737472L) {
                            if (i15 != length2) {
                                break;
                                break;
                            }
                            i15++;
                        } else {
                            int i16 = 8 - ((~(i15 - length2)) >>> 31);
                            for (int i17 = 0; i17 < i16; i17++) {
                                if ((j13 & 255) < 128) {
                                    ((y) objArr2[(i15 << 3) + i17]).t();
                                }
                                j13 >>= 8;
                            }
                            if (i16 != 8) {
                                break;
                            } else if (i15 != length2) {
                                break;
                            } else {
                                i15++;
                            }
                        }
                    }
                }
                mutableScatterSet2.m();
                mutableScatterSet3.m();
                Object[] objArr3 = mutableScatterSet4.f2247b;
                long[] jArr4 = mutableScatterSet4.f2246a;
                int length3 = jArr4.length - 2;
                if (length3 >= 0) {
                    int i18 = 0;
                    while (true) {
                        long j14 = jArr4[i18];
                        if ((((~j14) << 7) & j14 & (-9187201950435737472L)) != -9187201950435737472L) {
                            int i19 = 8 - ((~(i18 - length3)) >>> 31);
                            for (int i20 = 0; i20 < i19; i20++) {
                                if ((j14 & 255) < 128) {
                                    y yVar3 = (y) objArr3[(i18 << 3) + i20];
                                    yVar3.s();
                                    recomposer.v0(yVar3);
                                }
                                j14 >>= 8;
                            }
                            if (i19 != 8) {
                                break;
                            }
                        }
                        if (i18 == length3) {
                            break;
                        } else {
                            i18++;
                        }
                    }
                }
                mutableScatterSet4.m();
                Unit unit = Unit.f67061a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(List list, Recomposer recomposer) {
        list.clear();
        synchronized (recomposer.f3638c) {
            try {
                List list2 = recomposer.f3646k;
                int size = list2.size();
                for (int i11 = 0; i11 < size; i11++) {
                    list.add((y0) list2.get(i11));
                }
                recomposer.f3646k.clear();
                Unit unit = Unit.f67061a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(kotlinx.coroutines.n0 n0Var, u0 u0Var, Continuation<? super Unit> continuation) {
        Recomposer$runRecomposeAndApplyChanges$2 recomposer$runRecomposeAndApplyChanges$2 = new Recomposer$runRecomposeAndApplyChanges$2(this.this$0, continuation);
        recomposer$runRecomposeAndApplyChanges$2.L$0 = u0Var;
        return recomposer$runRecomposeAndApplyChanges$2.invokeSuspend(Unit.f67061a);
    }

    /* JADX WARN: Code duplicated, block: B:13:0x00be  */
    /* JADX WARN: Code duplicated, block: B:15:0x00da A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:16:0x00db  */
    /* JADX WARN: Code duplicated, block: B:19:0x00ed  */
    /* JADX WARN: Code duplicated, block: B:21:0x0138 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:22:0x0139  */
    /* JADX WARN: Code duplicated, block: B:25:0x0151  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0139 -> B:23:0x0142). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x0151 -> B:24:0x014d). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final java.lang.Object invokeSuspend(java.lang.Object r26) {
        /*
            Method dump skipped, instruction units count: 361
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.Recomposer$runRecomposeAndApplyChanges$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
