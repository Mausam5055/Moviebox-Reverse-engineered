package com.transsion.push.bean;

/* JADX INFO: loaded from: classes6.dex */
public class PushConfig {
    private int checkInterval;
    private boolean closeJobService;
    private String groupId;
    private int maxNotificationCount;
    private int mobileUploadInterval;
    private int uploadInterval;

    public static class Builder {
        private int checkInterval;
        private boolean closeJobService;
        private String groupId;
        private int maxNotificationCount;
        private int mobileUploadInterval;
        private int uploadInterval;

        public PushConfig build() {
            return new PushConfig(this);
        }

        public Builder setCheckInterval(int i11) {
            this.checkInterval = i11;
            return this;
        }

        public Builder setCloseJobService(boolean z10) {
            this.closeJobService = z10;
            return this;
        }

        public Builder setGroupId(String str) {
            this.groupId = str;
            return this;
        }

        public Builder setMaxNotificationCount(int i11) {
            this.maxNotificationCount = i11;
            return this;
        }

        public Builder setMobileUploadInterval(int i11) {
            this.mobileUploadInterval = i11;
            return this;
        }

        public Builder setUploadInterval(int i11) {
            this.uploadInterval = i11;
            return this;
        }
    }

    private PushConfig(Builder builder) {
        this.closeJobService = builder.closeJobService;
        this.checkInterval = builder.checkInterval;
        this.uploadInterval = builder.uploadInterval;
        this.mobileUploadInterval = builder.mobileUploadInterval;
        this.groupId = builder.groupId;
        this.maxNotificationCount = builder.maxNotificationCount;
    }

    public int getCheckInterval() {
        return this.checkInterval;
    }

    public String getGroupId() {
        return this.groupId;
    }

    public int getMaxNotificationCount() {
        return this.maxNotificationCount;
    }

    public int getMobileUploadInterval() {
        return this.mobileUploadInterval;
    }

    public int getUploadInterval() {
        return this.uploadInterval;
    }

    public boolean isCloseJobService() {
        return this.closeJobService;
    }
}
