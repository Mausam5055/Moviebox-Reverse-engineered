package com.cloud.tmc.ad.bean.response;

import android.support.v4.media.session.PlaybackStateCompat;
import com.cloud.tmc.ad.bean.AdImage;
import com.cloud.tmc.component_api_ps.ipc.constants.MiniAppIpcConfig;
import com.mbridge.msdk.foundation.entity.RewardPlus;
import com.transsion.ad.db.pslink.AppInstalledBean;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.math.BigDecimal;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0007\u0018\u00002\u00020\u0001:\u0002\u0015\u0016B\u0005¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014¨\u0006\u0017"}, d2 = {"Lcom/cloud/tmc/ad/bean/response/AdPsResponseBody;", "Ljava/io/Serializable;", "()V", "code", "", "getCode", "()I", "setCode", "(I)V", "data", "Lcom/cloud/tmc/ad/bean/response/AdPsResponseBody$DataDTO;", "getData", "()Lcom/cloud/tmc/ad/bean/response/AdPsResponseBody$DataDTO;", "setData", "(Lcom/cloud/tmc/ad/bean/response/AdPsResponseBody$DataDTO;)V", "message", "", "getMessage", "()Ljava/lang/String;", "setMessage", "(Ljava/lang/String;)V", "DataDTO", "PsLinkListDTO", "com.cloud.tmc.miniad"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class AdPsResponseBody implements Serializable {
    private int code;
    private DataDTO data;
    private String message;

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\"\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\"\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\u0007\"\u0004\b\r\u0010\t¨\u0006\u000e"}, d2 = {"Lcom/cloud/tmc/ad/bean/response/AdPsResponseBody$DataDTO;", "Ljava/io/Serializable;", "()V", "gpLinkList", "", "", "getGpLinkList", "()Ljava/util/List;", "setGpLinkList", "(Ljava/util/List;)V", "psLinkList", "Lcom/cloud/tmc/ad/bean/response/AdPsResponseBody$PsLinkListDTO;", "getPsLinkList", "setPsLinkList", "com.cloud.tmc.miniad"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class DataDTO implements Serializable {
        private List<String> gpLinkList;
        private List<PsLinkListDTO> psLinkList;

        public final List<String> getGpLinkList() {
            return this.gpLinkList;
        }

        public final List<PsLinkListDTO> getPsLinkList() {
            return this.psLinkList;
        }

        public final void setGpLinkList(List<String> list) {
            this.gpLinkList = list;
        }

        public final void setPsLinkList(List<PsLinkListDTO> list) {
            this.psLinkList = list;
        }
    }

    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0016\u001a\u00020\u0004J\u000e\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0011\u001a\u00020\u0012R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001c\u0010\f\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u0006\"\u0004\b\u000e\u0010\bR\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0006\"\u0004\b\u0015\u0010\b¨\u0006\u0019"}, d2 = {"Lcom/cloud/tmc/ad/bean/response/AdPsResponseBody$PsLinkListDTO;", "Ljava/io/Serializable;", "()V", MiniAppIpcConfig.IPC_ADDHOME_APP_NAME, "", "getAppName", "()Ljava/lang/String;", "setAppName", "(Ljava/lang/String;)V", "dpLink", "getDpLink", "setDpLink", RewardPlus.ICON, "getIcon", "setIcon", "image", "Lcom/cloud/tmc/ad/bean/AdImage;", "size", "", "star", "getStar", "setStar", "getSize", "setSize", "", "com.cloud.tmc.miniad"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class PsLinkListDTO implements Serializable {
        private String appName;
        private String dpLink;
        private String icon;
        private final AdImage image;
        private long size;
        private String star;

        public final String getAppName() {
            return this.appName;
        }

        public final String getDpLink() {
            return this.dpLink;
        }

        public final String getIcon() {
            return this.icon;
        }

        public final String getSize() {
            BigDecimal bigDecimalDivide = new BigDecimal(this.size).divide(BigDecimal.valueOf(PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED), 1, 4);
            Intrinsics.g(bigDecimalDivide, "size_new.divide(BigDecim…BigDecimal.ROUND_HALF_UP)");
            return bigDecimalDivide.toString() + AppInstalledBean.APP_INSTALLED_BEAN_SOURCE_MB;
        }

        public final String getStar() {
            return this.star;
        }

        public final void setAppName(String str) {
            this.appName = str;
        }

        public final void setDpLink(String str) {
            this.dpLink = str;
        }

        public final void setIcon(String str) {
            this.icon = str;
        }

        public final void setSize(long size) {
            this.size = size;
        }

        public final void setStar(String str) {
            this.star = str;
        }
    }

    public final int getCode() {
        return this.code;
    }

    public final DataDTO getData() {
        return this.data;
    }

    public final String getMessage() {
        return this.message;
    }

    public final void setCode(int i11) {
        this.code = i11;
    }

    public final void setData(DataDTO dataDTO) {
        this.data = dataDTO;
    }

    public final void setMessage(String str) {
        this.message = str;
    }
}
