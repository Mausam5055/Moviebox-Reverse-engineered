package oc;

import com.google.firebase.messaging.threads.ThreadPriority;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ThreadFactory;

/* JADX INFO: loaded from: classes5.dex */
public interface a {
    ExecutorService a(ThreadFactory threadFactory, ThreadPriority threadPriority);
}
