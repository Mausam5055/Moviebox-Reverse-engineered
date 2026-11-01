package com.hisavana.common.manager;

import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import com.hisavana.common.base.BaseBanner;
import com.hisavana.common.base.LogSwitch;
import com.hisavana.common.interfacz.Iad;
import com.hisavana.common.utils.AdLogUtil;
import com.hisavana.common.utils.AdUtil;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public class RequestingAdManager<T extends Iad> {
    private static final int REQUEST_CONTINUOUS_TIME = 4000;
    private static final String TAG = "RequestingAdManager";
    private final Map<String, List<T>> requestingAdMap = new HashMap();

    private static class SingletonHolder {
        private static final RequestingAdManager INSTANCE = new RequestingAdManager();

        private SingletonHolder() {
        }
    }

    public static RequestingAdManager getInstance() {
        return SingletonHolder.INSTANCE;
    }

    public boolean addRequest(T t11) {
        if (AdUtil.requestStatusOff() || t11 == null) {
            return false;
        }
        if (LogSwitch.isDebug) {
            AdLogUtil.Log().d(TAG, "start-----------------------addRequest,placementid: " + t11.getPlacementId() + "----------------------->");
            StringBuffer stringBuffer = new StringBuffer();
            Iterator<Map.Entry<String, List<T>>> it = this.requestingAdMap.entrySet().iterator();
            stringBuffer.append("[");
            while (it.hasNext()) {
                for (T t12 : it.next().getValue()) {
                    if (t12 != null) {
                        stringBuffer.append("{");
                        stringBuffer.append(t12.getAdUnit());
                        stringBuffer.append(",");
                        stringBuffer.append(t12.getPlacementId());
                        stringBuffer.append(",");
                        stringBuffer.append(SystemClock.uptimeMillis() - t12.getRequestTime());
                        stringBuffer.append("}");
                        stringBuffer.append(",");
                    }
                }
            }
            stringBuffer.append("]");
            AdLogUtil.Log().e(TAG, "current request list: " + stringBuffer.toString());
            AdLogUtil.Log().e(TAG, "end--------------------addRequest->");
        }
        t11.setRequestTime(SystemClock.uptimeMillis());
        List<T> arrayList = this.requestingAdMap.get(t11.getAdUnit());
        if (arrayList == null) {
            arrayList = new ArrayList<>();
        }
        arrayList.add(t11);
        this.requestingAdMap.put(t11.getAdUnit(), arrayList);
        return true;
    }

    public void destroyFoldAd(String str) {
        List<T> list;
        AdLogUtil.Log().d(TAG, "destroyFoldAd " + str);
        if (this.requestingAdMap.isEmpty() || (list = this.requestingAdMap.get(str)) == null) {
            return;
        }
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            try {
                T next = it.next();
                if ((next instanceof BaseBanner) && ((BaseBanner) next).destroyFoldAd()) {
                    it.remove();
                }
            } catch (Exception e11) {
                AdLogUtil.Log().e(TAG, "destroyFoldAd error:" + Log.getStackTraceString(e11));
                return;
            }
        }
    }

    public T getRequest(String str, String str2) {
        if (LogSwitch.isDebug) {
            StringBuffer stringBuffer = new StringBuffer();
            Iterator<Map.Entry<String, List<T>>> it = this.requestingAdMap.entrySet().iterator();
            stringBuffer.append("[");
            while (it.hasNext()) {
                for (T t11 : it.next().getValue()) {
                    if (t11 != null) {
                        stringBuffer.append("{");
                        stringBuffer.append(t11.getAdUnit());
                        stringBuffer.append(",");
                        stringBuffer.append(t11.getPlacementId());
                        stringBuffer.append(",");
                        stringBuffer.append(SystemClock.uptimeMillis() - t11.getRequestTime());
                        stringBuffer.append("}");
                        stringBuffer.append(",");
                    }
                }
            }
            stringBuffer.append("]");
            AdLogUtil.Log().e(TAG, "currently is requesting list: " + ((Object) stringBuffer));
        }
        List<T> list = this.requestingAdMap.get(str);
        if (list == null) {
            return null;
        }
        for (T t12 : list) {
            if (t12 != null && t12.getNetwork() != null && TextUtils.equals(t12.getNetwork().getCodeSeatId(), str2) && SystemClock.uptimeMillis() - t12.getRequestTime() <= 4000) {
                return t12;
            }
        }
        return null;
    }

    public boolean removeRequest(T t11) {
        List<T> list;
        if (AdUtil.requestStatusOff() || t11 == null || (list = this.requestingAdMap.get(t11.getAdUnit())) == null) {
            return false;
        }
        AdLogUtil.Log().e(TAG, "RequestingAdManager remove placementid: " + t11.getPlacementId());
        return list.remove(t11);
    }
}
