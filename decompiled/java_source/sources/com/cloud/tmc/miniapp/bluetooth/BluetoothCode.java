package com.cloud.tmc.miniapp.bluetooth;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public enum BluetoothCode {
    FAIL(-1, "fail"),
    OK(0, "ok"),
    NOT_INIT(10000, "not init adapter"),
    NOT_AVALIABLE(10001, "not available bluetooth"),
    NO_DEVICE(10002, "no device"),
    CONNECTION_FAIL(10003, "connection fail"),
    ALREADY_CONNECION(10004, "already connected"),
    N0_CHARACTERISTIC(10005, "no characteristic"),
    N0_CHARACTERISTIC_DESCRIPTOR(10006, "no characteristic's descriptor"),
    NO_POSITION_FUNCTION(10007, "needs to open the positioning function"),
    SYSTEM_ERROR(10008, "system error"),
    INVALID_DATA(10013, "invalid_data"),
    NOT_PERMISSION(10014, "no permission"),
    ALREADY_INIT(10015, "already_init");

    private long code;
    private String descript;

    BluetoothCode(long j11, String str) {
        this.code = j11;
        this.descript = str;
    }

    /* synthetic */ BluetoothCode(long j11, String str, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? 0L : j11, (i11 & 2) != 0 ? "" : str);
    }

    public final long getCode() {
        return this.code;
    }

    public final String getDescript() {
        return this.descript;
    }

    public final void setCode(long j11) {
        this.code = j11;
    }

    public final void setDescript(String str) {
        Intrinsics.h(str, "<set-?>");
        this.descript = str;
    }
}
