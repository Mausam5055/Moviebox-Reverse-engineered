package com.google.android.libraries.places.internal;

import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
final class zzkc extends LinkedHashMap {
    zzkc(int i11, float f11, boolean z10) {
        super(16, 0.75f, true);
    }

    @Override // java.util.LinkedHashMap
    protected final boolean removeEldestEntry(Map.Entry entry) {
        return size() > 10;
    }
}
