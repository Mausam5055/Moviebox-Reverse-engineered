package com.google.protobuf;

import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
class d0 extends InputStream {
    private long currentAddress;
    private byte[] currentArray;
    private int currentArrayOffset;
    private ByteBuffer currentByteBuffer;
    private int currentByteBufferPos;
    private int currentIndex;
    private int dataSize = 0;
    private boolean hasArray;
    private Iterator<ByteBuffer> iterator;

    d0(Iterable<ByteBuffer> iterable) {
        this.iterator = iterable.iterator();
        for (ByteBuffer byteBuffer : iterable) {
            this.dataSize++;
        }
        this.currentIndex = -1;
        if (getNextByteBuffer()) {
            return;
        }
        this.currentByteBuffer = y.EMPTY_BYTE_BUFFER;
        this.currentIndex = 0;
        this.currentByteBufferPos = 0;
        this.currentAddress = 0L;
    }

    private boolean getNextByteBuffer() {
        this.currentIndex++;
        if (!this.iterator.hasNext()) {
            return false;
        }
        ByteBuffer next = this.iterator.next();
        this.currentByteBuffer = next;
        this.currentByteBufferPos = next.position();
        if (this.currentByteBuffer.hasArray()) {
            this.hasArray = true;
            this.currentArray = this.currentByteBuffer.array();
            this.currentArrayOffset = this.currentByteBuffer.arrayOffset();
        } else {
            this.hasArray = false;
            this.currentAddress = s1.addressOffset(this.currentByteBuffer);
            this.currentArray = null;
        }
        return true;
    }

    private void updateCurrentByteBufferPos(int i11) {
        int i12 = this.currentByteBufferPos + i11;
        this.currentByteBufferPos = i12;
        if (i12 == this.currentByteBuffer.limit()) {
            getNextByteBuffer();
        }
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (this.currentIndex == this.dataSize) {
            return -1;
        }
        if (this.hasArray) {
            int i11 = this.currentArray[this.currentByteBufferPos + this.currentArrayOffset] & 255;
            updateCurrentByteBufferPos(1);
            return i11;
        }
        int i12 = s1.getByte(((long) this.currentByteBufferPos) + this.currentAddress) & 255;
        updateCurrentByteBufferPos(1);
        return i12;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i11, int i12) throws IOException {
        if (this.currentIndex == this.dataSize) {
            return -1;
        }
        int iLimit = this.currentByteBuffer.limit();
        int i13 = this.currentByteBufferPos;
        int i14 = iLimit - i13;
        if (i12 > i14) {
            i12 = i14;
        }
        if (this.hasArray) {
            System.arraycopy(this.currentArray, i13 + this.currentArrayOffset, bArr, i11, i12);
            updateCurrentByteBufferPos(i12);
        } else {
            int iPosition = this.currentByteBuffer.position();
            e0.position(this.currentByteBuffer, this.currentByteBufferPos);
            this.currentByteBuffer.get(bArr, i11, i12);
            e0.position(this.currentByteBuffer, iPosition);
            updateCurrentByteBufferPos(i12);
        }
        return i12;
    }
}
