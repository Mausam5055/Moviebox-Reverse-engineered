package com.cloud.tmc.render.bean;

import com.cloud.tmc.kernel.model.BaseBean;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.cloud.tmc.render.BuildConfig;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0019\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001Be\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0018\b\u0002\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u00030\u0005j\b\u0012\u0004\u0012\u00020\u0003`\u0006\u0012\u0018\b\u0002\u0010\u0007\u001a\u0012\u0012\u0004\u0012\u00020\u00030\u0005j\b\u0012\u0004\u0012\u00020\u0003`\u0006\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\u0018\b\u0002\u0010\t\u001a\u0012\u0012\u0004\u0012\u00020\u00030\u0005j\b\u0012\u0004\u0012\u00020\u0003`\u0006¢\u0006\u0002\u0010\nJ\t\u0010\u0019\u001a\u00020\u0003HÆ\u0003J\u0019\u0010\u001a\u001a\u0012\u0012\u0004\u0012\u00020\u00030\u0005j\b\u0012\u0004\u0012\u00020\u0003`\u0006HÆ\u0003J\u0019\u0010\u001b\u001a\u0012\u0012\u0004\u0012\u00020\u00030\u0005j\b\u0012\u0004\u0012\u00020\u0003`\u0006HÆ\u0003J\t\u0010\u001c\u001a\u00020\u0003HÆ\u0003J\u0019\u0010\u001d\u001a\u0012\u0012\u0004\u0012\u00020\u00030\u0005j\b\u0012\u0004\u0012\u00020\u0003`\u0006HÆ\u0003Jk\u0010\u001e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u0018\b\u0002\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u00030\u0005j\b\u0012\u0004\u0012\u00020\u0003`\u00062\u0018\b\u0002\u0010\u0007\u001a\u0012\u0012\u0004\u0012\u00020\u00030\u0005j\b\u0012\u0004\u0012\u00020\u0003`\u00062\b\b\u0002\u0010\b\u001a\u00020\u00032\u0018\b\u0002\u0010\t\u001a\u0012\u0012\u0004\u0012\u00020\u00030\u0005j\b\u0012\u0004\u0012\u00020\u0003`\u0006HÆ\u0001J\u0013\u0010\u001f\u001a\u00020 2\b\u0010!\u001a\u0004\u0018\u00010\"HÖ\u0003J\t\u0010#\u001a\u00020$HÖ\u0001J\t\u0010%\u001a\u00020\u0003HÖ\u0001R*\u0010\u0007\u001a\u0012\u0012\u0004\u0012\u00020\u00030\u0005j\b\u0012\u0004\u0012\u00020\u0003`\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR*\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u00030\u0005j\b\u0012\u0004\u0012\u00020\u0003`\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\f\"\u0004\b\u0010\u0010\u000eR*\u0010\t\u001a\u0012\u0012\u0004\u0012\u00020\u00030\u0005j\b\u0012\u0004\u0012\u00020\u0003`\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\f\"\u0004\b\u0012\u0010\u000eR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u001a\u0010\b\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0014\"\u0004\b\u0018\u0010\u0016¨\u0006&"}, d2 = {"Lcom/cloud/tmc/render/bean/JSConfig;", "Lcom/cloud/tmc/kernel/model/BaseBean;", "jsName", "", "appIdWhiteList", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "appIdBlackList", "jsPath", "injectStrategy", "(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;)V", "getAppIdBlackList", "()Ljava/util/ArrayList;", "setAppIdBlackList", "(Ljava/util/ArrayList;)V", "getAppIdWhiteList", "setAppIdWhiteList", "getInjectStrategy", "setInjectStrategy", "getJsName", "()Ljava/lang/String;", "setJsName", "(Ljava/lang/String;)V", "getJsPath", "setJsPath", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "", "toString", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class JSConfig extends BaseBean {
    private ArrayList<String> appIdBlackList;
    private ArrayList<String> appIdWhiteList;
    private ArrayList<String> injectStrategy;
    private String jsName;
    private String jsPath;

    public JSConfig(String jsName, ArrayList<String> appIdWhiteList, ArrayList<String> appIdBlackList, String jsPath, ArrayList<String> injectStrategy) {
        Intrinsics.h(jsName, "jsName");
        Intrinsics.h(appIdWhiteList, "appIdWhiteList");
        Intrinsics.h(appIdBlackList, "appIdBlackList");
        Intrinsics.h(jsPath, "jsPath");
        Intrinsics.h(injectStrategy, "injectStrategy");
        this.jsName = jsName;
        this.appIdWhiteList = appIdWhiteList;
        this.appIdBlackList = appIdBlackList;
        this.jsPath = jsPath;
        this.injectStrategy = injectStrategy;
    }

    public /* synthetic */ JSConfig(String str, ArrayList arrayList, ArrayList arrayList2, String str2, ArrayList arrayList3, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? "" : str, (i11 & 2) != 0 ? new ArrayList() : arrayList, (i11 & 4) != 0 ? new ArrayList() : arrayList2, str2, (i11 & 16) != 0 ? new ArrayList() : arrayList3);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ JSConfig copy$default(JSConfig jSConfig, String str, ArrayList arrayList, ArrayList arrayList2, String str2, ArrayList arrayList3, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = jSConfig.jsName;
        }
        if ((i11 & 2) != 0) {
            arrayList = jSConfig.appIdWhiteList;
        }
        ArrayList arrayList4 = arrayList;
        if ((i11 & 4) != 0) {
            arrayList2 = jSConfig.appIdBlackList;
        }
        ArrayList arrayList5 = arrayList2;
        if ((i11 & 8) != 0) {
            str2 = jSConfig.jsPath;
        }
        String str3 = str2;
        if ((i11 & 16) != 0) {
            arrayList3 = jSConfig.injectStrategy;
        }
        return jSConfig.copy(str, arrayList4, arrayList5, str3, arrayList3);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getJsName() {
        return this.jsName;
    }

    public final ArrayList<String> component2() {
        return this.appIdWhiteList;
    }

    public final ArrayList<String> component3() {
        return this.appIdBlackList;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getJsPath() {
        return this.jsPath;
    }

    public final ArrayList<String> component5() {
        return this.injectStrategy;
    }

    public final JSConfig copy(String jsName, ArrayList<String> appIdWhiteList, ArrayList<String> appIdBlackList, String jsPath, ArrayList<String> injectStrategy) {
        Intrinsics.h(jsName, "jsName");
        Intrinsics.h(appIdWhiteList, "appIdWhiteList");
        Intrinsics.h(appIdBlackList, "appIdBlackList");
        Intrinsics.h(jsPath, "jsPath");
        Intrinsics.h(injectStrategy, "injectStrategy");
        return new JSConfig(jsName, appIdWhiteList, appIdBlackList, jsPath, injectStrategy);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof JSConfig)) {
            return false;
        }
        JSConfig jSConfig = (JSConfig) other;
        return Intrinsics.c(this.jsName, jSConfig.jsName) && Intrinsics.c(this.appIdWhiteList, jSConfig.appIdWhiteList) && Intrinsics.c(this.appIdBlackList, jSConfig.appIdBlackList) && Intrinsics.c(this.jsPath, jSConfig.jsPath) && Intrinsics.c(this.injectStrategy, jSConfig.injectStrategy);
    }

    public final ArrayList<String> getAppIdBlackList() {
        return this.appIdBlackList;
    }

    public final ArrayList<String> getAppIdWhiteList() {
        return this.appIdWhiteList;
    }

    public final ArrayList<String> getInjectStrategy() {
        return this.injectStrategy;
    }

    public final String getJsName() {
        return this.jsName;
    }

    public final String getJsPath() {
        return this.jsPath;
    }

    public int hashCode() {
        return (((((((this.jsName.hashCode() * 31) + this.appIdWhiteList.hashCode()) * 31) + this.appIdBlackList.hashCode()) * 31) + this.jsPath.hashCode()) * 31) + this.injectStrategy.hashCode();
    }

    public final void setAppIdBlackList(ArrayList<String> arrayList) {
        Intrinsics.h(arrayList, "<set-?>");
        this.appIdBlackList = arrayList;
    }

    public final void setAppIdWhiteList(ArrayList<String> arrayList) {
        Intrinsics.h(arrayList, "<set-?>");
        this.appIdWhiteList = arrayList;
    }

    public final void setInjectStrategy(ArrayList<String> arrayList) {
        Intrinsics.h(arrayList, "<set-?>");
        this.injectStrategy = arrayList;
    }

    public final void setJsName(String str) {
        Intrinsics.h(str, "<set-?>");
        this.jsName = str;
    }

    public final void setJsPath(String str) {
        Intrinsics.h(str, "<set-?>");
        this.jsPath = str;
    }

    public String toString() {
        return "JSConfig(jsName=" + this.jsName + ", appIdWhiteList=" + this.appIdWhiteList + ", appIdBlackList=" + this.appIdBlackList + ", jsPath=" + this.jsPath + ", injectStrategy=" + this.injectStrategy + ')';
    }
}
