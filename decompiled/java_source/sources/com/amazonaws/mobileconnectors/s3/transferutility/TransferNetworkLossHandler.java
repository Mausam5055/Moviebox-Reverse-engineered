package com.amazonaws.mobileconnectors.s3.transferutility;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.services.s3.AmazonS3;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class TransferNetworkLossHandler extends BroadcastReceiver {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Log f18465d = LogFactory.b(TransferNetworkLossHandler.class);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static TransferNetworkLossHandler f18466e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final ConnectivityManager f18467a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private TransferDBUtil f18468b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    TransferStatusUpdater f18469c;

    private TransferNetworkLossHandler(Context context) {
        this.f18467a = (ConnectivityManager) context.getSystemService("connectivity");
        this.f18468b = new TransferDBUtil(context);
        this.f18469c = TransferStatusUpdater.c(context);
    }

    public static synchronized TransferNetworkLossHandler c() {
        TransferNetworkLossHandler transferNetworkLossHandler;
        transferNetworkLossHandler = f18466e;
        if (transferNetworkLossHandler == null) {
            f18465d.f("TransferNetworkLossHandler is not created. Please call `TransferNetworkLossHandler.getInstance(Context)` to instantiate it before retrieving");
            throw new TransferUtilityException("TransferNetworkLossHandler is not created. Please call `TransferNetworkLossHandler.getInstance(Context)` to instantiate it before retrieving");
        }
        return transferNetworkLossHandler;
    }

    public static synchronized TransferNetworkLossHandler d(Context context) {
        try {
            if (f18466e == null) {
                f18466e = new TransferNetworkLossHandler(context);
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return f18466e;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void f() {
        for (TransferRecord transferRecord : this.f18469c.e().values()) {
            AmazonS3 amazonS3A = S3ClientReference.a(Integer.valueOf(transferRecord.f18481a));
            if (amazonS3A != null && transferRecord.h(amazonS3A, this.f18469c, this.f18467a)) {
                this.f18469c.l(transferRecord.f18481a, TransferState.WAITING_FOR_NETWORK);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void g() {
        TransferRecord transferRecordD;
        int i11 = 0;
        synchronized (this) {
            TransferState[] transferStateArr = {TransferState.WAITING_FOR_NETWORK};
            f18465d.a("Loading transfers from database...");
            ArrayList<Integer> arrayList = new ArrayList();
            Cursor cursorO = null;
            try {
                cursorO = this.f18468b.o(TransferType.ANY, transferStateArr);
                while (cursorO.moveToNext()) {
                    int i12 = cursorO.getInt(cursorO.getColumnIndexOrThrow("_id"));
                    if (this.f18469c.d(i12) == null) {
                        TransferRecord transferRecord = new TransferRecord(i12);
                        transferRecord.j(cursorO);
                        this.f18469c.b(transferRecord);
                        i11++;
                    }
                    arrayList.add(Integer.valueOf(i12));
                }
                f18465d.a("Closing the cursor for resumeAllTransfers");
                cursorO.close();
                try {
                    for (Integer num : arrayList) {
                        AmazonS3 amazonS3A = S3ClientReference.a(num);
                        if (amazonS3A != null && (transferRecordD = this.f18469c.d(num.intValue())) != null && !transferRecordD.f()) {
                            transferRecordD.i(amazonS3A, this.f18468b, this.f18469c, this.f18467a);
                        }
                    }
                } catch (Exception e11) {
                    f18465d.f("Error in resuming the transfers." + e11.getMessage());
                }
                f18465d.a(i11 + " transfers are loaded from database.");
            } catch (Throwable th2) {
                if (cursorO != null) {
                    f18465d.a("Closing the cursor for resumeAllTransfers");
                    cursorO.close();
                }
                throw th2;
            }
        }
    }

    boolean e() {
        NetworkInfo activeNetworkInfo = this.f18467a.getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if ("android.net.conn.CONNECTIVITY_CHANGE".equals(intent.getAction())) {
            Log log = f18465d;
            log.d("Network connectivity changed detected.");
            log.d("Network connected: " + e());
            new Thread(new Runnable() { // from class: com.amazonaws.mobileconnectors.s3.transferutility.TransferNetworkLossHandler.1
                @Override // java.lang.Runnable
                public void run() {
                    if (TransferNetworkLossHandler.this.e()) {
                        TransferNetworkLossHandler.this.g();
                    } else {
                        TransferNetworkLossHandler.this.f();
                    }
                }
            }).start();
        }
    }
}
