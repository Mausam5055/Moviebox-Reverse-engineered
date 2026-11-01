package com.cloud.tmc.ad.bean;

import com.cloud.tmc.integration.net.UrlKt;
import com.cloud.tmc.launcherlib.LauncherMiniAppConfigHelper;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b&\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001Bg\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\b\b\u0002\u0010\t\u001a\u00020\u0003\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\b¢\u0006\u0002\u0010\u000eJ\t\u0010%\u001a\u00020\u0003HÆ\u0003J\u0011\u0010&\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005HÆ\u0003J\u000b\u0010'\u001a\u0004\u0018\u00010\bHÆ\u0003J\t\u0010(\u001a\u00020\u0003HÆ\u0003J\u000b\u0010)\u001a\u0004\u0018\u00010\bHÆ\u0003J\u000b\u0010*\u001a\u0004\u0018\u00010\bHÆ\u0003J\u000b\u0010+\u001a\u0004\u0018\u00010\bHÆ\u0003J\u000b\u0010,\u001a\u0004\u0018\u00010\bHÆ\u0003Jk\u0010-\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\b\u0002\u0010\t\u001a\u00020\u00032\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\bHÆ\u0001J\u0013\u0010.\u001a\u00020/2\b\u00100\u001a\u0004\u0018\u000101HÖ\u0003J\t\u00102\u001a\u00020\u0003HÖ\u0001J\t\u00103\u001a\u00020\bHÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\"\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u001a\u0010\t\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u0010\"\u0004\b\u001c\u0010\u0012R\u001c\u0010\n\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u0018\"\u0004\b\u001e\u0010\u001aR\u001c\u0010\u000b\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010\u0018\"\u0004\b \u0010\u001aR\u001c\u0010\f\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b!\u0010\u0018\"\u0004\b\"\u0010\u001aR\u001c\u0010\r\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010\u0018\"\u0004\b$\u0010\u001a¨\u00064"}, d2 = {"Lcom/cloud/tmc/ad/bean/FormBean;", "Ljava/io/Serializable;", "advertiserId", "", "formCustomInfos", "", "Lcom/cloud/tmc/ad/bean/FormCustomInfosDTO;", "formEmail", "", "formId", "formName", "formPhone", UrlKt.KEY_MINI_GAID, "ipAddress", "(ILjava/util/List;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getAdvertiserId", "()I", "setAdvertiserId", "(I)V", "getFormCustomInfos", "()Ljava/util/List;", "setFormCustomInfos", "(Ljava/util/List;)V", "getFormEmail", "()Ljava/lang/String;", "setFormEmail", "(Ljava/lang/String;)V", "getFormId", "setFormId", "getFormName", "setFormName", "getFormPhone", "setFormPhone", LauncherMiniAppConfigHelper.KEY_MINI_GET_GAID, "setGaid", "getIpAddress", "setIpAddress", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "com.cloud.tmc.miniad"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class FormBean implements Serializable {
    private int advertiserId;
    private List<FormCustomInfosDTO> formCustomInfos;
    private String formEmail;
    private int formId;
    private String formName;
    private String formPhone;
    private String gaid;
    private String ipAddress;

    public FormBean() {
        this(0, null, null, 0, null, null, null, null, 255, null);
    }

    public FormBean(int i11, List<FormCustomInfosDTO> list, String str, int i12, String str2, String str3, String str4, String str5) {
        this.advertiserId = i11;
        this.formCustomInfos = list;
        this.formEmail = str;
        this.formId = i12;
        this.formName = str2;
        this.formPhone = str3;
        this.gaid = str4;
        this.ipAddress = str5;
    }

    public /* synthetic */ FormBean(int i11, List list, String str, int i12, String str2, String str3, String str4, String str5, int i13, DefaultConstructorMarker defaultConstructorMarker) {
        this((i13 & 1) != 0 ? 0 : i11, (i13 & 2) != 0 ? null : list, (i13 & 4) != 0 ? null : str, (i13 & 8) == 0 ? i12 : 0, (i13 & 16) != 0 ? null : str2, (i13 & 32) != 0 ? null : str3, (i13 & 64) != 0 ? null : str4, (i13 & 128) == 0 ? str5 : null);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final int getAdvertiserId() {
        return this.advertiserId;
    }

    public final List<FormCustomInfosDTO> component2() {
        return this.formCustomInfos;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getFormEmail() {
        return this.formEmail;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final int getFormId() {
        return this.formId;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getFormName() {
        return this.formName;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getFormPhone() {
        return this.formPhone;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getGaid() {
        return this.gaid;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final String getIpAddress() {
        return this.ipAddress;
    }

    public final FormBean copy(int advertiserId, List<FormCustomInfosDTO> formCustomInfos, String formEmail, int formId, String formName, String formPhone, String gaid, String ipAddress) {
        return new FormBean(advertiserId, formCustomInfos, formEmail, formId, formName, formPhone, gaid, ipAddress);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof FormBean)) {
            return false;
        }
        FormBean formBean = (FormBean) other;
        return this.advertiserId == formBean.advertiserId && Intrinsics.c(this.formCustomInfos, formBean.formCustomInfos) && Intrinsics.c(this.formEmail, formBean.formEmail) && this.formId == formBean.formId && Intrinsics.c(this.formName, formBean.formName) && Intrinsics.c(this.formPhone, formBean.formPhone) && Intrinsics.c(this.gaid, formBean.gaid) && Intrinsics.c(this.ipAddress, formBean.ipAddress);
    }

    public final int getAdvertiserId() {
        return this.advertiserId;
    }

    public final List<FormCustomInfosDTO> getFormCustomInfos() {
        return this.formCustomInfos;
    }

    public final String getFormEmail() {
        return this.formEmail;
    }

    public final int getFormId() {
        return this.formId;
    }

    public final String getFormName() {
        return this.formName;
    }

    public final String getFormPhone() {
        return this.formPhone;
    }

    public final String getGaid() {
        return this.gaid;
    }

    public final String getIpAddress() {
        return this.ipAddress;
    }

    public int hashCode() {
        int i11 = this.advertiserId * 31;
        List<FormCustomInfosDTO> list = this.formCustomInfos;
        int iHashCode = (i11 + (list == null ? 0 : list.hashCode())) * 31;
        String str = this.formEmail;
        int iHashCode2 = (((iHashCode + (str == null ? 0 : str.hashCode())) * 31) + this.formId) * 31;
        String str2 = this.formName;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.formPhone;
        int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.gaid;
        int iHashCode5 = (iHashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.ipAddress;
        return iHashCode5 + (str5 != null ? str5.hashCode() : 0);
    }

    public final void setAdvertiserId(int i11) {
        this.advertiserId = i11;
    }

    public final void setFormCustomInfos(List<FormCustomInfosDTO> list) {
        this.formCustomInfos = list;
    }

    public final void setFormEmail(String str) {
        this.formEmail = str;
    }

    public final void setFormId(int i11) {
        this.formId = i11;
    }

    public final void setFormName(String str) {
        this.formName = str;
    }

    public final void setFormPhone(String str) {
        this.formPhone = str;
    }

    public final void setGaid(String str) {
        this.gaid = str;
    }

    public final void setIpAddress(String str) {
        this.ipAddress = str;
    }

    public String toString() {
        return "FormBean(advertiserId=" + this.advertiserId + ", formCustomInfos=" + this.formCustomInfos + ", formEmail=" + this.formEmail + ", formId=" + this.formId + ", formName=" + this.formName + ", formPhone=" + this.formPhone + ", gaid=" + this.gaid + ", ipAddress=" + this.ipAddress + ")";
    }
}
