package com.tn.lib.thread;

import android.os.MessageQueue;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes4.dex */
public interface a extends MessageQueue.IdleHandler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final C0587a f40865a = C0587a.f40866a;

    /* JADX INFO: renamed from: com.tn.lib.thread.a$a, reason: collision with other inner class name */
    public static final class C0587a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ C0587a f40866a = new C0587a();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final List f40867b = new CopyOnWriteArrayList();

        private C0587a() {
        }

        public final List a() {
            return f40867b;
        }
    }
}
