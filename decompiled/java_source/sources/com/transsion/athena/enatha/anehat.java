package com.transsion.athena.enatha;

import android.content.Context;
import android.os.Handler;
import android.text.TextUtils;
import com.transsion.athena.data.TrackData;
import com.transsion.ga.AthenaAnalytics;

/* JADX INFO: loaded from: classes5.dex */
public class anehat implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Handler f42720a;

    public anehat(Handler handler) {
        this.f42720a = handler;
    }

    @Override // java.lang.Runnable
    public void run() {
        String strA;
        boolean z10;
        Context contextJ = AthenaAnalytics.J();
        k4.a aVarA = k4.a.a(contextJ);
        String strI = aVarA.i("athena_id");
        try {
            strA = com.transsion.athena.taaneh.athena.a(contextJ).a();
        } catch (Exception e11) {
            com.transsion.athena.taaneh.aethna.a("%s", e11.getMessage());
            strA = null;
        }
        if (!TextUtils.isEmpty(strA) && !TextUtils.equals(strI, strA)) {
            aVarA.g("athena_id", strA);
            if (!TextUtils.isEmpty(strI)) {
                try {
                    if (com.transsion.athena.taaneh.anehat.a(contextJ, "android.permission.READ_PHONE_STATE") || com.transsion.athena.taaneh.anehat.a(contextJ, "android.permission.READ_PRIVILEGED_PHONE_STATE")) {
                        z10 = AthenaAnalytics.S() ? true : !com.transsion.athena.taaneh.anehat.c(contextJ);
                    } else {
                        z10 = false;
                    }
                } catch (Exception unused) {
                }
                if (z10) {
                    if (TextUtils.isEmpty(com.transsion.athena.taaneh.athena.c())) {
                        AthenaAnalytics.K(9999).g0("data_discard", new TrackData().add("en", "device_id_transfer", 2).add("cnt", 1, 1), 9999);
                    } else {
                        AthenaAnalytics.K(9999).g0("device_id_transfer", new TrackData().add("pre_gaid", strI).add("sn", com.transsion.athena.taaneh.athena.c()), 9999);
                    }
                }
            }
            strI = strA;
        }
        if (!TextUtils.isEmpty(strI)) {
            com.transsion.athena.taaneh.anehat.b(strI);
        }
        if (!((TextUtils.isEmpty(strI) && TextUtils.isEmpty(com.transsion.athena.taaneh.athena.a(contextJ, 0))) ? false : true)) {
            com.transsion.athena.taaneh.aethna.a("%s", "device gaid and iid are null");
        }
        this.f42720a.postDelayed(this, 7200000L);
    }
}
