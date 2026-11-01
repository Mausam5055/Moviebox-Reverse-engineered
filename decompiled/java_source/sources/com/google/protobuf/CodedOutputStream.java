package com.google.protobuf;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.BufferOverflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes.dex */
public abstract class CodedOutputStream extends com.google.protobuf.h {
    public static final int DEFAULT_BUFFER_SIZE = 4096;

    @Deprecated
    public static final int LITTLE_ENDIAN_32_SIZE = 4;
    private boolean serializationDeterministic;
    k wrapper;
    private static final Logger logger = Logger.getLogger(CodedOutputStream.class.getName());
    private static final boolean HAS_UNSAFE_ARRAY_OPERATIONS = s1.hasUnsafeArrayOperations();

    public static class OutOfSpaceException extends IOException {
        private static final String MESSAGE = "CodedOutputStream was writing to a flat byte array and ran out of space.";
        private static final long serialVersionUID = -6947486886997889499L;

        OutOfSpaceException() {
            super(MESSAGE);
        }

        OutOfSpaceException(String str) {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.: " + str);
        }

        OutOfSpaceException(String str, Throwable th2) {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.: " + str, th2);
        }

        OutOfSpaceException(Throwable th2) {
            super(MESSAGE, th2);
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    private static abstract class b extends CodedOutputStream {
        final byte[] buffer;
        final int limit;
        int position;
        int totalBytesWritten;

        b(int i11) {
            super();
            if (i11 < 0) {
                throw new IllegalArgumentException("bufferSize must be >= 0");
            }
            byte[] bArr = new byte[Math.max(i11, 20)];
            this.buffer = bArr;
            this.limit = bArr.length;
        }

        final void buffer(byte b11) {
            byte[] bArr = this.buffer;
            int i11 = this.position;
            this.position = i11 + 1;
            bArr[i11] = b11;
            this.totalBytesWritten++;
        }

        final void bufferFixed32NoTag(int i11) {
            byte[] bArr = this.buffer;
            int i12 = this.position;
            int i13 = i12 + 1;
            this.position = i13;
            bArr[i12] = (byte) (i11 & 255);
            int i14 = i12 + 2;
            this.position = i14;
            bArr[i13] = (byte) ((i11 >> 8) & 255);
            int i15 = i12 + 3;
            this.position = i15;
            bArr[i14] = (byte) ((i11 >> 16) & 255);
            this.position = i12 + 4;
            bArr[i15] = (byte) ((i11 >> 24) & 255);
            this.totalBytesWritten += 4;
        }

        final void bufferFixed64NoTag(long j11) {
            byte[] bArr = this.buffer;
            int i11 = this.position;
            int i12 = i11 + 1;
            this.position = i12;
            bArr[i11] = (byte) (j11 & 255);
            int i13 = i11 + 2;
            this.position = i13;
            bArr[i12] = (byte) ((j11 >> 8) & 255);
            int i14 = i11 + 3;
            this.position = i14;
            bArr[i13] = (byte) ((j11 >> 16) & 255);
            int i15 = i11 + 4;
            this.position = i15;
            bArr[i14] = (byte) (255 & (j11 >> 24));
            int i16 = i11 + 5;
            this.position = i16;
            bArr[i15] = (byte) (((int) (j11 >> 32)) & 255);
            int i17 = i11 + 6;
            this.position = i17;
            bArr[i16] = (byte) (((int) (j11 >> 40)) & 255);
            int i18 = i11 + 7;
            this.position = i18;
            bArr[i17] = (byte) (((int) (j11 >> 48)) & 255);
            this.position = i11 + 8;
            bArr[i18] = (byte) (((int) (j11 >> 56)) & 255);
            this.totalBytesWritten += 8;
        }

        final void bufferInt32NoTag(int i11) {
            if (i11 >= 0) {
                bufferUInt32NoTag(i11);
            } else {
                bufferUInt64NoTag(i11);
            }
        }

        final void bufferTag(int i11, int i12) {
            bufferUInt32NoTag(WireFormat.makeTag(i11, i12));
        }

        final void bufferUInt32NoTag(int i11) {
            if (!CodedOutputStream.HAS_UNSAFE_ARRAY_OPERATIONS) {
                while ((i11 & (-128)) != 0) {
                    byte[] bArr = this.buffer;
                    int i12 = this.position;
                    this.position = i12 + 1;
                    bArr[i12] = (byte) ((i11 & 127) | 128);
                    this.totalBytesWritten++;
                    i11 >>>= 7;
                }
                byte[] bArr2 = this.buffer;
                int i13 = this.position;
                this.position = i13 + 1;
                bArr2[i13] = (byte) i11;
                this.totalBytesWritten++;
                return;
            }
            long j11 = this.position;
            while ((i11 & (-128)) != 0) {
                byte[] bArr3 = this.buffer;
                int i14 = this.position;
                this.position = i14 + 1;
                s1.putByte(bArr3, i14, (byte) ((i11 & 127) | 128));
                i11 >>>= 7;
            }
            byte[] bArr4 = this.buffer;
            int i15 = this.position;
            this.position = i15 + 1;
            s1.putByte(bArr4, i15, (byte) i11);
            this.totalBytesWritten += (int) (((long) this.position) - j11);
        }

        final void bufferUInt64NoTag(long j11) {
            if (!CodedOutputStream.HAS_UNSAFE_ARRAY_OPERATIONS) {
                while ((j11 & (-128)) != 0) {
                    byte[] bArr = this.buffer;
                    int i11 = this.position;
                    this.position = i11 + 1;
                    bArr[i11] = (byte) ((((int) j11) & 127) | 128);
                    this.totalBytesWritten++;
                    j11 >>>= 7;
                }
                byte[] bArr2 = this.buffer;
                int i12 = this.position;
                this.position = i12 + 1;
                bArr2[i12] = (byte) j11;
                this.totalBytesWritten++;
                return;
            }
            long j12 = this.position;
            while ((j11 & (-128)) != 0) {
                byte[] bArr3 = this.buffer;
                int i13 = this.position;
                this.position = i13 + 1;
                s1.putByte(bArr3, i13, (byte) ((((int) j11) & 127) | 128));
                j11 >>>= 7;
            }
            byte[] bArr4 = this.buffer;
            int i14 = this.position;
            this.position = i14 + 1;
            s1.putByte(bArr4, i14, (byte) j11);
            this.totalBytesWritten += (int) (((long) this.position) - j12);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final int getTotalBytesWritten() {
            return this.totalBytesWritten;
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final int spaceLeft() {
            throw new UnsupportedOperationException("spaceLeft() can only be called on CodedOutputStreams that are writing to a flat array or ByteBuffer.");
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    private static class c extends CodedOutputStream {
        private final byte[] buffer;
        private final int limit;
        private final int offset;
        private int position;

        c(byte[] bArr, int i11, int i12) {
            super();
            if (bArr == null) {
                throw new NullPointerException("buffer");
            }
            int i13 = i11 + i12;
            if ((i11 | i12 | (bArr.length - i13)) < 0) {
                throw new IllegalArgumentException(String.format("Array range is invalid. Buffer.length=%d, offset=%d, length=%d", Integer.valueOf(bArr.length), Integer.valueOf(i11), Integer.valueOf(i12)));
            }
            this.buffer = bArr;
            this.offset = i11;
            this.position = i11;
            this.limit = i13;
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void flush() {
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final int getTotalBytesWritten() {
            return this.position - this.offset;
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final int spaceLeft() {
            return this.limit - this.position;
        }

        @Override // com.google.protobuf.CodedOutputStream, com.google.protobuf.h
        public final void write(byte b11) throws IOException {
            try {
                byte[] bArr = this.buffer;
                int i11 = this.position;
                this.position = i11 + 1;
                bArr[i11] = b11;
            } catch (IndexOutOfBoundsException e11) {
                throw new OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.position), Integer.valueOf(this.limit), 1), e11);
            }
        }

        @Override // com.google.protobuf.CodedOutputStream, com.google.protobuf.h
        public final void write(ByteBuffer byteBuffer) throws IOException {
            int iRemaining = byteBuffer.remaining();
            try {
                byteBuffer.get(this.buffer, this.position, iRemaining);
                this.position += iRemaining;
            } catch (IndexOutOfBoundsException e11) {
                throw new OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.position), Integer.valueOf(this.limit), Integer.valueOf(iRemaining)), e11);
            }
        }

        @Override // com.google.protobuf.CodedOutputStream, com.google.protobuf.h
        public final void write(byte[] bArr, int i11, int i12) throws IOException {
            try {
                System.arraycopy(bArr, i11, this.buffer, this.position, i12);
                this.position += i12;
            } catch (IndexOutOfBoundsException e11) {
                throw new OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.position), Integer.valueOf(this.limit), Integer.valueOf(i12)), e11);
            }
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void writeBool(int i11, boolean z10) throws IOException {
            writeTag(i11, 0);
            write(z10 ? (byte) 1 : (byte) 0);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void writeByteArray(int i11, byte[] bArr) throws IOException {
            writeByteArray(i11, bArr, 0, bArr.length);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void writeByteArray(int i11, byte[] bArr, int i12, int i13) throws IOException {
            writeTag(i11, 2);
            writeByteArrayNoTag(bArr, i12, i13);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void writeByteArrayNoTag(byte[] bArr, int i11, int i12) throws IOException {
            writeUInt32NoTag(i12);
            write(bArr, i11, i12);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void writeByteBuffer(int i11, ByteBuffer byteBuffer) throws IOException {
            writeTag(i11, 2);
            writeUInt32NoTag(byteBuffer.capacity());
            writeRawBytes(byteBuffer);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void writeBytes(int i11, ByteString byteString) throws IOException {
            writeTag(i11, 2);
            writeBytesNoTag(byteString);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void writeBytesNoTag(ByteString byteString) throws IOException {
            writeUInt32NoTag(byteString.size());
            byteString.writeTo(this);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void writeFixed32(int i11, int i12) throws IOException {
            writeTag(i11, 5);
            writeFixed32NoTag(i12);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void writeFixed32NoTag(int i11) throws IOException {
            try {
                byte[] bArr = this.buffer;
                int i12 = this.position;
                int i13 = i12 + 1;
                this.position = i13;
                bArr[i12] = (byte) (i11 & 255);
                int i14 = i12 + 2;
                this.position = i14;
                bArr[i13] = (byte) ((i11 >> 8) & 255);
                int i15 = i12 + 3;
                this.position = i15;
                bArr[i14] = (byte) ((i11 >> 16) & 255);
                this.position = i12 + 4;
                bArr[i15] = (byte) ((i11 >> 24) & 255);
            } catch (IndexOutOfBoundsException e11) {
                throw new OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.position), Integer.valueOf(this.limit), 1), e11);
            }
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void writeFixed64(int i11, long j11) throws IOException {
            writeTag(i11, 1);
            writeFixed64NoTag(j11);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void writeFixed64NoTag(long j11) throws IOException {
            try {
                byte[] bArr = this.buffer;
                int i11 = this.position;
                int i12 = i11 + 1;
                this.position = i12;
                bArr[i11] = (byte) (((int) j11) & 255);
                int i13 = i11 + 2;
                this.position = i13;
                bArr[i12] = (byte) (((int) (j11 >> 8)) & 255);
                int i14 = i11 + 3;
                this.position = i14;
                bArr[i13] = (byte) (((int) (j11 >> 16)) & 255);
                int i15 = i11 + 4;
                this.position = i15;
                bArr[i14] = (byte) (((int) (j11 >> 24)) & 255);
                int i16 = i11 + 5;
                this.position = i16;
                bArr[i15] = (byte) (((int) (j11 >> 32)) & 255);
                int i17 = i11 + 6;
                this.position = i17;
                bArr[i16] = (byte) (((int) (j11 >> 40)) & 255);
                int i18 = i11 + 7;
                this.position = i18;
                bArr[i17] = (byte) (((int) (j11 >> 48)) & 255);
                this.position = i11 + 8;
                bArr[i18] = (byte) (((int) (j11 >> 56)) & 255);
            } catch (IndexOutOfBoundsException e11) {
                throw new OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.position), Integer.valueOf(this.limit), 1), e11);
            }
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void writeInt32(int i11, int i12) throws IOException {
            writeTag(i11, 0);
            writeInt32NoTag(i12);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void writeInt32NoTag(int i11) throws IOException {
            if (i11 >= 0) {
                writeUInt32NoTag(i11);
            } else {
                writeUInt64NoTag(i11);
            }
        }

        @Override // com.google.protobuf.CodedOutputStream, com.google.protobuf.h
        public final void writeLazy(ByteBuffer byteBuffer) throws IOException {
            write(byteBuffer);
        }

        @Override // com.google.protobuf.CodedOutputStream, com.google.protobuf.h
        public final void writeLazy(byte[] bArr, int i11, int i12) throws IOException {
            write(bArr, i11, i12);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void writeMessage(int i11, s0 s0Var) throws IOException {
            writeTag(i11, 2);
            writeMessageNoTag(s0Var);
        }

        @Override // com.google.protobuf.CodedOutputStream
        final void writeMessage(int i11, s0 s0Var, i1 i1Var) throws IOException {
            writeTag(i11, 2);
            writeUInt32NoTag(((com.google.protobuf.a) s0Var).getSerializedSize(i1Var));
            i1Var.writeTo(s0Var, this.wrapper);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void writeMessageNoTag(s0 s0Var) throws IOException {
            writeUInt32NoTag(s0Var.getSerializedSize());
            s0Var.writeTo(this);
        }

        @Override // com.google.protobuf.CodedOutputStream
        final void writeMessageNoTag(s0 s0Var, i1 i1Var) throws IOException {
            writeUInt32NoTag(((com.google.protobuf.a) s0Var).getSerializedSize(i1Var));
            i1Var.writeTo(s0Var, this.wrapper);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void writeMessageSetExtension(int i11, s0 s0Var) throws IOException {
            writeTag(1, 3);
            writeUInt32(2, i11);
            writeMessage(3, s0Var);
            writeTag(1, 4);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void writeRawBytes(ByteBuffer byteBuffer) throws IOException {
            if (byteBuffer.hasArray()) {
                write(byteBuffer.array(), byteBuffer.arrayOffset(), byteBuffer.capacity());
                return;
            }
            ByteBuffer byteBufferDuplicate = byteBuffer.duplicate();
            e0.clear(byteBufferDuplicate);
            write(byteBufferDuplicate);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void writeRawMessageSetExtension(int i11, ByteString byteString) throws IOException {
            writeTag(1, 3);
            writeUInt32(2, i11);
            writeBytes(3, byteString);
            writeTag(1, 4);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void writeString(int i11, String str) throws IOException {
            writeTag(i11, 2);
            writeStringNoTag(str);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void writeStringNoTag(String str) throws IOException {
            int i11 = this.position;
            try {
                int iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(str.length() * 3);
                int iComputeUInt32SizeNoTag2 = CodedOutputStream.computeUInt32SizeNoTag(str.length());
                if (iComputeUInt32SizeNoTag2 == iComputeUInt32SizeNoTag) {
                    int i12 = i11 + iComputeUInt32SizeNoTag2;
                    this.position = i12;
                    int iEncode = Utf8.encode(str, this.buffer, i12, spaceLeft());
                    this.position = i11;
                    writeUInt32NoTag((iEncode - i11) - iComputeUInt32SizeNoTag2);
                    this.position = iEncode;
                } else {
                    writeUInt32NoTag(Utf8.encodedLength(str));
                    this.position = Utf8.encode(str, this.buffer, this.position, spaceLeft());
                }
            } catch (Utf8.UnpairedSurrogateException e11) {
                this.position = i11;
                inefficientWriteStringNoTag(str, e11);
            } catch (IndexOutOfBoundsException e12) {
                throw new OutOfSpaceException(e12);
            }
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void writeTag(int i11, int i12) throws IOException {
            writeUInt32NoTag(WireFormat.makeTag(i11, i12));
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void writeUInt32(int i11, int i12) throws IOException {
            writeTag(i11, 0);
            writeUInt32NoTag(i12);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void writeUInt32NoTag(int i11) throws IOException {
            while ((i11 & (-128)) != 0) {
                try {
                    byte[] bArr = this.buffer;
                    int i12 = this.position;
                    this.position = i12 + 1;
                    bArr[i12] = (byte) ((i11 & 127) | 128);
                    i11 >>>= 7;
                } catch (IndexOutOfBoundsException e11) {
                    throw new OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.position), Integer.valueOf(this.limit), 1), e11);
                }
            }
            byte[] bArr2 = this.buffer;
            int i13 = this.position;
            this.position = i13 + 1;
            bArr2[i13] = (byte) i11;
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void writeUInt64(int i11, long j11) throws IOException {
            writeTag(i11, 0);
            writeUInt64NoTag(j11);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void writeUInt64NoTag(long j11) throws IOException {
            if (CodedOutputStream.HAS_UNSAFE_ARRAY_OPERATIONS && spaceLeft() >= 10) {
                while ((j11 & (-128)) != 0) {
                    byte[] bArr = this.buffer;
                    int i11 = this.position;
                    this.position = i11 + 1;
                    s1.putByte(bArr, i11, (byte) ((((int) j11) & 127) | 128));
                    j11 >>>= 7;
                }
                byte[] bArr2 = this.buffer;
                int i12 = this.position;
                this.position = 1 + i12;
                s1.putByte(bArr2, i12, (byte) j11);
                return;
            }
            while ((j11 & (-128)) != 0) {
                try {
                    byte[] bArr3 = this.buffer;
                    int i13 = this.position;
                    this.position = i13 + 1;
                    bArr3[i13] = (byte) ((((int) j11) & 127) | 128);
                    j11 >>>= 7;
                } catch (IndexOutOfBoundsException e11) {
                    throw new OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.position), Integer.valueOf(this.limit), 1), e11);
                }
            }
            byte[] bArr4 = this.buffer;
            int i14 = this.position;
            this.position = i14 + 1;
            bArr4[i14] = (byte) j11;
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    private static final class d extends b {
        private final com.google.protobuf.h out;

        d(com.google.protobuf.h hVar, int i11) {
            super(i11);
            if (hVar == null) {
                throw new NullPointerException("out");
            }
            this.out = hVar;
        }

        private void doFlush() throws IOException {
            this.out.write(this.buffer, 0, this.position);
            this.position = 0;
        }

        private void flushIfNotAvailable(int i11) throws IOException {
            if (this.limit - this.position < i11) {
                doFlush();
            }
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void flush() throws IOException {
            if (this.position > 0) {
                doFlush();
            }
        }

        @Override // com.google.protobuf.CodedOutputStream, com.google.protobuf.h
        public void write(byte b11) throws IOException {
            if (this.position == this.limit) {
                doFlush();
            }
            buffer(b11);
        }

        @Override // com.google.protobuf.CodedOutputStream, com.google.protobuf.h
        public void write(ByteBuffer byteBuffer) throws IOException {
            flush();
            int iRemaining = byteBuffer.remaining();
            this.out.write(byteBuffer);
            this.totalBytesWritten += iRemaining;
        }

        @Override // com.google.protobuf.CodedOutputStream, com.google.protobuf.h
        public void write(byte[] bArr, int i11, int i12) throws IOException {
            flush();
            this.out.write(bArr, i11, i12);
            this.totalBytesWritten += i12;
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeBool(int i11, boolean z10) throws IOException {
            flushIfNotAvailable(11);
            bufferTag(i11, 0);
            buffer(z10 ? (byte) 1 : (byte) 0);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeByteArray(int i11, byte[] bArr) throws IOException {
            writeByteArray(i11, bArr, 0, bArr.length);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeByteArray(int i11, byte[] bArr, int i12, int i13) throws IOException {
            writeTag(i11, 2);
            writeByteArrayNoTag(bArr, i12, i13);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeByteArrayNoTag(byte[] bArr, int i11, int i12) throws IOException {
            writeUInt32NoTag(i12);
            write(bArr, i11, i12);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeByteBuffer(int i11, ByteBuffer byteBuffer) throws IOException {
            writeTag(i11, 2);
            writeUInt32NoTag(byteBuffer.capacity());
            writeRawBytes(byteBuffer);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeBytes(int i11, ByteString byteString) throws IOException {
            writeTag(i11, 2);
            writeBytesNoTag(byteString);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeBytesNoTag(ByteString byteString) throws IOException {
            writeUInt32NoTag(byteString.size());
            byteString.writeTo(this);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeFixed32(int i11, int i12) throws IOException {
            flushIfNotAvailable(14);
            bufferTag(i11, 5);
            bufferFixed32NoTag(i12);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeFixed32NoTag(int i11) throws IOException {
            flushIfNotAvailable(4);
            bufferFixed32NoTag(i11);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeFixed64(int i11, long j11) throws IOException {
            flushIfNotAvailable(18);
            bufferTag(i11, 1);
            bufferFixed64NoTag(j11);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeFixed64NoTag(long j11) throws IOException {
            flushIfNotAvailable(8);
            bufferFixed64NoTag(j11);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeInt32(int i11, int i12) throws IOException {
            flushIfNotAvailable(20);
            bufferTag(i11, 0);
            bufferInt32NoTag(i12);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeInt32NoTag(int i11) throws IOException {
            if (i11 >= 0) {
                writeUInt32NoTag(i11);
            } else {
                writeUInt64NoTag(i11);
            }
        }

        @Override // com.google.protobuf.CodedOutputStream, com.google.protobuf.h
        public void writeLazy(ByteBuffer byteBuffer) throws IOException {
            flush();
            int iRemaining = byteBuffer.remaining();
            this.out.writeLazy(byteBuffer);
            this.totalBytesWritten += iRemaining;
        }

        @Override // com.google.protobuf.CodedOutputStream, com.google.protobuf.h
        public void writeLazy(byte[] bArr, int i11, int i12) throws IOException {
            flush();
            this.out.writeLazy(bArr, i11, i12);
            this.totalBytesWritten += i12;
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeMessage(int i11, s0 s0Var) throws IOException {
            writeTag(i11, 2);
            writeMessageNoTag(s0Var);
        }

        @Override // com.google.protobuf.CodedOutputStream
        void writeMessage(int i11, s0 s0Var, i1 i1Var) throws IOException {
            writeTag(i11, 2);
            writeMessageNoTag(s0Var, i1Var);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeMessageNoTag(s0 s0Var) throws IOException {
            writeUInt32NoTag(s0Var.getSerializedSize());
            s0Var.writeTo(this);
        }

        @Override // com.google.protobuf.CodedOutputStream
        void writeMessageNoTag(s0 s0Var, i1 i1Var) throws IOException {
            writeUInt32NoTag(((com.google.protobuf.a) s0Var).getSerializedSize(i1Var));
            i1Var.writeTo(s0Var, this.wrapper);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeMessageSetExtension(int i11, s0 s0Var) throws IOException {
            writeTag(1, 3);
            writeUInt32(2, i11);
            writeMessage(3, s0Var);
            writeTag(1, 4);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeRawBytes(ByteBuffer byteBuffer) throws IOException {
            if (byteBuffer.hasArray()) {
                write(byteBuffer.array(), byteBuffer.arrayOffset(), byteBuffer.capacity());
                return;
            }
            ByteBuffer byteBufferDuplicate = byteBuffer.duplicate();
            e0.clear(byteBufferDuplicate);
            write(byteBufferDuplicate);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeRawMessageSetExtension(int i11, ByteString byteString) throws IOException {
            writeTag(1, 3);
            writeUInt32(2, i11);
            writeBytes(3, byteString);
            writeTag(1, 4);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeString(int i11, String str) throws IOException {
            writeTag(i11, 2);
            writeStringNoTag(str);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeStringNoTag(String str) throws IOException {
            int length = str.length() * 3;
            int iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(length);
            int i11 = iComputeUInt32SizeNoTag + length;
            int i12 = this.limit;
            if (i11 > i12) {
                byte[] bArr = new byte[length];
                int iEncode = Utf8.encode(str, bArr, 0, length);
                writeUInt32NoTag(iEncode);
                writeLazy(bArr, 0, iEncode);
                return;
            }
            if (i11 > i12 - this.position) {
                doFlush();
            }
            int i13 = this.position;
            try {
                int iComputeUInt32SizeNoTag2 = CodedOutputStream.computeUInt32SizeNoTag(str.length());
                if (iComputeUInt32SizeNoTag2 == iComputeUInt32SizeNoTag) {
                    int i14 = i13 + iComputeUInt32SizeNoTag2;
                    this.position = i14;
                    int iEncode2 = Utf8.encode(str, this.buffer, i14, this.limit - i14);
                    this.position = i13;
                    int i15 = (iEncode2 - i13) - iComputeUInt32SizeNoTag2;
                    bufferUInt32NoTag(i15);
                    this.position = iEncode2;
                    this.totalBytesWritten += i15;
                } else {
                    int iEncodedLength = Utf8.encodedLength(str);
                    bufferUInt32NoTag(iEncodedLength);
                    this.position = Utf8.encode(str, this.buffer, this.position, iEncodedLength);
                    this.totalBytesWritten += iEncodedLength;
                }
            } catch (Utf8.UnpairedSurrogateException e11) {
                this.totalBytesWritten -= this.position - i13;
                this.position = i13;
                inefficientWriteStringNoTag(str, e11);
            } catch (IndexOutOfBoundsException e12) {
                throw new OutOfSpaceException(e12);
            }
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeTag(int i11, int i12) throws IOException {
            writeUInt32NoTag(WireFormat.makeTag(i11, i12));
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeUInt32(int i11, int i12) throws IOException {
            flushIfNotAvailable(20);
            bufferTag(i11, 0);
            bufferUInt32NoTag(i12);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeUInt32NoTag(int i11) throws IOException {
            flushIfNotAvailable(5);
            bufferUInt32NoTag(i11);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeUInt64(int i11, long j11) throws IOException {
            flushIfNotAvailable(20);
            bufferTag(i11, 0);
            bufferUInt64NoTag(j11);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeUInt64NoTag(long j11) throws IOException {
            flushIfNotAvailable(10);
            bufferUInt64NoTag(j11);
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    private static final class e extends c {
        private final ByteBuffer byteBuffer;
        private int initialPosition;

        e(ByteBuffer byteBuffer) {
            super(byteBuffer.array(), byteBuffer.arrayOffset() + byteBuffer.position(), byteBuffer.remaining());
            this.byteBuffer = byteBuffer;
            this.initialPosition = byteBuffer.position();
        }

        @Override // com.google.protobuf.CodedOutputStream.c, com.google.protobuf.CodedOutputStream
        public void flush() {
            e0.position(this.byteBuffer, this.initialPosition + getTotalBytesWritten());
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    private static final class f extends b {
        private final OutputStream out;

        f(OutputStream outputStream, int i11) {
            super(i11);
            if (outputStream == null) {
                throw new NullPointerException("out");
            }
            this.out = outputStream;
        }

        private void doFlush() throws IOException {
            this.out.write(this.buffer, 0, this.position);
            this.position = 0;
        }

        private void flushIfNotAvailable(int i11) throws IOException {
            if (this.limit - this.position < i11) {
                doFlush();
            }
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void flush() throws IOException {
            if (this.position > 0) {
                doFlush();
            }
        }

        @Override // com.google.protobuf.CodedOutputStream, com.google.protobuf.h
        public void write(byte b11) throws IOException {
            if (this.position == this.limit) {
                doFlush();
            }
            buffer(b11);
        }

        @Override // com.google.protobuf.CodedOutputStream, com.google.protobuf.h
        public void write(ByteBuffer byteBuffer) throws IOException {
            int iRemaining = byteBuffer.remaining();
            int i11 = this.limit;
            int i12 = this.position;
            if (i11 - i12 >= iRemaining) {
                byteBuffer.get(this.buffer, i12, iRemaining);
                this.position += iRemaining;
                this.totalBytesWritten += iRemaining;
                return;
            }
            int i13 = i11 - i12;
            byteBuffer.get(this.buffer, i12, i13);
            int i14 = iRemaining - i13;
            this.position = this.limit;
            this.totalBytesWritten += i13;
            doFlush();
            while (true) {
                int i15 = this.limit;
                if (i14 <= i15) {
                    byteBuffer.get(this.buffer, 0, i14);
                    this.position = i14;
                    this.totalBytesWritten += i14;
                    return;
                } else {
                    byteBuffer.get(this.buffer, 0, i15);
                    this.out.write(this.buffer, 0, this.limit);
                    int i16 = this.limit;
                    i14 -= i16;
                    this.totalBytesWritten += i16;
                }
            }
        }

        @Override // com.google.protobuf.CodedOutputStream, com.google.protobuf.h
        public void write(byte[] bArr, int i11, int i12) throws IOException {
            int i13 = this.limit;
            int i14 = this.position;
            if (i13 - i14 >= i12) {
                System.arraycopy(bArr, i11, this.buffer, i14, i12);
                this.position += i12;
                this.totalBytesWritten += i12;
                return;
            }
            int i15 = i13 - i14;
            System.arraycopy(bArr, i11, this.buffer, i14, i15);
            int i16 = i11 + i15;
            int i17 = i12 - i15;
            this.position = this.limit;
            this.totalBytesWritten += i15;
            doFlush();
            if (i17 <= this.limit) {
                System.arraycopy(bArr, i16, this.buffer, 0, i17);
                this.position = i17;
            } else {
                this.out.write(bArr, i16, i17);
            }
            this.totalBytesWritten += i17;
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeBool(int i11, boolean z10) throws IOException {
            flushIfNotAvailable(11);
            bufferTag(i11, 0);
            buffer(z10 ? (byte) 1 : (byte) 0);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeByteArray(int i11, byte[] bArr) throws IOException {
            writeByteArray(i11, bArr, 0, bArr.length);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeByteArray(int i11, byte[] bArr, int i12, int i13) throws IOException {
            writeTag(i11, 2);
            writeByteArrayNoTag(bArr, i12, i13);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeByteArrayNoTag(byte[] bArr, int i11, int i12) throws IOException {
            writeUInt32NoTag(i12);
            write(bArr, i11, i12);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeByteBuffer(int i11, ByteBuffer byteBuffer) throws IOException {
            writeTag(i11, 2);
            writeUInt32NoTag(byteBuffer.capacity());
            writeRawBytes(byteBuffer);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeBytes(int i11, ByteString byteString) throws IOException {
            writeTag(i11, 2);
            writeBytesNoTag(byteString);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeBytesNoTag(ByteString byteString) throws IOException {
            writeUInt32NoTag(byteString.size());
            byteString.writeTo(this);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeFixed32(int i11, int i12) throws IOException {
            flushIfNotAvailable(14);
            bufferTag(i11, 5);
            bufferFixed32NoTag(i12);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeFixed32NoTag(int i11) throws IOException {
            flushIfNotAvailable(4);
            bufferFixed32NoTag(i11);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeFixed64(int i11, long j11) throws IOException {
            flushIfNotAvailable(18);
            bufferTag(i11, 1);
            bufferFixed64NoTag(j11);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeFixed64NoTag(long j11) throws IOException {
            flushIfNotAvailable(8);
            bufferFixed64NoTag(j11);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeInt32(int i11, int i12) throws IOException {
            flushIfNotAvailable(20);
            bufferTag(i11, 0);
            bufferInt32NoTag(i12);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeInt32NoTag(int i11) throws IOException {
            if (i11 >= 0) {
                writeUInt32NoTag(i11);
            } else {
                writeUInt64NoTag(i11);
            }
        }

        @Override // com.google.protobuf.CodedOutputStream, com.google.protobuf.h
        public void writeLazy(ByteBuffer byteBuffer) throws IOException {
            write(byteBuffer);
        }

        @Override // com.google.protobuf.CodedOutputStream, com.google.protobuf.h
        public void writeLazy(byte[] bArr, int i11, int i12) throws IOException {
            write(bArr, i11, i12);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeMessage(int i11, s0 s0Var) throws IOException {
            writeTag(i11, 2);
            writeMessageNoTag(s0Var);
        }

        @Override // com.google.protobuf.CodedOutputStream
        void writeMessage(int i11, s0 s0Var, i1 i1Var) throws IOException {
            writeTag(i11, 2);
            writeMessageNoTag(s0Var, i1Var);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeMessageNoTag(s0 s0Var) throws IOException {
            writeUInt32NoTag(s0Var.getSerializedSize());
            s0Var.writeTo(this);
        }

        @Override // com.google.protobuf.CodedOutputStream
        void writeMessageNoTag(s0 s0Var, i1 i1Var) throws IOException {
            writeUInt32NoTag(((com.google.protobuf.a) s0Var).getSerializedSize(i1Var));
            i1Var.writeTo(s0Var, this.wrapper);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeMessageSetExtension(int i11, s0 s0Var) throws IOException {
            writeTag(1, 3);
            writeUInt32(2, i11);
            writeMessage(3, s0Var);
            writeTag(1, 4);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeRawBytes(ByteBuffer byteBuffer) throws IOException {
            if (byteBuffer.hasArray()) {
                write(byteBuffer.array(), byteBuffer.arrayOffset(), byteBuffer.capacity());
                return;
            }
            ByteBuffer byteBufferDuplicate = byteBuffer.duplicate();
            e0.clear(byteBufferDuplicate);
            write(byteBufferDuplicate);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeRawMessageSetExtension(int i11, ByteString byteString) throws IOException {
            writeTag(1, 3);
            writeUInt32(2, i11);
            writeBytes(3, byteString);
            writeTag(1, 4);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeString(int i11, String str) throws IOException {
            writeTag(i11, 2);
            writeStringNoTag(str);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeStringNoTag(String str) throws IOException {
            int iEncodedLength;
            try {
                int length = str.length() * 3;
                int iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(length);
                int i11 = iComputeUInt32SizeNoTag + length;
                int i12 = this.limit;
                if (i11 > i12) {
                    byte[] bArr = new byte[length];
                    int iEncode = Utf8.encode(str, bArr, 0, length);
                    writeUInt32NoTag(iEncode);
                    writeLazy(bArr, 0, iEncode);
                    return;
                }
                if (i11 > i12 - this.position) {
                    doFlush();
                }
                int iComputeUInt32SizeNoTag2 = CodedOutputStream.computeUInt32SizeNoTag(str.length());
                int i13 = this.position;
                try {
                    if (iComputeUInt32SizeNoTag2 == iComputeUInt32SizeNoTag) {
                        int i14 = i13 + iComputeUInt32SizeNoTag2;
                        this.position = i14;
                        int iEncode2 = Utf8.encode(str, this.buffer, i14, this.limit - i14);
                        this.position = i13;
                        iEncodedLength = (iEncode2 - i13) - iComputeUInt32SizeNoTag2;
                        bufferUInt32NoTag(iEncodedLength);
                        this.position = iEncode2;
                    } else {
                        iEncodedLength = Utf8.encodedLength(str);
                        bufferUInt32NoTag(iEncodedLength);
                        this.position = Utf8.encode(str, this.buffer, this.position, iEncodedLength);
                    }
                    this.totalBytesWritten += iEncodedLength;
                } catch (Utf8.UnpairedSurrogateException e11) {
                    this.totalBytesWritten -= this.position - i13;
                    this.position = i13;
                    throw e11;
                } catch (ArrayIndexOutOfBoundsException e12) {
                    throw new OutOfSpaceException(e12);
                }
            } catch (Utf8.UnpairedSurrogateException e13) {
                inefficientWriteStringNoTag(str, e13);
            }
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeTag(int i11, int i12) throws IOException {
            writeUInt32NoTag(WireFormat.makeTag(i11, i12));
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeUInt32(int i11, int i12) throws IOException {
            flushIfNotAvailable(20);
            bufferTag(i11, 0);
            bufferUInt32NoTag(i12);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeUInt32NoTag(int i11) throws IOException {
            flushIfNotAvailable(5);
            bufferUInt32NoTag(i11);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeUInt64(int i11, long j11) throws IOException {
            flushIfNotAvailable(20);
            bufferTag(i11, 0);
            bufferUInt64NoTag(j11);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeUInt64NoTag(long j11) throws IOException {
            flushIfNotAvailable(10);
            bufferUInt64NoTag(j11);
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    private static final class g extends CodedOutputStream {
        private final ByteBuffer buffer;
        private final int initialPosition;
        private final ByteBuffer originalBuffer;

        g(ByteBuffer byteBuffer) {
            super();
            this.originalBuffer = byteBuffer;
            this.buffer = byteBuffer.duplicate().order(ByteOrder.LITTLE_ENDIAN);
            this.initialPosition = byteBuffer.position();
        }

        private void encode(String str) throws IOException {
            try {
                Utf8.encodeUtf8(str, this.buffer);
            } catch (IndexOutOfBoundsException e11) {
                throw new OutOfSpaceException(e11);
            }
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void flush() {
            e0.position(this.originalBuffer, this.buffer.position());
        }

        @Override // com.google.protobuf.CodedOutputStream
        public int getTotalBytesWritten() {
            return this.buffer.position() - this.initialPosition;
        }

        @Override // com.google.protobuf.CodedOutputStream
        public int spaceLeft() {
            return this.buffer.remaining();
        }

        @Override // com.google.protobuf.CodedOutputStream, com.google.protobuf.h
        public void write(byte b11) throws IOException {
            try {
                this.buffer.put(b11);
            } catch (BufferOverflowException e11) {
                throw new OutOfSpaceException(e11);
            }
        }

        @Override // com.google.protobuf.CodedOutputStream, com.google.protobuf.h
        public void write(ByteBuffer byteBuffer) throws IOException {
            try {
                this.buffer.put(byteBuffer);
            } catch (BufferOverflowException e11) {
                throw new OutOfSpaceException(e11);
            }
        }

        @Override // com.google.protobuf.CodedOutputStream, com.google.protobuf.h
        public void write(byte[] bArr, int i11, int i12) throws IOException {
            try {
                this.buffer.put(bArr, i11, i12);
            } catch (IndexOutOfBoundsException e11) {
                throw new OutOfSpaceException(e11);
            } catch (BufferOverflowException e12) {
                throw new OutOfSpaceException(e12);
            }
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeBool(int i11, boolean z10) throws IOException {
            writeTag(i11, 0);
            write(z10 ? (byte) 1 : (byte) 0);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeByteArray(int i11, byte[] bArr) throws IOException {
            writeByteArray(i11, bArr, 0, bArr.length);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeByteArray(int i11, byte[] bArr, int i12, int i13) throws IOException {
            writeTag(i11, 2);
            writeByteArrayNoTag(bArr, i12, i13);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeByteArrayNoTag(byte[] bArr, int i11, int i12) throws IOException {
            writeUInt32NoTag(i12);
            write(bArr, i11, i12);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeByteBuffer(int i11, ByteBuffer byteBuffer) throws IOException {
            writeTag(i11, 2);
            writeUInt32NoTag(byteBuffer.capacity());
            writeRawBytes(byteBuffer);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeBytes(int i11, ByteString byteString) throws IOException {
            writeTag(i11, 2);
            writeBytesNoTag(byteString);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeBytesNoTag(ByteString byteString) throws IOException {
            writeUInt32NoTag(byteString.size());
            byteString.writeTo(this);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeFixed32(int i11, int i12) throws IOException {
            writeTag(i11, 5);
            writeFixed32NoTag(i12);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeFixed32NoTag(int i11) throws IOException {
            try {
                this.buffer.putInt(i11);
            } catch (BufferOverflowException e11) {
                throw new OutOfSpaceException(e11);
            }
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeFixed64(int i11, long j11) throws IOException {
            writeTag(i11, 1);
            writeFixed64NoTag(j11);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeFixed64NoTag(long j11) throws IOException {
            try {
                this.buffer.putLong(j11);
            } catch (BufferOverflowException e11) {
                throw new OutOfSpaceException(e11);
            }
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeInt32(int i11, int i12) throws IOException {
            writeTag(i11, 0);
            writeInt32NoTag(i12);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeInt32NoTag(int i11) throws IOException {
            if (i11 >= 0) {
                writeUInt32NoTag(i11);
            } else {
                writeUInt64NoTag(i11);
            }
        }

        @Override // com.google.protobuf.CodedOutputStream, com.google.protobuf.h
        public void writeLazy(ByteBuffer byteBuffer) throws IOException {
            write(byteBuffer);
        }

        @Override // com.google.protobuf.CodedOutputStream, com.google.protobuf.h
        public void writeLazy(byte[] bArr, int i11, int i12) throws IOException {
            write(bArr, i11, i12);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeMessage(int i11, s0 s0Var) throws IOException {
            writeTag(i11, 2);
            writeMessageNoTag(s0Var);
        }

        @Override // com.google.protobuf.CodedOutputStream
        void writeMessage(int i11, s0 s0Var, i1 i1Var) throws IOException {
            writeTag(i11, 2);
            writeMessageNoTag(s0Var, i1Var);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeMessageNoTag(s0 s0Var) throws IOException {
            writeUInt32NoTag(s0Var.getSerializedSize());
            s0Var.writeTo(this);
        }

        @Override // com.google.protobuf.CodedOutputStream
        void writeMessageNoTag(s0 s0Var, i1 i1Var) throws IOException {
            writeUInt32NoTag(((com.google.protobuf.a) s0Var).getSerializedSize(i1Var));
            i1Var.writeTo(s0Var, this.wrapper);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeMessageSetExtension(int i11, s0 s0Var) throws IOException {
            writeTag(1, 3);
            writeUInt32(2, i11);
            writeMessage(3, s0Var);
            writeTag(1, 4);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeRawBytes(ByteBuffer byteBuffer) throws IOException {
            if (byteBuffer.hasArray()) {
                write(byteBuffer.array(), byteBuffer.arrayOffset(), byteBuffer.capacity());
                return;
            }
            ByteBuffer byteBufferDuplicate = byteBuffer.duplicate();
            e0.clear(byteBufferDuplicate);
            write(byteBufferDuplicate);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeRawMessageSetExtension(int i11, ByteString byteString) throws IOException {
            writeTag(1, 3);
            writeUInt32(2, i11);
            writeBytes(3, byteString);
            writeTag(1, 4);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeString(int i11, String str) throws IOException {
            writeTag(i11, 2);
            writeStringNoTag(str);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeStringNoTag(String str) throws IOException {
            int iPosition = this.buffer.position();
            try {
                int iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(str.length() * 3);
                int iComputeUInt32SizeNoTag2 = CodedOutputStream.computeUInt32SizeNoTag(str.length());
                if (iComputeUInt32SizeNoTag2 == iComputeUInt32SizeNoTag) {
                    int iPosition2 = this.buffer.position() + iComputeUInt32SizeNoTag2;
                    e0.position(this.buffer, iPosition2);
                    encode(str);
                    int iPosition3 = this.buffer.position();
                    e0.position(this.buffer, iPosition);
                    writeUInt32NoTag(iPosition3 - iPosition2);
                    e0.position(this.buffer, iPosition3);
                } else {
                    writeUInt32NoTag(Utf8.encodedLength(str));
                    encode(str);
                }
            } catch (Utf8.UnpairedSurrogateException e11) {
                e0.position(this.buffer, iPosition);
                inefficientWriteStringNoTag(str, e11);
            } catch (IllegalArgumentException e12) {
                throw new OutOfSpaceException(e12);
            }
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeTag(int i11, int i12) throws IOException {
            writeUInt32NoTag(WireFormat.makeTag(i11, i12));
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeUInt32(int i11, int i12) throws IOException {
            writeTag(i11, 0);
            writeUInt32NoTag(i12);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeUInt32NoTag(int i11) throws IOException {
            while ((i11 & (-128)) != 0) {
                try {
                    this.buffer.put((byte) ((i11 & 127) | 128));
                    i11 >>>= 7;
                } catch (BufferOverflowException e11) {
                    throw new OutOfSpaceException(e11);
                }
            }
            this.buffer.put((byte) i11);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeUInt64(int i11, long j11) throws IOException {
            writeTag(i11, 0);
            writeUInt64NoTag(j11);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeUInt64NoTag(long j11) throws IOException {
            while (((-128) & j11) != 0) {
                try {
                    this.buffer.put((byte) ((((int) j11) & 127) | 128));
                    j11 >>>= 7;
                } catch (BufferOverflowException e11) {
                    throw new OutOfSpaceException(e11);
                }
            }
            this.buffer.put((byte) j11);
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    private static final class h extends CodedOutputStream {
        private final long address;
        private final ByteBuffer buffer;
        private final long initialPosition;
        private final long limit;
        private final long oneVarintLimit;
        private final ByteBuffer originalBuffer;
        private long position;

        h(ByteBuffer byteBuffer) {
            super();
            this.originalBuffer = byteBuffer;
            this.buffer = byteBuffer.duplicate().order(ByteOrder.LITTLE_ENDIAN);
            long jAddressOffset = s1.addressOffset(byteBuffer);
            this.address = jAddressOffset;
            long jPosition = ((long) byteBuffer.position()) + jAddressOffset;
            this.initialPosition = jPosition;
            long jLimit = jAddressOffset + ((long) byteBuffer.limit());
            this.limit = jLimit;
            this.oneVarintLimit = jLimit - 10;
            this.position = jPosition;
        }

        private int bufferPos(long j11) {
            return (int) (j11 - this.address);
        }

        static boolean isSupported() {
            return s1.hasUnsafeByteBufferOperations();
        }

        private void repositionBuffer(long j11) {
            e0.position(this.buffer, bufferPos(j11));
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void flush() {
            e0.position(this.originalBuffer, bufferPos(this.position));
        }

        @Override // com.google.protobuf.CodedOutputStream
        public int getTotalBytesWritten() {
            return (int) (this.position - this.initialPosition);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public int spaceLeft() {
            return (int) (this.limit - this.position);
        }

        @Override // com.google.protobuf.CodedOutputStream, com.google.protobuf.h
        public void write(byte b11) throws IOException {
            long j11 = this.position;
            if (j11 >= this.limit) {
                throw new OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Long.valueOf(this.position), Long.valueOf(this.limit), 1));
            }
            this.position = 1 + j11;
            s1.putByte(j11, b11);
        }

        @Override // com.google.protobuf.CodedOutputStream, com.google.protobuf.h
        public void write(ByteBuffer byteBuffer) throws IOException {
            try {
                int iRemaining = byteBuffer.remaining();
                repositionBuffer(this.position);
                this.buffer.put(byteBuffer);
                this.position += (long) iRemaining;
            } catch (BufferOverflowException e11) {
                throw new OutOfSpaceException(e11);
            }
        }

        @Override // com.google.protobuf.CodedOutputStream, com.google.protobuf.h
        public void write(byte[] bArr, int i11, int i12) throws IOException {
            if (bArr != null && i11 >= 0 && i12 >= 0 && bArr.length - i12 >= i11) {
                long j11 = i12;
                long j12 = this.limit - j11;
                long j13 = this.position;
                if (j12 >= j13) {
                    s1.copyMemory(bArr, i11, j13, j11);
                    this.position += j11;
                    return;
                }
            }
            if (bArr != null) {
                throw new OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Long.valueOf(this.position), Long.valueOf(this.limit), Integer.valueOf(i12)));
            }
            throw new NullPointerException(AppMeasurementSdk.ConditionalUserProperty.VALUE);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeBool(int i11, boolean z10) throws IOException {
            writeTag(i11, 0);
            write(z10 ? (byte) 1 : (byte) 0);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeByteArray(int i11, byte[] bArr) throws IOException {
            writeByteArray(i11, bArr, 0, bArr.length);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeByteArray(int i11, byte[] bArr, int i12, int i13) throws IOException {
            writeTag(i11, 2);
            writeByteArrayNoTag(bArr, i12, i13);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeByteArrayNoTag(byte[] bArr, int i11, int i12) throws IOException {
            writeUInt32NoTag(i12);
            write(bArr, i11, i12);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeByteBuffer(int i11, ByteBuffer byteBuffer) throws IOException {
            writeTag(i11, 2);
            writeUInt32NoTag(byteBuffer.capacity());
            writeRawBytes(byteBuffer);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeBytes(int i11, ByteString byteString) throws IOException {
            writeTag(i11, 2);
            writeBytesNoTag(byteString);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeBytesNoTag(ByteString byteString) throws IOException {
            writeUInt32NoTag(byteString.size());
            byteString.writeTo(this);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeFixed32(int i11, int i12) throws IOException {
            writeTag(i11, 5);
            writeFixed32NoTag(i12);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeFixed32NoTag(int i11) throws IOException {
            this.buffer.putInt(bufferPos(this.position), i11);
            this.position += 4;
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeFixed64(int i11, long j11) throws IOException {
            writeTag(i11, 1);
            writeFixed64NoTag(j11);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeFixed64NoTag(long j11) throws IOException {
            this.buffer.putLong(bufferPos(this.position), j11);
            this.position += 8;
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeInt32(int i11, int i12) throws IOException {
            writeTag(i11, 0);
            writeInt32NoTag(i12);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeInt32NoTag(int i11) throws IOException {
            if (i11 >= 0) {
                writeUInt32NoTag(i11);
            } else {
                writeUInt64NoTag(i11);
            }
        }

        @Override // com.google.protobuf.CodedOutputStream, com.google.protobuf.h
        public void writeLazy(ByteBuffer byteBuffer) throws IOException {
            write(byteBuffer);
        }

        @Override // com.google.protobuf.CodedOutputStream, com.google.protobuf.h
        public void writeLazy(byte[] bArr, int i11, int i12) throws IOException {
            write(bArr, i11, i12);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeMessage(int i11, s0 s0Var) throws IOException {
            writeTag(i11, 2);
            writeMessageNoTag(s0Var);
        }

        @Override // com.google.protobuf.CodedOutputStream
        void writeMessage(int i11, s0 s0Var, i1 i1Var) throws IOException {
            writeTag(i11, 2);
            writeMessageNoTag(s0Var, i1Var);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeMessageNoTag(s0 s0Var) throws IOException {
            writeUInt32NoTag(s0Var.getSerializedSize());
            s0Var.writeTo(this);
        }

        @Override // com.google.protobuf.CodedOutputStream
        void writeMessageNoTag(s0 s0Var, i1 i1Var) throws IOException {
            writeUInt32NoTag(((com.google.protobuf.a) s0Var).getSerializedSize(i1Var));
            i1Var.writeTo(s0Var, this.wrapper);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeMessageSetExtension(int i11, s0 s0Var) throws IOException {
            writeTag(1, 3);
            writeUInt32(2, i11);
            writeMessage(3, s0Var);
            writeTag(1, 4);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeRawBytes(ByteBuffer byteBuffer) throws IOException {
            if (byteBuffer.hasArray()) {
                write(byteBuffer.array(), byteBuffer.arrayOffset(), byteBuffer.capacity());
                return;
            }
            ByteBuffer byteBufferDuplicate = byteBuffer.duplicate();
            e0.clear(byteBufferDuplicate);
            write(byteBufferDuplicate);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeRawMessageSetExtension(int i11, ByteString byteString) throws IOException {
            writeTag(1, 3);
            writeUInt32(2, i11);
            writeBytes(3, byteString);
            writeTag(1, 4);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeString(int i11, String str) throws IOException {
            writeTag(i11, 2);
            writeStringNoTag(str);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeStringNoTag(String str) throws IOException {
            long j11 = this.position;
            try {
                int iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(str.length() * 3);
                int iComputeUInt32SizeNoTag2 = CodedOutputStream.computeUInt32SizeNoTag(str.length());
                if (iComputeUInt32SizeNoTag2 == iComputeUInt32SizeNoTag) {
                    int iBufferPos = bufferPos(this.position) + iComputeUInt32SizeNoTag2;
                    e0.position(this.buffer, iBufferPos);
                    Utf8.encodeUtf8(str, this.buffer);
                    int iPosition = this.buffer.position() - iBufferPos;
                    writeUInt32NoTag(iPosition);
                    this.position += (long) iPosition;
                } else {
                    int iEncodedLength = Utf8.encodedLength(str);
                    writeUInt32NoTag(iEncodedLength);
                    repositionBuffer(this.position);
                    Utf8.encodeUtf8(str, this.buffer);
                    this.position += (long) iEncodedLength;
                }
            } catch (Utf8.UnpairedSurrogateException e11) {
                this.position = j11;
                repositionBuffer(j11);
                inefficientWriteStringNoTag(str, e11);
            } catch (IllegalArgumentException e12) {
                throw new OutOfSpaceException(e12);
            } catch (IndexOutOfBoundsException e13) {
                throw new OutOfSpaceException(e13);
            }
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeTag(int i11, int i12) throws IOException {
            writeUInt32NoTag(WireFormat.makeTag(i11, i12));
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeUInt32(int i11, int i12) throws IOException {
            writeTag(i11, 0);
            writeUInt32NoTag(i12);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeUInt32NoTag(int i11) throws IOException {
            if (this.position <= this.oneVarintLimit) {
                while ((i11 & (-128)) != 0) {
                    long j11 = this.position;
                    this.position = j11 + 1;
                    s1.putByte(j11, (byte) ((i11 & 127) | 128));
                    i11 >>>= 7;
                }
                long j12 = this.position;
                this.position = 1 + j12;
                s1.putByte(j12, (byte) i11);
                return;
            }
            while (true) {
                long j13 = this.position;
                if (j13 >= this.limit) {
                    throw new OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Long.valueOf(this.position), Long.valueOf(this.limit), 1));
                }
                if ((i11 & (-128)) == 0) {
                    this.position = 1 + j13;
                    s1.putByte(j13, (byte) i11);
                    return;
                } else {
                    this.position = j13 + 1;
                    s1.putByte(j13, (byte) ((i11 & 127) | 128));
                    i11 >>>= 7;
                }
            }
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeUInt64(int i11, long j11) throws IOException {
            writeTag(i11, 0);
            writeUInt64NoTag(j11);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeUInt64NoTag(long j11) throws IOException {
            if (this.position <= this.oneVarintLimit) {
                while ((j11 & (-128)) != 0) {
                    long j12 = this.position;
                    this.position = j12 + 1;
                    s1.putByte(j12, (byte) ((((int) j11) & 127) | 128));
                    j11 >>>= 7;
                }
                long j13 = this.position;
                this.position = 1 + j13;
                s1.putByte(j13, (byte) j11);
                return;
            }
            while (true) {
                long j14 = this.position;
                if (j14 >= this.limit) {
                    throw new OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Long.valueOf(this.position), Long.valueOf(this.limit), 1));
                }
                if ((j11 & (-128)) == 0) {
                    this.position = 1 + j14;
                    s1.putByte(j14, (byte) j11);
                    return;
                } else {
                    this.position = j14 + 1;
                    s1.putByte(j14, (byte) ((((int) j11) & 127) | 128));
                    j11 >>>= 7;
                }
            }
        }
    }

    private CodedOutputStream() {
    }

    public static int computeBoolSize(int i11, boolean z10) {
        return computeTagSize(i11) + computeBoolSizeNoTag(z10);
    }

    public static int computeBoolSizeNoTag(boolean z10) {
        return 1;
    }

    public static int computeByteArraySize(int i11, byte[] bArr) {
        return computeTagSize(i11) + computeByteArraySizeNoTag(bArr);
    }

    public static int computeByteArraySizeNoTag(byte[] bArr) {
        return computeLengthDelimitedFieldSize(bArr.length);
    }

    public static int computeByteBufferSize(int i11, ByteBuffer byteBuffer) {
        return computeTagSize(i11) + computeByteBufferSizeNoTag(byteBuffer);
    }

    public static int computeByteBufferSizeNoTag(ByteBuffer byteBuffer) {
        return computeLengthDelimitedFieldSize(byteBuffer.capacity());
    }

    public static int computeBytesSize(int i11, ByteString byteString) {
        return computeTagSize(i11) + computeBytesSizeNoTag(byteString);
    }

    public static int computeBytesSizeNoTag(ByteString byteString) {
        return computeLengthDelimitedFieldSize(byteString.size());
    }

    public static int computeDoubleSize(int i11, double d11) {
        return computeTagSize(i11) + computeDoubleSizeNoTag(d11);
    }

    public static int computeDoubleSizeNoTag(double d11) {
        return 8;
    }

    public static int computeEnumSize(int i11, int i12) {
        return computeTagSize(i11) + computeEnumSizeNoTag(i12);
    }

    public static int computeEnumSizeNoTag(int i11) {
        return computeInt32SizeNoTag(i11);
    }

    public static int computeFixed32Size(int i11, int i12) {
        return computeTagSize(i11) + computeFixed32SizeNoTag(i12);
    }

    public static int computeFixed32SizeNoTag(int i11) {
        return 4;
    }

    public static int computeFixed64Size(int i11, long j11) {
        return computeTagSize(i11) + computeFixed64SizeNoTag(j11);
    }

    public static int computeFixed64SizeNoTag(long j11) {
        return 8;
    }

    public static int computeFloatSize(int i11, float f11) {
        return computeTagSize(i11) + computeFloatSizeNoTag(f11);
    }

    public static int computeFloatSizeNoTag(float f11) {
        return 4;
    }

    @Deprecated
    public static int computeGroupSize(int i11, s0 s0Var) {
        return (computeTagSize(i11) * 2) + s0Var.getSerializedSize();
    }

    @Deprecated
    static int computeGroupSize(int i11, s0 s0Var, i1 i1Var) {
        return (computeTagSize(i11) * 2) + computeGroupSizeNoTag(s0Var, i1Var);
    }

    @Deprecated
    public static int computeGroupSizeNoTag(s0 s0Var) {
        return s0Var.getSerializedSize();
    }

    @Deprecated
    static int computeGroupSizeNoTag(s0 s0Var, i1 i1Var) {
        return ((com.google.protobuf.a) s0Var).getSerializedSize(i1Var);
    }

    public static int computeInt32Size(int i11, int i12) {
        return computeTagSize(i11) + computeInt32SizeNoTag(i12);
    }

    public static int computeInt32SizeNoTag(int i11) {
        if (i11 >= 0) {
            return computeUInt32SizeNoTag(i11);
        }
        return 10;
    }

    public static int computeInt64Size(int i11, long j11) {
        return computeTagSize(i11) + computeInt64SizeNoTag(j11);
    }

    public static int computeInt64SizeNoTag(long j11) {
        return computeUInt64SizeNoTag(j11);
    }

    public static int computeLazyFieldMessageSetExtensionSize(int i11, g0 g0Var) {
        return (computeTagSize(1) * 2) + computeUInt32Size(2, i11) + computeLazyFieldSize(3, g0Var);
    }

    public static int computeLazyFieldSize(int i11, g0 g0Var) {
        return computeTagSize(i11) + computeLazyFieldSizeNoTag(g0Var);
    }

    public static int computeLazyFieldSizeNoTag(g0 g0Var) {
        return computeLengthDelimitedFieldSize(g0Var.getSerializedSize());
    }

    static int computeLengthDelimitedFieldSize(int i11) {
        return computeUInt32SizeNoTag(i11) + i11;
    }

    public static int computeMessageSetExtensionSize(int i11, s0 s0Var) {
        return (computeTagSize(1) * 2) + computeUInt32Size(2, i11) + computeMessageSize(3, s0Var);
    }

    public static int computeMessageSize(int i11, s0 s0Var) {
        return computeTagSize(i11) + computeMessageSizeNoTag(s0Var);
    }

    static int computeMessageSize(int i11, s0 s0Var, i1 i1Var) {
        return computeTagSize(i11) + computeMessageSizeNoTag(s0Var, i1Var);
    }

    public static int computeMessageSizeNoTag(s0 s0Var) {
        return computeLengthDelimitedFieldSize(s0Var.getSerializedSize());
    }

    static int computeMessageSizeNoTag(s0 s0Var, i1 i1Var) {
        return computeLengthDelimitedFieldSize(((com.google.protobuf.a) s0Var).getSerializedSize(i1Var));
    }

    static int computePreferredBufferSize(int i11) {
        if (i11 > 4096) {
            return 4096;
        }
        return i11;
    }

    public static int computeRawMessageSetExtensionSize(int i11, ByteString byteString) {
        return (computeTagSize(1) * 2) + computeUInt32Size(2, i11) + computeBytesSize(3, byteString);
    }

    @Deprecated
    public static int computeRawVarint32Size(int i11) {
        return computeUInt32SizeNoTag(i11);
    }

    @Deprecated
    public static int computeRawVarint64Size(long j11) {
        return computeUInt64SizeNoTag(j11);
    }

    public static int computeSFixed32Size(int i11, int i12) {
        return computeTagSize(i11) + computeSFixed32SizeNoTag(i12);
    }

    public static int computeSFixed32SizeNoTag(int i11) {
        return 4;
    }

    public static int computeSFixed64Size(int i11, long j11) {
        return computeTagSize(i11) + computeSFixed64SizeNoTag(j11);
    }

    public static int computeSFixed64SizeNoTag(long j11) {
        return 8;
    }

    public static int computeSInt32Size(int i11, int i12) {
        return computeTagSize(i11) + computeSInt32SizeNoTag(i12);
    }

    public static int computeSInt32SizeNoTag(int i11) {
        return computeUInt32SizeNoTag(encodeZigZag32(i11));
    }

    public static int computeSInt64Size(int i11, long j11) {
        return computeTagSize(i11) + computeSInt64SizeNoTag(j11);
    }

    public static int computeSInt64SizeNoTag(long j11) {
        return computeUInt64SizeNoTag(encodeZigZag64(j11));
    }

    public static int computeStringSize(int i11, String str) {
        return computeTagSize(i11) + computeStringSizeNoTag(str);
    }

    public static int computeStringSizeNoTag(String str) {
        int length;
        try {
            length = Utf8.encodedLength(str);
        } catch (Utf8.UnpairedSurrogateException unused) {
            length = str.getBytes(y.UTF_8).length;
        }
        return computeLengthDelimitedFieldSize(length);
    }

    public static int computeTagSize(int i11) {
        return computeUInt32SizeNoTag(WireFormat.makeTag(i11, 0));
    }

    public static int computeUInt32Size(int i11, int i12) {
        return computeTagSize(i11) + computeUInt32SizeNoTag(i12);
    }

    public static int computeUInt32SizeNoTag(int i11) {
        if ((i11 & (-128)) == 0) {
            return 1;
        }
        if ((i11 & (-16384)) == 0) {
            return 2;
        }
        if (((-2097152) & i11) == 0) {
            return 3;
        }
        return (i11 & (-268435456)) == 0 ? 4 : 5;
    }

    public static int computeUInt64Size(int i11, long j11) {
        return computeTagSize(i11) + computeUInt64SizeNoTag(j11);
    }

    public static int computeUInt64SizeNoTag(long j11) {
        int i11;
        if (((-128) & j11) == 0) {
            return 1;
        }
        if (j11 < 0) {
            return 10;
        }
        if (((-34359738368L) & j11) != 0) {
            j11 >>>= 28;
            i11 = 6;
        } else {
            i11 = 2;
        }
        if (((-2097152) & j11) != 0) {
            i11 += 2;
            j11 >>>= 14;
        }
        return (j11 & (-16384)) != 0 ? i11 + 1 : i11;
    }

    public static int encodeZigZag32(int i11) {
        return (i11 >> 31) ^ (i11 << 1);
    }

    public static long encodeZigZag64(long j11) {
        return (j11 >> 63) ^ (j11 << 1);
    }

    static CodedOutputStream newInstance(com.google.protobuf.h hVar, int i11) {
        if (i11 >= 0) {
            return new d(hVar, i11);
        }
        throw new IllegalArgumentException("bufferSize must be positive");
    }

    public static CodedOutputStream newInstance(OutputStream outputStream) {
        return newInstance(outputStream, 4096);
    }

    public static CodedOutputStream newInstance(OutputStream outputStream, int i11) {
        return new f(outputStream, i11);
    }

    public static CodedOutputStream newInstance(ByteBuffer byteBuffer) {
        if (byteBuffer.hasArray()) {
            return new e(byteBuffer);
        }
        if (!byteBuffer.isDirect() || byteBuffer.isReadOnly()) {
            throw new IllegalArgumentException("ByteBuffer is read-only");
        }
        return h.isSupported() ? newUnsafeInstance(byteBuffer) : newSafeInstance(byteBuffer);
    }

    @Deprecated
    public static CodedOutputStream newInstance(ByteBuffer byteBuffer, int i11) {
        return newInstance(byteBuffer);
    }

    public static CodedOutputStream newInstance(byte[] bArr) {
        return newInstance(bArr, 0, bArr.length);
    }

    public static CodedOutputStream newInstance(byte[] bArr, int i11, int i12) {
        return new c(bArr, i11, i12);
    }

    static CodedOutputStream newSafeInstance(ByteBuffer byteBuffer) {
        return new g(byteBuffer);
    }

    static CodedOutputStream newUnsafeInstance(ByteBuffer byteBuffer) {
        return new h(byteBuffer);
    }

    public final void checkNoSpaceLeft() {
        if (spaceLeft() != 0) {
            throw new IllegalStateException("Did not write as much data as expected.");
        }
    }

    public abstract void flush() throws IOException;

    public abstract int getTotalBytesWritten();

    final void inefficientWriteStringNoTag(String str, Utf8.UnpairedSurrogateException unpairedSurrogateException) throws IOException {
        logger.log(Level.WARNING, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) unpairedSurrogateException);
        byte[] bytes = str.getBytes(y.UTF_8);
        try {
            writeUInt32NoTag(bytes.length);
            writeLazy(bytes, 0, bytes.length);
        } catch (IndexOutOfBoundsException e11) {
            throw new OutOfSpaceException(e11);
        }
    }

    boolean isSerializationDeterministic() {
        return this.serializationDeterministic;
    }

    public abstract int spaceLeft();

    public void useDeterministicSerialization() {
        this.serializationDeterministic = true;
    }

    @Override // com.google.protobuf.h
    public abstract void write(byte b11) throws IOException;

    @Override // com.google.protobuf.h
    public abstract void write(ByteBuffer byteBuffer) throws IOException;

    @Override // com.google.protobuf.h
    public abstract void write(byte[] bArr, int i11, int i12) throws IOException;

    public abstract void writeBool(int i11, boolean z10) throws IOException;

    public final void writeBoolNoTag(boolean z10) throws IOException {
        write(z10 ? (byte) 1 : (byte) 0);
    }

    public abstract void writeByteArray(int i11, byte[] bArr) throws IOException;

    public abstract void writeByteArray(int i11, byte[] bArr, int i12, int i13) throws IOException;

    public final void writeByteArrayNoTag(byte[] bArr) throws IOException {
        writeByteArrayNoTag(bArr, 0, bArr.length);
    }

    abstract void writeByteArrayNoTag(byte[] bArr, int i11, int i12) throws IOException;

    public abstract void writeByteBuffer(int i11, ByteBuffer byteBuffer) throws IOException;

    public abstract void writeBytes(int i11, ByteString byteString) throws IOException;

    public abstract void writeBytesNoTag(ByteString byteString) throws IOException;

    public final void writeDouble(int i11, double d11) throws IOException {
        writeFixed64(i11, Double.doubleToRawLongBits(d11));
    }

    public final void writeDoubleNoTag(double d11) throws IOException {
        writeFixed64NoTag(Double.doubleToRawLongBits(d11));
    }

    public final void writeEnum(int i11, int i12) throws IOException {
        writeInt32(i11, i12);
    }

    public final void writeEnumNoTag(int i11) throws IOException {
        writeInt32NoTag(i11);
    }

    public abstract void writeFixed32(int i11, int i12) throws IOException;

    public abstract void writeFixed32NoTag(int i11) throws IOException;

    public abstract void writeFixed64(int i11, long j11) throws IOException;

    public abstract void writeFixed64NoTag(long j11) throws IOException;

    public final void writeFloat(int i11, float f11) throws IOException {
        writeFixed32(i11, Float.floatToRawIntBits(f11));
    }

    public final void writeFloatNoTag(float f11) throws IOException {
        writeFixed32NoTag(Float.floatToRawIntBits(f11));
    }

    @Deprecated
    public final void writeGroup(int i11, s0 s0Var) throws IOException {
        writeTag(i11, 3);
        writeGroupNoTag(s0Var);
        writeTag(i11, 4);
    }

    @Deprecated
    final void writeGroup(int i11, s0 s0Var, i1 i1Var) throws IOException {
        writeTag(i11, 3);
        writeGroupNoTag(s0Var, i1Var);
        writeTag(i11, 4);
    }

    @Deprecated
    public final void writeGroupNoTag(s0 s0Var) throws IOException {
        s0Var.writeTo(this);
    }

    @Deprecated
    final void writeGroupNoTag(s0 s0Var, i1 i1Var) throws IOException {
        i1Var.writeTo(s0Var, this.wrapper);
    }

    public abstract void writeInt32(int i11, int i12) throws IOException;

    public abstract void writeInt32NoTag(int i11) throws IOException;

    public final void writeInt64(int i11, long j11) throws IOException {
        writeUInt64(i11, j11);
    }

    public final void writeInt64NoTag(long j11) throws IOException {
        writeUInt64NoTag(j11);
    }

    @Override // com.google.protobuf.h
    public abstract void writeLazy(ByteBuffer byteBuffer) throws IOException;

    @Override // com.google.protobuf.h
    public abstract void writeLazy(byte[] bArr, int i11, int i12) throws IOException;

    public abstract void writeMessage(int i11, s0 s0Var) throws IOException;

    abstract void writeMessage(int i11, s0 s0Var, i1 i1Var) throws IOException;

    public abstract void writeMessageNoTag(s0 s0Var) throws IOException;

    abstract void writeMessageNoTag(s0 s0Var, i1 i1Var) throws IOException;

    public abstract void writeMessageSetExtension(int i11, s0 s0Var) throws IOException;

    public final void writeRawByte(byte b11) throws IOException {
        write(b11);
    }

    public final void writeRawByte(int i11) throws IOException {
        write((byte) i11);
    }

    public final void writeRawBytes(ByteString byteString) throws IOException {
        byteString.writeTo(this);
    }

    public abstract void writeRawBytes(ByteBuffer byteBuffer) throws IOException;

    public final void writeRawBytes(byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    public final void writeRawBytes(byte[] bArr, int i11, int i12) throws IOException {
        write(bArr, i11, i12);
    }

    @Deprecated
    public final void writeRawLittleEndian32(int i11) throws IOException {
        writeFixed32NoTag(i11);
    }

    @Deprecated
    public final void writeRawLittleEndian64(long j11) throws IOException {
        writeFixed64NoTag(j11);
    }

    public abstract void writeRawMessageSetExtension(int i11, ByteString byteString) throws IOException;

    @Deprecated
    public final void writeRawVarint32(int i11) throws IOException {
        writeUInt32NoTag(i11);
    }

    @Deprecated
    public final void writeRawVarint64(long j11) throws IOException {
        writeUInt64NoTag(j11);
    }

    public final void writeSFixed32(int i11, int i12) throws IOException {
        writeFixed32(i11, i12);
    }

    public final void writeSFixed32NoTag(int i11) throws IOException {
        writeFixed32NoTag(i11);
    }

    public final void writeSFixed64(int i11, long j11) throws IOException {
        writeFixed64(i11, j11);
    }

    public final void writeSFixed64NoTag(long j11) throws IOException {
        writeFixed64NoTag(j11);
    }

    public final void writeSInt32(int i11, int i12) throws IOException {
        writeUInt32(i11, encodeZigZag32(i12));
    }

    public final void writeSInt32NoTag(int i11) throws IOException {
        writeUInt32NoTag(encodeZigZag32(i11));
    }

    public final void writeSInt64(int i11, long j11) throws IOException {
        writeUInt64(i11, encodeZigZag64(j11));
    }

    public final void writeSInt64NoTag(long j11) throws IOException {
        writeUInt64NoTag(encodeZigZag64(j11));
    }

    public abstract void writeString(int i11, String str) throws IOException;

    public abstract void writeStringNoTag(String str) throws IOException;

    public abstract void writeTag(int i11, int i12) throws IOException;

    public abstract void writeUInt32(int i11, int i12) throws IOException;

    public abstract void writeUInt32NoTag(int i11) throws IOException;

    public abstract void writeUInt64(int i11, long j11) throws IOException;

    public abstract void writeUInt64NoTag(long j11) throws IOException;
}
