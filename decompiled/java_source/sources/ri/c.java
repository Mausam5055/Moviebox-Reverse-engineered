package ri;

import android.os.Build;
import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.integration.net.UrlKt;
import com.hisavana.common.tracking.TrackingKey;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.ad.ps.model.ItemDetail;
import com.transsion.ad.ps.model.RecommendInfo;
import com.transsion.ad.report.BiddingStateEnum;
import com.transsion.mpush.api.LocalPushMessage;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final c f74535a = new c();

    private c() {
    }

    private final void f(Map map, RecommendInfo recommendInfo) {
        Object objM454constructorimpl;
        if (recommendInfo == null) {
            return;
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            ih.b bVar = ih.b.f65241a;
            linkedHashMap.put(UrlKt.KEY_MINI_GAID, bVar.i());
            linkedHashMap.put("country_code", bVar.f());
            linkedHashMap.put("media", com.blankj.utilcode.util.c.c());
            ItemDetail detail = recommendInfo.getDetail();
            linkedHashMap.put("app_name", String.valueOf(detail != null ? detail.getName() : null));
            linkedHashMap.put("packageName", String.valueOf(recommendInfo.getPackageName()));
            linkedHashMap.put("ps_dialog_style", "B");
            linkedHashMap.put("plan_Name", String.valueOf(recommendInfo.getPlanName()));
            linkedHashMap.put("plan_id", String.valueOf(recommendInfo.getId()));
            linkedHashMap.put("is_offer", String.valueOf(recommendInfo.isOffer()));
            linkedHashMap.put(CampaignEx.KEY_SHOW_TYPE, String.valueOf(recommendInfo.getShowType()));
            linkedHashMap.put("ua", Build.MODEL);
            linkedHashMap.put("brand", Build.BRAND);
            linkedHashMap.put(EventConstants.KEY_SOURCE, "ps");
            linkedHashMap.put("adSource", String.valueOf(recommendInfo.getAdSource()));
            map.put("ps_map_json", new JSONObject(linkedHashMap));
            map.put("ps_id", String.valueOf(recommendInfo.getId()));
            map.put("ps_package_name", String.valueOf(recommendInfo.getPackageName()));
            objM454constructorimpl = Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
        if (thM457exceptionOrNullimpl == null) {
            return;
        }
        oi.a.g(oi.a.f71022a, "Report_ad", "AdReportProvider --> commonParams() --> " + thM457exceptionOrNullimpl.getMessage(), 0, false, 12, null);
    }

    public final void a(String triggerId, String str, String str2, Integer num, String str3, int i11, boolean z10, Map extMap, RecommendInfo recommendInfo, Double d11, Long l11, String str4, String str5) {
        Intrinsics.h(triggerId, "triggerId");
        Intrinsics.h(extMap, "extMap");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("adSource", String.valueOf(num));
        linkedHashMap.put("adType", String.valueOf(i11));
        linkedHashMap.put(EventConstants.KEY_ACTION, "click");
        if (str3 == null) {
            str3 = "";
        }
        linkedHashMap.put("ad_id", str3);
        if (str2 == null) {
            str2 = "";
        }
        linkedHashMap.put("ad_plan_id", str2);
        linkedHashMap.put("scene_id", str != null ? str : "");
        linkedHashMap.put("is_ad_show_final", String.valueOf(z10));
        linkedHashMap.put(TrackingKey.TRIGGER_ID, triggerId);
        f(linkedHashMap, recommendInfo);
        linkedHashMap.put("bid_ecpm_cent", String.valueOf(d11));
        linkedHashMap.put("ecpm_cent", String.valueOf(l11));
        if (!TextUtils.isEmpty(str4)) {
            linkedHashMap.put("scene_sub_id", str4);
        }
        linkedHashMap.put("ad_plan_source", str5);
        if (!extMap.isEmpty()) {
            linkedHashMap.putAll(extMap);
        }
        b.f74533a.a("ad_click", linkedHashMap, str);
    }

    public final void c(String str, Map extMap, Integer num, int i11) {
        Intrinsics.h(extMap, "extMap");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(EventConstants.KEY_ACTION, "close");
        linkedHashMap.put("scene_id", str == null ? "" : str);
        linkedHashMap.put("adSource", String.valueOf(num));
        linkedHashMap.put("adType", String.valueOf(i11));
        if (!extMap.isEmpty()) {
            linkedHashMap.putAll(extMap);
        }
        b.f74533a.a("ad_close", linkedHashMap, str);
    }

    public final void d(String triggerId, String str, String str2, long j11, String str3, int i11, boolean z10, String str4, String str5, String str6) {
        Intrinsics.h(triggerId, "triggerId");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (str5 == null) {
            str5 = LocalPushMessage.STYLE_VERTICAL_TYPE;
        }
        linkedHashMap.put("adSource", str5);
        linkedHashMap.put("adType", String.valueOf(i11));
        linkedHashMap.put(EventConstants.KEY_ACTION, TrackingKey.SHOW_TIME);
        if (str3 == null) {
            str3 = "";
        }
        linkedHashMap.put("ad_id", str3);
        if (str2 == null) {
            str2 = "";
        }
        linkedHashMap.put("ad_plan_id", str2);
        linkedHashMap.put("scene_id", str != null ? str : "");
        linkedHashMap.put("is_ad_show_final", String.valueOf(z10));
        linkedHashMap.put(TrackingKey.TRIGGER_ID, triggerId);
        linkedHashMap.put("duration", String.valueOf(j11));
        linkedHashMap.put("ad_plan_source", str6);
        if (!TextUtils.isEmpty(str4)) {
            linkedHashMap.put("scene_sub_id", str4);
        }
        b.f74533a.a("ad_show_time", linkedHashMap, str);
    }

    public final void e(String triggerId, String sceneId, Integer num, int i11, BiddingStateEnum biddingStateEnum, String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        Intrinsics.h(triggerId, "triggerId");
        Intrinsics.h(sceneId, "sceneId");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(EventConstants.KEY_ACTION, "bidding");
        linkedHashMap.put(TrackingKey.TRIGGER_ID, triggerId);
        linkedHashMap.put("adType", String.valueOf(i11));
        linkedHashMap.put("scene_id", sceneId);
        linkedHashMap.put("result", biddingStateEnum != null ? biddingStateEnum.getValue() : null);
        linkedHashMap.put(NotificationCompat.CATEGORY_MESSAGE, str);
        linkedHashMap.put("ecpm_list", str2);
        linkedHashMap.put(TrackingKey.ECPM, str3);
        linkedHashMap.put("plan_id", str4);
        linkedHashMap.put("plan_name", str5);
        linkedHashMap.put("adSource", num != null ? num.toString() : null);
        linkedHashMap.put("ad_plan_source", str7);
        if (!TextUtils.isEmpty(str6)) {
            linkedHashMap.put("scene_sub_id", str6);
        }
        b.f74533a.a("ad_bidding", linkedHashMap, sceneId);
    }

    public final void g(String triggerId, String str, String str2, Integer num, String str3, int i11, boolean z10, Map extMap, RecommendInfo recommendInfo, Double d11, Long l11, String str4, String str5) {
        Intrinsics.h(triggerId, "triggerId");
        Intrinsics.h(extMap, "extMap");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("adSource", String.valueOf(num));
        linkedHashMap.put("adType", String.valueOf(i11));
        linkedHashMap.put(EventConstants.KEY_ACTION, "display");
        if (str3 == null) {
            str3 = "";
        }
        linkedHashMap.put("ad_id", str3);
        if (str2 == null) {
            str2 = "";
        }
        linkedHashMap.put("ad_plan_id", str2);
        linkedHashMap.put("scene_id", str != null ? str : "");
        linkedHashMap.put("is_ad_show_final", String.valueOf(z10));
        linkedHashMap.put(TrackingKey.TRIGGER_ID, triggerId);
        f(linkedHashMap, recommendInfo);
        linkedHashMap.put("bid_ecpm_cent", String.valueOf(d11));
        linkedHashMap.put("ecpm_cent", String.valueOf(l11));
        if (!TextUtils.isEmpty(str4)) {
            linkedHashMap.put("scene_sub_id", str4);
        }
        linkedHashMap.put("ad_plan_source", str5);
        if (!extMap.isEmpty()) {
            linkedHashMap.putAll(extMap);
        }
        b.f74533a.a("ad_display", linkedHashMap, str);
    }

    public final void i(String str, String str2) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("last_version", String.valueOf(str));
        linkedHashMap.put("new_version", String.valueOf(str2));
        linkedHashMap.put(EventConstants.KEY_ACTION, "plan_receive");
        b.f74533a.a("ad_config", linkedHashMap, "ad_config");
    }

    public final void j(String str, String str2) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("last_version", String.valueOf(str));
        linkedHashMap.put("new _version", String.valueOf(str2));
        linkedHashMap.put(EventConstants.KEY_ACTION, "plan_success");
        b.f74533a.a("ad_config", linkedHashMap, "ad_config");
    }

    public final void k(String triggerId, String sceneId, int i11, int i12, String str, String str2) {
        Intrinsics.h(triggerId, "triggerId");
        Intrinsics.h(sceneId, "sceneId");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(EventConstants.KEY_ACTION, "reject");
        linkedHashMap.put(TrackingKey.TRIGGER_ID, triggerId);
        linkedHashMap.put("adType", String.valueOf(i11));
        linkedHashMap.put("scene_id", sceneId);
        linkedHashMap.put("reject_msg", str);
        linkedHashMap.put("adSource", String.valueOf(i12));
        if (!TextUtils.isEmpty(str2)) {
            linkedHashMap.put("scene_sub_id", str2);
        }
        if (!com.transsion.ad.scene.b.f42202a.k()) {
            b.f74533a.a("ad_reject", linkedHashMap, sceneId);
            return;
        }
        oi.a.o(oi.a.f71022a, "Report_ad", "AdReportProvider --> reject() --> 广告数据上报链路已关闭，不上报 -- map = " + linkedHashMap, 0, false, 12, null);
    }

    public final void l(String triggerId, String sceneId, int i11, int i12, String str, String str2) {
        Intrinsics.h(triggerId, "triggerId");
        Intrinsics.h(sceneId, "sceneId");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(EventConstants.KEY_ACTION, "trigger");
        linkedHashMap.put("adType", String.valueOf(i11));
        linkedHashMap.put("scene_id", sceneId);
        linkedHashMap.put("plan_id", str);
        linkedHashMap.put("adSource", String.valueOf(i12));
        linkedHashMap.put(TrackingKey.TRIGGER_ID, triggerId);
        if (!TextUtils.isEmpty(str2)) {
            linkedHashMap.put("scene_sub_id", str2);
        }
        if (!com.transsion.ad.scene.b.f42202a.j()) {
            b.f74533a.a("ad_trigger", linkedHashMap, sceneId);
            return;
        }
        oi.a.o(oi.a.f71022a, "Report_ad", "AdReportProvider --> trigger() --> 广告数据上报链路已关闭，不上报 -- map = " + linkedHashMap, 0, false, 12, null);
    }
}
