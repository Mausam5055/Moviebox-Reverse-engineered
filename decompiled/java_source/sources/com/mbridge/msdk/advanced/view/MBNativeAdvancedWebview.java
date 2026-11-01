package com.mbridge.msdk.advanced.view;

import android.content.Context;
import android.content.IntentFilter;
import com.iab.omid.library.mmadbridge.adsession.b;
import com.mbridge.msdk.advanced.common.NetWorkStateReceiver;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.mbsignalcommon.windvane.WindVaneWebView;

/* JADX INFO: loaded from: classes5.dex */
public class MBNativeAdvancedWebview extends WindVaneWebView {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final String f34253t = "MBNativeAdvancedWebview";

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private b f34254r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private NetWorkStateReceiver f34255s;

    public MBNativeAdvancedWebview(Context context) {
        super(context);
        setBackgroundColor(0);
    }

    public void finishAdSession() {
        try {
            b bVar = this.f34254r;
            if (bVar != null) {
                bVar.c();
                this.f34254r = null;
                o0.a("OMSDK", "finish adSession");
            }
        } catch (Exception e11) {
            o0.a("OMSDK", e11.getMessage());
        }
    }

    public b getAdSession() {
        return this.f34254r;
    }

    @Override // android.webkit.WebView, android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        registerNetWorkReceiver();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        unregisterNetWorkReceiver();
    }

    public void registerNetWorkReceiver() {
        try {
            if (this.f34255s == null) {
                this.f34255s = new NetWorkStateReceiver(this);
            }
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
            getContext().registerReceiver(this.f34255s, intentFilter);
        } catch (Throwable th2) {
            o0.a(f34253t, th2.getMessage());
        }
    }

    public void setAdSession(b bVar) {
        this.f34254r = bVar;
    }

    public void unregisterNetWorkReceiver() {
        try {
            NetWorkStateReceiver netWorkStateReceiver = this.f34255s;
            if (netWorkStateReceiver != null) {
                netWorkStateReceiver.a();
                getContext().unregisterReceiver(this.f34255s);
            }
        } catch (Throwable th2) {
            o0.a(f34253t, th2.getMessage());
        }
    }
}
