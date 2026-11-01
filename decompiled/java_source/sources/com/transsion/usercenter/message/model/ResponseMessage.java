package com.transsion.usercenter.message.model;

import com.google.gson.annotations.SerializedName;
import com.transsion.usercenter.message.bean.MessageEntity;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003R\u001e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0018\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcom/transsion/usercenter/message/model/ResponseMessage;", "Ljava/io/Serializable;", "<init>", "()V", "list", "", "Lcom/transsion/usercenter/message/bean/MessageEntity;", "getList", "()Ljava/util/List;", "pager", "Lcom/transsion/usercenter/message/model/PagerEntity;", "getPager", "()Lcom/transsion/usercenter/message/model/PagerEntity;", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class ResponseMessage implements Serializable {

    @SerializedName("list")
    private final List<MessageEntity> list;

    @SerializedName("pager")
    private final PagerEntity pager;

    public final List<MessageEntity> getList() {
        return this.list;
    }

    public final PagerEntity getPager() {
        return this.pager;
    }
}
