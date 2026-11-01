package com.bykv.vk.openvk.preload.falconx.statistic;

import android.os.SystemClock;
import com.bykv.vk.openvk.preload.a.a.b;
import com.mbridge.msdk.foundation.download.database.DownloadModel;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.meituan.android.walle.ChannelReader;

/* JADX INFO: loaded from: classes2.dex */
public class InterceptorModel {

    /* JADX INFO: renamed from: ac, reason: collision with root package name */
    @b(a = CampaignEx.KEY_ACTIVITY_PATH_AND_NAME)
    public String f20571ac;

    @b(a = "access_key")
    public String accessKey;

    @b(a = ChannelReader.CHANNEL_KEY)
    public String channel;

    @b(a = "err_code")
    public String errCode;

    @b(a = "err_msg")
    public String errMsg;

    @b(a = "log_id")
    public String logId;

    @b(a = "mime_type")
    public String mimeType;

    @b(a = "offline_duration")
    public Long offlineDuration;

    @b(a = "offline_rule")
    public String offlineRule;

    @b(a = "offline_status")
    public Integer offlineStatus;

    @b(a = "online_duration")
    public Long onlineDuration;

    @b(a = "page_url")
    public String pageUrl;

    @b(a = "pkg_version")
    public Long pkgVersion;

    @b(a = "res_root_dir")
    public String resRootDir;
    public Long startTime = Long.valueOf(SystemClock.uptimeMillis());

    @b(a = DownloadModel.RESOURCE_URL)
    public String url;

    public void loadFinish(boolean z10) {
        if (!z10) {
            this.offlineStatus = 0;
        } else {
            this.offlineDuration = Long.valueOf(SystemClock.uptimeMillis() - this.startTime.longValue());
            this.offlineStatus = 1;
        }
    }

    public void setErrorCode(String str) {
        this.errCode = str;
    }

    public void setErrorMsg(String str) {
        this.errMsg = str;
    }
}
