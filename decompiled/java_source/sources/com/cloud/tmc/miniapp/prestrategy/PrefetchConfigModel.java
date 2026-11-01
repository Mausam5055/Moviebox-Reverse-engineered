package com.cloud.tmc.miniapp.prestrategy;

import android.os.Bundle;
import androidx.collection.s;
import com.cloud.tmc.kernel.model.BaseBean;
import com.google.gson.JsonObject;
import java.util.ArrayList;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class PrefetchConfigModel extends BaseBean {
    private String appId;
    private Bundle bundle;
    private String dataType;
    private ArrayList<String> h5Url;
    private int miniappType;
    private String sceneId;
    private ArrayList<JsonObject> source;
    private int priority = 1;
    private int netType = 3;
    private long expiredTime = -1;
    private long executeTime = -1;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!Intrinsics.c(PrefetchConfigModel.class, obj != null ? obj.getClass() : null)) {
            return false;
        }
        Intrinsics.f(obj, "null cannot be cast to non-null type com.cloud.tmc.miniapp.prestrategy.PrefetchConfigModel");
        PrefetchConfigModel prefetchConfigModel = (PrefetchConfigModel) obj;
        if (!Intrinsics.c(this.sceneId, prefetchConfigModel.sceneId) || !Intrinsics.c(this.appId, prefetchConfigModel.appId) || this.priority != prefetchConfigModel.priority || !Intrinsics.c(this.dataType, prefetchConfigModel.dataType)) {
            return false;
        }
        ArrayList<JsonObject> arrayList = this.source;
        String string = arrayList != null ? arrayList.toString() : null;
        ArrayList<JsonObject> arrayList2 = prefetchConfigModel.source;
        return Intrinsics.c(string, arrayList2 != null ? arrayList2.toString() : null) && Intrinsics.c(this.h5Url, prefetchConfigModel.h5Url) && this.netType == prefetchConfigModel.netType && this.expiredTime == prefetchConfigModel.expiredTime && this.executeTime == prefetchConfigModel.executeTime;
    }

    public final String getAppId() {
        return this.appId;
    }

    public final Bundle getBundle() {
        return this.bundle;
    }

    public final String getDataType() {
        return this.dataType;
    }

    public final long getExecuteTime() {
        return this.executeTime;
    }

    public final long getExpiredTime() {
        return this.expiredTime;
    }

    public final ArrayList<String> getH5Url() {
        return this.h5Url;
    }

    public final int getMiniappType() {
        return this.miniappType;
    }

    public final int getNetType() {
        return this.netType;
    }

    public final int getPriority() {
        return this.priority;
    }

    public final String getSceneId() {
        return this.sceneId;
    }

    public final ArrayList<JsonObject> getSource() {
        return this.source;
    }

    public int hashCode() {
        String string;
        String str = this.sceneId;
        int iHashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.appId;
        int iHashCode2 = (((iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31) + this.priority) * 31;
        String str3 = this.dataType;
        int iHashCode3 = (iHashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
        ArrayList<JsonObject> arrayList = this.source;
        int iHashCode4 = (iHashCode3 + ((arrayList == null || (string = arrayList.toString()) == null) ? 0 : string.hashCode())) * 31;
        ArrayList<String> arrayList2 = this.h5Url;
        return s.a(this.executeTime) + ((s.a(this.expiredTime) + ((((iHashCode4 + (arrayList2 != null ? arrayList2.hashCode() : 0)) * 31) + this.netType) * 31)) * 31);
    }

    public final void setAppId(String str) {
        this.appId = str;
    }

    public final void setBundle(Bundle bundle) {
        this.bundle = bundle;
    }

    public final void setDataType(String str) {
        this.dataType = str;
    }

    public final void setExecuteTime(long j11) {
        this.executeTime = j11;
    }

    public final void setExpiredTime(long j11) {
        this.expiredTime = j11;
    }

    public final void setH5Url(ArrayList<String> arrayList) {
        this.h5Url = arrayList;
    }

    public final void setMiniappType(int i11) {
        this.miniappType = i11;
    }

    public final void setNetType(int i11) {
        this.netType = i11;
    }

    public final void setPriority(int i11) {
        this.priority = i11;
    }

    public final void setSceneId(String str) {
        this.sceneId = str;
    }

    public final void setSource(ArrayList<JsonObject> arrayList) {
        this.source = arrayList;
    }

    public String toString() {
        String str = this.sceneId;
        String str2 = this.appId;
        int i11 = this.priority;
        String str3 = this.dataType;
        ArrayList<JsonObject> arrayList = this.source;
        return "PrefetchConfigModel(sceneId=" + str + ", appId=" + str2 + ", priority=" + i11 + ", dataType=" + str3 + ", source=" + (arrayList != null ? arrayList.toString() : null) + ", h5Url=" + this.h5Url + ", netType=" + this.netType + ", expiredTime=" + this.expiredTime + ", executeTime=" + this.executeTime + ", miniappType=" + this.miniappType + ", bundle=" + this.bundle + ")";
    }
}
