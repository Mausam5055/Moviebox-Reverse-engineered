package com.amazonaws.auth.policy;

/* JADX INFO: loaded from: classes2.dex */
public enum Principal$Services {
    AWSDataPipeline("datapipeline.amazonaws.com"),
    AmazonElasticTranscoder("elastictranscoder.amazonaws.com"),
    AmazonEC2("ec2.amazonaws.com"),
    AWSOpsWorks("opsworks.amazonaws.com"),
    AWSCloudHSM("cloudhsm.amazonaws.com"),
    AllServices("*");

    private String serviceId;

    Principal$Services(String str) {
        this.serviceId = str;
    }

    public static Principal$Services fromString(String str) {
        if (str == null) {
            return null;
        }
        for (Principal$Services principal$Services : values()) {
            if (principal$Services.getServiceId().equalsIgnoreCase(str)) {
                return principal$Services;
            }
        }
        return null;
    }

    public String getServiceId() {
        return this.serviceId;
    }
}
