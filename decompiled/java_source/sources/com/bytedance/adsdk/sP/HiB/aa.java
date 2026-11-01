package com.bytedance.adsdk.sP.HiB;

import android.util.JsonReader;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public class aa implements Ei<Float> {
    public static final aa Sj = new aa();

    private aa() {
    }

    @Override // com.bytedance.adsdk.sP.HiB.Ei
    /* JADX INFO: renamed from: Sj, reason: merged with bridge method [inline-methods] */
    public Float sP(JsonReader jsonReader, float f11) throws IOException {
        return Float.valueOf(RiZ.sP(jsonReader) * f11);
    }
}
