package com.google.android.exoplayer2.upstream;

import java.io.IOException;

/* JADX INFO: loaded from: classes3.dex */
public abstract class m {
    public static void a(k kVar) {
        if (kVar != null) {
            try {
                kVar.close();
            } catch (IOException unused) {
            }
        }
    }
}
