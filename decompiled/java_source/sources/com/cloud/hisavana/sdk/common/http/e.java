package com.cloud.hisavana.sdk.common.http;

import android.util.Log;
import com.cloud.hisavana.sdk.data.bean.response.AdResponseBody;
import com.cloud.hisavana.sdk.e4;
import com.cloud.tmc.ad.Constants;
import java.text.SimpleDateFormat;
import java.util.Date;

/* JADX INFO: loaded from: classes3.dex */
public class e {
    public static void a(AdResponseBody adResponseBody) {
        if (adResponseBody == null || adResponseBody.getData() == null) {
            return;
        }
        try {
            Date date = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss SSS Z").parse(adResponseBody.getData().getTime());
            j7.a.e().q(Constants.SERVICES_TIME_DIFFERENCE_VALUE, System.currentTimeMillis() - (date == null ? 0L : date.getTime()));
        } catch (Exception e11) {
            e4.b().e(Log.getStackTraceString(e11));
        }
    }
}
