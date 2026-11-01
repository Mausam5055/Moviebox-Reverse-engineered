package com.google.protobuf;

import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
public class g0 {
    private static final o EMPTY_REGISTRY = o.getEmptyRegistry();
    private ByteString delayedBytes;
    private o extensionRegistry;
    private volatile ByteString memoizedBytes;
    protected volatile s0 value;

    public g0() {
    }

    public g0(o oVar, ByteString byteString) {
        checkArguments(oVar, byteString);
        this.extensionRegistry = oVar;
        this.delayedBytes = byteString;
    }

    private static void checkArguments(o oVar, ByteString byteString) {
        if (oVar == null) {
            throw new NullPointerException("found null ExtensionRegistry");
        }
        if (byteString == null) {
            throw new NullPointerException("found null ByteString");
        }
    }

    public static g0 fromValue(s0 s0Var) {
        g0 g0Var = new g0();
        g0Var.setValue(s0Var);
        return g0Var;
    }

    private static s0 mergeValueAndBytes(s0 s0Var, ByteString byteString, o oVar) {
        try {
            return s0Var.toBuilder().mergeFrom(byteString, oVar).build();
        } catch (InvalidProtocolBufferException unused) {
            return s0Var;
        }
    }

    public void clear() {
        this.delayedBytes = null;
        this.value = null;
        this.memoizedBytes = null;
    }

    public boolean containsDefaultInstance() {
        ByteString byteString;
        ByteString byteString2 = this.memoizedBytes;
        ByteString byteString3 = ByteString.EMPTY;
        return byteString2 == byteString3 || (this.value == null && ((byteString = this.delayedBytes) == null || byteString == byteString3));
    }

    protected void ensureInitialized(s0 s0Var) {
        if (this.value != null) {
            return;
        }
        synchronized (this) {
            if (this.value != null) {
                return;
            }
            try {
                if (this.delayedBytes != null) {
                    this.value = (s0) s0Var.getParserForType().parseFrom(this.delayedBytes, this.extensionRegistry);
                    this.memoizedBytes = this.delayedBytes;
                } else {
                    this.value = s0Var;
                    this.memoizedBytes = ByteString.EMPTY;
                }
            } catch (InvalidProtocolBufferException unused) {
                this.value = s0Var;
                this.memoizedBytes = ByteString.EMPTY;
            }
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof g0)) {
            return false;
        }
        g0 g0Var = (g0) obj;
        s0 s0Var = this.value;
        s0 s0Var2 = g0Var.value;
        if (s0Var == null && s0Var2 == null) {
            return toByteString().equals(g0Var.toByteString());
        }
        if (s0Var == null || s0Var2 == null) {
            return s0Var != null ? s0Var.equals(g0Var.getValue(s0Var.getDefaultInstanceForType())) : getValue(s0Var2.getDefaultInstanceForType()).equals(s0Var2);
        }
        return s0Var.equals(s0Var2);
    }

    public int getSerializedSize() {
        if (this.memoizedBytes != null) {
            return this.memoizedBytes.size();
        }
        ByteString byteString = this.delayedBytes;
        if (byteString != null) {
            return byteString.size();
        }
        if (this.value != null) {
            return this.value.getSerializedSize();
        }
        return 0;
    }

    public s0 getValue(s0 s0Var) {
        ensureInitialized(s0Var);
        return this.value;
    }

    public int hashCode() {
        return 1;
    }

    public void merge(g0 g0Var) {
        ByteString byteString;
        if (g0Var.containsDefaultInstance()) {
            return;
        }
        if (containsDefaultInstance()) {
            set(g0Var);
            return;
        }
        if (this.extensionRegistry == null) {
            this.extensionRegistry = g0Var.extensionRegistry;
        }
        ByteString byteString2 = this.delayedBytes;
        if (byteString2 != null && (byteString = g0Var.delayedBytes) != null) {
            this.delayedBytes = byteString2.concat(byteString);
            return;
        }
        if (this.value == null && g0Var.value != null) {
            setValue(mergeValueAndBytes(g0Var.value, this.delayedBytes, this.extensionRegistry));
        } else if (this.value == null || g0Var.value != null) {
            setValue(this.value.toBuilder().mergeFrom(g0Var.value).build());
        } else {
            setValue(mergeValueAndBytes(this.value, g0Var.delayedBytes, g0Var.extensionRegistry));
        }
    }

    public void mergeFrom(i iVar, o oVar) throws IOException {
        if (containsDefaultInstance()) {
            setByteString(iVar.readBytes(), oVar);
            return;
        }
        if (this.extensionRegistry == null) {
            this.extensionRegistry = oVar;
        }
        ByteString byteString = this.delayedBytes;
        if (byteString != null) {
            setByteString(byteString.concat(iVar.readBytes()), this.extensionRegistry);
        } else {
            try {
                setValue(this.value.toBuilder().mergeFrom(iVar, oVar).build());
            } catch (InvalidProtocolBufferException unused) {
            }
        }
    }

    public void set(g0 g0Var) {
        this.delayedBytes = g0Var.delayedBytes;
        this.value = g0Var.value;
        this.memoizedBytes = g0Var.memoizedBytes;
        o oVar = g0Var.extensionRegistry;
        if (oVar != null) {
            this.extensionRegistry = oVar;
        }
    }

    public void setByteString(ByteString byteString, o oVar) {
        checkArguments(oVar, byteString);
        this.delayedBytes = byteString;
        this.extensionRegistry = oVar;
        this.value = null;
        this.memoizedBytes = null;
    }

    public s0 setValue(s0 s0Var) {
        s0 s0Var2 = this.value;
        this.delayedBytes = null;
        this.memoizedBytes = null;
        this.value = s0Var;
        return s0Var2;
    }

    public ByteString toByteString() {
        if (this.memoizedBytes != null) {
            return this.memoizedBytes;
        }
        ByteString byteString = this.delayedBytes;
        if (byteString != null) {
            return byteString;
        }
        synchronized (this) {
            try {
                if (this.memoizedBytes != null) {
                    return this.memoizedBytes;
                }
                if (this.value == null) {
                    this.memoizedBytes = ByteString.EMPTY;
                } else {
                    this.memoizedBytes = this.value.toByteString();
                }
                return this.memoizedBytes;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    void writeTo(Writer writer, int i11) throws IOException {
        if (this.memoizedBytes != null) {
            writer.writeBytes(i11, this.memoizedBytes);
            return;
        }
        ByteString byteString = this.delayedBytes;
        if (byteString != null) {
            writer.writeBytes(i11, byteString);
        } else if (this.value != null) {
            writer.writeMessage(i11, this.value);
        } else {
            writer.writeBytes(i11, ByteString.EMPTY);
        }
    }
}
