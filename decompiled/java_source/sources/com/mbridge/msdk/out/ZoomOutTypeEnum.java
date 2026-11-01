package com.mbridge.msdk.out;

/* JADX INFO: loaded from: classes5.dex */
public enum ZoomOutTypeEnum {
    FloatBall(1),
    BigView(4),
    MediumView(3),
    SmallView(2);

    private int index;

    ZoomOutTypeEnum(int i11) {
        this.index = i11;
    }

    public int getIndex() {
        return this.index;
    }
}
