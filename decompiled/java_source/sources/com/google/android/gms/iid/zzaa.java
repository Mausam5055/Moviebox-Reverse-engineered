package com.google.android.gms.iid;

/* JADX INFO: loaded from: classes3.dex */
public final class zzaa extends Exception {
    private final int errorCode;

    public zzaa(int i11, String str) {
        super(str);
        this.errorCode = i11;
    }

    public final int getErrorCode() {
        return this.errorCode;
    }
}
