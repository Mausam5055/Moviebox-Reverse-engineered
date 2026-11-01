package com.transsion.push.bean;

import com.transsion.push.PushConstants;
import fm.a;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public class PushRequest {
    public String data;
    public String key;

    public static class ReportContentData {
        public String aid;
        public String androidVersion;
        public String appId;

        @a(name = "appInfos")
        public PushAppInfo[] appInfos;
        public String appKey;
        public String appVersion;
        public int appVersionCode;

        @a(name = "apps")
        public String[] apps;
        public String brand;
        public int cid;
        public String clientId;
        public int confVersion;
        public String country;
        public String gaid;
        public int lac;
        public String language;
        public int mcc;
        public int mnc;
        public String model;
        public String network;
        public int noticeEnable;
        public String osVersion;
        public String pkg;
        public int platVer;
        public String sdkVersion;
        public int sdkVersionCode;
        public String token;
        public String vaid;
        public int whitelistVersion;
        public boolean withDetail;

        public String toString() {
            return "ReportContentData{vaid='" + this.vaid + "', gaid='" + this.gaid + "', pkg='" + this.pkg + "', platVer=" + this.platVer + ", sdkVersion='" + this.sdkVersion + "', sdkVersionCode=" + this.sdkVersionCode + ", confVersion=" + this.confVersion + ", whitelistVersion=" + this.whitelistVersion + ", withDetail=" + this.withDetail + ", token='" + this.token + "', aid='" + this.aid + "', appVersion='" + this.appVersion + "', appVersionCode=" + this.appVersionCode + ", language='" + this.language + "', brand='" + this.brand + "', model='" + this.model + "', androidVersion='" + this.androidVersion + "', osVersion='" + this.osVersion + "', network='" + this.network + "', mcc=" + this.mcc + ", mnc=" + this.mnc + ", lac=" + this.lac + ", cid=" + this.cid + ", country='" + this.country + "', apps=" + Arrays.toString(this.apps) + ", appInfos=" + Arrays.toString(this.appInfos) + ", appId='" + this.appId + "', appKey='" + this.appKey + "', clientId='" + this.clientId + "', noticeEnable=" + this.noticeEnable + '}';
        }
    }

    /* JADX INFO: loaded from: classes6.dex */
    public static class SelfDestroyContentData {
        public String appId;
        public String appKey;
        public String appVersion;
        public int appVersionCode;
        public String clientId;
        public int confVersion;
        public String sdkVersion;
        public int sdkVersionCode;
        public int whitelistVersion;

        public String toString() {
            return "SelfDestroyContentData{appId='" + this.appId + "', appKey='" + this.appKey + "', clientId='" + this.clientId + "', sdkVersion='" + this.sdkVersion + "', appVersion='" + this.appVersion + "', confVersion=" + this.confVersion + ", appVersionCode=" + this.appVersionCode + ", sdkVersionCode=" + this.sdkVersionCode + ", whitelistVersion=" + this.whitelistVersion + '}';
        }
    }

    /* JADX INFO: loaded from: classes6.dex */
    public static class TopicContentData {
        public String action;
        public String appId;
        public String appKey;
        public String appVersion;
        public int appVersionCode;
        public String clientId;
        public String gaid;
        public String sdkVersion;
        public int sdkVersionCode;

        @a(name = PushConstants.SP_KEY_SUBSCRIBE_TOPICS)
        public ArrayList<String> topics;

        public String toString() {
            return "TopicContentData{clientId='" + this.clientId + "', gaid='" + this.gaid + "', appId='" + this.appId + "', appKey='" + this.appKey + "', appVersion='" + this.appVersion + "', appVersionCode='" + this.appVersionCode + "', sdkVersion='" + this.sdkVersion + "', sdkVersionCode='" + this.sdkVersionCode + "', topics=" + this.topics + ", action='" + this.action + "'}";
        }
    }

    public String toString() {
        return "PushRequest{key='" + this.key + "', data='" + this.data + "'}";
    }
}
