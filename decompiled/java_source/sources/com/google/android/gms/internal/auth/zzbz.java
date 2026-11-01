package com.google.android.gms.internal.auth;

import android.util.Log;
import androidx.annotation.Nullable;
import com.google.android.gms.common.server.response.FastSafeParcelableJsonResponse;
import java.io.UnsupportedEncodingException;

/* JADX INFO: loaded from: classes3.dex */
public abstract class zzbz extends FastSafeParcelableJsonResponse {
    @Override // com.google.android.gms.common.server.response.FastSafeParcelableJsonResponse
    @Nullable
    public final byte[] toByteArray() {
        try {
            return toString().getBytes("UTF-8");
        } catch (UnsupportedEncodingException e11) {
            Log.e("AUTH", "Error serializing object.", e11);
            return null;
        }
    }
}
