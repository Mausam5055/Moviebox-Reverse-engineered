package com.bykv.vk.openvk.preload.falconx.statistic;

import com.bykv.vk.openvk.preload.a.a.b;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class StatisticData {
    public static final String ERROR_CODE_IO_ERROR = "101";
    public static final String ERROR_CODE_NOT_FOUND = "100";

    @b(a = "common")
    public Common mCommon;

    @b(a = OfflineConstantsKt.OFFLINE)
    public List<InterceptorModel> offline;
}
