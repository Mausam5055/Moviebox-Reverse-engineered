package com.transsion.ad.ps;

import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.kernel.framework.FrameworkConstants;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.transsion.ad.db.pslink.AttributionPoint;
import com.transsion.ad.ps.model.RecommendInfo;
import com.transsion.push.PushConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.LinkedHashMap;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.Intrinsics;
import ri.b;

/* JADX INFO: loaded from: classes5.dex */
public final class PSReportUtil {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final PSReportUtil f42170a = new PSReportUtil();

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\t¨\u0006\n"}, d2 = {"Lcom/transsion/ad/ps/PSReportUtil$ItemResourceEnum;", "", AppMeasurementSdk.ConditionalUserProperty.VALUE, "", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "getValue", "()Ljava/lang/String;", "ITEM_RES_HI", "ITEM_RES_PS", "lib_ad_gpRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public enum ItemResourceEnum {
        ITEM_RES_HI("hi"),
        ITEM_RES_PS("ps");

        private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.a(values());
        private final String value;

        ItemResourceEnum(String str) {
            this.value = str;
        }

        public static EnumEntries<ItemResourceEnum> getEntries() {
            return $ENTRIES;
        }

        public final String getValue() {
            return this.value;
        }
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\n¨\u0006\u000b"}, d2 = {"Lcom/transsion/ad/ps/PSReportUtil$PSRequestState;", "", AppMeasurementSdk.ConditionalUserProperty.VALUE, "", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "getValue", "()Ljava/lang/String;", "REQUEST_TRIGGER", "REQUEST_SUCCESS", "REQUEST_FAIL", "lib_ad_gpRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public enum PSRequestState {
        REQUEST_TRIGGER("trigger"),
        REQUEST_SUCCESS(NativeComponentConstants.KEY_COMPONENT_RESULT_SUCCESS),
        REQUEST_FAIL("fail");

        private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.a(values());
        private final String value;

        PSRequestState(String str) {
            this.value = str;
        }

        public static EnumEntries<PSRequestState> getEntries() {
            return $ENTRIES;
        }

        public final String getValue() {
            return this.value;
        }
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\f¨\u0006\r"}, d2 = {"Lcom/transsion/ad/ps/PSReportUtil$PsDistributeSceneEnum;", "", AppMeasurementSdk.ConditionalUserProperty.VALUE, "", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "getValue", "()Ljava/lang/String;", "PS_DISTRIBUTE_SCENE_DOWNLOAD_INTERCEPT", "PS_DISTRIBUTE_SCENE_APP_CENTER", "PS_DISTRIBUTE_SCENE_DOWNLOAD_CENTER_APP", "PS_DISTRIBUTE_SCENE_AD_PLAN", "PS_DISTRIBUTE_SCENE_ACTIVATE", "lib_ad_gpRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public enum PsDistributeSceneEnum {
        PS_DISTRIBUTE_SCENE_DOWNLOAD_INTERCEPT("download_intercept"),
        PS_DISTRIBUTE_SCENE_APP_CENTER("app_center"),
        PS_DISTRIBUTE_SCENE_DOWNLOAD_CENTER_APP("download_center_app"),
        PS_DISTRIBUTE_SCENE_AD_PLAN("ad_plan"),
        PS_DISTRIBUTE_SCENE_ACTIVATE("ps_activate");

        private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.a(values());
        private final String value;

        PsDistributeSceneEnum(String str) {
            this.value = str;
        }

        public static EnumEntries<PsDistributeSceneEnum> getEntries() {
            return $ENTRIES;
        }

        public final String getValue() {
            return this.value;
        }
    }

    private PSReportUtil() {
    }

    public final void a(AttributionPoint.AttributionType attributionType, String str) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(NativeComponentConstants.KEY_COMPONENT_TYPE, attributionType != null ? attributionType.name() : null);
        linkedHashMap.put("psId", str);
        linkedHashMap.put(EventConstants.KEY_ACTION, "ps_attribution");
        b.f74533a.a("ad_ps_attribution", linkedHashMap, "ps_attribution");
    }

    public final void b(String str, String str2, String str3) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(PushConstants.PROVIDER_FIELD_PKG, str);
        linkedHashMap.put(EventConstants.KEY_SOURCE, str2);
        linkedHashMap.put("activate_state", str3);
        linkedHashMap.put(EventConstants.KEY_ACTION, "ps_install");
        b.f74533a.a("ad_ps_distribute", linkedHashMap, "ps_distribute");
    }

    public final void c(PSRequestState psState, RecommendInfo recommendInfo, String sceneStr, String adPlanId) {
        Intrinsics.h(psState, "psState");
        Intrinsics.h(sceneStr, "sceneStr");
        Intrinsics.h(adPlanId, "adPlanId");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(FrameworkConstants.GLOBAL_DATA_KEY_SCENE, sceneStr);
        linkedHashMap.put("ad_planId", adPlanId);
        linkedHashMap.put("ps_state", psState.getValue());
        linkedHashMap.put("id", recommendInfo != null ? Long.valueOf(recommendInfo.getId()).toString() : null);
        linkedHashMap.put(EventConstants.KEY_ACTION, "ps_material");
        b.f74533a.a("ad_ps_distribute", linkedHashMap, "ps_distribute");
    }

    public final void d(PSRequestState psState, Integer num, String str, String str2, String scene) {
        Intrinsics.h(psState, "psState");
        Intrinsics.h(scene, "scene");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("ps_state", psState.getValue());
        linkedHashMap.put("count", String.valueOf(num));
        linkedHashMap.put(OfflineConstantsKt.TRACK_KEY_PRE_ERROR_MSG, String.valueOf(str));
        linkedHashMap.put("ps_scene", String.valueOf(str2));
        linkedHashMap.put(FrameworkConstants.GLOBAL_DATA_KEY_SCENE, scene);
        linkedHashMap.put(EventConstants.KEY_ACTION, "ps_request");
        b.f74533a.a("ad_ps_distribute", linkedHashMap, "ps_distribute");
    }
}
