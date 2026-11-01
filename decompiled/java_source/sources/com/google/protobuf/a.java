package com.google.protobuf;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public abstract class a implements s0 {
    protected int memoizedHashCode = 0;

    /* JADX INFO: renamed from: com.google.protobuf.a$a, reason: collision with other inner class name */
    public static abstract class AbstractC0453a implements s0.a {

        /* JADX INFO: renamed from: com.google.protobuf.a$a$a, reason: collision with other inner class name */
        static final class C0454a extends FilterInputStream {
            private int limit;

            C0454a(InputStream inputStream, int i11) {
                super(inputStream);
                this.limit = i11;
            }

            @Override // java.io.FilterInputStream, java.io.InputStream
            public int available() throws IOException {
                return Math.min(super.available(), this.limit);
            }

            @Override // java.io.FilterInputStream, java.io.InputStream
            public int read() throws IOException {
                if (this.limit <= 0) {
                    return -1;
                }
                int i11 = super.read();
                if (i11 >= 0) {
                    this.limit--;
                }
                return i11;
            }

            @Override // java.io.FilterInputStream, java.io.InputStream
            public int read(byte[] bArr, int i11, int i12) throws IOException {
                int i13 = this.limit;
                if (i13 <= 0) {
                    return -1;
                }
                int i14 = super.read(bArr, i11, Math.min(i12, i13));
                if (i14 >= 0) {
                    this.limit -= i14;
                }
                return i14;
            }

            @Override // java.io.FilterInputStream, java.io.InputStream
            public long skip(long j11) throws IOException {
                int iSkip = (int) super.skip(Math.min(j11, this.limit));
                if (iSkip >= 0) {
                    this.limit -= iSkip;
                }
                return iSkip;
            }
        }

        @Deprecated
        protected static <T> void addAll(Iterable<T> iterable, Collection<? super T> collection) {
            addAll((Iterable) iterable, (List) collection);
        }

        protected static <T> void addAll(Iterable<T> iterable, List<? super T> list) {
            y.checkNotNull(iterable);
            if (!(iterable instanceof i0)) {
                if (iterable instanceof c1) {
                    list.addAll((Collection) iterable);
                    return;
                } else {
                    addAllCheckingNulls(iterable, list);
                    return;
                }
            }
            List<?> underlyingElements = ((i0) iterable).getUnderlyingElements();
            i0 i0Var = (i0) list;
            int size = list.size();
            for (Object obj : underlyingElements) {
                if (obj == null) {
                    String str = "Element at index " + (i0Var.size() - size) + " is null.";
                    for (int size2 = i0Var.size() - 1; size2 >= size; size2--) {
                        i0Var.remove(size2);
                    }
                    throw new NullPointerException(str);
                }
                if (obj instanceof ByteString) {
                    i0Var.add((ByteString) obj);
                } else {
                    i0Var.add((String) obj);
                }
            }
        }

        private static <T> void addAllCheckingNulls(Iterable<T> iterable, List<? super T> list) {
            if ((list instanceof ArrayList) && (iterable instanceof Collection)) {
                ((ArrayList) list).ensureCapacity(list.size() + ((Collection) iterable).size());
            }
            int size = list.size();
            for (T t11 : iterable) {
                if (t11 == null) {
                    String str = "Element at index " + (list.size() - size) + " is null.";
                    for (int size2 = list.size() - 1; size2 >= size; size2--) {
                        list.remove(size2);
                    }
                    throw new NullPointerException(str);
                }
                list.add(t11);
            }
        }

        private String getReadingExceptionMessage(String str) {
            return "Reading " + getClass().getName() + " from a " + str + " threw an IOException (should never happen).";
        }

        protected static UninitializedMessageException newUninitializedMessageException(s0 s0Var) {
            return new UninitializedMessageException(s0Var);
        }

        @Override // com.google.protobuf.s0.a
        public abstract /* synthetic */ s0 build();

        @Override // com.google.protobuf.s0.a
        public abstract /* synthetic */ s0 buildPartial();

        @Override // com.google.protobuf.s0.a
        public abstract /* synthetic */ s0.a clear();

        @Override // 
        /* JADX INFO: renamed from: clone */
        public abstract AbstractC0453a mo292clone();

        @Override // com.google.protobuf.s0.a, com.google.protobuf.t0
        public abstract /* synthetic */ s0 getDefaultInstanceForType();

        protected abstract AbstractC0453a internalMergeFrom(a aVar);

        @Override // com.google.protobuf.s0.a, com.google.protobuf.t0
        public abstract /* synthetic */ boolean isInitialized();

        @Override // com.google.protobuf.s0.a
        public boolean mergeDelimitedFrom(InputStream inputStream) throws IOException {
            return mergeDelimitedFrom(inputStream, o.getEmptyRegistry());
        }

        @Override // com.google.protobuf.s0.a
        public boolean mergeDelimitedFrom(InputStream inputStream, o oVar) throws IOException {
            int i11 = inputStream.read();
            if (i11 == -1) {
                return false;
            }
            mergeFrom((InputStream) new C0454a(inputStream, i.readRawVarint32(i11, inputStream)), oVar);
            return true;
        }

        @Override // com.google.protobuf.s0.a
        public AbstractC0453a mergeFrom(ByteString byteString) throws InvalidProtocolBufferException {
            try {
                i iVarNewCodedInput = byteString.newCodedInput();
                mergeFrom(iVarNewCodedInput);
                iVarNewCodedInput.checkLastTagWas(0);
                return this;
            } catch (InvalidProtocolBufferException e11) {
                throw e11;
            } catch (IOException e12) {
                throw new RuntimeException(getReadingExceptionMessage("ByteString"), e12);
            }
        }

        @Override // com.google.protobuf.s0.a
        public AbstractC0453a mergeFrom(ByteString byteString, o oVar) throws InvalidProtocolBufferException {
            try {
                i iVarNewCodedInput = byteString.newCodedInput();
                mergeFrom(iVarNewCodedInput, oVar);
                iVarNewCodedInput.checkLastTagWas(0);
                return this;
            } catch (InvalidProtocolBufferException e11) {
                throw e11;
            } catch (IOException e12) {
                throw new RuntimeException(getReadingExceptionMessage("ByteString"), e12);
            }
        }

        @Override // com.google.protobuf.s0.a
        public AbstractC0453a mergeFrom(i iVar) throws IOException {
            return mergeFrom(iVar, o.getEmptyRegistry());
        }

        @Override // com.google.protobuf.s0.a
        public abstract AbstractC0453a mergeFrom(i iVar, o oVar) throws IOException;

        @Override // com.google.protobuf.s0.a
        public AbstractC0453a mergeFrom(s0 s0Var) {
            if (getDefaultInstanceForType().getClass().isInstance(s0Var)) {
                return internalMergeFrom((a) s0Var);
            }
            throw new IllegalArgumentException("mergeFrom(MessageLite) can only merge messages of the same type.");
        }

        @Override // com.google.protobuf.s0.a
        public AbstractC0453a mergeFrom(InputStream inputStream) throws IOException {
            i iVarNewInstance = i.newInstance(inputStream);
            mergeFrom(iVarNewInstance);
            iVarNewInstance.checkLastTagWas(0);
            return this;
        }

        @Override // com.google.protobuf.s0.a
        public AbstractC0453a mergeFrom(InputStream inputStream, o oVar) throws IOException {
            i iVarNewInstance = i.newInstance(inputStream);
            mergeFrom(iVarNewInstance, oVar);
            iVarNewInstance.checkLastTagWas(0);
            return this;
        }

        @Override // com.google.protobuf.s0.a
        public AbstractC0453a mergeFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return mergeFrom(bArr, 0, bArr.length);
        }

        @Override // com.google.protobuf.s0.a
        public AbstractC0453a mergeFrom(byte[] bArr, int i11, int i12) throws InvalidProtocolBufferException {
            try {
                i iVarNewInstance = i.newInstance(bArr, i11, i12);
                mergeFrom(iVarNewInstance);
                iVarNewInstance.checkLastTagWas(0);
                return this;
            } catch (InvalidProtocolBufferException e11) {
                throw e11;
            } catch (IOException e12) {
                throw new RuntimeException(getReadingExceptionMessage("byte array"), e12);
            }
        }

        @Override // com.google.protobuf.s0.a
        public AbstractC0453a mergeFrom(byte[] bArr, int i11, int i12, o oVar) throws InvalidProtocolBufferException {
            try {
                i iVarNewInstance = i.newInstance(bArr, i11, i12);
                mergeFrom(iVarNewInstance, oVar);
                iVarNewInstance.checkLastTagWas(0);
                return this;
            } catch (InvalidProtocolBufferException e11) {
                throw e11;
            } catch (IOException e12) {
                throw new RuntimeException(getReadingExceptionMessage("byte array"), e12);
            }
        }

        @Override // com.google.protobuf.s0.a
        public AbstractC0453a mergeFrom(byte[] bArr, o oVar) throws InvalidProtocolBufferException {
            return mergeFrom(bArr, 0, bArr.length, oVar);
        }
    }

    @Deprecated
    protected static <T> void addAll(Iterable<T> iterable, Collection<? super T> collection) {
        AbstractC0453a.addAll((Iterable) iterable, (List) collection);
    }

    protected static <T> void addAll(Iterable<T> iterable, List<? super T> list) {
        AbstractC0453a.addAll((Iterable) iterable, (List) list);
    }

    protected static void checkByteStringIsUtf8(ByteString byteString) throws IllegalArgumentException {
        if (!byteString.isValidUtf8()) {
            throw new IllegalArgumentException("Byte string is not UTF-8.");
        }
    }

    private String getSerializingExceptionMessage(String str) {
        return "Serializing " + getClass().getName() + " to a " + str + " threw an IOException (should never happen).";
    }

    @Override // com.google.protobuf.s0, com.google.protobuf.t0
    public abstract /* synthetic */ s0 getDefaultInstanceForType();

    int getMemoizedSerializedSize() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.protobuf.s0
    public abstract /* synthetic */ b1 getParserForType();

    @Override // com.google.protobuf.s0
    public abstract /* synthetic */ int getSerializedSize();

    int getSerializedSize(i1 i1Var) {
        int memoizedSerializedSize = getMemoizedSerializedSize();
        if (memoizedSerializedSize != -1) {
            return memoizedSerializedSize;
        }
        int serializedSize = i1Var.getSerializedSize(this);
        setMemoizedSerializedSize(serializedSize);
        return serializedSize;
    }

    @Override // com.google.protobuf.s0, com.google.protobuf.t0
    public abstract /* synthetic */ boolean isInitialized();

    @Override // com.google.protobuf.s0
    public abstract /* synthetic */ s0.a newBuilderForType();

    UninitializedMessageException newUninitializedMessageException() {
        return new UninitializedMessageException(this);
    }

    void setMemoizedSerializedSize(int i11) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.protobuf.s0
    public abstract /* synthetic */ s0.a toBuilder();

    @Override // com.google.protobuf.s0
    public byte[] toByteArray() {
        try {
            byte[] bArr = new byte[getSerializedSize()];
            CodedOutputStream codedOutputStreamNewInstance = CodedOutputStream.newInstance(bArr);
            writeTo(codedOutputStreamNewInstance);
            codedOutputStreamNewInstance.checkNoSpaceLeft();
            return bArr;
        } catch (IOException e11) {
            throw new RuntimeException(getSerializingExceptionMessage("byte array"), e11);
        }
    }

    @Override // com.google.protobuf.s0
    public ByteString toByteString() {
        try {
            ByteString.f fVarNewCodedBuilder = ByteString.newCodedBuilder(getSerializedSize());
            writeTo(fVarNewCodedBuilder.getCodedOutput());
            return fVarNewCodedBuilder.build();
        } catch (IOException e11) {
            throw new RuntimeException(getSerializingExceptionMessage("ByteString"), e11);
        }
    }

    @Override // com.google.protobuf.s0
    public void writeDelimitedTo(OutputStream outputStream) throws IOException {
        int serializedSize = getSerializedSize();
        CodedOutputStream codedOutputStreamNewInstance = CodedOutputStream.newInstance(outputStream, CodedOutputStream.computePreferredBufferSize(CodedOutputStream.computeUInt32SizeNoTag(serializedSize) + serializedSize));
        codedOutputStreamNewInstance.writeUInt32NoTag(serializedSize);
        writeTo(codedOutputStreamNewInstance);
        codedOutputStreamNewInstance.flush();
    }

    @Override // com.google.protobuf.s0
    public abstract /* synthetic */ void writeTo(CodedOutputStream codedOutputStream) throws IOException;

    @Override // com.google.protobuf.s0
    public void writeTo(OutputStream outputStream) throws IOException {
        CodedOutputStream codedOutputStreamNewInstance = CodedOutputStream.newInstance(outputStream, CodedOutputStream.computePreferredBufferSize(getSerializedSize()));
        writeTo(codedOutputStreamNewInstance);
        codedOutputStreamNewInstance.flush();
    }
}
