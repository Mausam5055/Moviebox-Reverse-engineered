package com.mbridge.msdk.foundation.controller.authoritycontroller;

import android.text.TextUtils;

/* JADX INFO: loaded from: classes5.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected int f35015a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected int f35016b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected int f35017c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected int f35018d;

    protected void a(int i11) {
        this.f35015a = i11;
        this.f35016b = i11;
        this.f35017c = i11;
    }

    public void authDeviceIdStatus(int i11) {
        this.f35016b = i11;
    }

    public void authGenDataStatus(int i11) {
        this.f35015a = i11;
    }

    public void authOtherDataStatus(int i11) {
        this.f35018d = i11;
    }

    public void authSerialIdStatus(int i11) {
        this.f35017c = i11;
    }

    public int getAuthDeviceIdStatus() {
        return this.f35016b;
    }

    public int getAuthGenDataStatus() {
        return this.f35015a;
    }

    public int getAuthSerialIdStatus() {
        return this.f35017c;
    }

    public int getOtherDataStatus() {
        return this.f35018d;
    }

    public int getStatusByKey(String str) {
        if (!TextUtils.isEmpty(str)) {
            str.hashCode();
            switch (str) {
                case "authority_serial_id":
                    return this.f35017c;
                case "authority_device_id":
                    return this.f35016b;
                case "authority_general_data":
                    return this.f35015a;
                case "authority_other":
                    return this.f35018d;
            }
        }
        return 1;
    }
}
