package com.transsion.tinker.lib.custom.check;

import androidx.annotation.Keep;
import com.google.gson.annotations.SerializedName;

/* JADX INFO: loaded from: classes6.dex */
@Keep
public final class CheckUpdateResponse {

    @SerializedName("code")
    public int code;

    @SerializedName("data")
    public BffCheckUpdateData data;

    @SerializedName("message")
    public String message;
}
