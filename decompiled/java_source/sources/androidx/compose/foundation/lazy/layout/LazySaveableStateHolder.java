package androidx.compose.foundation.lazy.layout;

import androidx.compose.runtime.g2;
import androidx.compose.runtime.i1;
import androidx.compose.runtime.saveable.SaveableStateRegistryKt;
import androidx.compose.runtime.saveable.SaverKt;
import androidx.compose.runtime.u2;
import androidx.compose.runtime.v1;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
final class LazySaveableStateHolder implements androidx.compose.runtime.saveable.b, androidx.compose.runtime.saveable.a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final Companion f3002d = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final androidx.compose.runtime.saveable.b f3003a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final i1 f3004b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Set f3005c;

    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final androidx.compose.runtime.saveable.d a(final androidx.compose.runtime.saveable.b bVar) {
            return SaverKt.a(new Function2<androidx.compose.runtime.saveable.e, LazySaveableStateHolder, Map<String, ? extends List<? extends Object>>>() { // from class: androidx.compose.foundation.lazy.layout.LazySaveableStateHolder$Companion$saver$1
                @Override // kotlin.jvm.functions.Function2
                public final Map<String, List<Object>> invoke(androidx.compose.runtime.saveable.e eVar, LazySaveableStateHolder lazySaveableStateHolder) {
                    Map<String, List<Object>> mapE = lazySaveableStateHolder.e();
                    if (mapE.isEmpty()) {
                        return null;
                    }
                    return mapE;
                }
            }, new Function1<Map<String, ? extends List<? extends Object>>, LazySaveableStateHolder>() { // from class: androidx.compose.foundation.lazy.layout.LazySaveableStateHolder$Companion$saver$2
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final LazySaveableStateHolder invoke(Map<String, ? extends List<? extends Object>> map) {
                    return new LazySaveableStateHolder(bVar, map);
                }
            });
        }
    }

    public LazySaveableStateHolder(androidx.compose.runtime.saveable.b bVar) {
        this.f3003a = bVar;
        this.f3004b = u2.c(null, null, 2, null);
        this.f3005c = new LinkedHashSet();
    }

    public LazySaveableStateHolder(final androidx.compose.runtime.saveable.b bVar, Map map) {
        this(SaveableStateRegistryKt.a(map, new Function1<Object, Boolean>() { // from class: androidx.compose.foundation.lazy.layout.LazySaveableStateHolder.1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Boolean invoke(Object obj) {
                androidx.compose.runtime.saveable.b bVar2 = bVar;
                return Boolean.valueOf(bVar2 != null ? bVar2.a(obj) : true);
            }
        }));
    }

    @Override // androidx.compose.runtime.saveable.b
    public boolean a(Object obj) {
        return this.f3003a.a(obj);
    }

    @Override // androidx.compose.runtime.saveable.b
    public androidx.compose.runtime.saveable.b.a b(String str, Function0 function0) {
        return this.f3003a.b(str, function0);
    }

    @Override // androidx.compose.runtime.saveable.a
    public void c(Object obj) {
        androidx.compose.runtime.saveable.a aVarH = h();
        if (aVarH == null) {
            throw new IllegalArgumentException("null wrappedHolder");
        }
        aVarH.c(obj);
    }

    @Override // androidx.compose.runtime.saveable.a
    public void d(final Object obj, final Function2 function2, androidx.compose.runtime.i iVar, final int i11) {
        int i12;
        androidx.compose.runtime.i iVarG = iVar.g(-697180401);
        if ((i11 & 6) == 0) {
            i12 = (iVarG.A(obj) ? 4 : 2) | i11;
        } else {
            i12 = i11;
        }
        if ((i11 & 48) == 0) {
            i12 |= iVarG.A(function2) ? 32 : 16;
        }
        if ((i11 & 384) == 0) {
            i12 |= iVarG.A(this) ? 256 : 128;
        }
        if ((i12 & 147) == 146 && iVarG.h()) {
            iVarG.G();
        } else {
            if (androidx.compose.runtime.k.H()) {
                androidx.compose.runtime.k.Q(-697180401, i12, -1, "androidx.compose.foundation.lazy.layout.LazySaveableStateHolder.SaveableStateProvider (LazySaveableStateHolder.kt:82)");
            }
            androidx.compose.runtime.saveable.a aVarH = h();
            if (aVarH == null) {
                throw new IllegalArgumentException("null wrappedHolder");
            }
            int i13 = i12 & 14;
            aVarH.d(obj, function2, iVarG, i12 & 126);
            boolean zA = iVarG.A(this) | iVarG.A(obj);
            Object objY = iVarG.y();
            if (zA || objY == androidx.compose.runtime.i.f3736a.a()) {
                objY = new Function1<androidx.compose.runtime.d0, androidx.compose.runtime.c0>() { // from class: androidx.compose.foundation.lazy.layout.LazySaveableStateHolder$SaveableStateProvider$2$1

                    public static final class a implements androidx.compose.runtime.c0 {

                        /* JADX INFO: renamed from: a, reason: collision with root package name */
                        final /* synthetic */ LazySaveableStateHolder f3006a;

                        /* JADX INFO: renamed from: b, reason: collision with root package name */
                        final /* synthetic */ Object f3007b;

                        public a(LazySaveableStateHolder lazySaveableStateHolder, Object obj) {
                            this.f3006a = lazySaveableStateHolder;
                            this.f3007b = obj;
                        }

                        @Override // androidx.compose.runtime.c0
                        public void dispose() {
                            this.f3006a.f3005c.add(this.f3007b);
                        }
                    }

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final androidx.compose.runtime.c0 invoke(androidx.compose.runtime.d0 d0Var) {
                        this.this$0.f3005c.remove(obj);
                        return new a(this.this$0, obj);
                    }
                };
                iVarG.p(objY);
            }
            androidx.compose.runtime.g0.a(obj, (Function1) objY, iVarG, i13);
            if (androidx.compose.runtime.k.H()) {
                androidx.compose.runtime.k.P();
            }
        }
        g2 g2VarJ = iVarG.j();
        if (g2VarJ != null) {
            g2VarJ.a(new Function2<androidx.compose.runtime.i, Integer, Unit>() { // from class: androidx.compose.foundation.lazy.layout.LazySaveableStateHolder$SaveableStateProvider$3
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Object invoke(Object obj2, Object obj3) {
                    invoke((androidx.compose.runtime.i) obj2, ((Number) obj3).intValue());
                    return Unit.f67061a;
                }

                public final void invoke(androidx.compose.runtime.i iVar2, int i14) {
                    this.$tmp1_rcvr.d(obj, function2, iVar2, v1.a(i11 | 1));
                }
            });
        }
    }

    @Override // androidx.compose.runtime.saveable.b
    public Map e() {
        androidx.compose.runtime.saveable.a aVarH = h();
        if (aVarH != null) {
            Iterator it = this.f3005c.iterator();
            while (it.hasNext()) {
                aVarH.c(it.next());
            }
        }
        return this.f3003a.e();
    }

    @Override // androidx.compose.runtime.saveable.b
    public Object f(String str) {
        return this.f3003a.f(str);
    }

    public final androidx.compose.runtime.saveable.a h() {
        return (androidx.compose.runtime.saveable.a) this.f3004b.getValue();
    }

    public final void i(androidx.compose.runtime.saveable.a aVar) {
        this.f3004b.setValue(aVar);
    }
}
