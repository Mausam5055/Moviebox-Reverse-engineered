package com.google.common.util.concurrent;

/* JADX INFO: loaded from: classes4.dex */
public abstract class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final ListenerCallQueue.a f31010a = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final ListenerCallQueue.a f31011b = new C0417b();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final ListenerCallQueue.a f31012c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final ListenerCallQueue.a f31013d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final ListenerCallQueue.a f31014e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final ListenerCallQueue.a f31015f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final ListenerCallQueue.a f31016g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final ListenerCallQueue.a f31017h;

    class a implements ListenerCallQueue.a {
        a() {
        }

        @Override // com.google.common.util.concurrent.ListenerCallQueue.a
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void call(x xVar) {
            xVar.b();
        }

        public String toString() {
            return "starting()";
        }
    }

    /* JADX INFO: renamed from: com.google.common.util.concurrent.b$b, reason: collision with other inner class name */
    class C0417b implements ListenerCallQueue.a {
        C0417b() {
        }

        @Override // com.google.common.util.concurrent.ListenerCallQueue.a
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void call(x xVar) {
            xVar.a();
        }

        public String toString() {
            return "running()";
        }
    }

    class c implements ListenerCallQueue.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Service$State f31018a;

        c(Service$State service$State) {
            this.f31018a = service$State;
        }

        @Override // com.google.common.util.concurrent.ListenerCallQueue.a
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void call(x xVar) {
            xVar.d(this.f31018a);
        }

        public String toString() {
            return "terminated({from = " + this.f31018a + "})";
        }
    }

    class d implements ListenerCallQueue.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Service$State f31019a;

        d(Service$State service$State) {
            this.f31019a = service$State;
        }

        @Override // com.google.common.util.concurrent.ListenerCallQueue.a
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void call(x xVar) {
            xVar.c(this.f31019a);
        }

        public String toString() {
            return "stopping({from = " + this.f31019a + "})";
        }
    }

    static {
        Service$State service$State = Service$State.STARTING;
        f31012c = a(service$State);
        Service$State service$State2 = Service$State.RUNNING;
        f31013d = a(service$State2);
        f31014e = b(Service$State.NEW);
        f31015f = b(service$State);
        f31016g = b(service$State2);
        f31017h = b(Service$State.STOPPING);
    }

    private static ListenerCallQueue.a a(Service$State service$State) {
        return new d(service$State);
    }

    private static ListenerCallQueue.a b(Service$State service$State) {
        return new c(service$State);
    }
}
