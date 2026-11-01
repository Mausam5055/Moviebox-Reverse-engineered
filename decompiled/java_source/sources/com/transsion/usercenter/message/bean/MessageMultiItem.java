package com.transsion.usercenter.message.bean;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import n6.a;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u0000 \u00112\u00020\u00012\u00020\u0002:\u0001\u0012B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006R\u001a\u0010\u0004\u001a\u00020\u00038\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0004\u0010\u0007\u001a\u0004\b\b\u0010\tR\"\u0010\u000b\u001a\u00020\n8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010¨\u0006\u0013"}, d2 = {"Lcom/transsion/usercenter/message/bean/MessageMultiItem;", "Ln6/a;", "Ljava/io/Serializable;", "", "itemType", "<init>", "(I)V", "I", "getItemType", "()I", "Lcom/transsion/usercenter/message/bean/MessageEntity;", "data", "Lcom/transsion/usercenter/message/bean/MessageEntity;", "getData", "()Lcom/transsion/usercenter/message/bean/MessageEntity;", "setData", "(Lcom/transsion/usercenter/message/bean/MessageEntity;)V", "Companion", "a", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class MessageMultiItem implements a, Serializable {
    public MessageEntity data;
    private final int itemType;

    public MessageMultiItem(int i11) {
        this.itemType = i11;
    }

    public final MessageEntity getData() {
        MessageEntity messageEntity = this.data;
        if (messageEntity != null) {
            return messageEntity;
        }
        Intrinsics.z("data");
        return null;
    }

    @Override // n6.a
    public int getItemType() {
        return this.itemType;
    }

    public final void setData(MessageEntity messageEntity) {
        Intrinsics.h(messageEntity, "<set-?>");
        this.data = messageEntity;
    }
}
