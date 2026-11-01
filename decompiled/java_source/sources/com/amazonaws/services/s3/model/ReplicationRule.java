package com.amazonaws.services.s3.model;

/* JADX INFO: loaded from: classes2.dex */
public class ReplicationRule {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f18793a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f18794b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ReplicationDestinationConfig f18795c;

    public void a(ReplicationDestinationConfig replicationDestinationConfig) {
        if (replicationDestinationConfig == null) {
            throw new IllegalArgumentException("Destination cannot be null in the replication rule");
        }
        this.f18795c = replicationDestinationConfig;
    }

    public void b(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Prefix cannot be null for a replication rule");
        }
        this.f18793a = str;
    }

    public void c(String str) {
        this.f18794b = str;
    }
}
