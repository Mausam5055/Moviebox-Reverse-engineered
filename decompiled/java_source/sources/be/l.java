package be;

/* JADX INFO: loaded from: classes4.dex */
public abstract class l {
    public static String a() {
        int iC = g7.a.c();
        if (iC == 0) {
            return "https://cc-api.hisavana.com/isavana/trafficdispatch/v1/consumer-not-login/cloudcontrol/query/getCloudControlData";
        }
        if (iC != 2) {
            return iC != 4 ? "https://api.test.hisavana.com/isavana/trafficdispatch/v1/consumer-not-login/cloudcontrol/query/getCloudControlData" : "https://api.fat1.hisavana.com/isavana/trafficdispatch/v1/consumer-not-login/cloudcontrol/query/getCloudControlData";
        }
        return "https://api-fat0101.eagllwin.com/isavana/trafficdispatch/v1/consumer-not-login/cloudcontrol/query/getCloudControlData";
    }
}
