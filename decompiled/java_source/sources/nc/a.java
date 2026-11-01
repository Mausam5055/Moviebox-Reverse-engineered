package nc;

import com.google.firebase.messaging.l0;
import com.google.firebase.messaging.reporting.MessagingClientEvent;

/* JADX INFO: loaded from: classes5.dex */
public final class a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final a f70301b = new C0848a().a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final MessagingClientEvent f70302a;

    /* JADX INFO: renamed from: nc.a$a, reason: collision with other inner class name */
    public static final class C0848a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private MessagingClientEvent f70303a = null;

        C0848a() {
        }

        public a a() {
            return new a(this.f70303a);
        }

        public C0848a b(MessagingClientEvent messagingClientEvent) {
            this.f70303a = messagingClientEvent;
            return this;
        }
    }

    a(MessagingClientEvent messagingClientEvent) {
        this.f70302a = messagingClientEvent;
    }

    public static C0848a b() {
        return new C0848a();
    }

    public MessagingClientEvent a() {
        return this.f70302a;
    }

    public byte[] c() {
        return l0.a(this);
    }
}
