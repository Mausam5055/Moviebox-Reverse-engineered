package com.transsion.ad.ps.distribute;

import com.blankj.utilcode.util.o;
import com.cloud.hisavana.sdk.common.util.a0;
import com.cloud.tmc.kernel.framework.FrameworkConstants;
import com.transsion.ad.db.pslink.PsLinkAdPlan;
import com.transsion.ad.monopoly.model.MbAdImage;
import com.transsion.ad.monopoly.plan.AdPlanSourceManager;
import com.transsion.ad.ps.PSReportUtil;
import com.transsion.ad.ps.model.ItemDetail;
import com.transsion.ad.ps.model.PsLinkAdInfo;
import com.transsion.ad.ps.model.RecommendInfo;
import hi.f;
import java.io.File;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.i;
import kotlinx.coroutines.y0;
import org.apache.tools.zip.UnixStat;
import org.json.JSONException;
import org.json.JSONObject;
import ti.h;

/* JADX INFO: loaded from: classes5.dex */
public final class PsDistributeRequestManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final PsDistributeRequestManager f42191a = new PsDistributeRequestManager();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Lazy f42192b = LazyKt.b(new Function0() { // from class: com.transsion.ad.ps.distribute.c
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return PsDistributeRequestManager.p();
        }
    });

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final ConcurrentHashMap f42193c = new ConcurrentHashMap();

    private PsDistributeRequestManager() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:35:0x00ea  */
    /* JADX WARN: Code duplicated, block: B:37:0x00f8  */
    /* JADX WARN: Code duplicated, block: B:42:0x0159 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:43:0x015a  */
    /* JADX WARN: Code duplicated, block: B:46:0x0163  */
    /* JADX WARN: Code duplicated, block: B:48:0x0177 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:51:0x0180  */
    /* JADX WARN: Code duplicated, block: B:66:0x0127 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:45:0x0161 -> B:52:0x01a6). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:47:0x0175 -> B:49:0x0178). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public final java.lang.Object h(java.lang.String r23, java.lang.String r24, com.transsion.ad.ps.model.PsLinkDto r25, kotlin.coroutines.Continuation r26) {
        /*
            Method dump skipped, instruction units count: 503
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.transsion.ad.ps.distribute.PsDistributeRequestManager.h(java.lang.String, java.lang.String, com.transsion.ad.ps.model.PsLinkDto, kotlin.coroutines.Continuation):java.lang.Object");
    }

    private final String i(String str) {
        String strC = a0.c(str);
        String str2 = com.transsion.ad.a.f41780a.a() + File.separatorChar + strC + ".mineType";
        return (h.f76259a.h(str2) || com.transsion.ad.strategy.h.f42234a.a(str, str2)) ? str2 : "";
    }

    private final boolean j(MbAdImage mbAdImage) {
        String url = mbAdImage.getUrl();
        String strC = a0.c(url);
        String str = com.transsion.ad.a.f41780a.a() + File.separatorChar + strC + ".mineType";
        File file = new File(str);
        if (file.isFile() && file.exists() && file.length() > 0) {
            mbAdImage.setPath(str);
            return true;
        }
        boolean zA = com.transsion.ad.strategy.h.f42234a.a(url, str);
        long length = file.length();
        if (zA && length > 0) {
            mbAdImage.setPath(str);
            return true;
        }
        oi.a.k(oi.a.f71022a, k() + " --> downloadAdPlan() --> 图片素材下载失败 --  downloadFileSuccess = " + zA + " -- localFileSize = " + length + " -- destination = " + str, 6, false, 4, null);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String k() {
        String simpleName = PsDistributeRequestManager.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final JSONObject l(int i11, int i12, Integer num) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("bu", "mb");
        jSONObject.put("pageIndex", i11);
        jSONObject.put("pageSize", i12);
        jSONObject.put("media", 1);
        jSONObject.put(FrameworkConstants.GLOBAL_DATA_KEY_SCENE, num);
        for (Map.Entry entry : qi.a.INSTANCE.a(System.currentTimeMillis()).entrySet()) {
            jSONObject.put((String) entry.getKey(), entry.getValue());
        }
        return jSONObject;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:8:0x001e  */
    public final Object m(String str, String str2, RecommendInfo recommendInfo, Continuation continuation) throws Throwable {
        PsDistributeRequestManager$getPsLinkAdPlan$1 psDistributeRequestManager$getPsLinkAdPlan$1;
        String str3;
        String str4;
        RecommendInfo recommendInfo2;
        PsLinkAdPlan psLinkAdPlan;
        if (continuation instanceof PsDistributeRequestManager$getPsLinkAdPlan$1) {
            psDistributeRequestManager$getPsLinkAdPlan$1 = (PsDistributeRequestManager$getPsLinkAdPlan$1) continuation;
            int i11 = psDistributeRequestManager$getPsLinkAdPlan$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                psDistributeRequestManager$getPsLinkAdPlan$1.label = i11 - Integer.MIN_VALUE;
            } else {
                psDistributeRequestManager$getPsLinkAdPlan$1 = new PsDistributeRequestManager$getPsLinkAdPlan$1(this, continuation);
            }
        } else {
            psDistributeRequestManager$getPsLinkAdPlan$1 = new PsDistributeRequestManager$getPsLinkAdPlan$1(this, continuation);
        }
        PsDistributeRequestManager$getPsLinkAdPlan$1 psDistributeRequestManager$getPsLinkAdPlan$2 = psDistributeRequestManager$getPsLinkAdPlan$1;
        Object objG = psDistributeRequestManager$getPsLinkAdPlan$2.result;
        Object objF = IntrinsicsKt.f();
        int i12 = psDistributeRequestManager$getPsLinkAdPlan$2.label;
        if (i12 == 0) {
            ResultKt.b(objG);
            PSReportUtil pSReportUtil = PSReportUtil.f42170a;
            pSReportUtil.c(PSReportUtil.PSRequestState.REQUEST_TRIGGER, recommendInfo, str, str2);
            ItemDetail detail = recommendInfo.getDetail();
            MbAdImage mbAdImage = new MbAdImage(null, null, null, null, null, null, null, null, null, null, null, null, UnixStat.PERM_MASK, null);
            String showContent = recommendInfo.getShowContent();
            if (showContent == null) {
                showContent = detail != null ? detail.getImg0() : null;
            }
            mbAdImage.setUrl(showContent);
            if (!j(mbAdImage)) {
                pSReportUtil.c(PSReportUtil.PSRequestState.REQUEST_FAIL, recommendInfo, str, str2);
                return null;
            }
            PsLinkAdInfo psLinkAdInfo = new PsLinkAdInfo(recommendInfo.getName(), recommendInfo.getIconUrl(), i(recommendInfo.getIconUrl()), detail != null ? detail.getName() : null, detail != null ? detail.getSimpleDescription() : null, recommendInfo.getButtonText(), mbAdImage.getUrl(), mbAdImage.getPath());
            int iHashCode = (str + recommendInfo.getId()).hashCode();
            str3 = str2;
            str4 = str;
            PsLinkAdPlan psLinkAdPlan2 = new PsLinkAdPlan(iHashCode, str3, AdPlanSourceManager.AdPlanEnum.AD_PLAN_AD_SOURCE_PS.getValue(), str, 0, String.valueOf(recommendInfo.getId()), o.j(psLinkAdInfo), o.j(recommendInfo), Boxing.e(System.currentTimeMillis()), recommendInfo.getShowMax(), recommendInfo.getClickMax(), recommendInfo.getShowHours(), 0, 0, null, recommendInfo.isOffer(), 28672, null);
            PsDbManager psDbManager = PsDbManager.f42189a;
            psDistributeRequestManager$getPsLinkAdPlan$2.L$0 = str4;
            psDistributeRequestManager$getPsLinkAdPlan$2.L$1 = str3;
            recommendInfo2 = recommendInfo;
            psDistributeRequestManager$getPsLinkAdPlan$2.L$2 = recommendInfo2;
            psDistributeRequestManager$getPsLinkAdPlan$2.L$3 = psLinkAdPlan2;
            psDistributeRequestManager$getPsLinkAdPlan$2.label = 1;
            objG = psDbManager.g(iHashCode, psDistributeRequestManager$getPsLinkAdPlan$2);
            if (objG == objF) {
                return objF;
            }
            psLinkAdPlan = psLinkAdPlan2;
        } else {
            if (i12 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            psLinkAdPlan = (PsLinkAdPlan) psDistributeRequestManager$getPsLinkAdPlan$2.L$3;
            RecommendInfo recommendInfo3 = (RecommendInfo) psDistributeRequestManager$getPsLinkAdPlan$2.L$2;
            String str5 = (String) psDistributeRequestManager$getPsLinkAdPlan$2.L$1;
            String str6 = (String) psDistributeRequestManager$getPsLinkAdPlan$2.L$0;
            ResultKt.b(objG);
            str4 = str6;
            recommendInfo2 = recommendInfo3;
            str3 = str5;
        }
        PsLinkAdPlan psLinkAdPlan3 = (PsLinkAdPlan) objG;
        if (psLinkAdPlan3 != null) {
            if (f.f64472a.b()) {
                oi.a aVar = oi.a.f71022a;
                String strK = k();
                ItemDetail detail2 = recommendInfo2.getDetail();
                String name = detail2 != null ? detail2.getName() : null;
                oi.a.k(aVar, strK + " --> getPsLinkAdPlan() --> name = " + name + " --> 数据库 存在、替换数据再保存 --> showedTimes = " + psLinkAdPlan3.getShowedTimes() + " --> clickedTimes = " + psLinkAdPlan3.getClickedTimes() + " --> showDate = " + psLinkAdPlan3.getShowDate(), 0, false, 6, null);
            }
            psLinkAdPlan.setShowedTimes(psLinkAdPlan3.getShowedTimes());
            psLinkAdPlan.setClickedTimes(psLinkAdPlan3.getClickedTimes());
            psLinkAdPlan.setShowDate(psLinkAdPlan3.getShowDate());
        } else if (f.f64472a.b()) {
            oi.a aVar2 = oi.a.f71022a;
            String strK2 = k();
            ItemDetail detail3 = recommendInfo2.getDetail();
            oi.a.k(aVar2, strK2 + " --> getPsLinkAdPlan() --> name = " + (detail3 != null ? detail3.getName() : null) + " --> 数据库 不存在 --> 直接保存", 0, false, 6, null);
        }
        PSReportUtil.f42170a.c(PSReportUtil.PSRequestState.REQUEST_SUCCESS, recommendInfo2, str4, str3);
        return psLinkAdPlan;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final qi.a o() {
        return (qi.a) f42192b.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final qi.a p() {
        return (qi.a) zg.c.f79414e.a().h(qi.a.class);
    }

    public final Object n(int i11, int i12, Integer num, String str, Continuation continuation) {
        if (f42193c.putIfAbsent(num, Boxing.a(true)) == null) {
            PSReportUtil.f42170a.d(PSReportUtil.PSRequestState.REQUEST_TRIGGER, null, null, String.valueOf(num), PSReportUtil.PsDistributeSceneEnum.PS_DISTRIBUTE_SCENE_AD_PLAN.getValue());
            Object objG = i.g(y0.b(), new PsDistributeRequestManager$getPsLinkListBySlot$2(i11, i12, num, str, null), continuation);
            return objG == IntrinsicsKt.f() ? objG : Unit.f67061a;
        }
        if (f.f64472a.b()) {
            oi.a.k(oi.a.f71022a, k() + " --> getPsLinkListBySlot() --> psScene=" + num + " --> 正在请求中，已拦截", 5, false, 4, null);
        }
        return Unit.f67061a;
    }
}
