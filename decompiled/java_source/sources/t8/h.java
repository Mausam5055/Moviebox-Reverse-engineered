package t8;

import android.content.Context;

/* JADX INFO: loaded from: classes4.dex */
public final class h implements u8.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final uz.a f76082a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final uz.a f76083b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final uz.a f76084c;

    public h(uz.a aVar, uz.a aVar2, uz.a aVar3) {
        this.f76082a = aVar;
        this.f76083b = aVar2;
        this.f76084c = aVar3;
    }

    public static h a(uz.a aVar, uz.a aVar2, uz.a aVar3) {
        return new h(aVar, aVar2, aVar3);
    }

    public static g c(Context context, c9.a aVar, c9.a aVar2) {
        return new g(context, aVar, aVar2);
    }

    @Override // uz.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public g get() {
        return c((Context) this.f76082a.get(), (c9.a) this.f76083b.get(), (c9.a) this.f76084c.get());
    }
}
