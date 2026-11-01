package com.transsion.api.gateway.utils;

import android.text.TextUtils;
import com.transsion.api.gateway.GateWaySdk;
import com.transsion.api.gateway.bean.GatewayHost;
import com.transsion.api.gateway.config.b;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class GatewayUtils {
    public static ObjectLogUtils L = new ObjectLogUtils.Builder().setGlobalTag("gateway_sdk").setLogSwitch(false).setLogHeadSwitch(false).setBorderSwitch(false).create();

    public static boolean canUseGateWay(String str) {
        List list;
        if (b.a().f42514a.f42493b && (list = b.a().f42514a.f42501j) != null && !list.isEmpty()) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                if (((GatewayHost) it.next()).host.contains(str)) {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean canUseGateWay(String str, String str2) {
        List list;
        boolean z10;
        if (!b.a().f42514a.f42493b || b.a().f42514a.f42502k.size() == 0 || (list = b.a().f42514a.f42501j) == null || list.isEmpty()) {
            return false;
        }
        List arrayList = new ArrayList();
        List arrayList2 = new ArrayList();
        Iterator it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                z10 = false;
                break;
            }
            GatewayHost gatewayHost = (GatewayHost) it.next();
            if (gatewayHost.host.contains(str)) {
                arrayList = gatewayHost.enablePath;
                arrayList2 = gatewayHost.disablePath;
                z10 = true;
                break;
            }
        }
        if (!z10) {
            return false;
        }
        if (arrayList.size() == 0 && arrayList2.size() == 0) {
            return true;
        }
        if (arrayList.size() <= 0 || !arrayList.contains(str2)) {
            return arrayList2.size() > 0 && !arrayList2.contains(str2);
        }
        return true;
    }

    public static boolean isExcludeRequest(String str) {
        return TextUtils.isEmpty(str) || str.contains("/gateway/sdk/v1/config?app=") || str.contains("/gateway/metric/add");
    }

    public static boolean isRequireSign(String str, String str2) {
        List<String> activateSigHosts = GateWaySdk.getActivateSigHosts();
        List<String> activateSigPaths = GateWaySdk.getActivateSigPaths();
        if (activateSigHosts != null && activateSigHosts.size() > 0) {
            Iterator<String> it = activateSigHosts.iterator();
            while (it.hasNext()) {
                if (str.contains(it.next())) {
                    return true;
                }
            }
        }
        if (activateSigPaths == null || activateSigPaths.size() <= 0) {
            return false;
        }
        Iterator<String> it2 = activateSigPaths.iterator();
        while (it2.hasNext()) {
            if (str2.contains(it2.next())) {
                return true;
            }
        }
        return false;
    }

    public static byte[] textToNumericFormatV4(String str) {
        byte[] bArr = new byte[4];
        int length = str.length();
        if (length != 0 && length <= 15) {
            long j11 = 0;
            boolean z10 = true;
            int i11 = 0;
            for (int i12 = 0; i12 < length; i12++) {
                char cCharAt = str.charAt(i12);
                if (cCharAt != '.') {
                    int iDigit = Character.digit(cCharAt, 10);
                    if (iDigit < 0) {
                        return null;
                    }
                    j11 = (j11 * 10) + ((long) iDigit);
                    z10 = false;
                } else {
                    if (z10 || j11 < 0 || j11 > 255 || i11 == 3) {
                        return null;
                    }
                    bArr[i11] = (byte) (j11 & 255);
                    j11 = 0;
                    i11++;
                    z10 = true;
                }
            }
            if (!z10 && j11 >= 0 && j11 < (1 << ((4 - i11) * 8))) {
                if (i11 != 0) {
                    if (i11 != 1) {
                        if (i11 != 2) {
                            if (i11 == 3) {
                            }
                            return bArr;
                        }
                        bArr[3] = (byte) (j11 & 255);
                        return bArr;
                    }
                    bArr[2] = (byte) ((j11 >> 8) & 255);
                    bArr[3] = (byte) (j11 & 255);
                    return bArr;
                }
                bArr[0] = (byte) ((j11 >> 24) & 255);
                bArr[1] = (byte) ((j11 >> 16) & 255);
                bArr[2] = (byte) ((j11 >> 8) & 255);
                bArr[3] = (byte) (j11 & 255);
                return bArr;
            }
        }
        return null;
    }
}
