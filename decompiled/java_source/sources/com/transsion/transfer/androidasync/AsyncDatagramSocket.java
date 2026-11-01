package com.transsion.transfer.androidasync;

import java.io.IOException;
import java.net.InetSocketAddress;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes6.dex */
public class AsyncDatagramSocket extends AsyncNetworkSocket {
    public void F(final String str, final int i11, final ByteBuffer byteBuffer) {
        if (a().o() != Thread.currentThread()) {
            a().H(new Runnable() { // from class: com.transsion.transfer.androidasync.AsyncDatagramSocket.1
                @Override // java.lang.Runnable
                public void run() {
                    AsyncDatagramSocket.this.F(str, i11, byteBuffer);
                }
            });
        } else {
            try {
                android.support.v4.media.session.c.a(j());
                throw null;
            } catch (IOException unused) {
            }
        }
    }

    public void H(final InetSocketAddress inetSocketAddress, final ByteBuffer byteBuffer) {
        if (a().o() != Thread.currentThread()) {
            a().H(new Runnable() { // from class: com.transsion.transfer.androidasync.AsyncDatagramSocket.2
                @Override // java.lang.Runnable
                public void run() {
                    AsyncDatagramSocket.this.H(inetSocketAddress, byteBuffer);
                }
            });
        } else {
            try {
                android.support.v4.media.session.c.a(j());
                throw null;
            } catch (IOException unused) {
            }
        }
    }
}
