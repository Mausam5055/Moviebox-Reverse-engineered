package t8;

import android.content.Context;

/* JADX INFO: loaded from: classes4.dex */
public final class j implements u8.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final uz.a f76090a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final uz.a f76091b;

    public j(uz.a aVar, uz.a aVar2) {
        this.f76090a = aVar;
        this.f76091b = aVar2;
    }

    public static j a(uz.a aVar, uz.a aVar2) {
        return new j(aVar, aVar2);
    }

    public static i c(Context context, Object obj) {
        return new i(context, (g) obj);
    }

    @Override // uz.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public i get() {
        return c((Context) this.f76090a.get(), this.f76091b.get());
    }
}
