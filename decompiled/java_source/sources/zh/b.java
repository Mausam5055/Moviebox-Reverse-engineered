package zh;

import android.app.Application;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.tn.tranpay.device.TNDeviceHelper;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class b implements ServiceConnection {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final a f79423c = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f79424a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f79425b;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void a(Context context, Intent intent) {
            Intrinsics.h(context, "context");
            Intrinsics.h(intent, "intent");
            new b(context, intent, null);
        }
    }

    private b(Context context, Intent intent) {
        String TAG = b.class.getSimpleName();
        this.f79424a = TAG;
        if (context instanceof Application) {
            this.f79425b = context;
        } else {
            this.f79425b = context.getApplicationContext();
        }
        try {
            if (context.bindService(intent, this, 1)) {
                return;
            }
            ai.a aVar = ai.a.f619a;
            Intrinsics.g(TAG, "TAG");
            aVar.b("Service binding failed", TAG);
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    public /* synthetic */ b(Context context, Intent intent, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, intent);
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName name, IBinder service) {
        Intrinsics.h(name, "name");
        Intrinsics.h(service, "service");
        try {
            try {
                try {
                    String oaid = zh.a.AbstractBinderC0977a.Y0(service).getId();
                    TNDeviceHelper tNDeviceHelper = TNDeviceHelper.f41530a;
                    Intrinsics.g(oaid, "oaid");
                    tNDeviceHelper.h(oaid);
                    String TAG = this.f79424a;
                    Intrinsics.g(TAG, "TAG");
                    ai.a.f619a.b("onServiceConnected oaid=" + oaid, TAG);
                    Context context = this.f79425b;
                    if (context != null) {
                        context.unbindService(this);
                    }
                } catch (Exception e11) {
                    e11.printStackTrace();
                    Context context2 = this.f79425b;
                    if (context2 != null) {
                        context2.unbindService(this);
                    }
                }
            } catch (Throwable th2) {
                try {
                    Context context3 = this.f79425b;
                    if (context3 != null) {
                        context3.unbindService(this);
                    }
                } catch (Exception e12) {
                    e12.printStackTrace();
                }
                throw th2;
            }
        } catch (Exception e13) {
            e13.printStackTrace();
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName name) {
        Intrinsics.h(name, "name");
    }
}
