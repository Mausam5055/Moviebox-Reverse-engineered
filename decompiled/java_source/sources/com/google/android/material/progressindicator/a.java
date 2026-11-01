package com.google.android.material.progressindicator;

import android.content.ContentResolver;
import android.provider.Settings;

/* JADX INFO: loaded from: classes4.dex */
public class a {
    public float a(ContentResolver contentResolver) {
        return Settings.Global.getFloat(contentResolver, "animator_duration_scale", 1.0f);
    }
}
