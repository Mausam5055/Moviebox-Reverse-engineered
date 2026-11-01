package com.bykv.vk.openvk.preload.b;

/* JADX INFO: loaded from: classes2.dex */
public abstract class k<IN, OUT> extends d<IN, OUT> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private IN f20561d;

    private Object a(b<OUT> bVar, Throwable th2) throws Throwable {
        while (a(th2)) {
            try {
                return bVar.a(a());
            } catch (i.a e11) {
                th2 = e11.getCause();
            }
        }
        throw th2;
    }

    protected OUT a() {
        return this.f20561d;
    }

    @Override // com.bykv.vk.openvk.preload.b.d
    public final Object a(b<OUT> bVar, IN in2) throws Throwable {
        this.f20561d = in2;
        try {
            return bVar.a(a());
        } catch (i.a e11) {
            return a((b) bVar, e11.getCause());
        } catch (Throwable th2) {
            return a((b) bVar, th2);
        }
    }

    protected abstract boolean a(Throwable th2);

    protected final IN g() {
        return this.f20561d;
    }
}
