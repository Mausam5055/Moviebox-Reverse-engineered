package com.hisavana.mediation.bean;

import com.hisavana.common.bean.Network;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class CloudControlConfig implements Serializable {
    private int code;
    private ConfigData data;
    private String message;

    public static class CodeSeat {
        private Integer adRequestConcurrentCount;
        private Integer adRequestCount;
        private Integer adRequestTimeInterval;
        private Integer adRequestTimeout;
        private String adSeatType;
        private Integer adShowCountLimitDay;
        private Integer adShowCountLimitHour;
        private Integer adShowTimeInterval;
        private Integer adxShowRate;
        private String applicationId;
        private Integer biddingWaitTime;
        private Integer cacheTimeout;
        private Boolean cloudControlEnable;
        private String codeSeatId;
        private Integer codeSeatType;
        private Integer ewShowRate;
        private String experimentGroupId;
        private Integer fillCallbackMode;
        private int mCurrentHourShowTimes;
        private long mCurrentHourZeroClock;
        private long mLastShowTime;
        private int mTodayShowTimes;
        private long mTodayZeroClock;
        private List<Network> networks;
        private Boolean preload;
        private Integer preloadLogic;
        private Integer realtimeBiddingWaitTime;
        private Integer realtimeFillCallbackMode;
        private Integer requestIntervalMode;
        private String trafficGroupId;

        public Integer getAdRequestConcurrentCount() {
            Integer num = this.adRequestConcurrentCount;
            return Integer.valueOf(num == null ? 0 : num.intValue());
        }

        public Integer getAdRequestCount() {
            Integer num = this.adRequestCount;
            return Integer.valueOf(num == null ? 0 : num.intValue());
        }

        public Integer getAdRequestTimeInterval() {
            Integer num = this.adRequestTimeInterval;
            return Integer.valueOf(num == null ? 0 : num.intValue());
        }

        public Integer getAdRequestTimeout() {
            Integer num = this.adRequestTimeout;
            return Integer.valueOf(num == null ? 0 : num.intValue());
        }

        public String getAdSeatType() {
            return this.adSeatType;
        }

        public Integer getAdShowCountLimitDay() {
            Integer num = this.adShowCountLimitDay;
            return Integer.valueOf(num == null ? -1 : num.intValue());
        }

        public Integer getAdShowCountLimitHour() {
            Integer num = this.adShowCountLimitHour;
            return Integer.valueOf(num == null ? -1 : num.intValue());
        }

        public Integer getAdShowTimeInterval() {
            Integer num = this.adShowTimeInterval;
            return Integer.valueOf(num == null ? -1000 : num.intValue());
        }

        public Integer getAdxShowRate() {
            Integer num = this.adxShowRate;
            return Integer.valueOf(num == null ? 0 : num.intValue());
        }

        public String getApplicationId() {
            return this.applicationId;
        }

        public Integer getBiddingWaitTime() {
            Integer num = this.biddingWaitTime;
            return Integer.valueOf(num == null ? 0 : num.intValue());
        }

        public Integer getCacheTimeout() {
            Integer num = this.cacheTimeout;
            return Integer.valueOf(num == null ? 0 : num.intValue());
        }

        public Boolean getCloudControlEnable() {
            Boolean bool = this.cloudControlEnable;
            return Boolean.valueOf(bool == null ? false : bool.booleanValue());
        }

        public String getCodeSeatId() {
            String str = this.codeSeatId;
            return str == null ? "" : str;
        }

        public Integer getCodeSeatType() {
            Integer num = this.codeSeatType;
            return Integer.valueOf(num == null ? -1 : num.intValue());
        }

        public int getCurrentHourShowTimes() {
            return this.mCurrentHourShowTimes;
        }

        public long getCurrentHourZeroClock() {
            return this.mCurrentHourZeroClock;
        }

        public Integer getEwShowRate() {
            Integer num = this.ewShowRate;
            return Integer.valueOf(num == null ? 0 : num.intValue());
        }

        public String getExperimentGroupId() {
            return this.experimentGroupId;
        }

        public Integer getFillCallbackMode() {
            Integer num = this.fillCallbackMode;
            return Integer.valueOf(num == null ? 1 : num.intValue());
        }

        public long getLastShowTime() {
            return this.mLastShowTime;
        }

        public List<Network> getNetworks() {
            return this.networks;
        }

        public Boolean getPreload() {
            Boolean bool = this.preload;
            return Boolean.valueOf(bool == null ? false : bool.booleanValue());
        }

        public Integer getPreloadLogic() {
            Integer num = this.preloadLogic;
            return Integer.valueOf(num == null ? 0 : num.intValue());
        }

        public Integer getRealtimeBiddingWaitTime() {
            Integer num = this.realtimeBiddingWaitTime;
            return Integer.valueOf(num == null ? 0 : num.intValue());
        }

        public Integer getRealtimeFillCallbackMode() {
            Integer num = this.realtimeFillCallbackMode;
            return Integer.valueOf(num == null ? 1 : num.intValue());
        }

        public Integer getRequestIntervalMode() {
            Integer num = this.requestIntervalMode;
            return Integer.valueOf(num == null ? 1 : num.intValue());
        }

        public int getTodayShowTimes() {
            return this.mTodayShowTimes;
        }

        public long getTodayZeroClock() {
            return this.mTodayZeroClock;
        }

        public String getTrafficGroupId() {
            return this.trafficGroupId;
        }

        public void setAdxShowRate(Integer num) {
            this.adxShowRate = num;
        }

        public void setCodeSeatId(String str) {
            this.codeSeatId = str;
        }

        public void setCurrentHourShowTimes(int i11) {
            this.mCurrentHourShowTimes = i11;
        }

        public void setCurrentHourZeroClock(long j11) {
            this.mCurrentHourZeroClock = j11;
        }

        public void setEwShowRate(Integer num) {
            this.ewShowRate = num;
        }

        public void setFillCallbackMode(Integer num) {
            this.fillCallbackMode = num;
        }

        public void setLastShowTime(long j11) {
            this.mLastShowTime = j11;
        }

        public void setNetworks(List<Network> list) {
            this.networks = list;
        }

        public void setRealtimeBiddingWaitTime(Integer num) {
            this.realtimeBiddingWaitTime = num;
        }

        public void setRealtimeFillCallbackMode(Integer num) {
            this.realtimeFillCallbackMode = num;
        }

        public void setRequestIntervalMode(Integer num) {
            this.requestIntervalMode = num;
        }

        public void setTodayShowTimes(int i11) {
            this.mTodayShowTimes = i11;
        }

        public void setTodayZeroClock(long j11) {
            this.mTodayZeroClock = j11;
        }

        public String toString() {
            return "CodeSeat{applicationId='" + this.applicationId + "', codeSeatId='" + this.codeSeatId + "', codeSeatType=" + this.codeSeatType + ", networks=" + this.networks + ", cloudControlEnable=" + this.cloudControlEnable + ", cacheTimeout=" + this.cacheTimeout + ", preload=" + this.preload + ", preloadLogic=" + this.preloadLogic + ", adRequestCount=" + this.adRequestCount + ", adRequestConcurrentCount=" + this.adRequestConcurrentCount + ", adRequestTimeInterval=" + this.adRequestTimeInterval + ", adRequestTimeout=" + this.adRequestTimeout + ", biddingWaitTime=" + this.biddingWaitTime + ", adSeatType='" + this.adSeatType + "', trafficGroupId='" + this.trafficGroupId + "', experimentGroupId='" + this.experimentGroupId + "', adShowCountLimitDay=" + this.adShowCountLimitDay + ", adShowCountLimitHour=" + this.adShowCountLimitHour + ", adShowTimeInterval=" + this.adShowTimeInterval + ", fillCallbackMode=" + this.fillCallbackMode + ", realtimeFillCallbackMode=" + this.realtimeFillCallbackMode + ", realtimeBiddingWaitTime=" + this.realtimeBiddingWaitTime + '}';
        }
    }

    public static class ConfigData {
        private Integer cloudControlCacheInterval;
        private String cloudControlVersion;
        private ArrayList<CodeSeat> codeSeats;

        public Integer getCloudControlCacheInterval() {
            return this.cloudControlCacheInterval;
        }

        public String getCloudControlVersion() {
            return this.cloudControlVersion;
        }

        public ArrayList<CodeSeat> getCodeSeats() {
            return this.codeSeats;
        }

        public void setCloudControlCacheInterval(Integer num) {
            this.cloudControlCacheInterval = num;
        }

        public void setCloudControlVersion(String str) {
            this.cloudControlVersion = str;
        }

        public void setCodeSeats(ArrayList<CodeSeat> arrayList) {
            this.codeSeats = arrayList;
        }
    }

    public int getCode() {
        return this.code;
    }

    public ConfigData getData() {
        return this.data;
    }

    public String getMessage() {
        return this.message;
    }

    public void setCode(int i11) {
        this.code = i11;
    }

    public void setData(ConfigData configData) {
        this.data = configData;
    }

    public void setMessage(String str) {
        this.message = str;
    }
}
