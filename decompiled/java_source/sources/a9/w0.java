package a9;

import android.content.Context;

/* JADX INFO: loaded from: classes3.dex */
public final class w0 implements u8.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final uz.a f458a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final uz.a f459b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final uz.a f460c;

    public w0(uz.a aVar, uz.a aVar2, uz.a aVar3) {
        this.f458a = aVar;
        this.f459b = aVar2;
        this.f460c = aVar3;
    }

    public static w0 a(uz.a aVar, uz.a aVar2, uz.a aVar3) {
        return new w0(aVar, aVar2, aVar3);
    }

    public static v0 c(Context context, String str, int i11) {
        return new v0(context, str, i11);
    }

    @Override // uz.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public v0 get() {
        return c((Context) this.f458a.get(), (String) this.f459b.get(), ((Integer) this.f460c.get()).intValue());
    }
}
