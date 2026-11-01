package androidx.compose.foundation.gestures;

import java.util.concurrent.CancellationException;
import kotlin.Result;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;

/* JADX INFO: loaded from: classes.dex */
public final class BringIntoViewRequestPriorityQueue {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int f2628b = androidx.compose.runtime.collection.b.f3680d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final androidx.compose.runtime.collection.b f2629a = new androidx.compose.runtime.collection.b(new ContentInViewNode.a[16], 0);

    public final void b(Throwable th2) {
        androidx.compose.runtime.collection.b bVar = this.f2629a;
        int iN = bVar.n();
        kotlinx.coroutines.n[] nVarArr = new kotlinx.coroutines.n[iN];
        for (int i11 = 0; i11 < iN; i11++) {
            nVarArr[i11] = ((ContentInViewNode.a) bVar.m()[i11]).a();
        }
        for (int i12 = 0; i12 < iN; i12++) {
            nVarArr[i12].cancel(th2);
        }
        if (!this.f2629a.p()) {
            throw new IllegalStateException("uncancelled requests present");
        }
    }

    public final boolean c(final ContentInViewNode.a aVar) {
        y.i iVar = (y.i) aVar.b().invoke();
        if (iVar == null) {
            kotlinx.coroutines.n nVarA = aVar.a();
            Result.Companion companion = Result.INSTANCE;
            nVarA.resumeWith(Result.m454constructorimpl(Unit.f67061a));
            return false;
        }
        aVar.a().invokeOnCancellation(new Function1<Throwable, Unit>() { // from class: androidx.compose.foundation.gestures.BringIntoViewRequestPriorityQueue$enqueue$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                invoke((Throwable) obj);
                return Unit.f67061a;
            }

            public final void invoke(Throwable th2) {
                this.this$0.f2629a.t(aVar);
            }
        });
        IntRange intRange = new IntRange(0, this.f2629a.n() - 1);
        int first = intRange.getFirst();
        int last = intRange.getLast();
        if (first <= last) {
            while (true) {
                y.i iVar2 = (y.i) ((ContentInViewNode.a) this.f2629a.m()[last]).b().invoke();
                if (iVar2 != null) {
                    y.i iVarM = iVar.m(iVar2);
                    if (!Intrinsics.c(iVarM, iVar)) {
                        if (!Intrinsics.c(iVarM, iVar2)) {
                            CancellationException cancellationException = new CancellationException("bringIntoView call interrupted by a newer, non-overlapping call");
                            int iN = this.f2629a.n() - 1;
                            if (iN <= last) {
                                while (true) {
                                    ((ContentInViewNode.a) this.f2629a.m()[last]).a().cancel(cancellationException);
                                    if (iN == last) {
                                        break;
                                    }
                                    iN++;
                                }
                            }
                        }
                    } else {
                        this.f2629a.a(last + 1, aVar);
                        return true;
                    }
                }
                if (last != first) {
                    last--;
                }
            }
        }
        this.f2629a.a(0, aVar);
        return true;
    }

    public final void d() {
        IntRange intRange = new IntRange(0, this.f2629a.n() - 1);
        int first = intRange.getFirst();
        int last = intRange.getLast();
        if (first <= last) {
            while (true) {
                ((ContentInViewNode.a) this.f2629a.m()[first]).a().resumeWith(Result.m454constructorimpl(Unit.f67061a));
                if (first == last) {
                    break;
                } else {
                    first++;
                }
            }
        }
        this.f2629a.h();
    }
}
