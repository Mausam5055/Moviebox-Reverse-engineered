package com.google.zxing.oned.rss.expanded.decoders;

/* JADX INFO: loaded from: classes4.dex */
final class b extends f {
    b(id.a aVar) {
        super(aVar);
    }

    @Override // com.google.zxing.oned.rss.expanded.decoders.i
    protected void h(StringBuilder sb2, int i11) {
        if (i11 < 10000) {
            sb2.append("(3202)");
        } else {
            sb2.append("(3203)");
        }
    }

    @Override // com.google.zxing.oned.rss.expanded.decoders.i
    protected int i(int i11) {
        return i11 < 10000 ? i11 : i11 - 10000;
    }
}
