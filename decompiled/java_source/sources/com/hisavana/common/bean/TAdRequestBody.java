package com.hisavana.common.bean;

import com.hisavana.common.interfacz.TAdListener;
import com.hisavana.common.interfacz.TAdditionalListener;

/* JADX INFO: loaded from: classes4.dex */
public class TAdRequestBody {
    private final TAdditionalListener additionalListener;
    private TAdListener mAdListener;
    private int scheduleTime;

    public static class AdRequestBodyBuild {
        private TAdListener mAdListener = null;
        private TAdditionalListener additionalListener = null;
        private int scheduleTime = 60000;

        /* JADX INFO: Access modifiers changed from: private */
        public int getScheduleTime() {
            return this.scheduleTime;
        }

        public TAdRequestBody build() {
            return new TAdRequestBody(this);
        }

        public TAdListener getAdListener() {
            return this.mAdListener;
        }

        public TAdditionalListener getAdditionalListener() {
            return this.additionalListener;
        }

        public AdRequestBodyBuild setAdListener(TAdListener tAdListener) {
            this.mAdListener = tAdListener;
            return this;
        }

        public AdRequestBodyBuild setAdditionalListener(TAdditionalListener tAdditionalListener) {
            this.additionalListener = tAdditionalListener;
            return this;
        }

        public AdRequestBodyBuild setScheduleTime(int i11) {
            this.scheduleTime = i11;
            return this;
        }

        public String toString() {
            return "AdRequestBodyBuild{, scheduleTime=" + this.scheduleTime + '}';
        }
    }

    public TAdRequestBody(AdRequestBodyBuild adRequestBodyBuild) {
        this.scheduleTime = 0;
        this.mAdListener = adRequestBodyBuild.getAdListener();
        this.scheduleTime = adRequestBodyBuild.getScheduleTime();
        this.additionalListener = adRequestBodyBuild.getAdditionalListener();
    }

    public void copyAttributes(TAdRequestBody tAdRequestBody) {
        this.scheduleTime = tAdRequestBody.scheduleTime;
    }

    public TAdListener getAdListener() {
        return this.mAdListener;
    }

    public TAdditionalListener getAdditionalListener() {
        return this.additionalListener;
    }

    public int getScheduleTime() {
        return this.scheduleTime;
    }

    public void setAdListener(TAdListener tAdListener) {
        this.mAdListener = tAdListener;
    }

    public String toString() {
        return "TAdRequestBody{mAdListener=" + this.mAdListener + ", scheduleTime=" + this.scheduleTime + ", additionalListener=" + this.additionalListener + '}';
    }
}
