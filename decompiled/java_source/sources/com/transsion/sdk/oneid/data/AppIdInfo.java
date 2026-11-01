package com.transsion.sdk.oneid.data;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class AppIdInfo extends OneBaseInfo implements Serializable {
    public long lastRequestTime;
    public String msg;
    public String odid;
    public long retryRequestDelay;
    public int retryTimes;
    public long waitTime;
}
