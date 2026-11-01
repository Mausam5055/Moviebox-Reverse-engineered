package a9;

import android.content.Context;

/* JADX INFO: loaded from: classes3.dex */
public final class h implements u8.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final uz.a f405a;

    public h(uz.a aVar) {
        this.f405a = aVar;
    }

    public static h a(uz.a aVar) {
        return new h(aVar);
    }

    public static String c(Context context) {
        return (String) u8.d.d(f.b(context));
    }

    @Override // uz.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public String get() {
        return c((Context) this.f405a.get());
    }
}
