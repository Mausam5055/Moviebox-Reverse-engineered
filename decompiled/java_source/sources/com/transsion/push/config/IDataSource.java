package com.transsion.push.config;

import com.transsion.push.IClientIdListener;
import com.transsion.push.ITopicListener;
import com.transsion.push.bean.ConfigInfo;

/* JADX INFO: loaded from: classes.dex */
public interface IDataSource {
    void getClientId(IClientIdListener iClientIdListener);

    ConfigInfo.Config getConfig();

    long getReportTime();

    <T> T getSpValue(String str, T t11);

    ConfigInfo.Whitelist getWhiteList();

    boolean isReported();

    void putSpValue(String str, Object obj);

    void removeSpValue(String str);

    void saveConfig(ConfigInfo.Config config);

    void saveReportTime(long j11);

    void saveWhiteList(ConfigInfo.Whitelist whitelist);

    void subscribeToTopic(String str, ITopicListener iTopicListener);

    void syncActive();

    void syncSelfDestroying();

    void unsubscribeFromTopic(String str, ITopicListener iTopicListener);

    void updateNewToken(String str);
}
