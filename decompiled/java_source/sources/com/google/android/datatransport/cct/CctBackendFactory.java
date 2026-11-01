package com.google.android.datatransport.cct;

import androidx.annotation.Keep;
import t8.f;
import t8.k;

/* JADX INFO: loaded from: classes.dex */
@Keep
public class CctBackendFactory implements t8.c {
    @Override // t8.c
    public k create(f fVar) {
        return new d(fVar.b(), fVar.e(), fVar.d());
    }
}
