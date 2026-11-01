package com.transsion.api.gateway.bean;

import java.io.Serializable;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class GatewayTrack implements Serializable {
    public static final int SAVE_FLAG_NONE = -1;
    public static final int SAVE_FLAG_TO_DB = 1;
    public static final int SAVE_FLAG_TO_FILE = 0;
    private String eventName;
    private int flag;
    private boolean hasSent = false;
    private JSONObject jsonData;
    private long tid;
    private int trackFlag;

    public String getEventName() {
        return this.eventName;
    }

    public int getFlag() {
        return this.flag;
    }

    public JSONObject getJsonData() {
        return this.jsonData;
    }

    public long getTid() {
        return this.tid;
    }

    public int getTrackFlag() {
        return this.trackFlag;
    }

    public boolean isHasSent() {
        return this.hasSent;
    }

    public void setEventName(String str) {
        this.eventName = str;
    }

    public void setFlag(int i11) {
        this.flag = i11;
    }

    public void setHasSent(boolean z10) {
        this.hasSent = z10;
    }

    public void setJson(JSONObject jSONObject) {
        this.jsonData = jSONObject;
    }

    public void setTid(long j11) {
        this.tid = j11;
    }

    public void setTrackFlag(int i11) {
        this.trackFlag = i11;
    }

    public String toString() {
        return "tid = " + this.tid + ",event = " + this.jsonData.toString();
    }
}
