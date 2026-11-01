package com.aliyun.player;

import android.content.Context;
import com.aliyun.player.nativeclass.JniListPlayerBase;
import com.aliyun.player.nativeclass.JniUrlListPlayer;
import com.aliyun.player.source.BitStreamSource;
import com.aliyun.player.source.UrlSource;
import com.cicada.player.utils.Logger;

/* JADX INFO: loaded from: classes2.dex */
public class UrlVideoListPlayer extends AVPLBase implements UrlListPlayer, UrlPlayer {
    private static final String TAG = "NativePlayerBase_UrlVideoListPlayer";
    private UrlVideoPlayer mUrlVideoPlayer;

    public UrlVideoListPlayer(Context context, String str) {
        super(context, str);
        this.mUrlVideoPlayer = null;
    }

    @Override // com.aliyun.player.UrlListPlayer
    public void addUrl(String str, String str2) {
        JniListPlayerBase corePlayer = getCorePlayer();
        if (corePlayer instanceof JniUrlListPlayer) {
            Logger.v(TAG, "addUrl = " + str + " , uid = " + str2);
            ((JniUrlListPlayer) corePlayer).addUrl(str, str2);
        }
    }

    @Override // com.aliyun.player.AVPLBase
    protected JniListPlayerBase createListPlayer(Context context, String str, long j11) {
        return new JniUrlListPlayer(context, j11);
    }

    @Override // com.aliyun.player.AVPLBase
    protected IPlayer getNativePlayer(Context context, String str) {
        if (this.mUrlVideoPlayer == null) {
            this.mUrlVideoPlayer = new UrlVideoPlayer(context, str);
        }
        return this.mUrlVideoPlayer;
    }

    @Override // com.aliyun.player.UrlListPlayer
    public boolean moveTo(String str) {
        JniListPlayerBase corePlayer = getCorePlayer();
        if (!(corePlayer instanceof JniUrlListPlayer)) {
            return false;
        }
        Logger.v(TAG, "moveTo uid = " + str);
        return ((JniUrlListPlayer) corePlayer).moveTo(str);
    }

    @Override // com.aliyun.player.UrlListPlayer
    public boolean moveToNext() {
        JniListPlayerBase corePlayer = getCorePlayer();
        if (!(corePlayer instanceof JniUrlListPlayer)) {
            return false;
        }
        Logger.v(TAG, "moveToNext  ");
        return ((JniUrlListPlayer) corePlayer).moveToNext();
    }

    @Override // com.aliyun.player.UrlListPlayer
    public boolean moveToPrev() {
        JniListPlayerBase corePlayer = getCorePlayer();
        if (!(corePlayer instanceof JniUrlListPlayer)) {
            return false;
        }
        Logger.v(TAG, "moveToPrev  ");
        return ((JniUrlListPlayer) corePlayer).moveToPrev();
    }

    @Override // com.aliyun.player.UrlPlayer
    public void setDataSource(BitStreamSource bitStreamSource) {
        IPlayer nativePlayer = getNativePlayer();
        if (nativePlayer instanceof UrlPlayer) {
            ((UrlPlayer) nativePlayer).setDataSource(bitStreamSource);
        }
    }

    @Override // com.aliyun.player.UrlPlayer
    public void setDataSource(UrlSource urlSource) {
        IPlayer nativePlayer = getNativePlayer();
        if (nativePlayer instanceof UrlPlayer) {
            ((UrlPlayer) nativePlayer).setDataSource(urlSource);
        }
    }
}
