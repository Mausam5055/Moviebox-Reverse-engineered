package androidx.datastore.preferences.protobuf;

import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class a implements n0 {
    protected int memoizedHashCode = 0;

    /* JADX INFO: renamed from: androidx.datastore.preferences.protobuf.a$a, reason: collision with other inner class name */
    public static abstract class AbstractC0074a implements n0.a {
        protected static void b(Iterable iterable, List list) {
            w.a(iterable);
            if (!(iterable instanceof b0)) {
                if (iterable instanceof w0) {
                    list.addAll((Collection) iterable);
                    return;
                } else {
                    c(iterable, list);
                    return;
                }
            }
            List underlyingElements = ((b0) iterable).getUnderlyingElements();
            b0 b0Var = (b0) list;
            int size = list.size();
            for (Object obj : underlyingElements) {
                if (obj == null) {
                    String str = "Element at index " + (b0Var.size() - size) + " is null.";
                    for (int size2 = b0Var.size() - 1; size2 >= size; size2--) {
                        b0Var.remove(size2);
                    }
                    throw new NullPointerException(str);
                }
                if (obj instanceof ByteString) {
                    b0Var.i((ByteString) obj);
                } else if (obj instanceof byte[]) {
                    b0Var.i(ByteString.copyFrom((byte[]) obj));
                } else {
                    b0Var.add((String) obj);
                }
            }
        }

        private static void c(Iterable iterable, List list) {
            if ((list instanceof ArrayList) && (iterable instanceof Collection)) {
                ((ArrayList) list).ensureCapacity(list.size() + ((Collection) iterable).size());
            }
            int size = list.size();
            for (Object obj : iterable) {
                if (obj == null) {
                    String str = "Element at index " + (list.size() - size) + " is null.";
                    for (int size2 = list.size() - 1; size2 >= size; size2--) {
                        list.remove(size2);
                    }
                    throw new NullPointerException(str);
                }
                list.add(obj);
            }
        }

        private String f(String str) {
            return "Reading " + getClass().getName() + " from a " + str + " threw an IOException (should never happen).";
        }

        protected static UninitializedMessageException l(n0 n0Var) {
            return new UninitializedMessageException(n0Var);
        }

        @Override // 
        public abstract AbstractC0074a e();

        public AbstractC0074a g(i iVar) {
            return i(iVar, o.b());
        }

        public abstract AbstractC0074a i(i iVar, o oVar);

        @Override // androidx.datastore.preferences.protobuf.n0.a
        /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
        public AbstractC0074a mergeFrom(byte[] bArr) {
            return k(bArr, 0, bArr.length);
        }

        public AbstractC0074a k(byte[] bArr, int i11, int i12) throws InvalidProtocolBufferException {
            try {
                i iVarL = i.l(bArr, i11, i12);
                g(iVarL);
                iVarL.a(0);
                return this;
            } catch (InvalidProtocolBufferException e11) {
                throw e11;
            } catch (IOException e12) {
                throw new RuntimeException(f("byte array"), e12);
            }
        }
    }

    protected static void b(Iterable iterable, List list) {
        AbstractC0074a.b(iterable, list);
    }

    private String e(String str) {
        return "Serializing " + getClass().getName() + " to a " + str + " threw an IOException (should never happen).";
    }

    int c() {
        throw new UnsupportedOperationException();
    }

    int d(b1 b1Var) {
        int iC = c();
        if (iC != -1) {
            return iC;
        }
        int serializedSize = b1Var.getSerializedSize(this);
        g(serializedSize);
        return serializedSize;
    }

    UninitializedMessageException f() {
        return new UninitializedMessageException(this);
    }

    void g(int i11) {
        throw new UnsupportedOperationException();
    }

    public void h(OutputStream outputStream) {
        CodedOutputStream codedOutputStreamC0 = CodedOutputStream.c0(outputStream, CodedOutputStream.G(getSerializedSize()));
        a(codedOutputStreamC0);
        codedOutputStreamC0.Z();
    }

    @Override // androidx.datastore.preferences.protobuf.n0
    public byte[] toByteArray() {
        try {
            byte[] bArr = new byte[getSerializedSize()];
            CodedOutputStream codedOutputStreamD0 = CodedOutputStream.d0(bArr);
            a(codedOutputStreamD0);
            codedOutputStreamD0.d();
            return bArr;
        } catch (IOException e11) {
            throw new RuntimeException(e("byte array"), e11);
        }
    }

    @Override // androidx.datastore.preferences.protobuf.n0
    public ByteString toByteString() {
        try {
            ByteString.f fVarNewCodedBuilder = ByteString.newCodedBuilder(getSerializedSize());
            a(fVarNewCodedBuilder.b());
            return fVarNewCodedBuilder.a();
        } catch (IOException e11) {
            throw new RuntimeException(e("ByteString"), e11);
        }
    }
}
