package com.gyf.immersionbar;

/* JADX INFO: loaded from: classes.dex */
public enum NavigationBarType {
    CLASSIC(0),
    GESTURES(1),
    GESTURES_THREE_STAGE(2),
    DOUBLE(3),
    UNKNOWN(-1);

    private final int type;

    NavigationBarType(int i11) {
        this.type = i11;
    }

    public int getType() {
        return this.type;
    }
}
