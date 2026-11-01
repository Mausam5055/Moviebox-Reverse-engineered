package com.google.zxing.oned.rss.expanded.decoders;

import com.google.zxing.NotFoundException;

/* JADX INFO: loaded from: classes4.dex */
final class d extends h {
    d(id.a aVar) {
        super(aVar);
    }

    @Override // com.google.zxing.oned.rss.expanded.decoders.j
    public String d() throws NotFoundException {
        if (c().m() < 48) {
            throw NotFoundException.getNotFoundInstance();
        }
        StringBuilder sb2 = new StringBuilder();
        f(sb2, 8);
        int iF = b().f(48, 2);
        sb2.append("(393");
        sb2.append(iF);
        sb2.append(')');
        int iF2 = b().f(50, 10);
        if (iF2 / 100 == 0) {
            sb2.append('0');
        }
        if (iF2 / 10 == 0) {
            sb2.append('0');
        }
        sb2.append(iF2);
        sb2.append(b().c(60, null).b());
        return sb2.toString();
    }
}
