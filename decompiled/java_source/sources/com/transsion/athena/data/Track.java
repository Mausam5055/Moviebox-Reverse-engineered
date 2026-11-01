package com.transsion.athena.data;

import androidx.annotation.NonNull;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class Track {
    public static final int SAVE_FLAG_NONE = -1;
    public static final int SAVE_FLAG_TO_DB = 1;
    public static final int SAVE_FLAG_TO_FILE = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f42648a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private JSONObject f42649b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private JSONObject f42650c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f42651d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f42652e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f42653f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f42654g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f42655h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private TrackData f42656i;

    public String getBootId() {
        return this.f42655h;
    }

    public String getEventName() {
        return this.f42648a;
    }

    public JSONObject getJsonData() {
        return this.f42649b;
    }

    public JSONObject getOriginJsonData() {
        return this.f42650c;
    }

    public long getTid() {
        return this.f42651d;
    }

    public TrackData getTrackData() {
        return this.f42656i;
    }

    public long getTrackErTs() {
        return this.f42654g;
    }

    public int getTrackFlag() {
        return this.f42652e;
    }

    public long getTrackTs() {
        return this.f42653f;
    }

    public void setBootId(String str) {
        this.f42655h = str;
    }

    public void setEventName(String str) {
        this.f42648a = str;
    }

    public void setJsonData(JSONObject jSONObject) {
        this.f42649b = jSONObject;
    }

    public void setOriginJsonData(JSONObject jSONObject) {
        this.f42650c = jSONObject;
    }

    public void setTid(long j11) {
        this.f42651d = j11;
    }

    public void setTrackData(TrackData trackData) {
        this.f42656i = trackData;
    }

    public void setTrackErTs(long j11) {
        this.f42654g = j11;
    }

    public void setTrackFlag(int i11) {
        this.f42652e = i11;
    }

    public void setTrackTs(long j11) {
        this.f42653f = j11;
    }

    @NonNull
    public String toString() {
        return "tid = " + this.f42651d + ",event = " + this.f42649b.toString();
    }
}
