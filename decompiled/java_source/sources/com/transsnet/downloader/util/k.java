package com.transsnet.downloader.util;

import com.transsion.mb.config.manager.ConfigBean;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes7.dex */
public final class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final k f59947a = new k();

    private k() {
    }

    public final boolean a() {
        String value;
        Long lX;
        com.transsion.baselib.report.launch.b bVar = com.transsion.baselib.report.launch.b.f43370a;
        long j11 = bVar.b().getLong("key_download_st_show_last_time", 0L);
        long j12 = bVar.b().getLong("key_download_st_showed_times", 0L);
        ConfigBean configBeanD = sm.f.d(sm.f.f75407c.a(), "key_storage_per_total_show_times", false, 2, null);
        long jLongValue = (configBeanD == null || (value = configBeanD.getValue()) == null || (lX = StringsKt.x(value)) == null) ? 3L : lX.longValue();
        return !com.blankj.utilcode.util.c0.f(j11) && (jLongValue > 0 ? jLongValue : 3L) > j12;
    }
}
