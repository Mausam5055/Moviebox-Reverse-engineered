package com.cloud.tmc.integration.permission.model;

import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.integration.permission.PermissionConstant;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.HashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u000e\u001a\u00020\u000fJ\u0016\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00062\u0006\u0010\u0011\u001a\u00020\u0005J\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0011\u001a\u00020\u0005J\u001c\u0010\u0013\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u00052\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00050\u0006J\u0016\u0010\u0015\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\u0005R6\u0010\u0003\u001a*\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u00060\u0004j\u0014\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u0006`\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R*\u0010\b\u001a\u001e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0004j\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0005`\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\u000b\"\u0004\b\f\u0010\r¨\u0006\u0017"}, d2 = {"Lcom/cloud/tmc/integration/permission/model/ApiPermissionInfo;", "", "()V", "apiLevelList", "Ljava/util/HashMap;", "", "", "Lkotlin/collections/HashMap;", "apiLevelStr", "isHasPermissionFile", "", "()Z", "setHasPermissionFile", "(Z)V", "clear", "", "getApiLevelList", PermissionConstant.level, "getApiLevelStr", "setApiLevelList", "list", "setApiLevelStr", AppMeasurementSdk.ConditionalUserProperty.VALUE, BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class ApiPermissionInfo {
    private HashMap<String, List<String>> apiLevelList = new HashMap<>();
    private HashMap<String, String> apiLevelStr = new HashMap<>();
    private boolean isHasPermissionFile;

    public final void clear() {
        this.apiLevelList.clear();
        this.apiLevelStr.clear();
    }

    public final List<String> getApiLevelList(String level) {
        Intrinsics.h(level, "level");
        return this.apiLevelList.get(level);
    }

    public final String getApiLevelStr(String level) {
        Intrinsics.h(level, "level");
        return this.apiLevelStr.get(level);
    }

    /* JADX INFO: renamed from: isHasPermissionFile, reason: from getter */
    public final boolean getIsHasPermissionFile() {
        return this.isHasPermissionFile;
    }

    public final void setApiLevelList(String level, List<String> list) {
        Intrinsics.h(level, "level");
        Intrinsics.h(list, "list");
        this.apiLevelList.put(level, list);
    }

    public final void setApiLevelStr(String level, String value) {
        Intrinsics.h(level, "level");
        Intrinsics.h(value, "value");
        this.apiLevelStr.put(level, value);
    }

    public final void setHasPermissionFile(boolean z10) {
        this.isHasPermissionFile = z10;
    }
}
