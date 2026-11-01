package com.amazonaws.mobileconnectors.s3.transferutility;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.amazonaws.event.ProgressEvent;
import com.amazonaws.event.ProgressListener;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import java.io.File;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes2.dex */
class TransferStatusUpdater {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Log f18512c = LogFactory.b(TransferStatusUpdater.class);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final HashSet f18513d = new HashSet(Arrays.asList(TransferState.PART_COMPLETED, TransferState.PENDING_CANCEL, TransferState.PENDING_PAUSE, TransferState.PENDING_NETWORK_DISCONNECT));

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    static final Map f18514e = new ConcurrentHashMap<Integer, List<TransferListener>>() { // from class: com.amazonaws.mobileconnectors.s3.transferutility.TransferStatusUpdater.1
    };

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static TransferDBUtil f18515f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static TransferStatusUpdater f18516g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map f18517a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Handler f18518b;

    private class TransferProgressListener implements ProgressListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final TransferRecord f18519a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private long f18520b;

        public TransferProgressListener(TransferRecord transferRecord) {
            this.f18519a = transferRecord;
        }

        @Override // com.amazonaws.event.ProgressListener
        public synchronized void a(ProgressEvent progressEvent) {
            try {
                if (32 == progressEvent.b()) {
                    TransferStatusUpdater.f18512c.d("Reset Event triggered. Resetting the bytesCurrent to 0.");
                    this.f18520b = 0L;
                } else {
                    long jA = this.f18520b + progressEvent.a();
                    this.f18520b = jA;
                    TransferRecord transferRecord = this.f18519a;
                    if (jA > transferRecord.f18489i) {
                        transferRecord.f18489i = jA;
                        TransferStatusUpdater.this.k(transferRecord.f18481a, jA, transferRecord.f18488h, true);
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    TransferStatusUpdater(TransferDBUtil transferDBUtil) {
        f18515f = transferDBUtil;
        this.f18518b = new Handler(Looper.getMainLooper());
        this.f18517a = new ConcurrentHashMap();
    }

    public static synchronized TransferStatusUpdater c(Context context) {
        try {
            if (f18516g == null) {
                TransferDBUtil transferDBUtil = new TransferDBUtil(context);
                f18515f = transferDBUtil;
                f18516g = new TransferStatusUpdater(transferDBUtil);
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return f18516g;
    }

    static void g(int i11, TransferListener transferListener) {
        if (transferListener == null) {
            throw new IllegalArgumentException("Listener can't be null");
        }
        Map map = f18514e;
        synchronized (map) {
            try {
                List list = (List) map.get(Integer.valueOf(i11));
                if (list == null) {
                    CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList();
                    copyOnWriteArrayList.add(transferListener);
                    map.put(Integer.valueOf(i11), copyOnWriteArrayList);
                } else if (!list.contains(transferListener)) {
                    list.add(transferListener);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    static void j(int i11, TransferListener transferListener) {
        if (transferListener == null) {
            throw new IllegalArgumentException("Listener can't be null");
        }
        Map map = f18514e;
        synchronized (map) {
            try {
                List list = (List) map.get(Integer.valueOf(i11));
                if (list != null && !list.isEmpty()) {
                    list.remove(transferListener);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    synchronized void b(TransferRecord transferRecord) {
        this.f18517a.put(Integer.valueOf(transferRecord.f18481a), transferRecord);
    }

    synchronized TransferRecord d(int i11) {
        return (TransferRecord) this.f18517a.get(Integer.valueOf(i11));
    }

    synchronized Map e() {
        return Collections.unmodifiableMap(this.f18517a);
    }

    synchronized ProgressListener f(int i11) {
        TransferRecord transferRecordD;
        transferRecordD = d(i11);
        if (transferRecordD == null) {
            f18512c.d("TransferStatusUpdater doesn't track the transfer: " + i11);
            throw new IllegalArgumentException("transfer " + i11 + " doesn't exist");
        }
        f18512c.d("Creating a new progress listener for transfer: " + i11);
        return new TransferProgressListener(transferRecordD);
    }

    synchronized void h(int i11) {
        try {
            TransferRecord transferRecordJ = f18515f.j(i11);
            if (transferRecordJ != null) {
                String str = transferRecordJ.f18499s;
                if (new File(str).getName().startsWith("aws-s3-d861b25a-1edf-11eb-adc1-0242ac120002")) {
                    new File(str).delete();
                }
            }
            S3ClientReference.c(Integer.valueOf(i11));
            f18515f.c(i11);
        } catch (Throwable th2) {
            throw th2;
        }
    }

    void i(final int i11, final Exception exc) {
        Map map = f18514e;
        synchronized (map) {
            try {
                List<TransferListener> list = (List) map.get(Integer.valueOf(i11));
                if (list != null && !list.isEmpty()) {
                    for (final TransferListener transferListener : list) {
                        this.f18518b.post(new Runnable() { // from class: com.amazonaws.mobileconnectors.s3.transferutility.TransferStatusUpdater.4
                            @Override // java.lang.Runnable
                            public void run() {
                                transferListener.c(i11, exc);
                            }
                        });
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    synchronized void k(final int i11, final long j11, final long j12, boolean z10) {
        try {
            TransferRecord transferRecord = (TransferRecord) this.f18517a.get(Integer.valueOf(i11));
            if (transferRecord != null) {
                transferRecord.f18489i = j11;
                transferRecord.f18488h = j12;
            }
            f18515f.p(i11, j11);
            if (z10) {
                Map map = f18514e;
                synchronized (map) {
                    try {
                        List list = (List) map.get(Integer.valueOf(i11));
                        if (list != null && !list.isEmpty()) {
                            for (Iterator it = list.iterator(); it.hasNext(); it = it) {
                                final TransferListener transferListener = (TransferListener) it.next();
                                this.f18518b.post(new Runnable() { // from class: com.amazonaws.mobileconnectors.s3.transferutility.TransferStatusUpdater.3
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        transferListener.b(i11, j11, j12);
                                    }
                                });
                            }
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
        } catch (Throwable th3) {
            throw th3;
        }
    }

    synchronized void l(final int i11, final TransferState transferState) {
        try {
            boolean zContains = f18513d.contains(transferState);
            TransferRecord transferRecord = (TransferRecord) this.f18517a.get(Integer.valueOf(i11));
            if (transferRecord != null) {
                zContains |= transferState.equals(transferRecord.f18495o);
                transferRecord.f18495o = transferState;
                if (f18515f.t(transferRecord) == 0) {
                    f18512c.j("Failed to update the status of transfer " + i11);
                }
            } else if (f18515f.s(i11, transferState) == 0) {
                f18512c.j("Failed to update the status of transfer " + i11);
            }
            if (zContains) {
                return;
            }
            if (TransferState.COMPLETED.equals(transferState)) {
                h(i11);
            }
            Map map = f18514e;
            synchronized (map) {
                try {
                    List<TransferListener> list = (List) map.get(Integer.valueOf(i11));
                    if (list != null && !list.isEmpty()) {
                        for (final TransferListener transferListener : list) {
                            this.f18518b.post(new Runnable() { // from class: com.amazonaws.mobileconnectors.s3.transferutility.TransferStatusUpdater.2
                                @Override // java.lang.Runnable
                                public void run() {
                                    transferListener.a(i11, transferState);
                                }
                            });
                        }
                        if (TransferState.COMPLETED.equals(transferState) || TransferState.FAILED.equals(transferState) || TransferState.CANCELED.equals(transferState)) {
                            list.clear();
                        }
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        } catch (Throwable th3) {
            throw th3;
        }
    }
}
