package com.transsion.usercenter.setting.feedback.bean;

import com.cloud.config.utils.CommonUtils;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010!\n\u0002\b\u0017\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001c\u0010\n\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\u0007\"\u0004\b\f\u0010\tR\"\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u000eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0007\"\u0004\b\u0015\u0010\tR\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0007\"\u0004\b\u0018\u0010\tR\u001c\u0010\u0019\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u0007\"\u0004\b\u001b\u0010\tR\u001c\u0010\u001c\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u0007\"\u0004\b\u001e\u0010\tR\u001c\u0010\u001f\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010\u0007\"\u0004\b!\u0010\tR\u001c\u0010\"\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010\u0007\"\u0004\b$\u0010\t¨\u0006%"}, d2 = {"Lcom/transsion/usercenter/setting/feedback/bean/RequestFeedbackEntity;", "Ljava/io/Serializable;", "<init>", "()V", CommonUtils.PARAM_UID, "", "getUid", "()Ljava/lang/String;", "setUid", "(Ljava/lang/String;)V", "content", "getContent", "setContent", "imageUrl", "", "getImageUrl", "()Ljava/util/List;", "setImageUrl", "(Ljava/util/List;)V", "email", "getEmail", "setEmail", "whatsApp", "getWhatsApp", "setWhatsApp", "pageName", "getPageName", "setPageName", "subjectId", "getSubjectId", "setSubjectId", "logId", "getLogId", "setLogId", "tempBucket", "getTempBucket", "setTempBucket", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class RequestFeedbackEntity implements Serializable {
    private String content;
    private String email;
    private List<String> imageUrl;
    private String logId;
    private String pageName;
    private String subjectId;
    private String tempBucket;
    private String uid;
    private String whatsApp;

    public final String getContent() {
        return this.content;
    }

    public final String getEmail() {
        return this.email;
    }

    public final List<String> getImageUrl() {
        return this.imageUrl;
    }

    public final String getLogId() {
        return this.logId;
    }

    public final String getPageName() {
        return this.pageName;
    }

    public final String getSubjectId() {
        return this.subjectId;
    }

    public final String getTempBucket() {
        return this.tempBucket;
    }

    public final String getUid() {
        return this.uid;
    }

    public final String getWhatsApp() {
        return this.whatsApp;
    }

    public final void setContent(String str) {
        this.content = str;
    }

    public final void setEmail(String str) {
        this.email = str;
    }

    public final void setImageUrl(List<String> list) {
        this.imageUrl = list;
    }

    public final void setLogId(String str) {
        this.logId = str;
    }

    public final void setPageName(String str) {
        this.pageName = str;
    }

    public final void setSubjectId(String str) {
        this.subjectId = str;
    }

    public final void setTempBucket(String str) {
        this.tempBucket = str;
    }

    public final void setUid(String str) {
        this.uid = str;
    }

    public final void setWhatsApp(String str) {
        this.whatsApp = str;
    }
}
