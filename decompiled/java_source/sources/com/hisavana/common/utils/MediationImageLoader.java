package com.hisavana.common.utils;

import android.text.TextUtils;
import android.util.Log;
import android.widget.ImageView;
import com.cloud.hisavana.sdk.common.http.DownLoadRequest;
import l7.b;

/* JADX INFO: loaded from: classes4.dex */
public class MediationImageLoader {
    public static void loadImage(String str, ImageView imageView) {
        if (imageView != null) {
            try {
                if (!TextUtils.isEmpty(str)) {
                    AdLogUtil.Log().d("ContentValues", "loadImageView,url:" + str);
                    if (b.e(str, false, imageView)) {
                        AdLogUtil.Log().d("ContentValues", "loadImageView,mediation picasso || glide");
                    } else {
                        DownLoadRequest.o(str, null, 9, null, imageView);
                        AdLogUtil.Log().d("ContentValues", "loadImageView,mediation ssp");
                    }
                }
            } catch (Throwable th2) {
                AdLogUtil.Log().d("ContentValues", "ALL " + Log.getStackTraceString(th2));
            }
        }
    }
}
