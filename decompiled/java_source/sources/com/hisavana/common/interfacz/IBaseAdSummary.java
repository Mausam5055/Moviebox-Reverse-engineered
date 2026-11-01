package com.hisavana.common.interfacz;

import android.content.Context;
import androidx.annotation.NonNull;
import com.hisavana.common.base.BaseBanner;
import com.hisavana.common.base.BaseInterstitial;
import com.hisavana.common.base.BaseNative;
import com.hisavana.common.base.BaseNativeViewHolder;
import com.hisavana.common.base.BaseQueryPrice;
import com.hisavana.common.base.BaseSplash;
import com.hisavana.common.base.BaseVideo;
import com.hisavana.common.bean.AdSourceConfig;
import com.hisavana.common.bean.Network;

/* JADX INFO: loaded from: classes.dex */
public interface IBaseAdSummary {
    BaseBanner getBanner(Context context, Network network, int i11, int i12);

    BaseInterstitial getInterstitial(Context context, Network network);

    BaseVideo getInterstitialRewarded(Context context, Network network);

    BaseNative getNative(Context context, Network network, int i11);

    BaseNativeViewHolder getNativeViewHolder();

    BaseQueryPrice getQueryPrice();

    BaseSplash getSplash(Context context, Network network);

    BaseVideo getVideo(Context context, Network network);

    void init(@NonNull Context context, AdSourceConfig adSourceConfig);
}
