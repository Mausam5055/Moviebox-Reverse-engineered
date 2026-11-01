package com.transsion.push;

import com.transsion.push.bean.PushMessage;

/* JADX INFO: loaded from: classes.dex */
public interface TPushListener {
    void onClickException(long j11, String str);

    void onMessageReceive(long j11, String str, int i11);

    void onNotificationShow(long j11, String str);

    void onPushReceive(long j11, PushMessage pushMessage, int i11);

    void onSdkInitSuccess(String str, String str2);
}
