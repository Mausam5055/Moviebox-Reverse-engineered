package com.transsion.transfer.androidasync;

import android.os.Looper;
import com.transsion.transfer.androidasync.util.ArrayDeque;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.util.Comparator;
import java.util.PriorityQueue;

/* JADX INFO: loaded from: classes6.dex */
public class ByteBufferList {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static PriorityQueue f55163d = new PriorityQueue(8, new Reclaimer());

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static int f55164e = 1048576;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static int f55165f = 262144;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    static int f55166g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    static int f55167h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final Object f55168i = new Object();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final ByteBuffer f55169j = ByteBuffer.allocate(0);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    ArrayDeque f55170a = new ArrayDeque();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    ByteOrder f55171b = ByteOrder.BIG_ENDIAN;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f55172c = 0;

    static class Reclaimer implements Comparator<ByteBuffer> {
        Reclaimer() {
        }

        @Override // java.util.Comparator
        public int compare(ByteBuffer byteBuffer, ByteBuffer byteBuffer2) {
            if (byteBuffer.capacity() == byteBuffer2.capacity()) {
                return 0;
            }
            return byteBuffer.capacity() > byteBuffer2.capacity() ? 1 : -1;
        }
    }

    public ByteBufferList() {
    }

    public ByteBufferList(byte[] bArr) {
        a(ByteBuffer.wrap(bArr));
    }

    public ByteBufferList(ByteBuffer... byteBufferArr) {
        b(byteBufferArr);
    }

