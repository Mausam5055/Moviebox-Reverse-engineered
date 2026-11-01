package com.bykv.vk.openvk.preload.b;

/* JADX INFO: loaded from: classes2.dex */
final class m<IN> implements b<IN> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private b<IN> f20566a;

    public m(b<IN> bVar) {
        this.f20566a = bVar;
    }

    @Override // com.bykv.vk.openvk.preload.b.b
    public final <I> I a(Class<? extends d<I, ?>> cls) {
        return (I) this.f20566a.a((Class) cls);
    }

    @Override // com.bykv.vk.openvk.preload.b.b
    public final Object a(IN in2) throws Exception {
        throw new UnsupportedOperationException();
    }

    @Override // com.bykv.vk.openvk.preload.b.b
    public final <O> O b(Class<? extends d<?, O>> cls) {
        return (O) this.f20566a.b(cls);
    }
}
