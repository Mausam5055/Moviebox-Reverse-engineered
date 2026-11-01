package com.mbridge.msdk.playercommon.exoplayer2.upstream.cache;

import android.util.SparseArray;
import com.mbridge.msdk.playercommon.exoplayer2.util.Assertions;
import com.mbridge.msdk.playercommon.exoplayer2.util.AtomicFile;
import com.mbridge.msdk.playercommon.exoplayer2.util.ReusableBufferedOutputStream;
import com.mbridge.msdk.playercommon.exoplayer2.util.Util;
import java.io.BufferedInputStream;
import java.io.Closeable;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.Collection;
import java.util.HashMap;
import java.util.Random;
import java.util.Set;
import javax.crypto.Cipher;
import javax.crypto.CipherInputStream;
import javax.crypto.CipherOutputStream;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes5.dex */
class CachedContentIndex {
    public static final String FILE_NAME = "cached_content_index.exi";
    private static final int FLAG_ENCRYPTED_INDEX = 1;
    private static final int VERSION = 2;
    private final AtomicFile atomicFile;
    private ReusableBufferedOutputStream bufferedOutputStream;
    private boolean changed;
    private final Cipher cipher;
    private final boolean encrypt;
    private final SparseArray<String> idToKey;
    private final HashMap<String, CachedContent> keyToContent;
    private final SecretKeySpec secretKeySpec;

    public CachedContentIndex(File file) {
        this(file, null);
    }

    public CachedContentIndex(File file, byte[] bArr) {
        this(file, bArr, bArr != null);
    }

    public CachedContentIndex(File file, byte[] bArr, boolean z10) {
        this.encrypt = z10;
        if (bArr != null) {
            Assertions.checkArgument(bArr.length == 16);
            try {
                this.cipher = getCipher();
                this.secretKeySpec = new SecretKeySpec(bArr, "AES");
            } catch (NoSuchAlgorithmException | NoSuchPaddingException e11) {
                throw new IllegalStateException(e11);
            }
        } else {
            Assertions.checkState(!z10);
            this.cipher = null;
            this.secretKeySpec = null;
        }
        this.keyToContent = new HashMap<>();
        this.idToKey = new SparseArray<>();
        this.atomicFile = new AtomicFile(new File(file, FILE_NAME));
    }

    private void add(CachedContent cachedContent) {
        this.keyToContent.put(cachedContent.key, cachedContent);
        this.idToKey.put(cachedContent.f36793id, cachedContent.key);
    }

    private CachedContent addNew(String str) {
        CachedContent cachedContent = new CachedContent(getNewId(this.idToKey), str);
        add(cachedContent);
        this.changed = true;
        return cachedContent;
    }

    private static Cipher getCipher() throws NoSuchPaddingException, NoSuchAlgorithmException {
        if (Util.SDK_INT == 18) {
            try {
                return Cipher.getInstance("AES/CBC/PKCS5PADDING", "BC");
            } catch (Throwable unused) {
            }
        }
        return Cipher.getInstance("AES/CBC/PKCS5PADDING");
    }

    public static int getNewId(SparseArray<String> sparseArray) {
        int size = sparseArray.size();
        int i11 = 0;
        int iKeyAt = size == 0 ? 0 : sparseArray.keyAt(size - 1) + 1;
        if (iKeyAt >= 0) {
            return iKeyAt;
        }
        while (i11 < size && i11 == sparseArray.keyAt(i11)) {
            i11++;
        }
        return i11;
    }

