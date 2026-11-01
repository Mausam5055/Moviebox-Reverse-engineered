package com.transsion.gslb;

/* JADX INFO: loaded from: classes5.dex */
public class ListenerBean {
    public String[] domains;
    public GslbSdk.GetDomainListener gslbDomainListener;
    public GslbSdk.GslbInitListener gslbInitListener;
    public GslbSdk.InitListener initListener;
    public boolean isNewDomainListener;
    public boolean isNewInitListener;
    public GslbSdk.ResultListener resultListener;
    public String url;

    public ListenerBean(String str, GslbSdk.ResultListener resultListener) {
        this.url = str;
        this.resultListener = resultListener;
        this.isNewDomainListener = false;
    }

    public ListenerBean(boolean z10, String str, GslbSdk.GetDomainListener getDomainListener) {
        this.url = str;
        this.gslbDomainListener = getDomainListener;
        this.isNewDomainListener = true;
    }

    public ListenerBean(boolean z10, String[] strArr, GslbSdk.GslbInitListener gslbInitListener) {
        this.gslbInitListener = gslbInitListener;
        this.domains = strArr;
        this.isNewInitListener = true;
    }

    public ListenerBean(String[] strArr, GslbSdk.InitListener initListener) {
        this.domains = strArr;
        this.initListener = initListener;
        this.isNewInitListener = false;
    }
}
