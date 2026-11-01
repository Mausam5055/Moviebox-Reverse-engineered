package com.google.android.exoplayer2.offline;

import android.net.Uri;
import com.google.android.exoplayer2.upstream.b0;
import java.io.InputStream;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class d implements b0.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final b0.a f25584a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List f25585b;

    public d(b0.a aVar, List list) {
        this.f25584a = aVar;
        this.f25585b = list;
    }

    @Override // com.google.android.exoplayer2.upstream.b0.a
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public c parse(Uri uri, InputStream inputStream) {
        c cVar = (c) this.f25584a.parse(uri, inputStream);
        List list = this.f25585b;
        return (list == null || list.isEmpty()) ? cVar : (c) cVar.copy(this.f25585b);
    }
}
