package com.bumptech.glide.integration.cronet;

import androidx.annotation.Nullable;
import org.chromium.net.UrlResponseInfo;

/* JADX INFO: loaded from: classes2.dex */
public interface DataLogger {
    void logNetworkData(@Nullable UrlResponseInfo urlResponseInfo, long j11, long j12, long j13);
}
