package com.tn.tranpay.bean;

import androidx.core.app.NotificationCompat;
import com.tn.tranpay.network.BaseContent;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import yh.a;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003R$\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR$\u0010\u000b\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\u0006\u001a\u0004\b\f\u0010\b\"\u0004\b\r\u0010\nR$\u0010\u000e\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010\u0006\u001a\u0004\b\u000f\u0010\b\"\u0004\b\u0010\u0010\nR$\u0010\u0011\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010\u0006\u001a\u0004\b\u0012\u0010\b\"\u0004\b\u0013\u0010\nR$\u0010\u0015\u001a\u0004\u0018\u00010\u00148\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001a¨\u0006\u001b"}, d2 = {"Lcom/tn/tranpay/bean/CreateOrderResultContent;", "Lcom/tn/tranpay/network/BaseContent;", "<init>", "()V", "", "txnId", "Ljava/lang/String;", "getTxnId", "()Ljava/lang/String;", "setTxnId", "(Ljava/lang/String;)V", NotificationCompat.CATEGORY_STATUS, "getStatus", "setStatus", "webUrl", "getWebUrl", "setWebUrl", "rnUrl", "getRnUrl", "setRnUrl", "Lyh/a;", "payInstruction", "Lyh/a;", "getPayInstruction", "()Lyh/a;", "setPayInstruction", "(Lyh/a;)V", "lib_release"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class CreateOrderResultContent extends BaseContent {
    private a payInstruction;
    private String rnUrl;
    private String status;
    private String txnId;
    private String webUrl;

    public final a getPayInstruction() {
        return this.payInstruction;
    }

    public final String getRnUrl() {
        return this.rnUrl;
    }

    public final String getStatus() {
        return this.status;
    }

    public final String getTxnId() {
        return this.txnId;
    }

    public final String getWebUrl() {
        return this.webUrl;
    }

    public final void setPayInstruction(a aVar) {
        this.payInstruction = aVar;
    }

    public final void setRnUrl(String str) {
        this.rnUrl = str;
    }

    public final void setStatus(String str) {
        this.status = str;
    }

    public final void setTxnId(String str) {
        this.txnId = str;
    }

    public final void setWebUrl(String str) {
        this.webUrl = str;
    }
}
