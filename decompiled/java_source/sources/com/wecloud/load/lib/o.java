package com.wecloud.load.lib;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class o {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final a f60865f = new a(null);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static volatile o f60866g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private volatile i f60867a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private volatile boolean f60868b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private volatile h f60869c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ServiceConnection f60870d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private SoDownloadRequest f60871e;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final o a() {
            o oVar = o.f60866g;
            if (oVar == null) {
                synchronized (this) {
                    oVar = o.f60866g;
                    if (oVar == null) {
                        oVar = new o(null);
                        o.f60866g = oVar;
                    }
                }
            }
            return oVar;
        }
    }

    public static final class b implements ServiceConnection {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Context f60873b;

        b(Context context) {
            this.f60873b = context;
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            o.this.f60867a = i.a.Y0(iBinder);
            o.this.f60868b = true;
            lg.a.C0828a.f(lg.a.f68839a, "SoLoadManager", "服务绑定成功", false, 4, null);
            SoDownloadRequest soDownloadRequest = o.this.f60871e;
            if (soDownloadRequest != null) {
                o oVar = o.this;
                oVar.f60871e = null;
                oVar.j(soDownloadRequest);
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            o.this.f60867a = null;
            o.this.f60868b = false;
            lg.a.C0828a.f(lg.a.f68839a, "SoLoadManager", "服务断开连接", false, 4, null);
            try {
                if (o.this.f60870d != null) {
                    Context context = this.f60873b;
                    ServiceConnection serviceConnection = o.this.f60870d;
                    Intrinsics.e(serviceConnection);
                    context.unbindService(serviceConnection);
                }
            } catch (Exception e11) {
                lg.a.C0828a.k(lg.a.f68839a, "SoLoadManager", "解绑服务异常: " + e11.getMessage(), e11, false, 8, null);
            }
            o.this.f60870d = null;
        }
    }

    private o() {
    }

    public /* synthetic */ o(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public final void i(Context context, h callback, SoDownloadRequest request) {
        Intrinsics.h(context, "context");
        Intrinsics.h(callback, "callback");
        Intrinsics.h(request, "request");
        this.f60869c = callback;
        this.f60871e = request;
        if (this.f60868b && this.f60867a != null) {
            this.f60871e = null;
            j(request);
            return;
        }
        Intent intent = new Intent();
        intent.setComponent(new ComponentName(context.getPackageName(), "com.wecloud.load.lib.SoLoadService"));
        this.f60870d = new b(context);
        try {
            context.startService(intent);
            lg.a.C0828a c0828a = lg.a.f68839a;
            lg.a.C0828a.f(c0828a, "SoLoadManager", "已启动 Service", false, 4, null);
            ServiceConnection serviceConnection = this.f60870d;
            if (serviceConnection == null) {
                lg.a.C0828a.l(c0828a, "SoLoadManager", "绑定服务失败：serviceConnection 已被并发清空", false, 4, null);
                this.f60871e = null;
            } else {
                if (context.bindService(intent, serviceConnection, 0)) {
                    return;
                }
                lg.a.C0828a.l(c0828a, "SoLoadManager", "绑定服务失败", false, 4, null);
                this.f60871e = null;
            }
        } catch (Exception e11) {
            lg.a.C0828a.k(lg.a.f68839a, "SoLoadManager", "启动 Service 失败: " + e11.getMessage(), e11, false, 8, null);
        }
    }

    public final boolean j(SoDownloadRequest request) {
        Intrinsics.h(request, "request");
        if (!this.f60868b || this.f60867a == null) {
            lg.a.C0828a.l(lg.a.f68839a, "SoLoadManager", "服务未绑定，无法加载SO", false, 4, null);
            return false;
        }
        if (this.f60869c == null) {
            lg.a.C0828a.l(lg.a.f68839a, "SoLoadManager", "回调接口为空", false, 4, null);
            return false;
        }
        try {
            i iVar = this.f60867a;
            if (iVar != null) {
                iVar.D(request, this.f60869c);
            }
            return true;
        } catch (RemoteException e11) {
            lg.a.C0828a.k(lg.a.f68839a, "SoLoadManager", "调用服务异常: " + e11.getMessage(), e11, false, 8, null);
            return false;
        }
    }

    public final void k(Context context) {
        ServiceConnection serviceConnection;
        Intrinsics.h(context, "context");
        if (!this.f60868b || (serviceConnection = this.f60870d) == null) {
            return;
        }
        try {
            Intrinsics.e(serviceConnection);
            context.unbindService(serviceConnection);
        } catch (Exception e11) {
            lg.a.C0828a.k(lg.a.f68839a, "SoLoadManager", "解绑服务异常: " + e11.getMessage(), e11, false, 8, null);
        }
        this.f60867a = null;
        this.f60868b = false;
        this.f60869c = null;
        this.f60870d = null;
        this.f60871e = null;
        Log.e("SoLoadManager", "解绑服务:");
    }
}
