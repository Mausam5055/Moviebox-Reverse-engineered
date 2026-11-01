package com.aliyun.utils;

import com.aliyun.loader.MediaLoader;
import com.aliyun.loader.VodMediaLoader;
import com.aliyun.player.AliPlayerGlobalSettings;
import com.aliyun.player.HlsKeyGenerator;
import com.aliyun.player.nativeclass.JniListPlayerBase;
import com.aliyun.player.nativeclass.JniSaasListPlayer;
import com.aliyun.player.nativeclass.JniSaasPlayer;
import com.aliyun.player.nativeclass.JniUrlListPlayer;
import com.aliyun.player.nativeclass.JniUrlPlayer;
import com.aliyun.player.nativeclass.NativeExternalPlayer;
import com.aliyun.player.nativeclass.NativePlayerBase;
import com.aliyun.private_service.PrivateService;
import com.aliyun.thumbnail.ThumbnailHelper;
import com.cicada.player.utils.Logger;
import com.cicada.player.utils.ass.AssUtils;

/* JADX INFO: loaded from: classes2.dex */
public class NativeLoader {
    private static boolean downloaderLoaded;
    private static boolean playerLoaded;

    public static synchronized void loadDownloader() {
        loadPlayer();
        if (downloaderLoaded) {
            return;
        }
        try {
            System.loadLibrary("saasDownloader");
            downloaderLoaded = true;
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    public static synchronized void loadPlayer() {
        if (playerLoaded) {
            return;
        }
        playerLoaded = true;
        JniUrlPlayer.loadClass();
        JniSaasPlayer.loadClass();
        JniListPlayerBase.loadClass();
        JniUrlListPlayer.loadClass();
        JniSaasListPlayer.loadClass();
        PrivateService.loadClass();
        MediaLoader.loadClass();
        VodMediaLoader.loadClass();
        AliPlayerGlobalSettings.loadClass();
        HlsKeyGenerator.loadClass();
        NativeExternalPlayer.loadClass();
        NativePlayerBase.loadClass();
        ThumbnailHelper.loadClass();
        DeviceInfoUtils.loadClass();
        Logger.loadClass();
        AssUtils.loadClass();
        try {
            System.loadLibrary("alivcffmpeg");
            System.loadLibrary("saasCorePlayer");
        } catch (Exception e11) {
            e11.printStackTrace();
            playerLoaded = false;
        }
    }
}
