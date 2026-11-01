package com.google.protobuf;

import java.io.IOException;
import java.io.InputStream;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.InvalidMarkException;
import java.nio.charset.Charset;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
final class NioByteString extends ByteString.LeafByteString {
    private final ByteBuffer buffer;

    class a extends InputStream {
        private final ByteBuffer buf;

        a() {
            this.buf = NioByteString.this.buffer.slice();
        }

        @Override // java.io.InputStream
        public int available() throws IOException {
            return this.buf.remaining();
        }

        @Override // java.io.InputStream
        public void mark(int i11) {
            e0.mark(this.buf);
        }

        @Override // java.io.InputStream
        public boolean markSupported() {
            return true;
        }

        @Override // java.io.InputStream
        public int read() throws IOException {
            if (this.buf.hasRemaining()) {
                return this.buf.get() & 255;
            }
            return -1;
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr, int i11, int i12) throws IOException {
            if (!this.buf.hasRemaining()) {
                return -1;
            }
            int iMin = Math.min(i12, this.buf.remaining());
            this.buf.get(bArr, i11, iMin);
            return iMin;
        }

        @Override // java.io.InputStream
        public void reset() throws IOException {
            try {
                e0.reset(this.buf);
            } catch (InvalidMarkException e11) {
                throw new IOException(e11);
            }
        }
    }

    NioByteString(ByteBuffer byteBuffer) {
        y.checkNotNull(byteBuffer, "buffer");
        this.buffer = byteBuffer.slice().order(ByteOrder.nativeOrder());
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException {
        throw new InvalidObjectException("NioByteString instances are not to be serialized directly");
    }

    private ByteBuffer slice(int i11, int i12) {
        if (i11 < this.buffer.position() || i12 > this.buffer.limit() || i11 > i12) {
            throw new IllegalArgumentException(String.format("Invalid indices [%d, %d]", Integer.valueOf(i11), Integer.valueOf(i12)));
        }
        ByteBuffer byteBufferSlice = this.buffer.slice();
        e0.position(byteBufferSlice, i11 - this.buffer.position());
        e0.limit(byteBufferSlice, i12 - this.buffer.position());
        return byteBufferSlice;
    }

    private Object writeReplace() {
        return ByteString.copyFrom(this.buffer.slice());
    }

    @Override // com.google.protobuf.ByteString
    public ByteBuffer asReadOnlyByteBuffer() {
        return this.buffer.asReadOnlyBuffer();
    }

    @Override // com.google.protobuf.ByteString
    public List<ByteBuffer> asReadOnlyByteBufferList() {
        return Collections.singletonList(asReadOnlyByteBuffer());
    }

    @Override // com.google.protobuf.ByteString
    public byte byteAt(int i11) {
        try {
            return this.buffer.get(i11);
        } catch (ArrayIndexOutOfBoundsException e11) {
            throw e11;
        } catch (IndexOutOfBoundsException e12) {
            throw new ArrayIndexOutOfBoundsException(e12.getMessage());
        }
    }

    @Override // com.google.protobuf.ByteString
    public void copyTo(ByteBuffer byteBuffer) {
        byteBuffer.put(this.buffer.slice());
    }

    @Override // com.google.protobuf.ByteString
    protected void copyToInternal(byte[] bArr, int i11, int i12, int i13) {
        ByteBuffer byteBufferSlice = this.buffer.slice();
        e0.position(byteBufferSlice, i11);
        byteBufferSlice.get(bArr, i12, i13);
    }

    @Override // com.google.protobuf.ByteString
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ByteString)) {
            return false;
        }
        ByteString byteString = (ByteString) obj;
        if (size() != byteString.size()) {
            return false;
        }
        if (size() == 0) {
            return true;
        }
        if (obj instanceof NioByteString) {
            return this.buffer.equals(((NioByteString) obj).buffer);
        }
        return obj instanceof RopeByteString ? obj.equals(this) : this.buffer.equals(byteString.asReadOnlyByteBuffer());
    }

    @Override // com.google.protobuf.ByteString.LeafByteString
    boolean equalsRange(ByteString byteString, int i11, int i12) {
        return substring(0, i12).equals(byteString.substring(i11, i12 + i11));
    }

    @Override // com.google.protobuf.ByteString
    public byte internalByteAt(int i11) {
        return byteAt(i11);
    }

    @Override // com.google.protobuf.ByteString
    public boolean isValidUtf8() {
        return Utf8.isValidUtf8(this.buffer);
    }

    @Override // com.google.protobuf.ByteString
    public i newCodedInput() {
        return i.newInstance(this.buffer, true);
    }

    @Override // com.google.protobuf.ByteString
    public InputStream newInput() {
        return new a();
    }

    @Override // com.google.protobuf.ByteString
    protected int partialHash(int i11, int i12, int i13) {
        for (int i14 = i12; i14 < i12 + i13; i14++) {
            i11 = (i11 * 31) + this.buffer.get(i14);
        }
        return i11;
    }

    @Override // com.google.protobuf.ByteString
    protected int partialIsValidUtf8(int i11, int i12, int i13) {
        return Utf8.partialIsValidUtf8(i11, this.buffer, i12, i13 + i12);
    }

    @Override // com.google.protobuf.ByteString
    public int size() {
        return this.buffer.remaining();
    }

    @Override // com.google.protobuf.ByteString
    public ByteString substring(int i11, int i12) {
        try {
            return new NioByteString(slice(i11, i12));
        } catch (ArrayIndexOutOfBoundsException e11) {
            throw e11;
        } catch (IndexOutOfBoundsException e12) {
            throw new ArrayIndexOutOfBoundsException(e12.getMessage());
        }
    }

    @Override // com.google.protobuf.ByteString
    protected String toStringInternal(Charset charset) {
        byte[] byteArray;
        int length;
        int iArrayOffset;
        if (this.buffer.hasArray()) {
            byteArray = this.buffer.array();
            iArrayOffset = this.buffer.arrayOffset() + this.buffer.position();
            length = this.buffer.remaining();
        } else {
            byteArray = toByteArray();
            length = byteArray.length;
            iArrayOffset = 0;
        }
        return new String(byteArray, iArrayOffset, length, charset);
    }

    @Override // com.google.protobuf.ByteString
    void writeTo(h hVar) throws IOException {
        hVar.writeLazy(this.buffer.slice());
    }

    @Override // com.google.protobuf.ByteString
    public void writeTo(OutputStream outputStream) throws IOException {
        outputStream.write(toByteArray());
    }

    @Override // com.google.protobuf.ByteString
    void writeToInternal(OutputStream outputStream, int i11, int i12) throws IOException {
        if (!this.buffer.hasArray()) {
            g.write(slice(i11, i12 + i11), outputStream);
        } else {
            outputStream.write(this.buffer.array(), this.buffer.arrayOffset() + this.buffer.position() + i11, i12);
        }
    }
}
