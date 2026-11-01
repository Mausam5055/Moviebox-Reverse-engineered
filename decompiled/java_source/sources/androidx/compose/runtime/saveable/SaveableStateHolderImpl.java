package androidx.compose.runtime.saveable;

import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.c0;
import androidx.compose.runtime.d0;
import androidx.compose.runtime.g0;
import androidx.compose.runtime.g2;
import androidx.compose.runtime.i;
import androidx.compose.runtime.k;
import androidx.compose.runtime.t1;
import androidx.compose.runtime.v1;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
final class SaveableStateHolderImpl implements androidx.compose.runtime.saveable.a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final a f3894d = new a(null);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final d f3895e = SaverKt.a(new Function2<e, SaveableStateHolderImpl, Map<Object, Map<String, ? extends List<? extends Object>>>>() { // from class: androidx.compose.runtime.saveable.SaveableStateHolderImpl$Companion$Saver$1
        @Override // kotlin.jvm.functions.Function2
        public final Map<Object, Map<String, List<Object>>> invoke(e eVar, SaveableStateHolderImpl saveableStateHolderImpl) {
            return saveableStateHolderImpl.h();
        }
    }, new Function1<Map<Object, Map<String, ? extends List<? extends Object>>>, SaveableStateHolderImpl>() { // from class: androidx.compose.runtime.saveable.SaveableStateHolderImpl$Companion$Saver$2
        @Override // kotlin.jvm.functions.Function1
        public final SaveableStateHolderImpl invoke(Map<Object, Map<String, List<Object>>> map) {
            return new SaveableStateHolderImpl(map);
        }
    });

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map f3896a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map f3897b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private b f3898c;

    public final class RegistryHolder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Object f3899a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f3900b = true;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final b f3901c;

        public RegistryHolder(Object obj) {
            this.f3899a = obj;
            this.f3901c = SaveableStateRegistryKt.a((Map) SaveableStateHolderImpl.this.f3896a.get(obj), new Function1<Object, Boolean>() { // from class: androidx.compose.runtime.saveable.SaveableStateHolderImpl$RegistryHolder$registry$1
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final Boolean invoke(Object obj2) {
                    b bVarG = saveableStateHolderImpl.g();
                    return Boolean.valueOf(bVarG != null ? bVarG.a(obj2) : true);
                }
            });
        }

        public final b a() {
            return this.f3901c;
        }

        public final void b(Map map) {
            if (this.f3900b) {
                Map mapE = this.f3901c.e();
                if (mapE.isEmpty()) {
                    map.remove(this.f3899a);
                } else {
                    map.put(this.f3899a, mapE);
                }
            }
        }

        public final void c(boolean z10) {
            this.f3900b = z10;
        }
    }

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final d a() {
            return SaveableStateHolderImpl.f3895e;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SaveableStateHolderImpl() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public SaveableStateHolderImpl(Map map) {
        this.f3896a = map;
        this.f3897b = new LinkedHashMap();
    }

    public /* synthetic */ SaveableStateHolderImpl(Map map, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? new LinkedHashMap() : map);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Map h() {
        Map mapW = MapsKt.w(this.f3896a);
        Iterator it = this.f3897b.values().iterator();
        while (it.hasNext()) {
            ((RegistryHolder) it.next()).b(mapW);
        }
        if (mapW.isEmpty()) {
            return null;
        }
        return mapW;
    }

    @Override // androidx.compose.runtime.saveable.a
    public void c(Object obj) {
        RegistryHolder registryHolder = (RegistryHolder) this.f3897b.get(obj);
        if (registryHolder != null) {
            registryHolder.c(false);
        } else {
            this.f3896a.remove(obj);
        }
    }

    @Override // androidx.compose.runtime.saveable.a
    public void d(final Object obj, final Function2 function2, i iVar, final int i11) {
        int i12;
        i iVarG = iVar.g(-1198538093);
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
            if (k.H()) {
                k.Q(-1198538093, i12, -1, "androidx.compose.runtime.saveable.SaveableStateHolderImpl.SaveableStateProvider (SaveableStateHolder.kt:75)");
            }
            iVarG.E(Sdk$SDKError.Reason.PLACEMENT_AD_TYPE_MISMATCH_VALUE, obj);
            Object objY = iVarG.y();
            i.a aVar = i.f3736a;
            if (objY == aVar.a()) {
                b bVar = this.f3898c;
                if (!(bVar != null ? bVar.a(obj) : true)) {
                    throw new IllegalArgumentException(("Type of the key " + obj + " is not supported. On Android you can only use types which can be stored inside the Bundle.").toString());
                }
                objY = new RegistryHolder(obj);
                iVarG.p(objY);
            }
            final RegistryHolder registryHolder = (RegistryHolder) objY;
            CompositionLocalKt.a(SaveableStateRegistryKt.d().d(registryHolder.a()), function2, iVarG, (i12 & 112) | t1.f4041i);
            Unit unit = Unit.f67061a;
            boolean zA = iVarG.A(this) | iVarG.A(obj) | iVarG.A(registryHolder);
            Object objY2 = iVarG.y();
            if (zA || objY2 == aVar.a()) {
                objY2 = new Function1<d0, c0>() { // from class: androidx.compose.runtime.saveable.SaveableStateHolderImpl$SaveableStateProvider$1$1$1

                    public static final class a implements c0 {

                        /* JADX INFO: renamed from: a, reason: collision with root package name */
                        final /* synthetic */ SaveableStateHolderImpl.RegistryHolder f3903a;

                        /* JADX INFO: renamed from: b, reason: collision with root package name */
                        final /* synthetic */ SaveableStateHolderImpl f3904b;

                        /* JADX INFO: renamed from: c, reason: collision with root package name */
                        final /* synthetic */ Object f3905c;

                        public a(SaveableStateHolderImpl.RegistryHolder registryHolder, SaveableStateHolderImpl saveableStateHolderImpl, Object obj) {
                            this.f3903a = registryHolder;
                            this.f3904b = saveableStateHolderImpl;
                            this.f3905c = obj;
                        }

                        @Override // androidx.compose.runtime.c0
                        public void dispose() {
                            this.f3903a.b(this.f3904b.f3896a);
                            this.f3904b.f3897b.remove(this.f3905c);
                        }
                    }

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final c0 invoke(d0 d0Var) {
                        boolean zContainsKey = this.this$0.f3897b.containsKey(obj);
                        Object obj2 = obj;
                        if (!zContainsKey) {
                            this.this$0.f3896a.remove(obj);
                            this.this$0.f3897b.put(obj, registryHolder);
                            return new a(registryHolder, this.this$0, obj);
                        }
                        throw new IllegalArgumentException(("Key " + obj2 + " was used multiple times ").toString());
                    }
                };
                iVarG.p(objY2);
            }
            g0.a(unit, (Function1) objY2, iVarG, 6);
            iVarG.w();
            if (k.H()) {
                k.P();
            }
        }
        g2 g2VarJ = iVarG.j();
        if (g2VarJ != null) {
            g2VarJ.a(new Function2<i, Integer, Unit>() { // from class: androidx.compose.runtime.saveable.SaveableStateHolderImpl$SaveableStateProvider$2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Object invoke(Object obj2, Object obj3) {
                    invoke((i) obj2, ((Number) obj3).intValue());
                    return Unit.f67061a;
                }

                public final void invoke(i iVar2, int i13) {
                    this.$tmp0_rcvr.d(obj, function2, iVar2, v1.a(i11 | 1));
                }
            });
        }
    }

    public final b g() {
        return this.f3898c;
    }

    public final void i(b bVar) {
        this.f3898c = bVar;
    }
}
