package com.mbridge.msdk.playercommon.exoplayer2.drm;

import android.annotation.TargetApi;
import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.alibaba.sdk.android.oss.common.OSSConstants;
import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.upstream.DataSourceInputStream;
import com.mbridge.msdk.playercommon.exoplayer2.upstream.DataSpec;
import com.mbridge.msdk.playercommon.exoplayer2.upstream.HttpDataSource;
import com.mbridge.msdk.playercommon.exoplayer2.util.Assertions;
import com.mbridge.msdk.playercommon.exoplayer2.util.Util;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

/* JADX INFO: loaded from: classes5.dex */
@TargetApi(18)
public final class HttpMediaDrmCallback implements MediaDrmCallback {
    private static final int MAX_MANUAL_REDIRECTS = 5;
    private final HttpDataSource.Factory dataSourceFactory;
    private final String defaultLicenseUrl;
    private final boolean forceDefaultLicenseUrl;
    private final Map<String, String> keyRequestProperties;

    public HttpMediaDrmCallback(String str, HttpDataSource.Factory factory) {
        this(str, false, factory);
    }

    public HttpMediaDrmCallback(String str, boolean z10, HttpDataSource.Factory factory) {
        this.dataSourceFactory = factory;
        this.defaultLicenseUrl = str;
        this.forceDefaultLicenseUrl = z10;
        this.keyRequestProperties = new HashMap();
    }

    private static byte[] executePost(HttpDataSource.Factory factory, String str, byte[] bArr, Map<String, String> map) throws IOException {
        int i11;
        boolean z10;
        HttpDataSource httpDataSourceCreateDataSource = factory.createDataSource();
        if (map != null) {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                httpDataSourceCreateDataSource.setRequestProperty(entry.getKey(), entry.getValue());
            }
        }
        String str2 = str;
        int i12 = 0;
        while (true) {
            DataSourceInputStream dataSourceInputStream = new DataSourceInputStream(httpDataSourceCreateDataSource, new DataSpec(Uri.parse(str2), bArr, 0L, 0L, -1L, null, 1));
            try {
                try {
                    byte[] byteArray = Util.toByteArray(dataSourceInputStream);
                    Util.closeQuietly(dataSourceInputStream);
                    return byteArray;
                } catch (HttpDataSource.InvalidResponseCodeException e11) {
                    if (e11.responseCode == 307 || e11.responseCode == 308) {
                        i11 = i12 + 1;
                        if (i12 < 5) {
                            z10 = true;
                        } else {
                            i12 = i11;
                            i11 = i12;
                            z10 = false;
                        }
                    } else {
                        i11 = i12;
                        z10 = false;
                    }
                    String redirectUrl = z10 ? getRedirectUrl(e11) : null;
                    if (redirectUrl == null) {
                        throw e11;
                    }
                    Util.closeQuietly(dataSourceInputStream);
                    String str3 = redirectUrl;
                    i12 = i11;
                    str2 = str3;
                }
            } catch (Throwable th2) {
                Util.closeQuietly(dataSourceInputStream);
                throw th2;
            }
        }
    }

    private static String getRedirectUrl(HttpDataSource.InvalidResponseCodeException invalidResponseCodeException) {
        List<String> list;
        Map<String, List<String>> map = invalidResponseCodeException.headerFields;
        if (map == null || (list = map.get(HttpHeaders.LOCATION)) == null || list.isEmpty()) {
            return null;
        }
        return list.get(0);
    }

    public void clearAllKeyRequestProperties() {
        synchronized (this.keyRequestProperties) {
            this.keyRequestProperties.clear();
        }
    }

    public void clearKeyRequestProperty(String str) {
        Assertions.checkNotNull(str);
        synchronized (this.keyRequestProperties) {
            this.keyRequestProperties.remove(str);
        }
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.drm.MediaDrmCallback
    public byte[] executeKeyRequest(UUID uuid, ExoMediaDrm.KeyRequest keyRequest, @Nullable String str) throws Exception {
        String str2;
        String defaultUrl = keyRequest.getDefaultUrl();
        if (!TextUtils.isEmpty(defaultUrl)) {
            str = defaultUrl;
        }
        if (this.forceDefaultLicenseUrl || TextUtils.isEmpty(str)) {
            str = this.defaultLicenseUrl;
        }
        HashMap map = new HashMap();
        UUID uuid2 = C.PLAYREADY_UUID;
        if (uuid2.equals(uuid)) {
            str2 = "text/xml";
        } else {
            str2 = C.CLEARKEY_UUID.equals(uuid) ? "application/json" : OSSConstants.DEFAULT_OBJECT_CONTENT_TYPE;
        }
        map.put(HttpHeaders.CONTENT_TYPE, str2);
        if (uuid2.equals(uuid)) {
            map.put("SOAPAction", "http://schemas.microsoft.com/DRM/2007/03/protocols/AcquireLicense");
        }
        synchronized (this.keyRequestProperties) {
            map.putAll(this.keyRequestProperties);
        }
        return executePost(this.dataSourceFactory, str, keyRequest.getData(), map);
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.drm.MediaDrmCallback
    public byte[] executeProvisionRequest(UUID uuid, ExoMediaDrm.ProvisionRequest provisionRequest) throws IOException {
        return executePost(this.dataSourceFactory, provisionRequest.getDefaultUrl() + "&signedRequest=" + Util.fromUtf8Bytes(provisionRequest.getData()), new byte[0], null);
    }

    public void setKeyRequestProperty(String str, String str2) {
        Assertions.checkNotNull(str);
        Assertions.checkNotNull(str2);
        synchronized (this.keyRequestProperties) {
            this.keyRequestProperties.put(str, str2);
        }
    }
}
