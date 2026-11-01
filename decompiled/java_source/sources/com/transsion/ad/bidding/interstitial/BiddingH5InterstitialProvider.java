package com.transsion.ad.bidding.interstitial;

import android.text.TextUtils;
import com.transsion.ad.monopoly.manager.AdPlansAssetsManager;
import com.transsion.ad.monopoly.manager.AdPlansStorageManager;
import com.transsion.ad.monopoly.model.AdMaterialList;
import com.transsion.ad.monopoly.model.AdPlans;
import com.transsion.ad.monopoly.plan.AdPlanSourceManager;
import com.transsion.ad.monopoly.plan.AdPlanUtil;
import com.transsion.ad.scene.SceneInterceptManager;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.a2;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes5.dex */
public final class BiddingH5InterstitialProvider {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Companion f41964a = new Companion(null);

    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX WARN: Code duplicated, block: B:35:0x00ac  */
        /* JADX WARN: Code duplicated, block: B:40:0x00cf  */
        /* JADX WARN: Code duplicated, block: B:42:0x00d5  */
        /* JADX WARN: Code duplicated, block: B:43:0x00da  */
        /* JADX WARN: Code duplicated, block: B:45:0x00dd  */
        /* JADX WARN: Code duplicated, block: B:48:0x00e5  */
        /* JADX WARN: Code duplicated, block: B:50:0x011f A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:54:0x00c3 A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:56:0x00a6 A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:7:0x0019  */
        /* JADX WARN: Instruction removed from duplicated block: B:48:0x00e5, please report this as an issue */
        public final Object a(String str, Continuation continuation) throws Throwable {
            BiddingH5InterstitialProvider$Companion$preloadWebview$1 biddingH5InterstitialProvider$Companion$preloadWebview$1;
            ArrayList arrayList;
            AdPlanUtil adPlanUtil;
            AdPlans adPlansB;
            AdMaterialList adMaterialListA;
            String h5Link;
            a2 a2VarC;
            BiddingH5InterstitialProvider$Companion$preloadWebview$2$1 biddingH5InterstitialProvider$Companion$preloadWebview$2$1;
            String str2 = str;
            if (continuation instanceof BiddingH5InterstitialProvider$Companion$preloadWebview$1) {
                biddingH5InterstitialProvider$Companion$preloadWebview$1 = (BiddingH5InterstitialProvider$Companion$preloadWebview$1) continuation;
                int i11 = biddingH5InterstitialProvider$Companion$preloadWebview$1.label;
                if ((i11 & Integer.MIN_VALUE) != 0) {
                    biddingH5InterstitialProvider$Companion$preloadWebview$1.label = i11 - Integer.MIN_VALUE;
                } else {
                    biddingH5InterstitialProvider$Companion$preloadWebview$1 = new BiddingH5InterstitialProvider$Companion$preloadWebview$1(this, continuation);
                }
            } else {
                biddingH5InterstitialProvider$Companion$preloadWebview$1 = new BiddingH5InterstitialProvider$Companion$preloadWebview$1(this, continuation);
            }
            Object objA = biddingH5InterstitialProvider$Companion$preloadWebview$1.result;
            Object objF = IntrinsicsKt.f();
            int i12 = biddingH5InterstitialProvider$Companion$preloadWebview$1.label;
            if (i12 != 0) {
                if (i12 == 1) {
                    str2 = (String) biddingH5InterstitialProvider$Companion$preloadWebview$1.L$0;
                    ResultKt.b(objA);
                } else if (i12 == 2) {
                    str2 = (String) biddingH5InterstitialProvider$Companion$preloadWebview$1.L$0;
                    ResultKt.b(objA);
                    arrayList = new ArrayList();
                    for (Object obj : (List) objA) {
                        if (Intrinsics.c(((AdPlans) obj).getAdSource(), AdPlanSourceManager.AdPlanEnum.AD_PLAN_AD_SOURCE_H5.getValue())) {
                            arrayList.add(obj);
                        }
                    }
                    adPlanUtil = AdPlanUtil.f42167a;
                    adPlansB = adPlanUtil.b(arrayList);
                    if (adPlansB != null) {
                        adMaterialListA = adPlanUtil.a(adPlansB);
                        if (adMaterialListA != null) {
                            h5Link = adMaterialListA.getH5Link();
                        } else {
                            h5Link = null;
                        }
                        if (h5Link == null) {
                            h5Link = "";
                        }
                        if (!TextUtils.isEmpty(h5Link)) {
                            oi.b.a.c(AdPlansAssetsManager.f42149b, 6, "BiddingH5InterstitialProvider() preloadWebview --> sceneId=" + str2 + " ## url = " + h5Link, null, false, 4, null);
                            a2VarC = y0.c();
                            biddingH5InterstitialProvider$Companion$preloadWebview$2$1 = new BiddingH5InterstitialProvider$Companion$preloadWebview$2$1(h5Link, null);
                            biddingH5InterstitialProvider$Companion$preloadWebview$1.L$0 = null;
                            biddingH5InterstitialProvider$Companion$preloadWebview$1.label = 3;
                            if (kotlinx.coroutines.i.g(a2VarC, biddingH5InterstitialProvider$Companion$preloadWebview$2$1, biddingH5InterstitialProvider$Companion$preloadWebview$1) == objF) {
                                return objF;
                            }
                        }
                    }
                } else {
                    if (i12 != 3) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.b(objA);
                }
                return Unit.f67061a;
            }
            ResultKt.b(objA);
            SceneInterceptManager sceneInterceptManager = SceneInterceptManager.f42200a;
            biddingH5InterstitialProvider$Companion$preloadWebview$1.L$0 = str2;
            biddingH5InterstitialProvider$Companion$preloadWebview$1.label = 1;
            objA = sceneInterceptManager.a(str2, biddingH5InterstitialProvider$Companion$preloadWebview$1);
            if (objA == objF) {
                return objF;
            }
            if (!((Boolean) ((Pair) objA).getFirst()).booleanValue() && !com.transsion.ad.scene.c.b(com.transsion.ad.scene.c.f42203a, str2, false, 2, null)) {
                biddingH5InterstitialProvider$Companion$preloadWebview$1.L$0 = str2;
                biddingH5InterstitialProvider$Companion$preloadWebview$1.label = 2;
                objA = AdPlansStorageManager.f42153a.h(str2, new LinkedHashMap(), "H5_PRELOAD", new AdPlanSourceManager.AdPlanEnum[0], biddingH5InterstitialProvider$Companion$preloadWebview$1);
                if (objA == objF) {
                    return objF;
                }
                arrayList = new ArrayList();
                while (r1.hasNext()) {
                    if (Intrinsics.c(((AdPlans) obj).getAdSource(), AdPlanSourceManager.AdPlanEnum.AD_PLAN_AD_SOURCE_H5.getValue())) {
                        arrayList.add(obj);
                    }
                }
                adPlanUtil = AdPlanUtil.f42167a;
                adPlansB = adPlanUtil.b(arrayList);
                if (adPlansB != null) {
                    adMaterialListA = adPlanUtil.a(adPlansB);
                    if (adMaterialListA != null) {
                        h5Link = adMaterialListA.getH5Link();
                    } else {
                        h5Link = null;
                    }
                    if (h5Link == null) {
                        h5Link = "";
                    }
                    if (!TextUtils.isEmpty(h5Link)) {
                        oi.b.a.c(AdPlansAssetsManager.f42149b, 6, "BiddingH5InterstitialProvider() preloadWebview --> sceneId=" + str2 + " ## url = " + h5Link, null, false, 4, null);
                        a2VarC = y0.c();
                        biddingH5InterstitialProvider$Companion$preloadWebview$2$1 = new BiddingH5InterstitialProvider$Companion$preloadWebview$2$1(h5Link, null);
                        biddingH5InterstitialProvider$Companion$preloadWebview$1.L$0 = null;
                        biddingH5InterstitialProvider$Companion$preloadWebview$1.label = 3;
                        if (kotlinx.coroutines.i.g(a2VarC, biddingH5InterstitialProvider$Companion$preloadWebview$2$1, biddingH5InterstitialProvider$Companion$preloadWebview$1) == objF) {
                            return objF;
                        }
                    }
                }
                return Unit.f67061a;
            }
            return Unit.f67061a;
        }
    }
}
