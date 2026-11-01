package com.cloud.tmc.ad.bean.response;

import com.cloud.tmc.kernel.model.BaseBean;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001:\u0002\u001c\u001dB\u0005¢\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR \u0010\t\u001a\u0004\u0018\u00010\n8FX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u000f\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001b¨\u0006\u001e"}, d2 = {"Lcom/cloud/tmc/ad/bean/response/ViewJson;", "Lcom/cloud/tmc/kernel/model/BaseBean;", "()V", "dialogJson", "Lcom/cloud/tmc/ad/bean/response/ViewJson$DialogJson;", "getDialogJson", "()Lcom/cloud/tmc/ad/bean/response/ViewJson$DialogJson;", "setDialogJson", "(Lcom/cloud/tmc/ad/bean/response/ViewJson$DialogJson;)V", "dialogType", "", "getDialogType", "()Ljava/lang/Integer;", "setDialogType", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "formPath", "", "getFormPath", "()Ljava/lang/String;", "setFormPath", "(Ljava/lang/String;)V", OfflineConstantsKt.OFFLINE, "Lcom/cloud/tmc/ad/bean/response/ViewJson$OfflineJson;", "getOffline", "()Lcom/cloud/tmc/ad/bean/response/ViewJson$OfflineJson;", "setOffline", "(Lcom/cloud/tmc/ad/bean/response/ViewJson$OfflineJson;)V", "DialogJson", "OfflineJson", "com.cloud.tmc.miniad"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class ViewJson extends BaseBean {
    private DialogJson dialogJson;
    private Integer dialogType;
    private String formPath;
    private OfflineJson offline;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001e\u0010\t\u001a\u0004\u0018\u00010\u00048FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\b¨\u0006\f"}, d2 = {"Lcom/cloud/tmc/ad/bean/response/ViewJson$DialogJson;", "Ljava/io/Serializable;", "()V", "height", "", "getHeight", "()Ljava/lang/String;", "setHeight", "(Ljava/lang/String;)V", "url", "getUrl", "setUrl", "com.cloud.tmc.miniad"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class DialogJson implements Serializable {
        private String height;
        private String url;

        public final String getHeight() {
            return this.height;
        }

        public final String getUrl() {
            String str = this.url;
            return str == null ? "" : str;
        }

        public final void setHeight(String str) {
            this.height = str;
        }

        public final void setUrl(String str) {
            this.url = str;
        }
    }

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R \u0010\u0003\u001a\u0004\u0018\u00010\u00048FX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\t\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001e\u0010\n\u001a\u0004\u0018\u00010\u000b8FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001e\u0010\u0010\u001a\u0004\u0018\u00010\u000b8FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\r\"\u0004\b\u0012\u0010\u000f¨\u0006\u0013"}, d2 = {"Lcom/cloud/tmc/ad/bean/response/ViewJson$OfflineJson;", "Ljava/io/Serializable;", "()V", "maxShowPPPD", "", "getMaxShowPPPD", "()Ljava/lang/Integer;", "setMaxShowPPPD", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "res", "", "getRes", "()Ljava/lang/String;", "setRes", "(Ljava/lang/String;)V", "zipRes", "getZipRes", "setZipRes", "com.cloud.tmc.miniad"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class OfflineJson implements Serializable {
        private Integer maxShowPPPD;
        private String res;
        private String zipRes;

        public final Integer getMaxShowPPPD() {
            Integer num = this.maxShowPPPD;
            if (num == null) {
                return 0;
            }
            return num;
        }

        public final String getRes() {
            String str = this.res;
            return str == null ? "" : str;
        }

        public final String getZipRes() {
            String str = this.zipRes;
            return str == null ? "" : str;
        }

        public final void setMaxShowPPPD(Integer num) {
            this.maxShowPPPD = num;
        }

        public final void setRes(String str) {
            this.res = str;
        }

        public final void setZipRes(String str) {
            this.zipRes = str;
        }
    }

    public final DialogJson getDialogJson() {
        return this.dialogJson;
    }

    public final Integer getDialogType() {
        Integer num = this.dialogType;
        if (num == null) {
            return 0;
        }
        return num;
    }

    public final String getFormPath() {
        return this.formPath;
    }

    public final OfflineJson getOffline() {
        return this.offline;
    }

    public final void setDialogJson(DialogJson dialogJson) {
        this.dialogJson = dialogJson;
    }

    public final void setDialogType(Integer num) {
        this.dialogType = num;
    }

    public final void setFormPath(String str) {
        this.formPath = str;
    }

    public final void setOffline(OfflineJson offlineJson) {
        this.offline = offlineJson;
    }
}
