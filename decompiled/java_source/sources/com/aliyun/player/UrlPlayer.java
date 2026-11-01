package com.aliyun.player;

import com.aliyun.player.source.BitStreamSource;
import com.aliyun.player.source.UrlSource;

/* JADX INFO: loaded from: classes2.dex */
public interface UrlPlayer extends IPlayer {
    void setDataSource(BitStreamSource bitStreamSource);

    void setDataSource(UrlSource urlSource);
}
