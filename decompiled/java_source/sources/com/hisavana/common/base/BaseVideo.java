package com.hisavana.common.base;

import android.app.Activity;
import android.content.Context;
import android.util.Log;
import com.hisavana.common.bean.Network;
import com.hisavana.common.interfacz.IadVideo;
import com.hisavana.common.utils.AdLogUtil;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes4.dex */
public abstract class BaseVideo extends BaseAd implements IadVideo {
    public BaseVideo(Context context, Network network) {
        super(context, network);
    }

    public boolean canShow() {
        return true;
    }

    @Override // com.hisavana.common.base.BaseAd, com.hisavana.common.interfacz.ICacheAd
    public void destroyAd() {
        super.destroyAd();
    }

    @Override // com.hisavana.common.interfacz.ICacheAd
    public int getAdType() {
        return 5;
    }

    protected abstract void initVideo();

    public boolean isLoaded() {
        return false;
    }

    @Override // com.hisavana.common.interfacz.ICacheAd
    public boolean isOfflineAd() {
        return false;
    }

    @Override // com.hisavana.common.base.BaseAd, com.hisavana.common.interfacz.Iad
    public void loadAd() {
        super.loadAd();
        initVideo();
        onVideoStartLoad();
    }

    protected abstract void onVideoShow(Activity activity);

    protected abstract void onVideoStartLoad();

    @Override // com.hisavana.common.interfacz.IadVideo
    public void show(WeakReference<Context> weakReference, String str, String str2) {
        if (weakReference == null) {
            AdLogUtil.Log().e("video", "show,activity is null");
            return;
        }
        try {
            if (isLoaded()) {
                logTrigerShow(str, str2);
                if (weakReference.get() instanceof Activity) {
                    onVideoShow((Activity) weakReference.get());
                }
            } else {
                AdLogUtil.Log().w("video", "BaseVideo --> interstitial  is not ready" + getLogString());
            }
        } catch (Throwable th2) {
            AdLogUtil.Log().e("video", "BaseVideo --> show exception:" + Log.getStackTraceString(th2));
        }
    }

    public void showVideo(Activity activity, String str, String str2) {
        WeakReference<Context> weakReference = new WeakReference<>(activity);
        this.mContext = weakReference;
        show(weakReference, str, str2);
    }
}
