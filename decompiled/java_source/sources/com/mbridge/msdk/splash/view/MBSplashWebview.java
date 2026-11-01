package com.mbridge.msdk.splash.view;

import android.content.Context;
import com.iab.omid.library.mmadbridge.adsession.b;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.mbsignalcommon.windvane.WindVaneWebView;

/* JADX INFO: loaded from: classes5.dex */
public class MBSplashWebview extends WindVaneWebView {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private String f37715r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private b f37716s;

    public MBSplashWebview(Context context) {
        super(context);
        setBackgroundColor(0);
    }

    public void finishAdSession() {
        try {
            b bVar = this.f37716s;
            if (bVar != null) {
                bVar.c();
                this.f37716s = null;
                o0.a("OMSDK", "finish adSession");
            }
        } catch (Exception e11) {
            o0.a("OMSDK", e11.getMessage());
        }
    }

    public b getAdSession() {
        return this.f37716s;
    }

    public String getRequestId() {
        return this.f37715r;
    }

    public void setAdSession(b bVar) {
        this.f37716s = bVar;
    }

    public void setRequestId(String str) {
        this.f37715r = str;
    }
}
