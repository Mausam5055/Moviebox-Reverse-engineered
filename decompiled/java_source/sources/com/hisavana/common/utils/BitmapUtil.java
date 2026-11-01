package com.hisavana.common.utils;

import android.graphics.Bitmap;
import com.hisavana.common.constant.ComConstants;

/* JADX INFO: loaded from: classes4.dex */
public class BitmapUtil {
    public static void recycle(Bitmap bitmap) {
        if (bitmap == null || !ComConstants.LITE) {
            return;
        }
        bitmap.recycle();
    }
}
