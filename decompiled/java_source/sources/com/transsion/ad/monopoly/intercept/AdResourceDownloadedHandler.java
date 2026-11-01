package com.transsion.ad.monopoly.intercept;

import android.os.SystemClock;
import com.transsion.ad.db.plan.MbAdDbPlans;
import com.transsion.ad.monopoly.model.AdMaterialList;
import com.transsion.ad.monopoly.model.AdPlans;
import com.transsion.ad.monopoly.model.AdPlansHitResponse;
import com.transsion.ad.monopoly.model.MbAdImage;
import com.transsion.ad.monopoly.model.MbAdVideo;
import com.transsion.ad.monopoly.plan.AdPlanSourceManager;
import com.transsion.ad.monopoly.plan.AdPlansTransform;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.Function;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;

/* JADX INFO: loaded from: classes5.dex */
public final class AdResourceDownloadedHandler extends com.transsion.ad.monopoly.intercept.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a f42128b = new a(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final ConcurrentHashMap f42129c = new ConcurrentHashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static volatile long f42130d;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final boolean d(String str) {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            if (jElapsedRealtime - AdResourceDownloadedHandler.f42130d > 5000) {
                AdResourceDownloadedHandler.f42129c.clear();
                AdResourceDownloadedHandler.f42130d = jElapsedRealtime;
            }
            ConcurrentHashMap concurrentHashMap = AdResourceDownloadedHandler.f42129c;
            final Function1 function1 = new Function1() { // from class: com.transsion.ad.monopoly.intercept.d
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return AdResourceDownloadedHandler.a.e((String) obj);
                }
            };
            Object objComputeIfAbsent = concurrentHashMap.computeIfAbsent(str, new Function() { // from class: com.transsion.ad.monopoly.intercept.e
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return AdResourceDownloadedHandler.a.f(function1, obj);
                }
            });
            Intrinsics.g(objComputeIfAbsent, "computeIfAbsent(...)");
            return ((Boolean) objComputeIfAbsent).booleanValue();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Boolean e(String it) {
            Intrinsics.h(it, "it");
            return Boolean.valueOf(ti.h.f76259a.h(it));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Boolean f(Function1 function1, Object obj) {
            return (Boolean) function1.invoke(obj);
        }
    }

    /* JADX WARN: Code duplicated, block: B:108:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:109:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:110:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:111:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:112:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x001d  */
    @Override // com.transsion.ad.monopoly.intercept.a
    public Object b(String str, MbAdDbPlans mbAdDbPlans, Map map, Continuation continuation) throws Throwable {
        AdResourceDownloadedHandler$doHandle$1 adResourceDownloadedHandler$doHandle$1;
        List<AdMaterialList> adMaterialList;
        String path;
        boolean zD;
        String path2;
        AdPlansHitResponse adPlansHitResponse;
        AdPlansHitResponse adPlansHitResponse2;
        AdPlansHitResponse adPlansHitResponse3;
        AdPlansHitResponse adPlansHitResponse4;
        AdPlansHitResponse adPlansHitResponse5;
        if (continuation instanceof AdResourceDownloadedHandler$doHandle$1) {
            adResourceDownloadedHandler$doHandle$1 = (AdResourceDownloadedHandler$doHandle$1) continuation;
            int i11 = adResourceDownloadedHandler$doHandle$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                adResourceDownloadedHandler$doHandle$1.label = i11 - Integer.MIN_VALUE;
            } else {
                adResourceDownloadedHandler$doHandle$1 = new AdResourceDownloadedHandler$doHandle$1(this, continuation);
            }
        } else {
            adResourceDownloadedHandler$doHandle$1 = new AdResourceDownloadedHandler$doHandle$1(this, continuation);
        }
        Object objB = adResourceDownloadedHandler$doHandle$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = adResourceDownloadedHandler$doHandle$1.label;
        if (i12 != 0) {
            if (i12 == 1) {
                ResultKt.b(objB);
                adPlansHitResponse = (AdPlansHitResponse) objB;
                if (adPlansHitResponse != null) {
                    return adPlansHitResponse;
                }
                return e();
            }
            if (i12 == 2) {
                ResultKt.b(objB);
                adPlansHitResponse2 = (AdPlansHitResponse) objB;
                if (adPlansHitResponse2 != null) {
                    return adPlansHitResponse2;
                }
                return e();
            }
            if (i12 == 3) {
                ResultKt.b(objB);
                adPlansHitResponse3 = (AdPlansHitResponse) objB;
                if (adPlansHitResponse3 != null) {
                    return adPlansHitResponse3;
                }
                return e();
            }
            if (i12 == 4) {
                ResultKt.b(objB);
                adPlansHitResponse4 = (AdPlansHitResponse) objB;
                if (adPlansHitResponse4 != null) {
                    return adPlansHitResponse4;
                }
                return e();
            }
            if (i12 != 5) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(objB);
            adPlansHitResponse5 = (AdPlansHitResponse) objB;
            if (adPlansHitResponse5 != null) {
                return adPlansHitResponse5;
            }
            return e();
        }
        ResultKt.b(objB);
        Ref.BooleanRef booleanRef = new Ref.BooleanRef();
        AdPlanSourceManager adPlanSourceManager = AdPlanSourceManager.f42166a;
        if (adPlanSourceManager.d(mbAdDbPlans)) {
            com.transsion.ad.monopoly.intercept.a aVarC = c();
            if (aVarC != null) {
                adResourceDownloadedHandler$doHandle$1.label = 1;
                objB = aVarC.b(str, mbAdDbPlans, map, adResourceDownloadedHandler$doHandle$1);
                if (objB == objF) {
                    return objF;
                }
                adPlansHitResponse = (AdPlansHitResponse) objB;
                if (adPlansHitResponse != null) {
                    return adPlansHitResponse;
                }
            }
            return e();
        }
        if (adPlanSourceManager.i(mbAdDbPlans)) {
            com.transsion.ad.monopoly.intercept.a aVarC2 = c();
            if (aVarC2 != null) {
                adResourceDownloadedHandler$doHandle$1.label = 2;
                objB = aVarC2.b(str, mbAdDbPlans, map, adResourceDownloadedHandler$doHandle$1);
                if (objB == objF) {
                    return objF;
                }
                adPlansHitResponse2 = (AdPlansHitResponse) objB;
                if (adPlansHitResponse2 != null) {
                    return adPlansHitResponse2;
                }
            }
            return e();
        }
        if (adPlanSourceManager.k(mbAdDbPlans)) {
            com.transsion.ad.monopoly.intercept.a aVarC3 = c();
            if (aVarC3 != null) {
                adResourceDownloadedHandler$doHandle$1.label = 3;
                objB = aVarC3.b(str, mbAdDbPlans, map, adResourceDownloadedHandler$doHandle$1);
                if (objB == objF) {
                    return objF;
                }
                adPlansHitResponse3 = (AdPlansHitResponse) objB;
                if (adPlansHitResponse3 != null) {
                    return adPlansHitResponse3;
                }
            }
            return e();
        }
        if (adPlanSourceManager.f(mbAdDbPlans)) {
            com.transsion.ad.monopoly.intercept.a aVarC4 = c();
            if (aVarC4 != null) {
                adResourceDownloadedHandler$doHandle$1.label = 4;
                objB = aVarC4.b(str, mbAdDbPlans, map, adResourceDownloadedHandler$doHandle$1);
                if (objB == objF) {
                    return objF;
                }
                adPlansHitResponse4 = (AdPlansHitResponse) objB;
                if (adPlansHitResponse4 != null) {
                    return adPlansHitResponse4;
                }
            }
            return e();
        }
        AdPlans adPlansB = AdPlansTransform.f42168a.b(mbAdDbPlans);
        if (adPlansB != null && (adMaterialList = adPlansB.getAdMaterialList()) != null) {
            for (AdMaterialList adMaterialList2 : adMaterialList) {
                if (Intrinsics.c(adMaterialList2.getType(), AdMaterialList.NON_AD_TYPE_TEXT)) {
                    a aVar = f42128b;
                    MbAdImage image = adMaterialList2.getImage();
                    if (image == null || (path2 = image.getPath()) == null) {
                        path2 = "";
                    }
                    zD = aVar.d(path2);
                } else {
                    a aVar2 = f42128b;
                    MbAdVideo video = adMaterialList2.getVideo();
                    if (video == null || (path = video.getPath()) == null) {
                        path = "";
                    }
                    zD = aVar2.d(path);
                }
                booleanRef.element = zD;
            }
        }
        if (!booleanRef.element && AdPlanSourceManager.f42166a.a(mbAdDbPlans)) {
            com.transsion.ad.strategy.f.f42232a.c().putString("non_ad_plan_version", "");
            oi.a.g(oi.a.f71022a, null, d() + " --> hasResource() --> 用户可能手动将文件删除了，这个时候需要重新请求。 --> 包断广告版本号 重置", 0, false, 13, null);
        }
        if (!booleanRef.element) {
            return new AdPlansHitResponse(false, "广告资源未下载完成");
        }
        com.transsion.ad.monopoly.intercept.a aVarC5 = c();
        if (aVarC5 != null) {
            adResourceDownloadedHandler$doHandle$1.label = 5;
            objB = aVarC5.b(str, mbAdDbPlans, map, adResourceDownloadedHandler$doHandle$1);
            if (objB == objF) {
                return objF;
            }
            adPlansHitResponse5 = (AdPlansHitResponse) objB;
            if (adPlansHitResponse5 != null) {
                return adPlansHitResponse5;
            }
        }
        return e();
    }
}
