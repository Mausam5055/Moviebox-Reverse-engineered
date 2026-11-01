package com.vungle.ads.internal.network.converters;

import kotlin.Unit;
import kotlin.io.CloseableKt;
import okhttp3.ResponseBody;

/* JADX INFO: loaded from: classes7.dex */
public final class b implements a {
    @Override // com.vungle.ads.internal.network.converters.a
    public Void convert(ResponseBody responseBody) {
        if (responseBody != null) {
            try {
                responseBody.close();
                Unit unit = Unit.f67061a;
                CloseableKt.a(responseBody, null);
            } catch (Throwable th2) {
                try {
                    throw th2;
                } catch (Throwable th3) {
                    CloseableKt.a(responseBody, th2);
                    throw th3;
                }
            }
        }
        return null;
    }
}
