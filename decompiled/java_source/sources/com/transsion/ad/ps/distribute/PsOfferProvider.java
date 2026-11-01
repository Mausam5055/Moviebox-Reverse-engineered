package com.transsion.ad.ps.distribute;

import android.text.TextUtils;
import com.blankj.utilcode.util.o;
import com.transsion.ad.db.pslink.PsLinkAdPlan;
import com.transsion.ad.monopoly.model.AdMaterialList;
import com.transsion.ad.monopoly.model.AdPlans;
import com.transsion.ad.monopoly.model.MbAdImage;
import com.transsion.ad.monopoly.plan.AdPlanSourceManager;
import com.transsion.ad.ps.model.PsLinkAdInfo;
import com.transsion.ad.ps.model.RecommendInfo;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import ti.p;

/* JADX INFO: loaded from: classes5.dex */
public final class PsOfferProvider {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final PsOfferProvider f42194a = new PsOfferProvider();

    private PsOfferProvider() {
    }

    private final void b(AdPlans adPlans, AdMaterialList adMaterialList, PsLinkAdPlan psLinkAdPlan) {
        if (psLinkAdPlan != null) {
            PsLinkAdInfo psLinkAdInfo = (PsLinkAdInfo) o.d(psLinkAdPlan.getPsLinkAdInfoStr(), PsLinkAdInfo.class);
            RecommendInfo recommendInfo = (RecommendInfo) o.d(psLinkAdPlan.getPsInfoJson(), RecommendInfo.class);
            adMaterialList.setPsLinkAdPlan(psLinkAdPlan);
            adMaterialList.setDownloadMaterialSuccess(true);
            adMaterialList.setType(AdMaterialList.NON_AD_TYPE_TEXT);
            adMaterialList.setTitle(psLinkAdInfo != null ? psLinkAdInfo.getTitle() : null);
            adMaterialList.setDesc(psLinkAdInfo != null ? psLinkAdInfo.getDesc() : null);
            adMaterialList.setPsRecommendInfo(recommendInfo);
            adMaterialList.setImage(new MbAdImage(null, psLinkAdInfo != null ? psLinkAdInfo.getUrl() : null, null, null, null, null, null, null, null, psLinkAdInfo != null ? psLinkAdInfo.getPath() : null, null, null, 3581, null));
            adMaterialList.setButtonText(psLinkAdInfo != null ? psLinkAdInfo.getButtonText() : null);
            if (adPlans != null) {
                adPlans.setAdvertiserName(psLinkAdInfo != null ? psLinkAdInfo.getAdvertiserName() : null);
                adPlans.setAdvertiserAvatar(psLinkAdInfo != null ? psLinkAdInfo.getAdvertiserAvatar() : null);
                adPlans.setAdvertiserAvatarPath(psLinkAdInfo != null ? psLinkAdInfo.getAdvertiserAvatarPath() : null);
            }
            if (adPlans != null) {
                adPlans.setExtImage(new MbAdImage(null, adPlans.getAdvertiserAvatar(), null, null, null, null, null, null, null, adPlans.getAdvertiserAvatarPath(), null, null, 3581, null));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:36:0x00e9  */
    /* JADX WARN: Code duplicated, block: B:38:0x00ed  */
    /* JADX WARN: Code duplicated, block: B:40:0x010e  */
    /* JADX WARN: Code duplicated, block: B:42:0x0128 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:43:0x0129  */
    /* JADX WARN: Code duplicated, block: B:46:0x0133 A[ADDED_TO_REGION, RETURN] */
    /* JADX WARN: Code duplicated, block: B:47:0x0134  */
    /* JADX WARN: Code duplicated, block: B:52:0x015c A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:55:0x0163  */
    /* JADX WARN: Code duplicated, block: B:57:0x016b  */
    /* JADX WARN: Code duplicated, block: B:58:0x019d  */
    /* JADX WARN: Code duplicated, block: B:61:0x01aa  */
    /* JADX WARN: Code duplicated, block: B:67:0x01ba  */
    /* JADX WARN: Code duplicated, block: B:71:0x01cc A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:7:0x0019  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:51:0x015a -> B:14:0x004d). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public final java.lang.Object c(com.transsion.ad.monopoly.model.AdPlans r24, kotlin.coroutines.Continuation r25) {
        /*
            Method dump skipped, instruction units count: 467
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.transsion.ad.ps.distribute.PsOfferProvider.c(com.transsion.ad.monopoly.model.AdPlans, kotlin.coroutines.Continuation):java.lang.Object");
    }

    private final String d() {
        String simpleName = PsOfferProvider.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    private final boolean f(String str) {
        try {
            Result.Companion companion = Result.INSTANCE;
            if (str != null && !StringsKt.q0(str)) {
                List listS0 = StringsKt.S0(str, new String[]{","}, false, 0, 6, null);
                ArrayList arrayList = new ArrayList();
                Iterator it = listS0.iterator();
                while (it.hasNext()) {
                    Integer numV = StringsKt.v(StringsKt.n1((String) it.next()).toString());
                    if (numV != null) {
                        arrayList.add(numV);
                    }
                }
                return CollectionsKt.W0(arrayList).contains(Integer.valueOf(Calendar.getInstance().get(11)));
            }
            return true;
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Object objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
            if (Result.m457exceptionOrNullimpl(objM454constructorimpl) != null) {
                objM454constructorimpl = Boolean.FALSE;
            }
            return ((Boolean) objM454constructorimpl).booleanValue();
        }
    }

    private final boolean h(PsLinkAdPlan psLinkAdPlan) {
        Integer showMax = psLinkAdPlan.getShowMax();
        if (showMax == null || showMax.intValue() != 0) {
            int showedTimes = psLinkAdPlan.getShowedTimes();
            Integer showMax2 = psLinkAdPlan.getShowMax();
            if (showedTimes >= (showMax2 != null ? showMax2.intValue() : 0)) {
                oi.a.k(oi.a.f71022a, d() + " --> isTimesAvailable() --> 不符合展示条件 --> id = " + psLinkAdPlan.getId() + " --> showedTimes = " + psLinkAdPlan.getShowedTimes() + " --> showMax = " + psLinkAdPlan.getShowMax(), 5, false, 4, null);
                return false;
            }
        }
        Integer clickMax = psLinkAdPlan.getClickMax();
        if (clickMax == null || clickMax.intValue() != 0) {
            int clickedTimes = psLinkAdPlan.getClickedTimes();
            Integer clickMax2 = psLinkAdPlan.getClickMax();
            if (clickedTimes >= (clickMax2 != null ? clickMax2.intValue() : 0)) {
                oi.a.k(oi.a.f71022a, d() + " --> isTimesAvailable() --> 不符合展示条件 --> id = " + psLinkAdPlan.getId() + " --> clickedTimes = " + psLinkAdPlan.getClickedTimes() + " --> clickMax = " + psLinkAdPlan.getClickMax(), 5, false, 4, null);
                return false;
            }
        }
        if (f(psLinkAdPlan.getShowHours())) {
            return true;
        }
        int i11 = Calendar.getInstance().get(11);
        oi.a.k(oi.a.f71022a, d() + " --> isTimesAvailable() --> 不符合展示条件 --> id = " + psLinkAdPlan.getId() + " --> showHours = " + psLinkAdPlan.getShowHours() + " --> currentHour = " + i11, 5, false, 4, null);
        return false;
    }

    private final Object i(PsLinkAdPlan psLinkAdPlan, Continuation continuation) {
        if (!TextUtils.equals(psLinkAdPlan != null ? psLinkAdPlan.getShowDate() : null, p.f76266a.c())) {
            if (psLinkAdPlan != null) {
                psLinkAdPlan.setShowedTimes(0);
            }
            if (psLinkAdPlan != null) {
                psLinkAdPlan.setClickedTimes(0);
            }
        }
        if (psLinkAdPlan != null) {
            psLinkAdPlan.setUpdateTimestamp(Boxing.e(System.currentTimeMillis()));
        }
        Object objN = PsDbManager.f42189a.n(psLinkAdPlan, continuation);
        return objN == IntrinsicsKt.f() ? objN : Unit.f67061a;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0019  */
    public final Object e(AdPlans adPlans, Continuation continuation) {
        PsOfferProvider$getPsAdPlans$1 psOfferProvider$getPsAdPlans$1;
        AdPlans adPlans2 = adPlans;
        if (continuation instanceof PsOfferProvider$getPsAdPlans$1) {
            psOfferProvider$getPsAdPlans$1 = (PsOfferProvider$getPsAdPlans$1) continuation;
            int i11 = psOfferProvider$getPsAdPlans$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                psOfferProvider$getPsAdPlans$1.label = i11 - Integer.MIN_VALUE;
            } else {
                psOfferProvider$getPsAdPlans$1 = new PsOfferProvider$getPsAdPlans$1(this, continuation);
            }
        } else {
            psOfferProvider$getPsAdPlans$1 = new PsOfferProvider$getPsAdPlans$1(this, continuation);
        }
        Object objC = psOfferProvider$getPsAdPlans$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = psOfferProvider$getPsAdPlans$1.label;
        if (i12 == 0) {
            ResultKt.b(objC);
            psOfferProvider$getPsAdPlans$1.L$0 = adPlans2;
            psOfferProvider$getPsAdPlans$1.label = 1;
            objC = c(adPlans2, psOfferProvider$getPsAdPlans$1);
            if (objC == objF) {
                return objF;
            }
        } else {
            if (i12 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            adPlans2 = (AdPlans) psOfferProvider$getPsAdPlans$1.L$0;
            ResultKt.b(objC);
        }
        PsLinkAdPlan psLinkAdPlan = (PsLinkAdPlan) objC;
        if (psLinkAdPlan == null) {
            return Boxing.a(false);
        }
        AdMaterialList adMaterialList = new AdMaterialList(null, null, null, null, null, null, null, null, null, false, null, null, null, 8191, null);
        if (adPlans2 != null) {
            adPlans2.setAdMaterialList(CollectionsKt.e(adMaterialList));
        }
        b(adPlans2, adMaterialList, psLinkAdPlan);
        return Boxing.a(true);
    }

    public final boolean g(AdPlans adPlans) {
        return TextUtils.equals(adPlans != null ? adPlans.getAdSource() : null, AdPlanSourceManager.AdPlanEnum.AD_PLAN_AD_SOURCE_PS_REFERRAL.getValue());
    }
}
