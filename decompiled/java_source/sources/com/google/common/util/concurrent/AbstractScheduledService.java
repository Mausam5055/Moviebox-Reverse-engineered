package com.google.common.util.concurrent;

import java.util.concurrent.locks.ReentrantLock;
import java.util.logging.Level;

/* JADX INFO: loaded from: classes4.dex */
public abstract class AbstractScheduledService {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final q f30994a = new q(AbstractScheduledService.class);

    private final class ServiceDelegate extends b {

        class Task implements Runnable {
            final /* synthetic */ ServiceDelegate this$1;

            Task(ServiceDelegate serviceDelegate) {
            }

            @Override // java.lang.Runnable
            public void run() {
                ServiceDelegate.c(null).lock();
                try {
                    ServiceDelegate.d(null);
                    throw null;
                } catch (Throwable th2) {
                    try {
                        w.b(th2);
                        try {
                            throw null;
                        } catch (Exception e11) {
                            w.b(e11);
                            AbstractScheduledService.f30994a.a().log(Level.WARNING, "Error while attempting to shut down the service after failure.", (Throwable) e11);
                            throw null;
                        }
                    } catch (Throwable th3) {
                        ServiceDelegate.c(null).unlock();
                        throw th3;
                    }
                }
            }
        }

        static /* synthetic */ ReentrantLock c(ServiceDelegate serviceDelegate) {
            throw null;
        }

        static /* synthetic */ a d(ServiceDelegate serviceDelegate) {
            throw null;
        }
    }

    interface a {
    }
}
