package com.hisavana.mediation.bean;

/* JADX INFO: loaded from: classes4.dex */
public class MediaConfig {
    private int code;
    private ConfigData data;
    private String msg;

    public static class AdLabelConfig {
        private int admob;
        private int adx;
        private int fan;
        private int tan;

        public int getAdmob() {
            return this.admob;
        }

        public int getAdx() {
            return this.adx;
        }

        public int getFan() {
            return this.fan;
        }

        public int getTan() {
            return this.tan;
        }

        public void setAdmob(int i11) {
            this.admob = i11;
        }

        public void setAdx(int i11) {
            this.adx = i11;
        }

        public void setFan(int i11) {
            this.fan = i11;
        }

        public void setTan(int i11) {
            this.tan = i11;
        }

        public String toString() {
            return "AdLabelConfig{fan=" + this.fan + ", admob=" + this.admob + ", tan=" + this.tan + ", adx=" + this.adx + '}';
        }
    }

    public static class AdMsg {
        private String infinix;
        private String itel;
        private String other;
        private String tecno;

        public String getInfinix() {
            return this.infinix;
        }

        public String getItel() {
            return this.itel;
        }

        public String getOther() {
            return this.other;
        }

        public String getTecno() {
            return this.tecno;
        }

        public void setInfinix(String str) {
            this.infinix = str;
        }

        public void setItel(String str) {
            this.itel = str;
        }

        public void setOther(String str) {
            this.other = str;
        }

        public void setTecno(String str) {
            this.tecno = str;
        }

        public String toString() {
            return "adMsg{tecno='" + this.tecno + "', infinix='" + this.infinix + "', itel='" + this.itel + "', other='" + this.other + "'}";
        }
    }

    public static class ConfigData {
        private int adFlag;
        private AdLabelConfig ad_config;
        private AdMsg msg;
        private int offdur;
        private int silenceDays = -1;
        private int settingAppJump = -1;

        public int getAdFlag() {
            return this.adFlag;
        }

        public AdLabelConfig getAd_config() {
            return this.ad_config;
        }

        public AdMsg getMsg() {
            return this.msg;
        }

        public int getOffdur() {
            return this.offdur;
        }

        public int getSilenceDays() {
            return this.silenceDays;
        }

        public int getSplashJump() {
            return this.settingAppJump;
        }

        public void setAdFlag(int i11) {
            this.adFlag = i11;
        }

        public void setAd_config(AdLabelConfig adLabelConfig) {
            this.ad_config = adLabelConfig;
        }

        public void setMsg(AdMsg adMsg) {
            this.msg = adMsg;
        }

        public void setOffdur(int i11) {
            this.offdur = i11;
        }

        public void setSilenceDays(int i11) {
            this.silenceDays = i11;
        }

        public void setSplashJump(int i11) {
            this.settingAppJump = i11;
        }

        public String toString() {
            return "ConfigData{offdur=" + this.offdur + ", adFlag=" + this.adFlag + ", ad_config=" + this.ad_config + ", msg=" + this.msg + ", silenceDays=" + this.silenceDays + '}';
        }
    }

    public int getCode() {
        return this.code;
    }

    public ConfigData getData() {
        return this.data;
    }

    public String getMsg() {
        return this.msg;
    }

    public void setCode(int i11) {
        this.code = i11;
    }

    public void setData(ConfigData configData) {
        this.data = configData;
    }

    public void setMsg(String str) {
        this.msg = str;
    }

    public String toString() {
        return "MediaConfig{code=" + this.code + ", msg='" + this.msg + "', data=" + this.data + '}';
    }
}
