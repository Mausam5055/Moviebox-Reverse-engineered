package com.aliyun.player.nativeclass;

import android.content.Context;
import com.aliyun.player.source.StsInfo;
import com.aliyun.utils.NativeLoader;

/* JADX INFO: loaded from: classes2.dex */
public class JniSaasListPlayer extends JniUrlListPlayer {
    private static final String TAG = "JniSaasListPlayer";

    static {
        NativeLoader.loadPlayer();
    }

    public JniSaasListPlayer(Context context, long j11) {
        super(context, j11);
    }

    public static void loadClass() {
    }

    public void addVid(String str, String str2) {
        nAddVid(str, str2);
    }

    public boolean moveTo(String str, StsInfo stsInfo) {
        return nMoveToWithSts(str, stsInfo);
    }

    public boolean moveToNext(StsInfo stsInfo) {
        return nMoveToNextWithSts(stsInfo);
    }

    public boolean moveToPrev(StsInfo stsInfo) {
        return nMoveToPrevWithSts(stsInfo);
    }

    native void nAddVid(String str, String str2);

    native boolean nMoveToNextWithSts(StsInfo stsInfo);

    native boolean nMoveToPrevWithSts(StsInfo stsInfo);

    native boolean nMoveToWithSts(String str, StsInfo stsInfo);

    native void nSetDefinition(String str);

    public void setDefinition(String str) {
        nSetDefinition(str);
    }
}
