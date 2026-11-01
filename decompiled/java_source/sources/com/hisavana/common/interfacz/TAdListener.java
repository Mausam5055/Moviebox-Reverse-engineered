package com.hisavana.common.interfacz;

import androidx.annotation.Nullable;
import com.hisavana.common.bean.TAdErrorCode;
import com.hisavana.common.bean.TAdNativeInfo;

/* JADX INFO: loaded from: classes.dex */
public abstract class TAdListener {
    public abstract void onClicked(int i11);

    public abstract void onClosed(int i11);

    public void onClosed(@Nullable TAdNativeInfo tAdNativeInfo) {
    }

    public abstract void onError(@Nullable TAdErrorCode tAdErrorCode);

    public void onLoad() {
    }

    public void onNativeFeedClicked(int i11, @Nullable TAdNativeInfo tAdNativeInfo) {
    }

    public void onNativeFeedShow(int i11, @Nullable TAdNativeInfo tAdNativeInfo) {
    }

    public void onRewarded() {
    }

    public abstract void onShow(int i11);

    public void onShowError(@Nullable TAdErrorCode tAdErrorCode) {
    }
}
