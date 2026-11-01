package com.mbridge.msdk.playercommon.exoplayer2.drm;

import androidx.annotation.Nullable;
import java.util.UUID;

/* JADX INFO: loaded from: classes5.dex */
public interface MediaDrmCallback {
    byte[] executeKeyRequest(UUID uuid, ExoMediaDrm.KeyRequest keyRequest, @Nullable String str) throws Exception;

    byte[] executeProvisionRequest(UUID uuid, ExoMediaDrm.ProvisionRequest provisionRequest) throws Exception;
}
