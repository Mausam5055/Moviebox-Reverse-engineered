package com.google.android.gms.maps.model;

/* JADX INFO: loaded from: classes4.dex */
public final class Gap extends PatternItem {
    public final float length;

    public Gap(float f11) {
        super(2, Float.valueOf(Math.max(f11, 0.0f)));
        this.length = Math.max(f11, 0.0f);
    }

    @Override // com.google.android.gms.maps.model.PatternItem
    public final String toString() {
        float f11 = this.length;
        StringBuilder sb2 = new StringBuilder(29);
        sb2.append("[Gap: length=");
        sb2.append(f11);
        sb2.append("]");
        return sb2.toString();
    }
}
