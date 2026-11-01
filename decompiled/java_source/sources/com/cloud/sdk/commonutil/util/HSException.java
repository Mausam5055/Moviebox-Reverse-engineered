package com.cloud.sdk.commonutil.util;

import com.hisavana.common.tracking.TrackingKey;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0003\n\u0002\b\u0011\u0018\u0000 \u00182\u00060\u0001j\u0002`\u0002:\u0001\u0019B\u0019\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bB%\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\u0007\u0010\u000bR\"\u0010\u0004\u001a\u00020\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0004\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R*\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u00058\u0006@DX\u0086\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017¨\u0006\u001a"}, d2 = {"Lcom/cloud/sdk/commonutil/util/HSException;", "Ljava/lang/Exception;", "Lkotlin/Exception;", "", "errorCode", "", CampaignEx.JSON_KEY_DESC, "<init>", "(ILjava/lang/String;)V", "", "cause", "(ILjava/lang/String;Ljava/lang/Throwable;)V", "I", "getErrorCode", "()I", "setErrorCode", "(I)V", "<set-?>", TrackingKey.DESCRIPTION, "Ljava/lang/String;", "getDescription", "()Ljava/lang/String;", "setDescription", "(Ljava/lang/String;)V", "Companion", "a", "commonutil_release"}, k = 1, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class HSException extends Exception {
    private static final long serialVersionUID = 1;
    private String description;
    private int errorCode;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HSException(int i11, String desc) {
        super(desc);
        Intrinsics.h(desc, "desc");
        this.errorCode = i11;
        this.description = desc;
    }

    public HSException(int i11, String str, Throwable th2) {
        super(str);
        this.description = "";
        this.errorCode = i11;
        super.initCause(th2);
    }

    public final String getDescription() {
        return this.description;
    }

    public final int getErrorCode() {
        return this.errorCode;
    }

    protected final void setDescription(String str) {
        Intrinsics.h(str, "<set-?>");
        this.description = str;
    }

    public final void setErrorCode(int i11) {
        this.errorCode = i11;
    }
}
