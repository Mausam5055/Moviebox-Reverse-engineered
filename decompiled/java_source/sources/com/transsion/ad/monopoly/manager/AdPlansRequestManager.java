package com.transsion.ad.monopoly.manager;

import android.text.TextUtils;
import com.cloud.hisavana.sdk.common.util.a0;
import com.transsion.ad.MBAd;
import com.transsion.ad.db.plan.MbAdDbPlans;
import com.transsion.ad.monopoly.model.AdMaterialList;
import com.transsion.ad.monopoly.model.AdPlans;
import com.transsion.ad.monopoly.model.MbAdImage;
import com.transsion.ad.monopoly.model.MbAdPlansBean;
import com.transsion.ad.monopoly.model.MbAdPlansDto;
import com.transsion.ad.monopoly.model.MbAdVideo;
import com.transsion.ad.monopoly.plan.AdPlanSourceManager;
import com.transsion.ad.monopoly.plan.AdPlansTransform;
import com.transsion.ad.ps.distribute.PSAdPlanRequestManager;
import com.transsion.ad.strategy.AppManager;
import com.transsion.ad.strategy.d;
import com.transsion.ad.strategy.f;
import com.transsion.ad.strategy.s;
import java.io.File;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import ti.h;

/* JADX INFO: loaded from: classes5.dex */
public final class AdPlansRequestManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final AdPlansRequestManager f42150a = new AdPlansRequestManager();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Lazy f42151b = LazyKt.b(new Function0() { // from class: com.transsion.ad.monopoly.manager.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return AdPlansRequestManager.s();
        }
    });

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static AtomicBoolean f42152c = new AtomicBoolean(false);

    private AdPlansRequestManager() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:33:0x009f  */
    /* JADX WARN: Code duplicated, block: B:35:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:39:0x00b5 A[LOOP:0: B:31:0x0099->B:39:0x00b5, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:42:0x00bf  */
    /* JADX WARN: Code duplicated, block: B:46:0x00cc  */
    /* JADX WARN: Code duplicated, block: B:47:0x00d1  */
    /* JADX WARN: Code duplicated, block: B:50:0x00d8  */
    /* JADX WARN: Code duplicated, block: B:52:0x00de  */
    /* JADX WARN: Code duplicated, block: B:55:0x00e8  */
    /* JADX WARN: Code duplicated, block: B:60:0x00b7 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:61:0x00b2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x006d -> B:20:0x0070). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached at block B:46:0x00cc
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public final java.lang.Object h(java.util.List r11, kotlin.coroutines.Continuation r12) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 251
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.transsion.ad.monopoly.manager.AdPlansRequestManager.h(java.util.List, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:36:0x00e6 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:37:0x00e7  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object i(MbAdPlansDto mbAdPlansDto, String str, Continuation continuation) throws Throwable {
        AdPlansRequestManager$checkResult$1 adPlansRequestManager$checkResult$1;
        MbAdPlansBean data;
        MbAdPlansDto mbAdPlansDto2;
        String str2;
        oi.a aVar;
        String strP;
        Object objJ;
        oi.a aVar2;
        String str3;
        MBAd.a aVarC;
        if (continuation instanceof AdPlansRequestManager$checkResult$1) {
            adPlansRequestManager$checkResult$1 = (AdPlansRequestManager$checkResult$1) continuation;
            int i11 = adPlansRequestManager$checkResult$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                adPlansRequestManager$checkResult$1.label = i11 - Integer.MIN_VALUE;
            } else {
                adPlansRequestManager$checkResult$1 = new AdPlansRequestManager$checkResult$1(this, continuation);
            }
        } else {
            adPlansRequestManager$checkResult$1 = new AdPlansRequestManager$checkResult$1(this, continuation);
        }
        Object objH = adPlansRequestManager$checkResult$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = adPlansRequestManager$checkResult$1.label;
        if (i12 == 0) {
            ResultKt.b(objH);
            if (((mbAdPlansDto == null || (data = mbAdPlansDto.getData()) == null) ? null : data.getAdPlans()) != null) {
                List adPlans = mbAdPlansDto.getData().getAdPlans();
                adPlansRequestManager$checkResult$1.L$0 = mbAdPlansDto;
                adPlansRequestManager$checkResult$1.L$1 = str;
                adPlansRequestManager$checkResult$1.label = 1;
                objH = h(adPlans, adPlansRequestManager$checkResult$1);
                if (objH == objF) {
                    return objF;
                }
            }
            return Unit.f67061a;
        }
        if (i12 == 1) {
            str = (String) adPlansRequestManager$checkResult$1.L$1;
            mbAdPlansDto = (MbAdPlansDto) adPlansRequestManager$checkResult$1.L$0;
            ResultKt.b(objH);
        } else if (i12 == 2) {
            str2 = (String) adPlansRequestManager$checkResult$1.L$2;
            str = (String) adPlansRequestManager$checkResult$1.L$1;
            mbAdPlansDto2 = (MbAdPlansDto) adPlansRequestManager$checkResult$1.L$0;
            ResultKt.b(objH);
            k(mbAdPlansDto2.getData().getAdPlans());
            aVar = oi.a.f71022a;
            strP = p();
            AdPlansStorageManager adPlansStorageManager = AdPlansStorageManager.f42153a;
            adPlansRequestManager$checkResult$1.L$0 = aVar;
            adPlansRequestManager$checkResult$1.L$1 = strP;
            adPlansRequestManager$checkResult$1.L$2 = str;
            adPlansRequestManager$checkResult$1.L$3 = str2;
            adPlansRequestManager$checkResult$1.label = 3;
            objJ = adPlansStorageManager.j(adPlansRequestManager$checkResult$1);
            if (objJ == objF) {
                return objF;
            }
            aVar2 = aVar;
            objH = objJ;
            str3 = strP;
        } else {
            if (i12 != 3) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            str2 = (String) adPlansRequestManager$checkResult$1.L$3;
            str = (String) adPlansRequestManager$checkResult$1.L$2;
            str3 = (String) adPlansRequestManager$checkResult$1.L$1;
            oi.a aVar3 = (oi.a) adPlansRequestManager$checkResult$1.L$0;
            ResultKt.b(objH);
            aVar2 = aVar3;
        }
        oi.a.c(aVar2, str3 + " --> checkResult() --> 更新完计划且下载完素材,新计划可用 --> lastVersion = " + str + " --> newVersion = " + str2 + " --> size = " + objH, 0, false, 6, null);
        aVarC = MBAd.f41751a.c();
        if (aVarC != null && aVarC.l()) {
            h hVar = h.f76259a;
            com.transsion.ad.a aVar4 = com.transsion.ad.a.f41780a;
            Map mapE = hVar.e(aVar4.b());
            String strG = hVar.g(aVar4.b());
            oi.a.c(oi.a.f71022a, "fileSizeMap = " + mapE + " --> folderSizeFormatted = " + strG, 0, false, 6, null);
        }
        return Unit.f67061a;
        if (((Boolean) objH).booleanValue()) {
            String strValueOf = String.valueOf(mbAdPlansDto.getData().getVersion());
            ri.c.f74535a.j(str, strValueOf);
            f.f42232a.c().putString("non_ad_plan_version", strValueOf);
            adPlansRequestManager$checkResult$1.L$0 = mbAdPlansDto;
            adPlansRequestManager$checkResult$1.L$1 = str;
            adPlansRequestManager$checkResult$1.L$2 = strValueOf;
            adPlansRequestManager$checkResult$1.label = 2;
            if (j(strValueOf, str, adPlansRequestManager$checkResult$1) == objF) {
                return objF;
            }
            mbAdPlansDto2 = mbAdPlansDto;
            str2 = strValueOf;
            k(mbAdPlansDto2.getData().getAdPlans());
            aVar = oi.a.f71022a;
            strP = p();
            AdPlansStorageManager adPlansStorageManager2 = AdPlansStorageManager.f42153a;
            adPlansRequestManager$checkResult$1.L$0 = aVar;
            adPlansRequestManager$checkResult$1.L$1 = strP;
            adPlansRequestManager$checkResult$1.L$2 = str;
            adPlansRequestManager$checkResult$1.L$3 = str2;
            adPlansRequestManager$checkResult$1.label = 3;
            objJ = adPlansStorageManager2.j(adPlansRequestManager$checkResult$1);
            if (objJ == objF) {
                return objF;
            }
            aVar2 = aVar;
            objH = objJ;
            str3 = strP;
            oi.a.c(aVar2, str3 + " --> checkResult() --> 更新完计划且下载完素材,新计划可用 --> lastVersion = " + str + " --> newVersion = " + str2 + " --> size = " + objH, 0, false, 6, null);
            aVarC = MBAd.f41751a.c();
            if (aVarC != null) {
                h hVar2 = h.f76259a;
                com.transsion.ad.a aVar5 = com.transsion.ad.a.f41780a;
                Map mapE2 = hVar2.e(aVar5.b());
                String strG2 = hVar2.g(aVar5.b());
                oi.a.c(oi.a.f71022a, "fileSizeMap = " + mapE2 + " --> folderSizeFormatted = " + strG2, 0, false, 6, null);
            }
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object j(String str, String str2, Continuation continuation) throws Throwable {
        AdPlansRequestManager$deleteExpireAdPlan$1 adPlansRequestManager$deleteExpireAdPlan$1;
        if (continuation instanceof AdPlansRequestManager$deleteExpireAdPlan$1) {
            adPlansRequestManager$deleteExpireAdPlan$1 = (AdPlansRequestManager$deleteExpireAdPlan$1) continuation;
            int i11 = adPlansRequestManager$deleteExpireAdPlan$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                adPlansRequestManager$deleteExpireAdPlan$1.label = i11 - Integer.MIN_VALUE;
            } else {
                adPlansRequestManager$deleteExpireAdPlan$1 = new AdPlansRequestManager$deleteExpireAdPlan$1(this, continuation);
            }
        } else {
            adPlansRequestManager$deleteExpireAdPlan$1 = new AdPlansRequestManager$deleteExpireAdPlan$1(this, continuation);
        }
        Object obj = adPlansRequestManager$deleteExpireAdPlan$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = adPlansRequestManager$deleteExpireAdPlan$1.label;
        if (i12 == 0) {
            ResultKt.b(obj);
            if (TextUtils.isEmpty(str)) {
                return Unit.f67061a;
            }
            AdPlansStorageManager adPlansStorageManager = AdPlansStorageManager.f42153a;
            adPlansRequestManager$deleteExpireAdPlan$1.L$0 = str;
            adPlansRequestManager$deleteExpireAdPlan$1.L$1 = str2;
            adPlansRequestManager$deleteExpireAdPlan$1.label = 1;
            if (adPlansStorageManager.f(str, adPlansRequestManager$deleteExpireAdPlan$1) == objF) {
                return objF;
            }
        } else {
            if (i12 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            str2 = (String) adPlansRequestManager$deleteExpireAdPlan$1.L$1;
            str = (String) adPlansRequestManager$deleteExpireAdPlan$1.L$0;
            ResultKt.b(obj);
        }
        oi.a.c(oi.a.f71022a, p() + " --> deleteExpireAdPlan() --> newVersion = " + str + " -- lastVersion = " + str2 + " --> 删除过期计划 -- success", 0, false, 6, null);
        return Unit.f67061a;
    }

    private final void k(List list) {
        HashSet hashSet = new HashSet();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            AdPlans adPlans = (AdPlans) it.next();
            List<AdMaterialList> adMaterialList = adPlans.getAdMaterialList();
            if (adMaterialList != null) {
                for (AdMaterialList adMaterialList2 : adMaterialList) {
                    if (Intrinsics.c(AdMaterialList.NON_AD_TYPE_TEXT, adMaterialList2.getType())) {
                        MbAdImage image = adMaterialList2.getImage();
                        hashSet.add(image != null ? image.getPath() : null);
                    } else {
                        MbAdVideo video = adMaterialList2.getVideo();
                        hashSet.add(video != null ? video.getPath() : null);
                    }
                }
            }
            if (!TextUtils.isEmpty(adPlans.getAdvertiserAvatarPath())) {
                hashSet.add(adPlans.getAdvertiserAvatarPath());
            }
        }
        h.f76259a.c(new File(com.transsion.ad.a.f41780a.b() + File.separatorChar), hashSet);
        oi.a.c(oi.a.f71022a, p() + " --> deleteExpireMaterial() --> 删除过期资源 -- success", 0, false, 6, null);
    }

    private final boolean l(AdPlans adPlans) {
        List<AdMaterialList> adMaterialList;
        Integer size;
        String url = null;
        String strM = m(adPlans != null ? adPlans.getAdvertiserAvatar() : null);
        if (adPlans != null) {
            adPlans.setAdvertiserAvatarPath(strM);
        }
        n(adPlans != null ? adPlans.getExtImage() : null);
        if (adPlans != null && (adMaterialList = adPlans.getAdMaterialList()) != null) {
            Iterator<T> it = adMaterialList.iterator();
            if (it.hasNext()) {
                AdMaterialList adMaterialList2 = (AdMaterialList) it.next();
                if (Intrinsics.c(adMaterialList2.getType(), AdMaterialList.NON_AD_TYPE_TEXT)) {
                    MbAdImage image = adMaterialList2.getImage();
                    if (image != null) {
                        url = image.getUrl();
                    }
                } else {
                    MbAdVideo video = adMaterialList2.getVideo();
                    if (video != null) {
                        url = video.getUrl();
                    }
                }
                String strC = a0.c(url);
                String str = com.transsion.ad.a.f41780a.b() + File.separatorChar + strC + ".mineType";
                File file = new File(str);
                if (Intrinsics.c(adMaterialList2.getType(), AdMaterialList.NON_AD_TYPE_VIDEO)) {
                    MbAdVideo video2 = adMaterialList2.getVideo();
                    int iIntValue = (video2 == null || (size = video2.getSize()) == null) ? 1 : size.intValue();
                    if (file.isFile() && file.exists() && file.length() > 0) {
                        MbAdVideo video3 = adMaterialList2.getVideo();
                        if (video3 != null) {
                            video3.setPath(str);
                        }
                        adMaterialList2.setDownloadMaterialSuccess(true);
                        return true;
                    }
                    boolean zA = com.transsion.ad.strategy.h.f42234a.a(url, str);
                    long length = file.length();
                    if (zA && length >= iIntValue) {
                        MbAdVideo video4 = adMaterialList2.getVideo();
                        if (video4 != null) {
                            video4.setPath(str);
                        }
                        adMaterialList2.setDownloadMaterialSuccess(true);
                        return true;
                    }
                    oi.a.c(oi.a.f71022a, f42150a.p() + " --> downloadAdPlan() --> 视频素材下载失败 -- adPlans.id = " + adPlans.getId() + " downloadFileSuccess = " + zA + " -- localFileSize = " + length + " -- remoteFileSize = " + iIntValue + " destination = " + str, 6, false, 4, null);
                    return false;
                }
                if (file.isFile() && file.exists() && file.length() > 0) {
                    MbAdImage image2 = adMaterialList2.getImage();
                    if (image2 != null) {
                        image2.setPath(str);
                    }
                    adMaterialList2.setDownloadMaterialSuccess(true);
                    return true;
                }
                boolean zA2 = com.transsion.ad.strategy.h.f42234a.a(url, str);
                long length2 = file.length();
                if (zA2 && length2 > 0) {
                    MbAdImage image3 = adMaterialList2.getImage();
                    if (image3 != null) {
                        image3.setPath(str);
                    }
                    adMaterialList2.setDownloadMaterialSuccess(true);
                    return true;
                }
                oi.a.c(oi.a.f71022a, f42150a.p() + " --> downloadAdPlan() --> 图片素材下载失败 -- adPlans.id = " + adPlans.getId() + " downloadFileSuccess = " + zA2 + " -- localFileSize = " + length2 + " -- destination = " + str, 6, false, 4, null);
            }
        }
        return false;
    }

    private final String m(String str) {
        String strC = a0.c(str);
        String str2 = com.transsion.ad.a.f41780a.b() + File.separatorChar + strC + ".mineType";
        return (h.f76259a.h(str2) || com.transsion.ad.strategy.h.f42234a.a(str, str2)) ? str2 : "";
    }

    private final void n(MbAdImage mbAdImage) {
        if (mbAdImage == null || TextUtils.isEmpty(mbAdImage.getUrl())) {
            return;
        }
        String url = mbAdImage.getUrl();
        String strC = a0.c(url);
        String str = com.transsion.ad.a.f41780a.b() + File.separatorChar + strC + ".mineType";
        if (h.f76259a.h(str)) {
            mbAdImage.setPath(str);
        } else if (com.transsion.ad.strategy.h.f42234a.a(url, str)) {
            mbAdImage.setPath(str);
        }
    }

    private final Object o(AdPlans adPlans, Continuation continuation) throws Throwable {
        Object objW;
        AdPlanSourceManager adPlanSourceManager = AdPlanSourceManager.f42166a;
        if (!adPlanSourceManager.j(adPlans) && !adPlanSourceManager.e(adPlans) && !adPlanSourceManager.g(adPlans) && !adPlanSourceManager.l(adPlans)) {
            return (l(adPlans) && (objW = w(adPlans, continuation)) == IntrinsicsKt.f()) ? objW : Unit.f67061a;
        }
        oi.a.c(oi.a.f71022a, p() + " --> downloadMaterialAndSaveAdPlans() --> PS虚拟计划和、Hi虚拟计划 --> 不需要下载素材的 --> " + adPlans.getAdSource() + " --> adPlan.name = " + adPlans.getName() + " --> adPlan.id = " + adPlans.getId(), 0, false, 6, null);
        AdMaterialList adMaterialList = new AdMaterialList(null, null, null, null, null, null, null, null, null, false, null, null, null, 8191, null);
        adMaterialList.setDownloadMaterialSuccess(true);
        adPlans.setAdMaterialList(CollectionsKt.e(adMaterialList));
        Object objW2 = w(adPlans, continuation);
        return objW2 == IntrinsicsKt.f() ? objW2 : Unit.f67061a;
    }

    private final String p() {
        String simpleName = AdPlansRequestManager.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    private final pi.a q() {
        return (pi.a) f42151b.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:49:0x01c1 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:7:0x001b  */
    public final Object r(MbAdPlansDto mbAdPlansDto, String str, Continuation continuation) throws Throwable {
        AdPlansRequestManager$handleResponse$1 adPlansRequestManager$handleResponse$1;
        List<AdPlans> adPlans;
        MbAdPlansDto mbAdPlansDto2;
        String str2;
        MbAdPlansDto mbAdPlansDto3 = mbAdPlansDto;
        String str3 = str;
        if (continuation instanceof AdPlansRequestManager$handleResponse$1) {
            adPlansRequestManager$handleResponse$1 = (AdPlansRequestManager$handleResponse$1) continuation;
            int i11 = adPlansRequestManager$handleResponse$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                adPlansRequestManager$handleResponse$1.label = i11 - Integer.MIN_VALUE;
            } else {
                adPlansRequestManager$handleResponse$1 = new AdPlansRequestManager$handleResponse$1(this, continuation);
            }
        } else {
            adPlansRequestManager$handleResponse$1 = new AdPlansRequestManager$handleResponse$1(this, continuation);
        }
        Object obj = adPlansRequestManager$handleResponse$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = adPlansRequestManager$handleResponse$1.label;
        if (i12 != 0) {
            if (i12 == 1) {
                String str4 = (String) adPlansRequestManager$handleResponse$1.L$1;
                MbAdPlansDto mbAdPlansDto4 = (MbAdPlansDto) adPlansRequestManager$handleResponse$1.L$0;
                ResultKt.b(obj);
                str3 = str4;
                mbAdPlansDto3 = mbAdPlansDto4;
            } else if (i12 == 2) {
                str2 = (String) adPlansRequestManager$handleResponse$1.L$1;
                mbAdPlansDto2 = (MbAdPlansDto) adPlansRequestManager$handleResponse$1.L$0;
                ResultKt.b(obj);
                adPlansRequestManager$handleResponse$1.L$0 = null;
                adPlansRequestManager$handleResponse$1.L$1 = null;
                adPlansRequestManager$handleResponse$1.label = 3;
                if (i(mbAdPlansDto2, str2, adPlansRequestManager$handleResponse$1) == objF) {
                    return objF;
                }
            } else {
                if (i12 != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            return Boxing.a(true);
        }
        ResultKt.b(obj);
        if (mbAdPlansDto3 == null) {
            oi.a.c(oi.a.f71022a, p() + " --> handleResponse() --> mbAdConfig == null --> lastVersion = " + str3, 6, false, 4, null);
            return Boxing.a(false);
        }
        MbAdPlansBean data = mbAdPlansDto.getData();
        String strValueOf = String.valueOf(data != null ? data.getVersion() : null);
        MbAdPlansBean data2 = mbAdPlansDto.getData();
        Integer numD = (data2 == null || (adPlans = data2.getAdPlans()) == null) ? null : Boxing.d(adPlans.size());
        if (!Intrinsics.c(mbAdPlansDto.getCode(), "0")) {
            oi.a.c(oi.a.f71022a, p() + " --> handleResponse() --> mbAdConfig.code != 0 --> lastVersion = " + str3 + " --> newVersion = " + strValueOf, 6, false, 4, null);
            return Boxing.a(false);
        }
        s.f42244a.d(mbAdPlansDto.getData());
        d.f42231a.e(mbAdPlansDto.getData());
        com.transsion.ad.scene.d.f42204a.g(mbAdPlansDto3);
        if (TextUtils.equals(str3, strValueOf)) {
            oi.a.c(oi.a.f71022a, p() + " --> handleResponse() --> 版本号一致，服务端不会下发list 省流量 --> lastVersion = " + str3 + " --> newVersion = " + strValueOf, 0, false, 6, null);
            return Boxing.a(true);
        }
        ri.c.f74535a.i(str3, strValueOf);
        oi.a aVar = oi.a.f71022a;
        oi.a.c(aVar, p() + " --> handleResponse() --> lastVersion = " + str3 + " --> newVersion = " + strValueOf + " --> size = " + numD + " --> 开始增量更新", 0, false, 6, null);
        String strP = p();
        StringBuilder sb2 = new StringBuilder();
        sb2.append(strP);
        sb2.append(" --> handleResponse() --> 保证计划关闭的及时性，将不是最新版本的计划标记为不可用 --> isValid = false");
        oi.a.c(aVar, sb2.toString(), 0, false, 6, null);
        AdPlansStorageManager adPlansStorageManager = AdPlansStorageManager.f42153a;
        adPlansRequestManager$handleResponse$1.L$0 = mbAdPlansDto3;
        adPlansRequestManager$handleResponse$1.L$1 = str3;
        adPlansRequestManager$handleResponse$1.label = 1;
        if (adPlansStorageManager.u(false, strValueOf, adPlansRequestManager$handleResponse$1) == objF) {
            return objF;
        }
        adPlansRequestManager$handleResponse$1.L$0 = mbAdPlansDto3;
        adPlansRequestManager$handleResponse$1.L$1 = str3;
        adPlansRequestManager$handleResponse$1.label = 2;
        if (v(mbAdPlansDto3, adPlansRequestManager$handleResponse$1) == objF) {
            return objF;
        }
        String str5 = str3;
        mbAdPlansDto2 = mbAdPlansDto3;
        str2 = str5;
        adPlansRequestManager$handleResponse$1.L$0 = null;
        adPlansRequestManager$handleResponse$1.L$1 = null;
        adPlansRequestManager$handleResponse$1.label = 3;
        if (i(mbAdPlansDto2, str2, adPlansRequestManager$handleResponse$1) == objF) {
            return objF;
        }
        return Boxing.a(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final pi.a s() {
        return (pi.a) zg.c.f79414e.a().h(pi.a.class);
    }

    public static /* synthetic */ Object u(AdPlansRequestManager adPlansRequestManager, String str, Function1 function1, Continuation continuation, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            function1 = null;
        }
        return adPlansRequestManager.t(str, function1, continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:34:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:36:0x00c3 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:37:0x00c4  */
    /* JADX WARN: Code duplicated, block: B:40:0x00f1  */
    /* JADX WARN: Code duplicated, block: B:42:0x00f9  */
    /* JADX WARN: Code duplicated, block: B:45:0x0106  */
    /* JADX WARN: Code duplicated, block: B:47:0x0109  */
    /* JADX WARN: Code duplicated, block: B:48:0x010e  */
    /* JADX WARN: Code duplicated, block: B:50:0x0111  */
    /* JADX WARN: Code duplicated, block: B:53:0x0136  */
    /* JADX WARN: Code duplicated, block: B:54:0x013b  */
    /* JADX WARN: Code duplicated, block: B:57:0x0148  */
    /* JADX WARN: Code duplicated, block: B:73:0x01c3  */
    /* JADX WARN: Code duplicated, block: B:75:0x0208 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:76:0x0209  */
    /* JADX WARN: Code duplicated, block: B:78:0x024f A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:79:0x0250  */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:79:0x0250 -> B:80:0x0253). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public final java.lang.Object v(com.transsion.ad.monopoly.model.MbAdPlansDto r26, kotlin.coroutines.Continuation r27) {
        /*
            Method dump skipped, instruction units count: 604
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.transsion.ad.monopoly.manager.AdPlansRequestManager.v(com.transsion.ad.monopoly.model.MbAdPlansDto, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object w(AdPlans adPlans, Continuation continuation) throws Throwable {
        AdPlansRequestManager$updateAdPlanToDatabase$1 adPlansRequestManager$updateAdPlanToDatabase$1;
        if (continuation instanceof AdPlansRequestManager$updateAdPlanToDatabase$1) {
            adPlansRequestManager$updateAdPlanToDatabase$1 = (AdPlansRequestManager$updateAdPlanToDatabase$1) continuation;
            int i11 = adPlansRequestManager$updateAdPlanToDatabase$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                adPlansRequestManager$updateAdPlanToDatabase$1.label = i11 - Integer.MIN_VALUE;
            } else {
                adPlansRequestManager$updateAdPlanToDatabase$1 = new AdPlansRequestManager$updateAdPlanToDatabase$1(this, continuation);
            }
        } else {
            adPlansRequestManager$updateAdPlanToDatabase$1 = new AdPlansRequestManager$updateAdPlanToDatabase$1(this, continuation);
        }
        Object obj = adPlansRequestManager$updateAdPlanToDatabase$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = adPlansRequestManager$updateAdPlanToDatabase$1.label;
        if (i12 == 0) {
            ResultKt.b(obj);
            MbAdDbPlans mbAdDbPlansA = AdPlansTransform.f42168a.a(adPlans);
            AdPlansStorageManager adPlansStorageManager = AdPlansStorageManager.f42153a;
            adPlansRequestManager$updateAdPlanToDatabase$1.label = 1;
            if (adPlansStorageManager.p(mbAdDbPlansA, adPlansRequestManager$updateAdPlanToDatabase$1) == objF) {
                return objF;
            }
        } else {
            if (i12 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        return Boxing.a(true);
    }

    /* JADX WARN: Code duplicated, block: B:67:0x0178 A[Catch: all -> 0x003e, TryCatch #2 {all -> 0x003e, blocks: (B:14:0x0039, B:71:0x0190, B:21:0x004d, B:65:0x0170, B:67:0x0178, B:68:0x0182), top: B:87:0x002d }] */
    /* JADX WARN: Code duplicated, block: B:70:0x018f A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:77:0x01ae  */
    /* JADX WARN: Code duplicated, block: B:79:0x01b6  */
    /* JADX WARN: Code duplicated, block: B:7:0x0019  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v3, types: [kotlin.jvm.functions.Function1] */
    /* JADX WARN: Type inference failed for: r1v30 */
    /* JADX WARN: Type inference failed for: r1v31 */
    /* JADX WARN: Type inference failed for: r7v3, types: [java.lang.String] */
    public final Object t(String str, Function1 function1, Continuation continuation) throws Throwable {
        AdPlansRequestManager$requestNonAdPlanList$1 adPlansRequestManager$requestNonAdPlanList$1;
        Object objM454constructorimpl;
        ?? r11;
        Throwable thM457exceptionOrNullimpl;
        String strA;
        String str2;
        Function1 function2;
        String strB;
        Function1 function3;
        boolean zBooleanValue;
        PSAdPlanRequestManager pSAdPlanRequestManager;
        Object obj = "";
        if (continuation instanceof AdPlansRequestManager$requestNonAdPlanList$1) {
            adPlansRequestManager$requestNonAdPlanList$1 = (AdPlansRequestManager$requestNonAdPlanList$1) continuation;
            int i11 = adPlansRequestManager$requestNonAdPlanList$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                adPlansRequestManager$requestNonAdPlanList$1.label = i11 - Integer.MIN_VALUE;
            } else {
                adPlansRequestManager$requestNonAdPlanList$1 = new AdPlansRequestManager$requestNonAdPlanList$1(this, continuation);
            }
        } else {
            adPlansRequestManager$requestNonAdPlanList$1 = new AdPlansRequestManager$requestNonAdPlanList$1(this, continuation);
        }
        Object objR = adPlansRequestManager$requestNonAdPlanList$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = adPlansRequestManager$requestNonAdPlanList$1.label;
        try {
            if (i12 != 0) {
                if (i12 == 1) {
                    String str3 = (String) adPlansRequestManager$requestNonAdPlanList$1.L$1;
                    function2 = (Function1) adPlansRequestManager$requestNonAdPlanList$1.L$0;
                    try {
                        ResultKt.b(objR);
                        str2 = str3;
                    } catch (Throwable th2) {
                        th = th2;
                        obj = function2;
                        Result.Companion companion = Result.INSTANCE;
                        objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th));
                        r11 = obj;
                    }
                } else if (i12 == 2) {
                    Function1 function4 = (Function1) adPlansRequestManager$requestNonAdPlanList$1.L$0;
                    ResultKt.b(objR);
                    function3 = function4;
                    zBooleanValue = ((Boolean) objR).booleanValue();
                    if (function3 != null) {
                    }
                    pSAdPlanRequestManager = PSAdPlanRequestManager.f42184a;
                    adPlansRequestManager$requestNonAdPlanList$1.L$0 = function3;
                    adPlansRequestManager$requestNonAdPlanList$1.label = 3;
                    obj = function3;
                    if (pSAdPlanRequestManager.b(adPlansRequestManager$requestNonAdPlanList$1) == objF) {
                        return objF;
                    }
                } else {
                    if (i12 != 3) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    Object obj2 = (Function1) adPlansRequestManager$requestNonAdPlanList$1.L$0;
                    ResultKt.b(objR);
                    obj = obj2;
                }
                f42152c.set(false);
                objM454constructorimpl = Result.m454constructorimpl(Unit.f67061a);
                r11 = obj;
                thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
                if (thM457exceptionOrNullimpl != null) {
                    f42152c.set(false);
                    if (r11 != 0) {
                    }
                    oi.a.c(oi.a.f71022a, f42150a.p() + " --> requestNonAdPlanList() --> fail fail fail --> 请求非标广告计划列表失败 it = " + thM457exceptionOrNullimpl, 6, false, 4, null);
                }
                return Unit.f67061a;
            }
            ResultKt.b(objR);
            if (f42152c.get()) {
                oi.a.c(oi.a.f71022a, p() + " --> requestNonAdPlanList() --> 正在请求中.... 稍后再试", 5, false, 4, null);
                return Unit.f67061a;
            }
            f42152c.set(true);
            try {
                Result.Companion companion2 = Result.INSTANCE;
                f fVar = f.f42232a;
                String string = fVar.c().getString("non_ad_plan_version", "");
                String string2 = fVar.c().getString("non_ad_scene_version", "");
                oi.a aVar = oi.a.f71022a;
                AdPlansRequestManager adPlansRequestManager = f42150a;
                oi.a.c(aVar, adPlansRequestManager.p() + " --> requestNonAdPlanList() --> 开始请求广告配置接口 --> lastVersion = " + string + " --> lastSceneVersion = " + string2 + " --> url = " + str, 0, false, 6, null);
                MBAd mBAd = MBAd.f41751a;
                MBAd.a aVarC = mBAd.c();
                if (TextUtils.isEmpty(aVarC != null ? aVarC.a() : null)) {
                    strA = vg.a.f77324a.a();
                } else {
                    MBAd.a aVarC2 = mBAd.c();
                    if (aVarC2 == null || (strA = aVarC2.a()) == null) {
                        strA = "";
                    }
                }
                pi.a aVarQ = adPlansRequestManager.q();
                MBAd.a aVarC3 = mBAd.c();
                String str4 = (aVarC3 == null || (strB = aVarC3.b()) == null) ? "" : strB;
                Object obj3 = string == null ? obj : string;
                String strA2 = AppManager.f42217a.a();
                adPlansRequestManager$requestNonAdPlanList$1.L$0 = function1;
                adPlansRequestManager$requestNonAdPlanList$1.L$1 = string;
                adPlansRequestManager$requestNonAdPlanList$1.label = 1;
                Object objA = pi.a.C0885a.a(aVarQ, str4, strA, obj3, string2, false, strA2, adPlansRequestManager$requestNonAdPlanList$1, 16, null);
                if (objA == objF) {
                    return objF;
                }
                str2 = string;
                objR = objA;
                function2 = function1;
            } catch (Throwable th3) {
                th = th3;
                obj = function1;
                Result.Companion companion3 = Result.INSTANCE;
                objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th));
                r11 = obj;
            }
            AdPlansRequestManager adPlansRequestManager2 = f42150a;
            adPlansRequestManager$requestNonAdPlanList$1.L$0 = function2;
            adPlansRequestManager$requestNonAdPlanList$1.L$1 = null;
            adPlansRequestManager$requestNonAdPlanList$1.label = 2;
            objR = adPlansRequestManager2.r((MbAdPlansDto) objR, str2, adPlansRequestManager$requestNonAdPlanList$1);
            if (objR == objF) {
                return objF;
            }
            function3 = function2;
            zBooleanValue = ((Boolean) objR).booleanValue();
            if (function3 != null) {
            }
            pSAdPlanRequestManager = PSAdPlanRequestManager.f42184a;
            adPlansRequestManager$requestNonAdPlanList$1.L$0 = function3;
            adPlansRequestManager$requestNonAdPlanList$1.label = 3;
            obj = function3;
            if (pSAdPlanRequestManager.b(adPlansRequestManager$requestNonAdPlanList$1) == objF) {
                return objF;
            }
            f42152c.set(false);
            objM454constructorimpl = Result.m454constructorimpl(Unit.f67061a);
            r11 = obj;
            thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
            if (thM457exceptionOrNullimpl != null) {
                f42152c.set(false);
                if (r11 != 0) {
                }
                oi.a.c(oi.a.f71022a, f42150a.p() + " --> requestNonAdPlanList() --> fail fail fail --> 请求非标广告计划列表失败 it = " + thM457exceptionOrNullimpl, 6, false, 4, null);
            }
            return Unit.f67061a;
        } catch (Throwable th4) {
            th = th4;
        }
    }
}
