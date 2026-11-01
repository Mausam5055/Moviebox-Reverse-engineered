package com.amazonaws.mobileconnectors.s3.transferutility;

import android.app.Notification;
import android.app.Service;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.os.IBinder;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class TransferService extends Service {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Log f18507d = LogFactory.b(TransferService.class);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    static TransferNetworkLossHandler f18508e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    boolean f18509a = true;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f18510b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f18511c = true;

    @Override // android.app.Service
    protected void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        if ((getApplicationInfo().flags & 2) == 0) {
            return;
        }
        printWriter.printf("network status: %s\n", Boolean.valueOf(f18508e.e()));
        Map mapE = TransferStatusUpdater.c(this).e();
        printWriter.printf("# of active transfers: %d\n", Integer.valueOf(mapE.size()));
        for (TransferRecord transferRecord : mapE.values()) {
            printWriter.printf("bucket: %s, key: %s, status: %s, total size: %d, current: %d\n", transferRecord.f18496p, transferRecord.f18497q, transferRecord.f18495o, Long.valueOf(transferRecord.f18488h), Long.valueOf(transferRecord.f18489i));
        }
        printWriter.flush();
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        throw new UnsupportedOperationException("Can't bind to TransferService");
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        Log log = f18507d;
        log.d("Starting Transfer Service to listen for network connectivity changes.");
        f18508e = TransferNetworkLossHandler.d(getApplicationContext());
        synchronized (this) {
            if (this.f18509a) {
                try {
                    log.d("Registering the network receiver");
                    registerReceiver(f18508e, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
                    this.f18509a = false;
                } catch (IllegalArgumentException unused) {
                    f18507d.j("Ignoring the exception trying to register the receiver for connectivity change.");
                } catch (IllegalStateException unused2) {
                    f18507d.j("Ignoring the leak in registering the receiver.");
                }
            }
        }
    }

    @Override // android.app.Service
    public void onDestroy() {
        try {
            try {
                if (Build.VERSION.SDK_INT >= 26) {
                    f18507d.d("Moving the service out of the Foreground state.");
                    synchronized (this) {
                        stopForeground(this.f18511c);
                    }
                    super.onDestroy();
                }
                f18507d.d("De-registering the network receiver.");
                synchronized (this) {
                    try {
                        if (!this.f18509a) {
                            unregisterReceiver(f18508e);
                            this.f18509a = true;
                            f18508e = null;
                        }
                        super.onDestroy();
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            } catch (IllegalArgumentException unused) {
                f18507d.j("Exception trying to de-register the network receiver");
            }
        } catch (Exception e11) {
            f18507d.f("Error in moving the service out of the foreground state: " + e11);
        }
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i11, int i12) {
        if (Build.VERSION.SDK_INT >= 26) {
            try {
                synchronized (this) {
                    try {
                        Notification notification = (Notification) intent.getParcelableExtra("notification");
                        if (notification != null) {
                            this.f18510b = intent.getIntExtra("ongoing-notification-id", this.f18510b);
                            this.f18511c = intent.getBooleanExtra("remove-notification", this.f18511c);
                            f18507d.d("Putting the service in Foreground state.");
                            startForeground(this.f18510b, notification);
                        } else {
                            f18507d.f("No notification is passed in the intent. Unable to transition to foreground.");
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            } catch (Exception e11) {
                f18507d.f("Error in moving the service to foreground state: " + e11);
            }
            return 1;
        }
        synchronized (this) {
            if (this.f18509a) {
                try {
                    try {
                        f18507d.d("Registering the network receiver");
                        registerReceiver(f18508e, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
                        this.f18509a = false;
                    } catch (IllegalStateException unused) {
                        f18507d.j("Ignoring the leak in registering the receiver.");
                    }
                } catch (IllegalArgumentException unused2) {
                    f18507d.j("Ignoring the exception trying to register the receiver for connectivity change.");
                }
            }
            return 1;
        }
    }
}
