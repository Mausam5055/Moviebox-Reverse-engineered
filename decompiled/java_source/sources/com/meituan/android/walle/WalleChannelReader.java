package com.meituan.android.walle;

import android.content.Context;
import com.transsion.subroom.R$string;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class WalleChannelReader {
    private static volatile String sCachedFlavor;

    private WalleChannelReader() {
    }

    public static String getChannel(Context context) {
        if (sCachedFlavor != null) {
            return sCachedFlavor;
        }
        if (context == null) {
            return "gp";
        }
        sCachedFlavor = context.getString(R$string.walle_flavor);
        return sCachedFlavor;
    }

    public static String getChannel(Context context, String str) {
        String channel = getChannel(context);
        return (!channel.isEmpty() || str == null) ? channel : str;
    }

    public static Map<String, String> getChannelInfoMap(Context context) {
        return Collections.emptyMap();
    }
}
