package androidx.compose.ui.platform;

import android.view.View;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.tooling.InspectionTablesKt;
import androidx.compose.ui.R$id;
import androidx.p009lifecycle.Lifecycle;
import java.util.Set;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.TypeIntrinsics;

/* JADX INFO: loaded from: classes.dex */
final class WrappedComposition implements androidx.compose.runtime.l, androidx.p009lifecycle.r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final AndroidComposeView f5722a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final androidx.compose.runtime.l f5723b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f5724c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Lifecycle f5725d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Function2 f5726e = ComposableSingletons$Wrapper_androidKt.f5608a.a();

    public WrappedComposition(AndroidComposeView androidComposeView, androidx.compose.runtime.l lVar) {
        this.f5722a = androidComposeView;
        this.f5723b = lVar;
    }

    @Override // androidx.compose.runtime.l
    public void d(final Function2 function2) {
        this.f5722a.setOnViewTreeOwnersAvailable(new Function1<AndroidComposeView.b, Unit>() { // from class: androidx.compose.ui.platform.WrappedComposition$setContent$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                invoke((AndroidComposeView.b) obj);
                return Unit.f67061a;
            }

            public final void invoke(AndroidComposeView.b bVar) {
                if (this.this$0.f5724c) {
                    return;
                }
                Lifecycle lifecycle = bVar.a().getLifecycle();
                this.this$0.f5726e = function2;
                if (this.this$0.f5725d == null) {
                    this.this$0.f5725d = lifecycle;
                    lifecycle.a(this.this$0);
                } else if (lifecycle.b().isAtLeast(Lifecycle.State.CREATED)) {
                    androidx.compose.runtime.l lVarX = this.this$0.x();
                    final WrappedComposition wrappedComposition = this.this$0;
                    final Function2<androidx.compose.runtime.i, Integer, Unit> function3 = function2;
                    lVarX.d(androidx.compose.runtime.internal.b.b(-2000640158, true, new Function2<androidx.compose.runtime.i, Integer, Unit>() { // from class: androidx.compose.ui.platform.WrappedComposition$setContent$1.1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        /* JADX WARN: Multi-variable type inference failed */
                        {
                            super(2);
                        }

                        @Override // kotlin.jvm.functions.Function2
                        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                            invoke((androidx.compose.runtime.i) obj, ((Number) obj2).intValue());
                            return Unit.f67061a;
                        }

                        public final void invoke(androidx.compose.runtime.i iVar, int i11) {
                            if ((i11 & 3) == 2 && iVar.h()) {
                                iVar.G();
                                return;
                            }
                            if (androidx.compose.runtime.k.H()) {
                                androidx.compose.runtime.k.Q(-2000640158, i11, -1, "androidx.compose.ui.platform.WrappedComposition.setContent.<anonymous>.<anonymous> (Wrapper.android.kt:134)");
                            }
                            Object tag = wrappedComposition.y().getTag(R$id.inspection_slot_table_set);
                            Set set = TypeIntrinsics.n(tag) ? (Set) tag : null;
                            if (set == null) {
                                Object parent = wrappedComposition.y().getParent();
                                View view = parent instanceof View ? (View) parent : null;
                                Object tag2 = view != null ? view.getTag(R$id.inspection_slot_table_set) : null;
                                set = TypeIntrinsics.n(tag2) ? (Set) tag2 : null;
                            }
                            if (set != null) {
                                set.add(iVar.z());
                                iVar.u();
                            }
                            AndroidComposeView androidComposeViewY = wrappedComposition.y();
                            boolean zA = iVar.A(wrappedComposition);
                            WrappedComposition wrappedComposition2 = wrappedComposition;
                            Object objY = iVar.y();
                            if (zA || objY == androidx.compose.runtime.i.f3736a.a()) {
                                objY = new WrappedComposition$setContent$1$1$1$1(wrappedComposition2, null);
                                iVar.p(objY);
                            }
                            androidx.compose.runtime.g0.d(androidComposeViewY, (Function2) objY, iVar, 0);
                            AndroidComposeView androidComposeViewY2 = wrappedComposition.y();
                            boolean zA2 = iVar.A(wrappedComposition);
                            WrappedComposition wrappedComposition3 = wrappedComposition;
                            Object objY2 = iVar.y();
                            if (zA2 || objY2 == androidx.compose.runtime.i.f3736a.a()) {
                                objY2 = new WrappedComposition$setContent$1$1$2$1(wrappedComposition3, null);
                                iVar.p(objY2);
                            }
                            androidx.compose.runtime.g0.d(androidComposeViewY2, (Function2) objY2, iVar, 0);
                            androidx.compose.runtime.t1 t1VarD = InspectionTablesKt.a().d(set);
                            final WrappedComposition wrappedComposition4 = wrappedComposition;
                            final Function2<androidx.compose.runtime.i, Integer, Unit> function4 = function3;
                            CompositionLocalKt.a(t1VarD, androidx.compose.runtime.internal.b.d(-1193460702, true, new Function2<androidx.compose.runtime.i, Integer, Unit>() { // from class: androidx.compose.ui.platform.WrappedComposition.setContent.1.1.3
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                /* JADX WARN: Multi-variable type inference failed */
                                {
                                    super(2);
                                }

                                @Override // kotlin.jvm.functions.Function2
                                public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                                    invoke((androidx.compose.runtime.i) obj, ((Number) obj2).intValue());
                                    return Unit.f67061a;
                                }

                                public final void invoke(androidx.compose.runtime.i iVar2, int i12) {
                                    if ((i12 & 3) == 2 && iVar2.h()) {
                                        iVar2.G();
                                        return;
                                    }
                                    if (androidx.compose.runtime.k.H()) {
                                        androidx.compose.runtime.k.Q(-1193460702, i12, -1, "androidx.compose.ui.platform.WrappedComposition.setContent.<anonymous>.<anonymous>.<anonymous> (Wrapper.android.kt:154)");
                                    }
                                    AndroidCompositionLocals_androidKt.a(wrappedComposition4.y(), function4, iVar2, 0);
                                    if (androidx.compose.runtime.k.H()) {
                                        androidx.compose.runtime.k.P();
                                    }
                                }
                            }, iVar, 54), iVar, androidx.compose.runtime.t1.f4041i | 48);
                            if (androidx.compose.runtime.k.H()) {
                                androidx.compose.runtime.k.P();
                            }
                        }
                    }));
                }
            }
        });
    }

    @Override // androidx.compose.runtime.l
    public void dispose() {
        if (!this.f5724c) {
            this.f5724c = true;
            this.f5722a.getView().setTag(R$id.wrapped_composition_tag, null);
            Lifecycle lifecycle = this.f5725d;
            if (lifecycle != null) {
                lifecycle.d(this);
            }
        }
        this.f5723b.dispose();
    }

    @Override // androidx.p009lifecycle.r
    public void onStateChanged(androidx.p009lifecycle.u uVar, Lifecycle.Event event) {
        if (event == Lifecycle.Event.ON_DESTROY) {
            dispose();
        } else {
            if (event != Lifecycle.Event.ON_CREATE || this.f5724c) {
                return;
            }
            d(this.f5726e);
        }
    }

    public final androidx.compose.runtime.l x() {
        return this.f5723b;
    }

    public final AndroidComposeView y() {
        return this.f5722a;
    }
}