    private boolean readFile() throws Throwable {
        DataInputStream dataInputStream = null;
        try {
            BufferedInputStream bufferedInputStream = new BufferedInputStream(this.atomicFile.openRead());
            DataInputStream dataInputStream2 = new DataInputStream(bufferedInputStream);
            try {
                int i11 = dataInputStream2.readInt();
                if (i11 >= 0 && i11 <= 2) {
                    if ((dataInputStream2.readInt() & 1) != 0) {
                        if (this.cipher == null) {
                            Util.closeQuietly(dataInputStream2);
                            return false;
                        }
                        byte[] bArr = new byte[16];
                        dataInputStream2.readFully(bArr);
                        try {
                            this.cipher.init(2, this.secretKeySpec, new IvParameterSpec(bArr));
                            dataInputStream2 = new DataInputStream(new CipherInputStream(bufferedInputStream, this.cipher));
                        } catch (InvalidAlgorithmParameterException e11) {
                            e = e11;
                            throw new IllegalStateException(e);
                        } catch (InvalidKeyException e12) {
                            e = e12;
                            throw new IllegalStateException(e);
                        }
                    } else if (this.encrypt) {
                        this.changed = true;
                    }
                    int i12 = dataInputStream2.readInt();
                    int iHeaderHashCode = 0;
                    for (int i13 = 0; i13 < i12; i13++) {
                        CachedContent fromStream = CachedContent.readFromStream(i11, dataInputStream2);
                        add(fromStream);
                        iHeaderHashCode += fromStream.headerHashCode(i11);
                    }
                    int i14 = dataInputStream2.readInt();
                    boolean z10 = dataInputStream2.read() == -1;
                    if (i14 == iHeaderHashCode && z10) {
                        Util.closeQuietly(dataInputStream2);
                        return true;
                    }
                    Util.closeQuietly(dataInputStream2);
                    return false;
                }
                Util.closeQuietly(dataInputStream2);
                return false;
            } catch (IOException unused) {
                dataInputStream = dataInputStream2;
                if (dataInputStream != null) {
                    Util.closeQuietly(dataInputStream);
                }
                return false;
            } catch (Throwable th2) {
                th = th2;
                dataInputStream = dataInputStream2;
                if (dataInputStream != null) {
                    Util.closeQuietly(dataInputStream);
                }
                throw th;
            }
        } catch (IOException unused2) {
        } catch (Throwable th3) {
            th = th3;
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    private void writeFile() throws Throwable {
        DataOutputStream dataOutputStream;
        Throwable th2;
        IOException e11;
        DataOutputStream dataOutputStream2 = null;
        DataOutputStream dataOutputStream3 = null;
        try {
            OutputStream outputStreamStartWrite = this.atomicFile.startWrite();
            ReusableBufferedOutputStream reusableBufferedOutputStream = this.bufferedOutputStream;
            if (reusableBufferedOutputStream == null) {
                this.bufferedOutputStream = new ReusableBufferedOutputStream(outputStreamStartWrite);
            } else {
                reusableBufferedOutputStream.reset(outputStreamStartWrite);
            }
            dataOutputStream = new DataOutputStream(this.bufferedOutputStream);
            try {
                dataOutputStream.writeInt(2);
                dataOutputStream.writeInt(this.encrypt ? 1 : 0);
                if (this.encrypt) {
                    byte[] bArr = new byte[16];
                    new Random().nextBytes(bArr);
                    dataOutputStream.write(bArr);
                    try {
                        this.cipher.init(1, this.secretKeySpec, new IvParameterSpec(bArr));
                        dataOutputStream.flush();
                        dataOutputStream = new DataOutputStream(new CipherOutputStream(this.bufferedOutputStream, this.cipher));
                    } catch (InvalidAlgorithmParameterException e12) {
                        e = e12;
                        throw new IllegalStateException(e);
                    } catch (InvalidKeyException e13) {
                        e = e13;
                        throw new IllegalStateException(e);
                    }
                }
                try {
                    try {
                        dataOutputStream.writeInt(this.keyToContent.size());
                        int iHeaderHashCode = 0;
                        for (CachedContent cachedContent : this.keyToContent.values()) {
                            cachedContent.writeToStream(dataOutputStream);
                            iHeaderHashCode += cachedContent.headerHashCode(2);
                        }
                        dataOutputStream.writeInt(iHeaderHashCode);
                        this.atomicFile.endWrite(dataOutputStream);
                        Util.closeQuietly((Closeable) null);
                    } catch (IOException e14) {
                        DataOutputStream dataOutputStream4 = dataOutputStream;
                        e = e14;
                        dataOutputStream3 = dataOutputStream4;
                        IOException iOException = e;
                        dataOutputStream = dataOutputStream3;
                        e11 = iOException;
                        throw new Cache.CacheException(e11);
                    }
                } catch (Throwable th3) {
                    DataOutputStream dataOutputStream5 = dataOutputStream;
                    th = th3;
                    dataOutputStream2 = dataOutputStream5;
                    Throwable th4 = th;
                    dataOutputStream = dataOutputStream2;
                    th2 = th4;
                    Util.closeQuietly(dataOutputStream);
                    throw th2;
                }
            } catch (IOException e15) {
                e11 = e15;
                throw new Cache.CacheException(e11);
            } catch (Throwable th5) {
                th2 = th5;
                Util.closeQuietly(dataOutputStream);
                throw th2;
            }
        } catch (IOException e16) {
            e = e16;
        } catch (Throwable th6) {
            th = th6;
            Throwable th7 = th;
            dataOutputStream = dataOutputStream2;
            th2 = th7;
            Util.closeQuietly(dataOutputStream);
            throw th2;
        }
    }

    public void applyContentMetadataMutations(String str, ContentMetadataMutations contentMetadataMutations) {
        if (getOrAdd(str).applyMetadataMutations(contentMetadataMutations)) {
            this.changed = true;
        }
    }

    public int assignIdForKey(String str) {
        return getOrAdd(str).f36793id;
    }

    public CachedContent get(String str) {
        return this.keyToContent.get(str);
    }

    public Collection<CachedContent> getAll() {
        return this.keyToContent.values();
    }

    public ContentMetadata getContentMetadata(String str) {
        CachedContent cachedContent = get(str);
        return cachedContent != null ? cachedContent.getMetadata() : DefaultContentMetadata.EMPTY;
    }

    public String getKeyForId(int i11) {
        return this.idToKey.get(i11);
    }

    public Set<String> getKeys() {
        return this.keyToContent.keySet();
    }

    public CachedContent getOrAdd(String str) {
        CachedContent cachedContent = this.keyToContent.get(str);
        return cachedContent == null ? addNew(str) : cachedContent;
    }

    public void load() {
        Assertions.checkState(!this.changed);
        if (readFile()) {
            return;
        }
        this.atomicFile.delete();
        this.keyToContent.clear();
        this.idToKey.clear();
    }

    public void maybeRemove(String str) {
        CachedContent cachedContent = this.keyToContent.get(str);
        if (cachedContent == null || !cachedContent.isEmpty() || cachedContent.isLocked()) {
            return;
        }
        this.keyToContent.remove(str);
        this.idToKey.remove(cachedContent.f36793id);
        this.changed = true;
    }

    public void removeEmpty() {
        int size = this.keyToContent.size();
        String[] strArr = new String[size];
        this.keyToContent.keySet().toArray(strArr);
        for (int i11 = 0; i11 < size; i11++) {
            maybeRemove(strArr[i11]);
        }
    }

    public void store() throws Throwable {
        if (this.changed) {
            writeFile();
            this.changed = false;
        }
    }
}
