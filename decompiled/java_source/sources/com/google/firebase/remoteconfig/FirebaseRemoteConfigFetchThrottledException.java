package com.google.firebase.remoteconfig;

/* JADX INFO: loaded from: classes4.dex */
public class FirebaseRemoteConfigFetchThrottledException extends FirebaseRemoteConfigException {
    private final long throttleEndTimeMillis;

    public FirebaseRemoteConfigFetchThrottledException(long j11) {
        this("Fetch was throttled.", j11);
    }

    public FirebaseRemoteConfigFetchThrottledException(String str, long j11) {
        super(str);
        this.throttleEndTimeMillis = j11;
    }

    public long getThrottleEndTimeMillis() {
        return this.throttleEndTimeMillis;
    }
}
