package com.google.firebase.crashlytics.internal.common;

/* JADX INFO: loaded from: classes.dex */
public enum DeliveryMechanism {
    DEVELOPER(1),
    USER_SIDELOAD(2),
    TEST_DISTRIBUTION(3),
    APP_STORE(4);


    /* JADX INFO: renamed from: id, reason: collision with root package name */
    private final int f31134id;

    DeliveryMechanism(int i11) {
        this.f31134id = i11;
    }

    public static DeliveryMechanism determineFrom(String str) {
        return str != null ? APP_STORE : DEVELOPER;
    }

    public int getId() {
        return this.f31134id;
    }

    @Override // java.lang.Enum
    public String toString() {
        return Integer.toString(this.f31134id);
    }
}
