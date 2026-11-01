package com.google.zxing.oned.rss.expanded.decoders;

import com.google.zxing.NotFoundException;

/* JADX INFO: loaded from: classes4.dex */
abstract class f extends i {
    f(id.a aVar) {
        super(aVar);
    }

    @Override // com.google.zxing.oned.rss.expanded.decoders.j
    public String d() throws NotFoundException {
        if (c().m() != 60) {
            throw NotFoundException.getNotFoundInstance();
        }
        StringBuilder sb2 = new StringBuilder();
        f(sb2, 5);
        j(sb2, 45, 15);
        return sb2.toString();
    }
}
