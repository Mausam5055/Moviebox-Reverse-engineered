package com.transsion.member.promotion;

import android.os.SystemClock;
import com.transsion.memberapi.SkuPromotionDto;
import com.transsion.memberapi.SkuPromotionItem;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes5.dex */
public final class SkuPromotionRepository {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final b f46672b = new b(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int f46673c = 8;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final kotlinx.coroutines.sync.a f46674d = kotlinx.coroutines.sync.g.b(false, 1, null);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static volatile a f46675e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Lazy f46676a = LazyKt.b(new Function0() { // from class: com.transsion.member.promotion.w
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return SkuPromotionRepository.f();
        }
    });

    private static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f46677a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final SkuPromotionDto f46678b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final long f46679c;

        public a(String host, SkuPromotionDto promotion, long j11) {
            Intrinsics.h(host, "host");
            Intrinsics.h(promotion, "promotion");
            this.f46677a = host;
            this.f46678b = promotion;
            this.f46679c = j11;
        }

        public final long a() {
            return this.f46679c;
        }

        public final String b() {
            return this.f46677a;
        }

        public final SkuPromotionDto c() {
            return this.f46678b;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return Intrinsics.c(this.f46677a, aVar.f46677a) && Intrinsics.c(this.f46678b, aVar.f46678b) && this.f46679c == aVar.f46679c;
        }

        public int hashCode() {
            return (((this.f46677a.hashCode() * 31) + this.f46678b.hashCode()) * 31) + androidx.collection.s.a(this.f46679c);
        }

