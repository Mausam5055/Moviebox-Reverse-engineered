package com.cloud.hisavana.sdk.data.bean.request;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class FormBean {
    private int advertiserId;
    private List<FormCustomInfosDTO> formCustomInfos;
    private String formEmail;
    private int formId;
    private String formName;
    private String formPhone;
    private String gaid;
    private String ipAddress;

    public static class FormCustomInfosDTO {
        private String title;
        private List<String> values;

        public String getTitle() {
            return this.title;
        }

        public List<?> getValues() {
            return this.values;
        }

        public void setTitle(String str) {
            this.title = str;
        }

        public void setValues(List<String> list) {
            this.values = list;
        }
    }

    public int getAdvertiserId() {
        return this.advertiserId;
    }

    public List<FormCustomInfosDTO> getFormCustomInfos() {
        return this.formCustomInfos;
    }

    public String getFormEmail() {
        return this.formEmail;
    }

    public int getFormId() {
        return this.formId;
    }

    public String getFormName() {
        return this.formName;
    }

    public String getFormPhone() {
        return this.formPhone;
    }

    public String getGaid() {
        return this.gaid;
    }

    public String getIpAddress() {
        return this.ipAddress;
    }

    public void setAdvertiserId(int i11) {
        this.advertiserId = i11;
    }

    public void setFormCustomInfos(List<FormCustomInfosDTO> list) {
        this.formCustomInfos = list;
    }

    public void setFormEmail(String str) {
        this.formEmail = str;
    }

    public void setFormId(int i11) {
        this.formId = i11;
    }

    public void setFormName(String str) {
        this.formName = str;
    }

    public void setFormPhone(String str) {
        this.formPhone = str;
    }

    public void setGaid(String str) {
        this.gaid = str;
    }

    public void setIpAddress(String str) {
        this.ipAddress = str;
    }
}
