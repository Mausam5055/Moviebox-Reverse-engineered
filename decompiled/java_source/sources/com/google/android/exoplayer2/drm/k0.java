package com.google.android.exoplayer2.drm;

import android.util.Pair;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.drm.WidevineUtil;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public abstract class k0 {
    private static long a(Map map, String str) {
        if (map == null) {
            return C.TIME_UNSET;
        }
        try {
            String str2 = (String) map.get(str);
            return str2 != null ? Long.parseLong(str2) : C.TIME_UNSET;
        } catch (NumberFormatException unused) {
            return C.TIME_UNSET;
        }
    }

    public static Pair b(DrmSession drmSession) {
        Map mapQueryKeyStatus = drmSession.queryKeyStatus();
        if (mapQueryKeyStatus == null) {
            return null;
        }
        return new Pair(Long.valueOf(a(mapQueryKeyStatus, WidevineUtil.PROPERTY_LICENSE_DURATION_REMAINING)), Long.valueOf(a(mapQueryKeyStatus, WidevineUtil.PROPERTY_PLAYBACK_DURATION_REMAINING)));
    }
}
