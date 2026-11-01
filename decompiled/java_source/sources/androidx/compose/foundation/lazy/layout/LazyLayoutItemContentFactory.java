package androidx.compose.foundation.lazy.layout;

import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class LazyLayoutItemContentFactory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final androidx.compose.runtime.saveable.a f2978a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Function0 f2979b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Map f2980c = new LinkedHashMap();

    /* JADX INFO: Access modifiers changed from: private */
    final class CachedItemContent {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Object f2981a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Object f2982b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f2983c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private Function2 f2984d;

        public CachedItemContent(int i11, Object obj, Object obj2) {
            this.f2981a = obj;
            this.f2982b = obj2;
            this.f2983c = i11;
        }

        private final Function2 c() {
            final LazyLayoutItemContentFactory lazyLayoutItemContentFactory = LazyLayoutItemContentFactory.this;
            return androidx.compose.runtime.internal.b.b(1403994769, true, new Function2<androidx.compose.runtime.i, Integer, Unit>() { // from class: androidx.compose.foundation.lazy.layout.LazyLayoutItemContentFactory$CachedItemContent$createContentLambda$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
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
                        androidx.compose.runtime.k.Q(1403994769, i11, -1, "androidx.compose.foundation.lazy.layout.LazyLayoutItemContentFactory.CachedItemContent.createContentLambda.<anonymous> (LazyLayoutItemContentFactory.kt:91)");
                    }
                    m mVar = (m) lazyLayoutItemContentFactory.d().invoke();
                    int iF = this.f();
                    if ((iF >= mVar.getItemCount() || !Intrinsics.c(mVar.b(iF), this.g())) && (iF = mVar.a(this.g())) != -1) {
                        this.f2983c = iF;
                    }
                    int i12 = iF;
                    if (i12 != -1) {
                        iVar.P(-660479623);
                        LazyLayoutItemContentFactoryKt.a(mVar, k0.a(lazyLayoutItemContentFactory.f2978a), i12, k0.a(this.g()), iVar, 0);
                        iVar.K();
                    } else {
                        iVar.P(-660272047);
                        iVar.K();
                    }
                    Object objG = this.g();
                    boolean zA = iVar.A(this);
                    final LazyLayoutItemContentFactory.CachedItemContent cachedItemContent = this;
                    Object objY = iVar.y();
                    if (zA || objY == androidx.compose.runtime.i.f3736a.a()) {
                        objY = new Function1<androidx.compose.runtime.d0, androidx.compose.runtime.c0>() { // from class: androidx.compose.foundation.lazy.layout.LazyLayoutItemContentFactory$CachedItemContent$createContentLambda$1$1$1

                            public static final class a implements androidx.compose.runtime.c0 {

                                /* JADX INFO: renamed from: a, reason: collision with root package name */
                                final /* synthetic */ LazyLayoutItemContentFactory.CachedItemContent f2986a;

                                public a(LazyLayoutItemContentFactory.CachedItemContent cachedItemContent) {
                                    this.f2986a = cachedItemContent;
                                }

                                @Override // androidx.compose.runtime.c0
                                public void dispose() {
                                    this.f2986a.f2984d = null;
                                }
                            }

                            {
                                super(1);
                            }

                            @Override // kotlin.jvm.functions.Function1
                            public final androidx.compose.runtime.c0 invoke(androidx.compose.runtime.d0 d0Var) {
                                return new a(cachedItemContent);
                            }
                        };
                        iVar.p(objY);
                    }
                    androidx.compose.runtime.g0.a(objG, (Function1) objY, iVar, 0);
                    if (androidx.compose.runtime.k.H()) {
                        androidx.compose.runtime.k.P();
                    }
                }
            });
        }

        public final Function2 d() {
            Function2 function2 = this.f2984d;
            if (function2 != null) {
                return function2;
            }
            Function2 function2C = c();
            this.f2984d = function2C;
            return function2C;
        }

        public final Object e() {
            return this.f2982b;
        }

        public final int f() {
            return this.f2983c;
        }

        public final Object g() {
            return this.f2981a;
        }
    }

    public LazyLayoutItemContentFactory(androidx.compose.runtime.saveable.a aVar, Function0 function0) {
        this.f2978a = aVar;
        this.f2979b = function0;
    }

    public final Function2 b(int i11, Object obj, Object obj2) {
        CachedItemContent cachedItemContent = (CachedItemContent) this.f2980c.get(obj);
        if (cachedItemContent != null && cachedItemContent.f() == i11 && Intrinsics.c(cachedItemContent.e(), obj2)) {
            return cachedItemContent.d();
        }
        CachedItemContent cachedItemContent2 = new CachedItemContent(i11, obj, obj2);
        this.f2980c.put(obj, cachedItemContent2);
        return cachedItemContent2.d();
    }

    public final Object c(Object obj) {
        if (obj == null) {
            return null;
        }
        CachedItemContent cachedItemContent = (CachedItemContent) this.f2980c.get(obj);
        if (cachedItemContent != null) {
            return cachedItemContent.e();
        }
        m mVar = (m) this.f2979b.invoke();
        int iA = mVar.a(obj);
        if (iA != -1) {
            return mVar.c(iA);
        }
        return null;
    }

    public final Function0 d() {
        return this.f2979b;
    }
}