    public static void A(ByteBuffer byteBuffer) {
        PriorityQueue priorityQueueP;
        if (byteBuffer == null || byteBuffer.isDirect() || byteBuffer.arrayOffset() != 0 || byteBuffer.array().length != byteBuffer.capacity() || byteBuffer.capacity() < 8192 || byteBuffer.capacity() > f55165f || (priorityQueueP = p()) == null) {
            return;
        }
        synchronized (f55168i) {
            while (f55166g > f55164e && priorityQueueP.size() > 0 && ((ByteBuffer) priorityQueueP.peek()).capacity() < byteBuffer.capacity()) {
                try {
                    f55166g -= ((ByteBuffer) priorityQueueP.remove()).capacity();
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            if (f55166g > f55164e) {
                return;
            }
            byteBuffer.position(0);
            byteBuffer.limit(byteBuffer.capacity());
            f55166g += byteBuffer.capacity();
            priorityQueueP.add(byteBuffer);
            f55167h = Math.max(f55167h, byteBuffer.capacity());
        }
    }

    private void d(int i11) {
        if (C() >= 0) {
            this.f55172c += i11;
        }
    }

    private static PriorityQueue p() {
        Looper mainLooper = Looper.getMainLooper();
        if (mainLooper == null || Thread.currentThread() != mainLooper.getThread()) {
            return f55163d;
        }
        return null;
    }

    public static ByteBuffer t(int i11) {
        PriorityQueue priorityQueueP;
        ByteBuffer byteBuffer;
        if (i11 <= f55167h && (priorityQueueP = p()) != null) {
            synchronized (f55168i) {
                do {
                    try {
                        if (priorityQueueP.size() > 0) {
                            byteBuffer = (ByteBuffer) priorityQueueP.remove();
                            if (priorityQueueP.size() == 0) {
                                f55167h = 0;
                            }
                            f55166g -= byteBuffer.capacity();
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                } while (byteBuffer.capacity() < i11);
                return byteBuffer;
            }
        }
        return ByteBuffer.allocate(Math.max(8192, i11));
    }

    private ByteBuffer x(int i11) {
        ByteBuffer byteBuffer;
        if (C() < i11) {
            throw new IllegalArgumentException("count : " + C() + "/" + i11);
        }
        ByteBuffer byteBuffer2 = (ByteBuffer) this.f55170a.peek();
        while (byteBuffer2 != null && !byteBuffer2.hasRemaining()) {
            A((ByteBuffer) this.f55170a.remove());
            byteBuffer2 = (ByteBuffer) this.f55170a.peek();
        }
        if (byteBuffer2 == null) {
            return f55169j;
        }
        if (byteBuffer2.remaining() >= i11) {
            return byteBuffer2.order(this.f55171b);
        }
        ByteBuffer byteBufferT = t(i11);
        byteBufferT.limit(i11);
        byte[] bArrArray = byteBufferT.array();
        int i12 = 0;
        loop1: while (true) {
            byteBuffer = null;
            do {
                if (i12 >= i11) {
                    break loop1;
                }
                byteBuffer = (ByteBuffer) this.f55170a.remove();
                int iMin = Math.min(i11 - i12, byteBuffer.remaining());
                byteBuffer.get(bArrArray, i12, iMin);
                i12 += iMin;
            } while (byteBuffer.remaining() != 0);
            A(byteBuffer);
        }
        if (byteBuffer != null && byteBuffer.remaining() > 0) {
            this.f55170a.addFirst(byteBuffer);
        }
        this.f55170a.addFirst(byteBufferT);
        return byteBufferT.order(this.f55171b);
    }

    public void B() {
        while (this.f55170a.size() > 0) {
            A((ByteBuffer) this.f55170a.remove());
        }
        this.f55172c = 0;
    }

    public int C() {
        return this.f55172c;
    }

    public ByteBuffer D() {
        ByteBuffer byteBuffer = (ByteBuffer) this.f55170a.remove();
        this.f55172c -= byteBuffer.remaining();
        return byteBuffer;
    }

    public int E() {
        return this.f55170a.size();
    }

    public void F() {
        x(0);
    }

    public ByteBufferList a(ByteBuffer byteBuffer) {
        if (byteBuffer.remaining() <= 0) {
            A(byteBuffer);
            return this;
        }
        d(byteBuffer.remaining());
        if (this.f55170a.size() > 0) {
            ByteBuffer byteBuffer2 = (ByteBuffer) this.f55170a.getLast();
            if (byteBuffer2.capacity() - byteBuffer2.limit() >= byteBuffer.remaining()) {
                byteBuffer2.mark();
                byteBuffer2.position(byteBuffer2.limit());
                byteBuffer2.limit(byteBuffer2.capacity());
                byteBuffer2.put(byteBuffer);
                byteBuffer2.limit(byteBuffer2.position());
                byteBuffer2.reset();
                A(byteBuffer);
                F();
                return this;
            }
        }
        this.f55170a.add(byteBuffer);
        F();
        return this;
    }

    public ByteBufferList b(ByteBuffer... byteBufferArr) {
        for (ByteBuffer byteBuffer : byteBufferArr) {
            a(byteBuffer);
        }
        return this;
    }

    public void c(ByteBuffer byteBuffer) {
        if (byteBuffer.remaining() <= 0) {
            A(byteBuffer);
            return;
        }
        d(byteBuffer.remaining());
        if (this.f55170a.size() > 0) {
            ByteBuffer byteBuffer2 = (ByteBuffer) this.f55170a.getFirst();
            if (byteBuffer2.position() >= byteBuffer.remaining()) {
                byteBuffer2.position(byteBuffer2.position() - byteBuffer.remaining());
                byteBuffer2.mark();
                byteBuffer2.put(byteBuffer);
                byteBuffer2.reset();
                A(byteBuffer);
                return;
            }
        }
        this.f55170a.addFirst(byteBuffer);
    }

    public byte e() {
        byte b11 = x(1).get();
        this.f55172c--;
        return b11;
    }

    public void f(ByteBufferList byteBufferList) {
        g(byteBufferList, C());
    }

    public void g(ByteBufferList byteBufferList, int i11) {
        if (C() < i11) {
            throw new IllegalArgumentException("length");
        }
        int i12 = 0;
        while (i12 < i11) {
            ByteBuffer byteBuffer = (ByteBuffer) this.f55170a.remove();
            int iRemaining = byteBuffer.remaining();
            if (iRemaining == 0) {
                A(byteBuffer);
            } else {
                int i13 = iRemaining + i12;
                if (i13 > i11) {
                    int i14 = i11 - i12;
                    ByteBuffer byteBufferT = t(i14);
                    byteBufferT.limit(i14);
                    byteBuffer.get(byteBufferT.array(), 0, i14);
                    byteBufferList.a(byteBufferT);
                    this.f55170a.addFirst(byteBuffer);
                    break;
                }
                byteBufferList.a(byteBuffer);
                i12 = i13;
            }
        }
        this.f55172c -= i11;
    }

    public void h(byte[] bArr) {
        i(bArr, 0, bArr.length);
    }

    public void i(byte[] bArr, int i11, int i12) {
        if (C() < i12) {
            throw new IllegalArgumentException("length");
        }
        int i13 = i12;
        while (i13 > 0) {
            ByteBuffer byteBuffer = (ByteBuffer) this.f55170a.peek();
            int iMin = Math.min(byteBuffer.remaining(), i13);
            if (bArr != null) {
                byteBuffer.get(bArr, i11, iMin);
            } else {
                byteBuffer.position(byteBuffer.position() + iMin);
            }
            i13 -= iMin;
            i11 += iMin;
            if (byteBuffer.remaining() == 0) {
                A(byteBuffer);
            }
        }
        this.f55172c -= i12;
    }

    public ByteBuffer j() {
        if (C() == 0) {
            return f55169j;
        }
        x(C());
        return D();
    }

    public ByteBuffer[] k() {
        ByteBuffer[] byteBufferArr = (ByteBuffer[]) this.f55170a.toArray(new ByteBuffer[this.f55170a.size()]);
        this.f55170a.clear();
        this.f55172c = 0;
        return byteBufferArr;
    }

    public byte[] l() {
        byte[] bArr = new byte[C()];
        h(bArr);
        return bArr;
    }

    public char m() {
        char c11 = (char) x(1).get();
        this.f55172c--;
        return c11;
    }

    public int n() {
        int i11 = x(4).getInt();
        this.f55172c -= 4;
        return i11;
    }

    public long o() {
        long j11 = x(8).getLong();
        this.f55172c -= 8;
        return j11;
    }

    public short q() {
        short s11 = x(2).getShort();
        this.f55172c -= 2;
        return s11;
    }

    public boolean r() {
        return C() > 0;
    }

    public boolean s() {
        return this.f55172c == 0;
    }

    public ByteBufferList u(ByteOrder byteOrder) {
        this.f55171b = byteOrder;
        return this;
    }

    public String v() {
        return w(null);
    }

    public String w(Charset charset) {
        byte[] bArrArray;
        int iRemaining;
        int i11;
        if (charset == null) {
            charset = com.transsion.transfer.androidasync.util.c.f55566b;
        }
        StringBuilder sb2 = new StringBuilder();
        for (ByteBuffer byteBuffer : this.f55170a) {
            if (byteBuffer.isDirect()) {
                bArrArray = new byte[byteBuffer.remaining()];
                iRemaining = byteBuffer.remaining();
                byteBuffer.get(bArrArray);
                i11 = 0;
            } else {
                bArrArray = byteBuffer.array();
                int iArrayOffset = byteBuffer.arrayOffset() + byteBuffer.position();
                iRemaining = byteBuffer.remaining();
                i11 = iArrayOffset;
            }
            sb2.append(new String(bArrArray, i11, iRemaining, charset));
        }
        return sb2.toString();
    }

    public String y() {
        return z(null);
    }

    public String z(Charset charset) {
        String strW = w(charset);
        B();
        return strW;
    }
}
