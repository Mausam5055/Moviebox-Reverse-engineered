package com.bytedance.sdk.openadsdk.core.Ym.Sj;

import androidx.annotation.NonNull;
import androidx.datastore.preferences.protobuf.DescriptorProtos$Edition;
import com.vungle.ads.internal.protos.Sdk$SDKError;

/* JADX INFO: loaded from: classes3.dex */
public enum Sj {
    XML_PARSING_ERROR(100),
    SCHEMA_VALIDATION_ERROR(101),
    WRAPPER_TIMEOUT(Sdk$SDKError.Reason.MRAID_ERROR_VALUE),
    NO_ADS_VAST_RESPONSE(303),
    GENERAL_LINEAR_AD_ERROR(400),
    GENERAL_COMPANION_AD_ERROR(600),
    UNDEFINED_ERROR(DescriptorProtos$Edition.EDITION_LEGACY_VALUE);

    private final int Dq;

    Sj(int i11) {
        this.Dq = i11;
    }

    @NonNull
    public String Sj() {
        return String.valueOf(this.Dq);
    }
}
