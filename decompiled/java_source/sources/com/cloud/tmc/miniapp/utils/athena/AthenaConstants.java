package com.cloud.tmc.miniapp.utils.athena;

import com.cloud.tmc.kernel.model.BaseBean;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes3.dex */
public class AthenaConstants extends BaseBean {
    public static AtomicBoolean currentProcessIsInitAthena = new AtomicBoolean(false);
    public static AtomicBoolean mainProcessIsInitAthena = new AtomicBoolean(false);
    public static AtomicBoolean delay = new AtomicBoolean(false);
}
