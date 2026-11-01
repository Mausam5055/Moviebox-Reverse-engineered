package com.cloud.tmc.miniapp.utils;

import com.cloud.tmc.kernel.model.BaseBean;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes3.dex */
public final class LauncherMiniAppMsgModel extends BaseBean {
    private LauncherLastlyMessageInfo lastlyMessageInfo;
    private ArrayList<LauncherMiniAppMsgInfoBean> miniappMessageInfos;
    private Boolean successUpdateSwitchStatus = Boolean.TRUE;
    private Long webQueryTimestamp;

    public final LauncherLastlyMessageInfo getLastlyMessageInfo() {
        return this.lastlyMessageInfo;
    }

    public final ArrayList<LauncherMiniAppMsgInfoBean> getMiniappMessageInfos() {
        return this.miniappMessageInfos;
    }

    public final Boolean getSuccessUpdateSwitchStatus() {
        return this.successUpdateSwitchStatus;
    }

    public final Long getWebQueryTimestamp() {
        return this.webQueryTimestamp;
    }

    public final void setLastlyMessageInfo(LauncherLastlyMessageInfo launcherLastlyMessageInfo) {
        this.lastlyMessageInfo = launcherLastlyMessageInfo;
    }

    public final void setMiniappMessageInfos(ArrayList<LauncherMiniAppMsgInfoBean> arrayList) {
        this.miniappMessageInfos = arrayList;
    }

    public final void setSuccessUpdateSwitchStatus(Boolean bool) {
        this.successUpdateSwitchStatus = bool;
    }

    public final void setWebQueryTimestamp(Long l11) {
        this.webQueryTimestamp = l11;
    }
}
