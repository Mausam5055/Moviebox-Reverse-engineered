package com.transsion.http.impl;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes5.dex */
public abstract class BitmapCallback extends q {
    /* JADX INFO: Access modifiers changed from: private */
    public Bitmap x(byte[] bArr) {
        return BitmapFactory.decodeStream(cm.a.f(ByteBuffer.wrap(bArr)));
    }

    @Override // com.transsion.http.impl.q
    public void m(int i11, byte[] bArr, Throwable th2) {
        h(new c(this, i11, th2));
    }

    @Override // com.transsion.http.impl.q
    public void s(int i11, byte[] bArr) {
        b bVar = new b(this, bArr, i11);
        if (k() || j()) {
            bVar.run();
        } else {
            new Thread(bVar).start();
        }
    }

    public abstract void y(int i11, Bitmap bitmap, Throwable th2);

    public abstract void z(int i11, Bitmap bitmap);
}
