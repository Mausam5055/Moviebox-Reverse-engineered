package com.bytedance.adsdk.sP.HiB;

import android.util.JsonReader;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public class TzV implements Ei<Integer> {
    public static final TzV Sj = new TzV();

    private TzV() {
    }

    @Override // com.bytedance.adsdk.sP.HiB.Ei
    /* JADX INFO: renamed from: Sj, reason: merged with bridge method [inline-methods] */
    public Integer sP(JsonReader jsonReader, float f11) throws IOException {
        return Integer.valueOf(Math.round(RiZ.sP(jsonReader) * f11));
    }
}
