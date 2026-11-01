package com.tencent.tinker.lib.service;

import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class PatchResult implements Serializable {
    public static final int PATCH_TYPE_BSDIFF = 0;
    public static final int PATCH_TYPE_CUSTOM = 1;
    public static final int PATCH_TYPE_UNKNOWN = -1;
    public long dexCostTime;
    public long dexoptTriggerTime;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Throwable f40693e;
    public boolean isOatGenerated;
    public boolean isSuccess;
    public String patchVersion;
    public String rawPatchFilePath;
    public long resCostTime;
    public long soCostTime;
    public long totalCostTime;
    public int type = -1;
    public boolean useEmergencyMode;

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("\nPatchResult: \n");
        stringBuffer.append("isSuccess:" + this.isSuccess + "\n");
        stringBuffer.append("rawPatchFilePath:" + this.rawPatchFilePath + "\n");
        stringBuffer.append("useEmergencyMode:" + this.useEmergencyMode + "\n");
        stringBuffer.append("costTime:" + this.totalCostTime + "\n");
        stringBuffer.append("dexoptTriggerTime:" + this.dexoptTriggerTime + "\n");
        stringBuffer.append("isOatGenerated:" + this.isOatGenerated + "\n");
        if (this.patchVersion != null) {
            stringBuffer.append("patchVersion:" + this.patchVersion + "\n");
        }
        if (this.f40693e != null) {
            stringBuffer.append("Throwable:" + this.f40693e.getMessage() + "\n");
        }
        return stringBuffer.toString();
    }
}
