package com.google.android.libraries.places.internal;

import com.android.volley.i;
import com.android.volley.toolbox.j;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
final class zzez extends j {
    final /* synthetic */ Map zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzez(zzfa zzfaVar, int i11, String str, JSONObject jSONObject, i.b bVar, i.a aVar, Map map) {
        super(0, str, null, bVar, aVar);
        this.zza = map;
    }

    @Override // com.android.volley.Request
    public final Map getHeaders() {
        return this.zza;
    }
}
