package com.cloud.hisavana.sdk.api.listener;

import android.os.Bundle;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.data.bean.request.AdxImpBean;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public interface f {
    void b(TaErrorCode taErrorCode, Bundle bundle);

    void c(List list, List list2, Bundle bundle, AdxImpBean adxImpBean);

    void d(List list, Bundle bundle);
}
