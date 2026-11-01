package com.cloud.tmc.miniapp.utils;

import com.cloud.tmc.kernel.model.BaseBean;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class MsgSwitchResultBean extends BaseBean {
    private Boolean success;

    public MsgSwitchResultBean(Boolean bool) {
        this.success = bool;
    }

    public static /* synthetic */ MsgSwitchResultBean copy$default(MsgSwitchResultBean msgSwitchResultBean, Boolean bool, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            bool = msgSwitchResultBean.success;
        }
        return msgSwitchResultBean.copy(bool);
    }

    public final Boolean component1() {
        return this.success;
    }

    public final MsgSwitchResultBean copy(Boolean bool) {
        return new MsgSwitchResultBean(bool);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof MsgSwitchResultBean) && Intrinsics.c(this.success, ((MsgSwitchResultBean) obj).success);
    }

    public final Boolean getSuccess() {
        return this.success;
    }

    public int hashCode() {
        Boolean bool = this.success;
        if (bool == null) {
            return 0;
        }
        return bool.hashCode();
    }

    public final void setSuccess(Boolean bool) {
        this.success = bool;
    }

    public String toString() {
        return "MsgSwitchResultBean(success=" + this.success + ")";
    }
}
