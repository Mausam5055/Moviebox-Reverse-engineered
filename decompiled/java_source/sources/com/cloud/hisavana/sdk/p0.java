package com.cloud.hisavana.sdk;

import android.util.Base64;
import android.util.Log;
import com.cloud.hisavana.sdk.sign.SignAlgorithm;
import java.nio.charset.StandardCharsets;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes3.dex */
public class p0 extends f2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f22825a;

    public p0(String str) {
        this.f22825a = str;
    }

    @Override // com.cloud.hisavana.sdk.f2
    public String a(SignAlgorithm signAlgorithm, String str) {
        try {
            Mac mac = Mac.getInstance(signAlgorithm.name());
            mac.init(new SecretKeySpec(Base64.decode(this.f22825a, 2), signAlgorithm.name()));
            return Base64.encodeToString(mac.doFinal(str.getBytes(StandardCharsets.UTF_8)), 2);
        } catch (Exception e11) {
            e4.b().e(Log.getStackTraceString(e11));
            return "";
        }
    }
}
