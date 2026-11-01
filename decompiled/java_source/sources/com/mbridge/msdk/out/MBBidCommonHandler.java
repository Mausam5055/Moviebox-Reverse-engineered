package com.mbridge.msdk.out;

import android.content.Context;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public abstract class MBBidCommonHandler {
    protected Context context;
    protected Map<String, Object> properties;

    public MBBidCommonHandler() {
    }

    public MBBidCommonHandler(Map<String, Object> map, Context context) {
        this.properties = map;
        this.context = context;
    }

    public abstract void bidLoad(String str);

    public abstract void bidRelease();
}
