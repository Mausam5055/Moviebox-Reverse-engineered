package com.vungle.ads;

import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public class b {
    public static final int AUTO_ROTATE = 2;
    public static final a Companion = new a(null);
    public static final int IMMEDIATE_BACK = 2;
    public static final int LANDSCAPE = 1;
    public static final int PORTRAIT = 0;
    private static final String WATERMARK = "WATERMARK";
    private int settings;
    private Map<String, String> extras = new LinkedHashMap();
    private int adOrientation = 2;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public static /* synthetic */ void getAdOrientation$annotations() {
    }

    public final int getAdOrientation() {
        return this.adOrientation;
    }

    public final int getSettings() {
        return this.settings;
    }

    public final String getWatermark$vungle_ads_release() {
        return this.extras.get(WATERMARK);
    }

    public final void setAdOrientation(int i11) {
        this.adOrientation = i11;
    }

    public final void setBackButtonImmediatelyEnabled(boolean z10) {
        this.settings = z10 ? this.settings | 2 : this.settings & (-3);
    }

    public final void setWatermark(String watermark) {
        Intrinsics.h(watermark, "watermark");
        this.extras.put(WATERMARK, watermark);
    }
}