        public String toString() {
            return "CacheEntry(host=" + this.f46677a + ", promotion=" + this.f46678b + ", cachedAtElapsedRealtime=" + this.f46679c + ")";
        }
    }

    private static final class b {
        private b() {
        }

        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final vm.a c() {
        return (vm.a) this.f46676a.getValue();
    }

    private final SkuPromotionDto e(String str, long j11) {
        a aVar = f46675e;
        if (aVar == null) {
            return null;
        }
        long jA = j11 - aVar.a();
        if (!Intrinsics.c(aVar.b(), str) || 0 > jA || jA >= 600000) {
            return null;
        }
        return aVar.c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final vm.a f() {
        return (vm.a) zg.c.f79414e.a().h(vm.a.class);
    }

    /* JADX WARN: Code duplicated, block: B:40:0x00b0 A[Catch: all -> 0x0036, TryCatch #0 {all -> 0x0036, blocks: (B:13:0x0031, B:38:0x00aa, B:40:0x00b0, B:42:0x00b8, B:50:0x00c7, B:52:0x00cd, B:53:0x00d3, B:55:0x00d9, B:56:0x00e7), top: B:62:0x0031 }] */
    /* JADX WARN: Code duplicated, block: B:47:0x00c2  */
    /* JADX WARN: Code duplicated, block: B:48:0x00c4  */
    /* JADX WARN: Code duplicated, block: B:50:0x00c7 A[Catch: all -> 0x0036, TryCatch #0 {all -> 0x0036, blocks: (B:13:0x0031, B:38:0x00aa, B:40:0x00b0, B:42:0x00b8, B:50:0x00c7, B:52:0x00cd, B:53:0x00d3, B:55:0x00d9, B:56:0x00e7), top: B:62:0x0031 }] */
    /* JADX WARN: Code duplicated, block: B:52:0x00cd A[Catch: all -> 0x0036, TryCatch #0 {all -> 0x0036, blocks: (B:13:0x0031, B:38:0x00aa, B:40:0x00b0, B:42:0x00b8, B:50:0x00c7, B:52:0x00cd, B:53:0x00d3, B:55:0x00d9, B:56:0x00e7), top: B:62:0x0031 }] */
    /* JADX WARN: Code duplicated, block: B:55:0x00d9 A[Catch: all -> 0x0036, LOOP:0: B:53:0x00d3->B:55:0x00d9, LOOP_END, TryCatch #0 {all -> 0x0036, blocks: (B:13:0x0031, B:38:0x00aa, B:40:0x00b0, B:42:0x00b8, B:50:0x00c7, B:52:0x00cd, B:53:0x00d3, B:55:0x00d9, B:56:0x00e7), top: B:62:0x0031 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object d(Continuation continuation) throws Throwable {
        SkuPromotionRepository$getPromotion$1 skuPromotionRepository$getPromotion$1;
        String strA;
        kotlinx.coroutines.sync.a aVar;
        kotlinx.coroutines.sync.a aVar2;
        SkuPromotionDto skuPromotionDtoE;
        String str;
        List<SkuPromotionItem> items;
        SkuPromotionDto skuPromotionDto;
        List<SkuPromotionItem> items2;
        Iterator<T> it;
        if (continuation instanceof SkuPromotionRepository$getPromotion$1) {
            skuPromotionRepository$getPromotion$1 = (SkuPromotionRepository$getPromotion$1) continuation;
            int i11 = skuPromotionRepository$getPromotion$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                skuPromotionRepository$getPromotion$1.label = i11 - Integer.MIN_VALUE;
            } else {
                skuPromotionRepository$getPromotion$1 = new SkuPromotionRepository$getPromotion$1(this, continuation);
            }
        } else {
            skuPromotionRepository$getPromotion$1 = new SkuPromotionRepository$getPromotion$1(this, continuation);
        }
        Object obj = skuPromotionRepository$getPromotion$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = skuPromotionRepository$getPromotion$1.label;
        boolean z10 = true;
        try {
            if (i12 == 0) {
                ResultKt.b(obj);
                strA = vg.a.f77324a.a();
                SkuPromotionDto skuPromotionDtoE2 = e(strA, SystemClock.elapsedRealtime());
                if (skuPromotionDtoE2 != null) {
                    return skuPromotionDtoE2;
                }
                aVar = f46674d;
                skuPromotionRepository$getPromotion$1.L$0 = strA;
                skuPromotionRepository$getPromotion$1.L$1 = aVar;
                skuPromotionRepository$getPromotion$1.label = 1;
                if (aVar.h(null, skuPromotionRepository$getPromotion$1) == objF) {
                    return objF;
                }
            } else {
                if (i12 != 1) {
                    if (i12 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    aVar2 = (kotlinx.coroutines.sync.a) skuPromotionRepository$getPromotion$1.L$1;
                    str = (String) skuPromotionRepository$getPromotion$1.L$0;
                    try {
                        ResultKt.b(obj);
                        skuPromotionDtoE = (SkuPromotionDto) obj;
                        strA = str;
                        if (skuPromotionDtoE != null) {
                            items = skuPromotionDtoE.getItems();
                            if (items != null && !items.isEmpty()) {
                                z10 = false;
                            }
                            if (z10) {
                                skuPromotionDto = null;
                            } else {
                                skuPromotionDto = skuPromotionDtoE;
                            }
                            if (skuPromotionDto != null) {
                                items2 = skuPromotionDto.getItems();
                                if (items2 != null) {
                                    it = items2.iterator();
                                    while (it.hasNext()) {
                                        ((SkuPromotionItem) it.next()).setMarketingActivityId(skuPromotionDto.getMarketingActivityId());
                                    }
                                }
                                f46675e = new a(strA, skuPromotionDto, SystemClock.elapsedRealtime());
                            }
                        }
                        aVar = aVar2;
                        aVar.unlock(null);
                        return skuPromotionDtoE;
                    } catch (Throwable th2) {
                        th = th2;
                        aVar2.unlock(null);
                        throw th;
                    }
                }
                aVar = (kotlinx.coroutines.sync.a) skuPromotionRepository$getPromotion$1.L$1;
                String str2 = (String) skuPromotionRepository$getPromotion$1.L$0;
                ResultKt.b(obj);
                strA = str2;
            }
            skuPromotionDtoE = e(strA, SystemClock.elapsedRealtime());
            if (skuPromotionDtoE == null) {
                x xVar = x.f46715a;
                if (xVar.b()) {
                    skuPromotionDtoE = xVar.a();
                    aVar2 = aVar;
                } else {
                    i0 i0VarB = y0.b();
                    SkuPromotionRepository$getPromotion$3$promotion$1 skuPromotionRepository$getPromotion$3$promotion$1 = new SkuPromotionRepository$getPromotion$3$promotion$1(this, strA, null);
                    skuPromotionRepository$getPromotion$1.L$0 = strA;
                    skuPromotionRepository$getPromotion$1.L$1 = aVar;
                    skuPromotionRepository$getPromotion$1.label = 2;
                    Object objG = kotlinx.coroutines.i.g(i0VarB, skuPromotionRepository$getPromotion$3$promotion$1, skuPromotionRepository$getPromotion$1);
                    if (objG == objF) {
                        return objF;
                    }
                    aVar2 = aVar;
                    str = strA;
                    obj = objG;
                    skuPromotionDtoE = (SkuPromotionDto) obj;
                    strA = str;
                }
                if (skuPromotionDtoE != null) {
                    items = skuPromotionDtoE.getItems();
                    if (items != null) {
                        z10 = false;
                    }
                    if (z10) {
                        skuPromotionDto = skuPromotionDtoE;
                    } else {
                        skuPromotionDto = null;
                    }
                    if (skuPromotionDto != null) {
                        items2 = skuPromotionDto.getItems();
                        if (items2 != null) {
                            it = items2.iterator();
                            while (it.hasNext()) {
                                ((SkuPromotionItem) it.next()).setMarketingActivityId(skuPromotionDto.getMarketingActivityId());
                            }
                        }
                        f46675e = new a(strA, skuPromotionDto, SystemClock.elapsedRealtime());
                    }
                }
                aVar = aVar2;
            }
            aVar.unlock(null);
            return skuPromotionDtoE;
        } catch (Throwable th3) {
            th = th3;
            aVar2 = aVar;
            aVar2.unlock(null);
            throw th;
        }
    }
}
