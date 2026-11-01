package mb;

/* JADX INFO: loaded from: classes5.dex */
class z implements ic.b, ic.a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final ic.a.InterfaceC0789a f69504c = new ic.a.InterfaceC0789a() { // from class: mb.w
        @Override // ic.a.InterfaceC0789a
        public final void a(ic.b bVar) {
            z.f(bVar);
        }
    };

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final ic.b f69505d = new ic.b() { // from class: mb.x
        @Override // ic.b
        public final Object get() {
            return z.g();
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ic.a.InterfaceC0789a f69506a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private volatile ic.b f69507b;

    private z(ic.a.InterfaceC0789a interfaceC0789a, ic.b bVar) {
        this.f69506a = interfaceC0789a;
        this.f69507b = bVar;
    }

    static z e() {
        return new z(f69504c, f69505d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void f(ic.b bVar) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object g() {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void h(ic.a.InterfaceC0789a interfaceC0789a, ic.a.InterfaceC0789a interfaceC0789a2, ic.b bVar) {
        interfaceC0789a.a(bVar);
        interfaceC0789a2.a(bVar);
    }

    static z i(ic.b bVar) {
        return new z(null, bVar);
    }

    @Override // ic.a
    public void a(final ic.a.InterfaceC0789a interfaceC0789a) {
        ic.b bVar;
        ic.b bVar2;
        ic.b bVar3 = this.f69507b;
        ic.b bVar4 = f69505d;
        if (bVar3 != bVar4) {
            interfaceC0789a.a(bVar3);
            return;
        }
        synchronized (this) {
            bVar = this.f69507b;
            if (bVar != bVar4) {
                bVar2 = bVar;
            } else {
                final ic.a.InterfaceC0789a interfaceC0789a2 = this.f69506a;
                this.f69506a = new ic.a.InterfaceC0789a() { // from class: mb.y
                    @Override // ic.a.InterfaceC0789a
                    public final void a(ic.b bVar5) {
                        z.h(interfaceC0789a2, interfaceC0789a, bVar5);
                    }
                };
                bVar2 = null;
            }
        }
        if (bVar2 != null) {
            interfaceC0789a.a(bVar);
        }
    }

    @Override // ic.b
    public Object get() {
        return this.f69507b.get();
    }

    void j(ic.b bVar) {
        ic.a.InterfaceC0789a interfaceC0789a;
        if (this.f69507b != f69505d) {
            throw new IllegalStateException("provide() can be called only once.");
        }
        synchronized (this) {
            interfaceC0789a = this.f69506a;
            this.f69506a = null;
            this.f69507b = bVar;
        }
        interfaceC0789a.a(bVar);
    }
}
