package com.transsion.transfer.androidasync;

/* JADX INFO: loaded from: classes6.dex */
public abstract class u extends n {
    public u(s sVar) {
        super(sVar);
        q(0);
    }

    @Override // com.transsion.transfer.androidasync.n
    protected void j(ByteBufferList byteBufferList) {
        ByteBufferList byteBufferListS = s(byteBufferList);
        if (byteBufferListS != byteBufferList) {
            byteBufferList.B();
            byteBufferListS.f(byteBufferList);
        }
    }

    public abstract ByteBufferList s(ByteBufferList byteBufferList);
}
