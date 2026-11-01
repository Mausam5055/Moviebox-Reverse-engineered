package com.hisavana.common.mock;

import com.cloud.sdk.commonutil.util.Preconditions;
import com.hisavana.common.base.LogSwitch;
import com.hisavana.common.bean.Network;
import com.hisavana.common.constant.ComConstants;
import com.hisavana.common.interfacz.ICacheAd;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class RecordTestInfo {
    public static int LOG_CODE1 = 1;
    public static int LOG_CODE10 = 10;
    public static int LOG_CODE11 = 11;
    public static int LOG_CODE12 = 12;
    public static int LOG_CODE2 = 2;
    public static int LOG_CODE3 = 3;
    public static int LOG_CODE4 = 4;
    public static int LOG_CODE5 = 5;
    public static int LOG_CODE6 = 6;
    public static int LOG_CODE7 = 7;
    public static int LOG_CODE8 = 8;
    public static int LOG_CODE9 = 9;
    private static LogListener logListener;
    public static StringBuilder stringBuilder = new StringBuilder();

    /* JADX INFO: loaded from: classes4.dex */
    public interface LogListener {
        void log(String str, int i11);
    }

    public static void LogMsg(final String str, final int i11) {
        if (logListener != null) {
            Preconditions.d(new Preconditions.a() { // from class: com.hisavana.common.mock.RecordTestInfo.1
                @Override // com.cloud.sdk.commonutil.util.Preconditions.a
                public void onRun() {
                    RecordTestInfo.logListener.log(str, i11);
                }
            });
        }
    }

    public static void destroy() {
        logListener = null;
    }

    public static <T extends ICacheAd> String getLogMsg(Network network) {
        if (logListener == null) {
            return "";
        }
        StringBuilder sb2 = new StringBuilder();
        if (network != null) {
            sb2.append(network.getCodeSeatId());
            sb2.append(" price:");
            sb2.append(network.getPrice());
        }
        return sb2.toString();
    }

    public static <T extends ICacheAd> String getLogMsg(T t11) {
        if (logListener == null || !LogSwitch.isDebug || t11 == null) {
            return "";
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(ComConstants.transferSourceToStr(t11.getAdSource()));
        int adSource = t11.getAdSource();
        if (adSource == 1 || adSource == 17) {
            sb2.append("-");
            sb2.append(t11.getMediatorSourceName());
            sb2.append(", priceCoefficient:");
            sb2.append(t11.getNetwork().getShowPriceCoefficient());
        }
        sb2.append(", price:");
        sb2.append(t11.getEcpmPrice());
        sb2.append(", isInternalAd:");
        sb2.append(t11.isInternalAd());
        sb2.append(", cacheTime:");
        sb2.append(t11.getValidTimeLimit() / 60000);
        return sb2.toString();
    }

    public static <T extends ICacheAd> String getLogMsg(List<T> list) {
        if (logListener == null) {
            return "";
        }
        StringBuilder sb2 = new StringBuilder();
        if (list != null) {
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                sb2.append(getLogMsg(it.next()));
                sb2.append("\n");
            }
        }
        return sb2.toString();
    }

    public static void record(String str) {
        if (stringBuilder == null || !ComConstants.AUTOMATIC_TEST_STATUS.booleanValue()) {
            return;
        }
        stringBuilder.append(str);
        stringBuilder.append("\n");
    }

    public static void setLogListener(LogListener logListener2) {
        logListener = logListener2;
    }
}
