package com.google.android.gms.measurement.internal;

import android.os.Process;
import com.google.android.gms.common.internal.Preconditions;
import java.util.concurrent.BlockingQueue;

/* JADX INFO: loaded from: classes4.dex */
final class zzhz extends Thread {
    private final Object zza;
    private final BlockingQueue<zzhw<?>> zzb;
    private boolean zzc = false;
    private final /* synthetic */ zzhv zzd;

    public zzhz(zzhv zzhvVar, String str, BlockingQueue<zzhw<?>> blockingQueue) {
        this.zzd = zzhvVar;
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(blockingQueue);
        this.zza = new Object();
        this.zzb = blockingQueue;
        setName(str);
    }

    private final void zza(InterruptedException interruptedException) {
        this.zzd.zzj().zzu().zza(getName() + " was interrupted", interruptedException);
    }

    private final void zzb() {
        synchronized (this.zzd.zzh) {
            try {
                if (!this.zzc) {
                    this.zzd.zzi.release();
                    this.zzd.zzh.notifyAll();
                    if (this == this.zzd.zzb) {
                        this.zzd.zzb = null;
                    } else if (this == this.zzd.zzc) {
                        this.zzd.zzc = null;
                    } else {
                        this.zzd.zzj().zzg().zza("Current scheduler thread is neither worker nor network");
                    }
                    this.zzc = true;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        boolean z10 = false;
        while (!z10) {
            try {
                this.zzd.zzi.acquire();
                z10 = true;
            } catch (InterruptedException e11) {
                zza(e11);
            }
        }
        try {
            int threadPriority = Process.getThreadPriority(Process.myTid());
            while (true) {
                zzhw<?> zzhwVarPoll = this.zzb.poll();
                if (zzhwVarPoll != null) {
                    Process.setThreadPriority(zzhwVarPoll.zza ? threadPriority : 10);
                    zzhwVarPoll.run();
                } else {
                    synchronized (this.zza) {
                        if (this.zzb.peek() == null && !this.zzd.zzj) {
                            try {
                                this.zza.wait(30000L);
                            } catch (InterruptedException e12) {
                                zza(e12);
                            }
                        }
                    }
                    synchronized (this.zzd.zzh) {
                        if (this.zzb.peek() == null) {
                            zzb();
                            zzb();
                            return;
                        }
                    }
                }
            }
        } catch (Throwable th2) {
            zzb();
            throw th2;
        }
    }

    public final void zza() {
        synchronized (this.zza) {
            this.zza.notifyAll();
        }
    }
}
