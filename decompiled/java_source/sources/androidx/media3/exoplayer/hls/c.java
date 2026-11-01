package androidx.media3.exoplayer.hls;

/* JADX INFO: loaded from: classes2.dex */
public final class c implements f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final androidx.media3.datasource.a.InterfaceC0091a f11700a;

    public c(androidx.media3.datasource.a.InterfaceC0091a interfaceC0091a) {
        this.f11700a = interfaceC0091a;
    }

    @Override // androidx.media3.exoplayer.hls.f
    public androidx.media3.datasource.a a(int i11) {
        return this.f11700a.createDataSource();
    }
}
