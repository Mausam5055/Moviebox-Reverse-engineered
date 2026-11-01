package androidx.compose.ui.input.pointer;

import android.os.SystemClock;
import android.view.MotionEvent;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
public final class PointerInteropFilter$pointerInputFilter$1 extends c0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private PointerInteropFilter.DispatchToViewState f4950b = PointerInteropFilter.DispatchToViewState.Unknown;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ PointerInteropFilter f4951c;

    PointerInteropFilter$pointerInputFilter$1(PointerInteropFilter pointerInteropFilter) {
        this.f4951c = pointerInteropFilter;
    }

    private final void h(o oVar) {
        List listB = oVar.b();
        int size = listB.size();
        for (int i11 = 0; i11 < size; i11++) {
            if (((w) listB.get(i11)).p()) {
                if (this.f4950b == PointerInteropFilter.DispatchToViewState.Dispatching) {
                    androidx.compose.ui.layout.l lVarB = b();
                    if (lVarB == null) {
                        throw new IllegalStateException("layoutCoordinates not set");
                    }
                    long jY = lVarB.Y(y.g.f78470b.c());
                    final PointerInteropFilter pointerInteropFilter = this.f4951c;
                    f0.b(oVar, jY, new Function1<MotionEvent, Unit>() { // from class: androidx.compose.ui.input.pointer.PointerInteropFilter$pointerInputFilter$1$dispatchToView$2
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                            invoke((MotionEvent) obj);
                            return Unit.f67061a;
                        }

                        public final void invoke(MotionEvent motionEvent) {
                            pointerInteropFilter.i().invoke(motionEvent);
                        }
                    });
                }
                this.f4950b = PointerInteropFilter.DispatchToViewState.NotDispatching;
                return;
            }
        }
        androidx.compose.ui.layout.l lVarB2 = b();
        if (lVarB2 == null) {
            throw new IllegalStateException("layoutCoordinates not set");
        }
        long jY2 = lVarB2.Y(y.g.f78470b.c());
        final PointerInteropFilter pointerInteropFilter2 = this.f4951c;
        f0.c(oVar, jY2, new Function1<MotionEvent, Unit>() { // from class: androidx.compose.ui.input.pointer.PointerInteropFilter$pointerInputFilter$1$dispatchToView$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                invoke((MotionEvent) obj);
                return Unit.f67061a;
            }

            public final void invoke(MotionEvent motionEvent) {
                if (motionEvent.getActionMasked() != 0) {
                    pointerInteropFilter2.i().invoke(motionEvent);
                } else {
                    this.this$0.f4950b = ((Boolean) pointerInteropFilter2.i().invoke(motionEvent)).booleanValue() ? PointerInteropFilter.DispatchToViewState.Dispatching : PointerInteropFilter.DispatchToViewState.NotDispatching;
                }
            }
        });
        if (this.f4950b == PointerInteropFilter.DispatchToViewState.Dispatching) {
            int size2 = listB.size();
            for (int i12 = 0; i12 < size2; i12++) {
                ((w) listB.get(i12)).a();
            }
            g gVarC = oVar.c();
            if (gVarC == null) {
                return;
            }
            gVarC.e(!this.f4951c.a());
        }
    }

    private final void i() {
        this.f4950b = PointerInteropFilter.DispatchToViewState.Unknown;
        this.f4951c.j(false);
    }

    @Override // androidx.compose.ui.input.pointer.c0
    public boolean c() {
        return true;
    }

    @Override // androidx.compose.ui.input.pointer.c0
    public void d() {
        if (this.f4950b == PointerInteropFilter.DispatchToViewState.Dispatching) {
            long jUptimeMillis = SystemClock.uptimeMillis();
            final PointerInteropFilter pointerInteropFilter = this.f4951c;
            f0.a(jUptimeMillis, new Function1<MotionEvent, Unit>() { // from class: androidx.compose.ui.input.pointer.PointerInteropFilter$pointerInputFilter$1$onCancel$1
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                    invoke((MotionEvent) obj);
                    return Unit.f67061a;
                }

                public final void invoke(MotionEvent motionEvent) {
                    pointerInteropFilter.i().invoke(motionEvent);
                }
            });
            i();
        }
    }

    @Override // androidx.compose.ui.input.pointer.c0
    public void e(o oVar, PointerEventPass pointerEventPass, long j11) {
        boolean z10;
        List listB = oVar.b();
        if (this.f4951c.a()) {
            z10 = true;
            break;
        }
        int size = listB.size();
        int i11 = 0;
        while (true) {
            if (i11 >= size) {
                z10 = false;
                break;
            }
            w wVar = (w) listB.get(i11);
            if (p.b(wVar) || p.d(wVar)) {
                z10 = true;
                break;
            }
            i11++;
        }
        if (this.f4950b != PointerInteropFilter.DispatchToViewState.NotDispatching) {
            if (pointerEventPass == PointerEventPass.Initial && z10) {
                h(oVar);
            }
            if (pointerEventPass == PointerEventPass.Final && !z10) {
                h(oVar);
            }
        }
        if (pointerEventPass == PointerEventPass.Final) {
            int size2 = listB.size();
            for (int i12 = 0; i12 < size2; i12++) {
                if (!p.d((w) listB.get(i12))) {
                    return;
                }
            }
            i();
        }
    }
}
