package com.google.android.exoplayer2.upstream.cache;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import com.google.android.exoplayer2.database.DatabaseIOException;
import com.google.android.exoplayer2.util.p0;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.r4;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.mbridge.msdk.playercommon.exoplayer2.upstream.cache.CachedContentIndex;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import javax.crypto.Cipher;
import javax.crypto.CipherInputStream;
import javax.crypto.CipherOutputStream;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes3.dex */
class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final HashMap f27360a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final SparseArray f27361b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final SparseBooleanArray f27362c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final SparseBooleanArray f27363d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private c f27364e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private c f27365f;

    private static final class a implements c {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static final String[] f27366e = {"id", "key", TtmlNode.TAG_METADATA};

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final f9.a f27367a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final SparseArray f27368b = new SparseArray();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private String f27369c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private String f27370d;

        public a(f9.a aVar) {
            this.f27367a = aVar;
        }

        private void i(SQLiteDatabase sQLiteDatabase, j jVar) throws IOException {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            k.t(jVar.d(), new DataOutputStream(byteArrayOutputStream));
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            ContentValues contentValues = new ContentValues();
            contentValues.put("id", Integer.valueOf(jVar.f27353a));
            contentValues.put("key", jVar.f27354b);
            contentValues.put(TtmlNode.TAG_METADATA, byteArray);
            sQLiteDatabase.replaceOrThrow((String) com.google.android.exoplayer2.util.a.e(this.f27370d), null, contentValues);
        }

        private static void j(f9.a aVar, String str) throws DatabaseIOException {
            try {
                String strN = n(str);
                SQLiteDatabase writableDatabase = aVar.getWritableDatabase();
                writableDatabase.beginTransactionNonExclusive();
                try {
                    f9.c.c(writableDatabase, 1, str);
                    l(writableDatabase, strN);
                    writableDatabase.setTransactionSuccessful();
                } finally {
                    writableDatabase.endTransaction();
                }
            } catch (SQLException e11) {
                throw new DatabaseIOException(e11);
            }
        }

        private void k(SQLiteDatabase sQLiteDatabase, int i11) {
            sQLiteDatabase.delete((String) com.google.android.exoplayer2.util.a.e(this.f27370d), "id = ?", new String[]{Integer.toString(i11)});
        }

        private static void l(SQLiteDatabase sQLiteDatabase, String str) {
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS " + str);
        }

        private Cursor m() {
            return this.f27367a.getReadableDatabase().query((String) com.google.android.exoplayer2.util.a.e(this.f27370d), f27366e, null, null, null, null, null);
        }

        private static String n(String str) {
            return "ExoPlayerCacheIndex" + str;
        }

        private void o(SQLiteDatabase sQLiteDatabase) throws DatabaseIOException {
            f9.c.d(sQLiteDatabase, 1, (String) com.google.android.exoplayer2.util.a.e(this.f27369c), 1);
            l(sQLiteDatabase, (String) com.google.android.exoplayer2.util.a.e(this.f27370d));
            sQLiteDatabase.execSQL("CREATE TABLE " + this.f27370d + " (id INTEGER PRIMARY KEY NOT NULL,key TEXT NOT NULL,metadata BLOB NOT NULL)");
        }

        @Override // com.google.android.exoplayer2.upstream.cache.k.c
        public boolean a() {
            return f9.c.b(this.f27367a.getReadableDatabase(), 1, (String) com.google.android.exoplayer2.util.a.e(this.f27369c)) != -1;
        }

        @Override // com.google.android.exoplayer2.upstream.cache.k.c
        public void b(HashMap map) throws DatabaseIOException {
            if (this.f27368b.size() == 0) {
                return;
            }
            try {
                SQLiteDatabase writableDatabase = this.f27367a.getWritableDatabase();
                writableDatabase.beginTransactionNonExclusive();
                for (int i11 = 0; i11 < this.f27368b.size(); i11++) {
                    try {
                        j jVar = (j) this.f27368b.valueAt(i11);
                        if (jVar == null) {
                            k(writableDatabase, this.f27368b.keyAt(i11));
                        } else {
                            i(writableDatabase, jVar);
                        }
                    } catch (Throwable th2) {
                        writableDatabase.endTransaction();
                        throw th2;
                    }
                }
                writableDatabase.setTransactionSuccessful();
                this.f27368b.clear();
                writableDatabase.endTransaction();
            } catch (SQLException e11) {
                throw new DatabaseIOException(e11);
            }
        }

        @Override // com.google.android.exoplayer2.upstream.cache.k.c
        public void c(long j11) {
            String hexString = Long.toHexString(j11);
            this.f27369c = hexString;
            this.f27370d = n(hexString);
        }

        @Override // com.google.android.exoplayer2.upstream.cache.k.c
        public void d(HashMap map) throws DatabaseIOException {
            try {
                SQLiteDatabase writableDatabase = this.f27367a.getWritableDatabase();
                writableDatabase.beginTransactionNonExclusive();
                try {
                    o(writableDatabase);
                    Iterator it = map.values().iterator();
                    while (it.hasNext()) {
                        i(writableDatabase, (j) it.next());
                    }
                    writableDatabase.setTransactionSuccessful();
                    this.f27368b.clear();
                } finally {
                    writableDatabase.endTransaction();
                }
            } catch (SQLException e11) {
                throw new DatabaseIOException(e11);
            }
        }

        @Override // com.google.android.exoplayer2.upstream.cache.k.c
        public void e(HashMap map, SparseArray sparseArray) throws DatabaseIOException {
            com.google.android.exoplayer2.util.a.g(this.f27368b.size() == 0);
            try {
                if (f9.c.b(this.f27367a.getReadableDatabase(), 1, (String) com.google.android.exoplayer2.util.a.e(this.f27369c)) != 1) {
                    SQLiteDatabase writableDatabase = this.f27367a.getWritableDatabase();
                    writableDatabase.beginTransactionNonExclusive();
                    try {
                        o(writableDatabase);
                        writableDatabase.setTransactionSuccessful();
                        writableDatabase.endTransaction();
                    } catch (Throwable th2) {
                        writableDatabase.endTransaction();
                        throw th2;
                    }
                }
                Cursor cursorM = m();
                while (cursorM.moveToNext()) {
                    try {
                        j jVar = new j(cursorM.getInt(0), (String) com.google.android.exoplayer2.util.a.e(cursorM.getString(1)), k.q(new DataInputStream(new ByteArrayInputStream(cursorM.getBlob(2)))));
                        map.put(jVar.f27354b, jVar);
                        sparseArray.put(jVar.f27353a, jVar.f27354b);
                    } catch (Throwable th3) {
                        if (cursorM != null) {
                            try {
                                cursorM.close();
                            } catch (Throwable th4) {
                                th3.addSuppressed(th4);
                            }
                        }
                        throw th3;
                    }
                }
                cursorM.close();
            } catch (SQLiteException e11) {
                map.clear();
                sparseArray.clear();
                throw new DatabaseIOException(e11);
            }
        }

        @Override // com.google.android.exoplayer2.upstream.cache.k.c
        public void f() throws DatabaseIOException {
            j(this.f27367a, (String) com.google.android.exoplayer2.util.a.e(this.f27369c));
        }

        @Override // com.google.android.exoplayer2.upstream.cache.k.c
        public void g(j jVar, boolean z10) {
            if (z10) {
                this.f27368b.delete(jVar.f27353a);
            } else {
                this.f27368b.put(jVar.f27353a, null);
            }
        }

        @Override // com.google.android.exoplayer2.upstream.cache.k.c
        public void h(j jVar) {
            this.f27368b.put(jVar.f27353a, jVar);
        }
    }

    private static class b implements c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final boolean f27371a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Cipher f27372b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final SecretKeySpec f27373c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final SecureRandom f27374d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final com.google.android.exoplayer2.util.b f27375e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private boolean f27376f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private r f27377g;

        public b(File file, byte[] bArr, boolean z10) {
            Cipher cipherI;
            SecretKeySpec secretKeySpec;
            com.google.android.exoplayer2.util.a.g((bArr == null && z10) ? false : true);
            if (bArr != null) {
                com.google.android.exoplayer2.util.a.a(bArr.length == 16);
                try {
                    cipherI = k.i();
                    secretKeySpec = new SecretKeySpec(bArr, "AES");
                } catch (NoSuchAlgorithmException | NoSuchPaddingException e11) {
                    throw new IllegalStateException(e11);
                }
            } else {
                com.google.android.exoplayer2.util.a.a(!z10);
                cipherI = null;
                secretKeySpec = null;
            }
            this.f27371a = z10;
            this.f27372b = cipherI;
            this.f27373c = secretKeySpec;
            this.f27374d = z10 ? new SecureRandom() : null;
            this.f27375e = new com.google.android.exoplayer2.util.b(file);
        }

        private int i(j jVar, int i11) {
            int i12;
            int iHashCode;
            int iHashCode2 = (jVar.f27353a * 31) + jVar.f27354b.hashCode();
            if (i11 < 2) {
                long jA = l.a(jVar.d());
                i12 = iHashCode2 * 31;
                iHashCode = (int) (jA ^ (jA >>> 32));
            } else {
                i12 = iHashCode2 * 31;
                iHashCode = jVar.d().hashCode();
            }
            return i12 + iHashCode;
        }

        private j j(int i11, DataInputStream dataInputStream) throws IOException {
            o oVarQ;
            int i12 = dataInputStream.readInt();
            String utf = dataInputStream.readUTF();
            if (i11 < 2) {
                long j11 = dataInputStream.readLong();
                n nVar = new n();
                n.g(nVar, j11);
                oVarQ = o.f27380c.c(nVar);
            } else {
                oVarQ = k.q(dataInputStream);
            }
            return new j(i12, utf, oVarQ);
        }

        private boolean k(HashMap map, SparseArray sparseArray) throws Throwable {
            if (!this.f27375e.c()) {
                return true;
            }
            DataInputStream dataInputStream = null;
            try {
                BufferedInputStream bufferedInputStream = new BufferedInputStream(this.f27375e.d());
                DataInputStream dataInputStream2 = new DataInputStream(bufferedInputStream);
                try {
                    int i11 = dataInputStream2.readInt();
                    if (i11 >= 0 && i11 <= 2) {
                        if ((dataInputStream2.readInt() & 1) != 0) {
                            if (this.f27372b == null) {
                                p0.n(dataInputStream2);
                                return false;
                            }
                            byte[] bArr = new byte[16];
                            dataInputStream2.readFully(bArr);
                            try {
                                this.f27372b.init(2, (Key) p0.j(this.f27373c), new IvParameterSpec(bArr));
                                dataInputStream2 = new DataInputStream(new CipherInputStream(bufferedInputStream, this.f27372b));
                            } catch (InvalidAlgorithmParameterException e11) {
                                e = e11;
                                throw new IllegalStateException(e);
                            } catch (InvalidKeyException e12) {
                                e = e12;
                                throw new IllegalStateException(e);
                            }
                        } else if (this.f27371a) {
                            this.f27376f = true;
                        }
                        int i12 = dataInputStream2.readInt();
                        int i13 = 0;
                        for (int i14 = 0; i14 < i12; i14++) {
                            j jVarJ = j(i11, dataInputStream2);
                            map.put(jVarJ.f27354b, jVarJ);
                            sparseArray.put(jVarJ.f27353a, jVarJ.f27354b);
                            i13 += i(jVarJ, i11);
                        }
                        int i15 = dataInputStream2.readInt();
                        boolean z10 = dataInputStream2.read() == -1;
                        if (i15 == i13 && z10) {
                            p0.n(dataInputStream2);
                            return true;
                        }
                        p0.n(dataInputStream2);
                        return false;
                    }
                    p0.n(dataInputStream2);
                    return false;
                } catch (IOException unused) {
                    dataInputStream = dataInputStream2;
                    if (dataInputStream != null) {
                        p0.n(dataInputStream);
                    }
                    return false;
                } catch (Throwable th2) {
                    th = th2;
                    dataInputStream = dataInputStream2;
                    if (dataInputStream != null) {
                        p0.n(dataInputStream);
                    }
                    throw th;
                }
            } catch (IOException unused2) {
            } catch (Throwable th3) {
                th = th3;
            }
        }

        private void l(j jVar, DataOutputStream dataOutputStream) throws IOException {
            dataOutputStream.writeInt(jVar.f27353a);
            dataOutputStream.writeUTF(jVar.f27354b);
            k.t(jVar.d(), dataOutputStream);
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
        private void m(HashMap map) throws Throwable {
            DataOutputStream dataOutputStream = null;
            try {
                OutputStream outputStreamF = this.f27375e.f();
                r rVar = this.f27377g;
                if (rVar == null) {
                    this.f27377g = new r(outputStreamF);
                } else {
                    rVar.b(outputStreamF);
                }
                r rVar2 = this.f27377g;
                DataOutputStream dataOutputStream2 = new DataOutputStream(rVar2);
                try {
                    dataOutputStream2.writeInt(2);
                    int i11 = 0;
                    dataOutputStream2.writeInt(this.f27371a ? 1 : 0);
                    if (this.f27371a) {
                        byte[] bArr = new byte[16];
                        ((SecureRandom) p0.j(this.f27374d)).nextBytes(bArr);
                        dataOutputStream2.write(bArr);
                        try {
                            ((Cipher) p0.j(this.f27372b)).init(1, (Key) p0.j(this.f27373c), new IvParameterSpec(bArr));
                            dataOutputStream2.flush();
                            dataOutputStream2 = new DataOutputStream(new CipherOutputStream(rVar2, this.f27372b));
                        } catch (InvalidAlgorithmParameterException e11) {
                            e = e11;
                            throw new IllegalStateException(e);
                        } catch (InvalidKeyException e12) {
                            e = e12;
                            throw new IllegalStateException(e);
                        }
                    }
                    dataOutputStream2.writeInt(map.size());
                    for (j jVar : map.values()) {
                        l(jVar, dataOutputStream2);
                        i11 += i(jVar, 2);
                    }
                    dataOutputStream2.writeInt(i11);
                    this.f27375e.b(dataOutputStream2);
                    p0.n(null);
                } catch (Throwable th2) {
                    th = th2;
                    dataOutputStream = dataOutputStream2;
                    p0.n(dataOutputStream);
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        }

        @Override // com.google.android.exoplayer2.upstream.cache.k.c
        public boolean a() {
            return this.f27375e.c();
        }

        @Override // com.google.android.exoplayer2.upstream.cache.k.c
        public void b(HashMap map) throws Throwable {
            if (this.f27376f) {
                d(map);
            }
        }

        @Override // com.google.android.exoplayer2.upstream.cache.k.c
        public void c(long j11) {
        }

        @Override // com.google.android.exoplayer2.upstream.cache.k.c
        public void d(HashMap map) throws Throwable {
            m(map);
            this.f27376f = false;
        }

        @Override // com.google.android.exoplayer2.upstream.cache.k.c
        public void e(HashMap map, SparseArray sparseArray) {
            com.google.android.exoplayer2.util.a.g(!this.f27376f);
            if (k(map, sparseArray)) {
                return;
            }
            map.clear();
            sparseArray.clear();
            this.f27375e.a();
        }

        @Override // com.google.android.exoplayer2.upstream.cache.k.c
        public void f() {
            this.f27375e.a();
        }

        @Override // com.google.android.exoplayer2.upstream.cache.k.c
        public void g(j jVar, boolean z10) {
            this.f27376f = true;
        }

        @Override // com.google.android.exoplayer2.upstream.cache.k.c
        public void h(j jVar) {
            this.f27376f = true;
        }
    }

    private interface c {
        boolean a();

        void b(HashMap map);

        void c(long j11);

        void d(HashMap map);

        void e(HashMap map, SparseArray sparseArray);

        void f();

        void g(j jVar, boolean z10);

        void h(j jVar);
    }

    public k(f9.a aVar, File file, byte[] bArr, boolean z10, boolean z11) {
        com.google.android.exoplayer2.util.a.g((aVar == null && file == null) ? false : true);
        this.f27360a = new HashMap();
        this.f27361b = new SparseArray();
        this.f27362c = new SparseBooleanArray();
        this.f27363d = new SparseBooleanArray();
        a aVar2 = aVar != null ? new a(aVar) : null;
        b bVar = file != null ? new b(new File(file, CachedContentIndex.FILE_NAME), bArr, z10) : null;
        if (aVar2 == null || (bVar != null && z11)) {
            this.f27364e = (c) p0.j(bVar);
            this.f27365f = aVar2;
        } else {
            this.f27364e = aVar2;
            this.f27365f = bVar;
        }
    }

    private j d(String str) {
        int iL = l(this.f27361b);
        j jVar = new j(iL, str);
        this.f27360a.put(str, jVar);
        this.f27361b.put(iL, str);
        this.f27363d.put(iL, true);
        this.f27364e.h(jVar);
        return jVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Cipher i() {
        if (p0.f27626a == 18) {
            try {
                return Cipher.getInstance("AES/CBC/PKCS5PADDING", "BC");
            } catch (Throwable unused) {
            }
        }
        return Cipher.getInstance("AES/CBC/PKCS5PADDING");
    }

    static int l(SparseArray sparseArray) {
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

    public static boolean o(String str) {
        return str.startsWith(CachedContentIndex.FILE_NAME);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static o q(DataInputStream dataInputStream) throws IOException {
        int i11 = dataInputStream.readInt();
        HashMap map = new HashMap();
        for (int i12 = 0; i12 < i11; i12++) {
            String utf = dataInputStream.readUTF();
            int i13 = dataInputStream.readInt();
            if (i13 < 0) {
                throw new IOException("Invalid value size: " + i13);
            }
            int iMin = Math.min(i13, 10485760);
            byte[] bArrCopyOf = p0.f27631f;
            int i14 = 0;
            while (i14 != i13) {
                int i15 = i14 + iMin;
                bArrCopyOf = Arrays.copyOf(bArrCopyOf, i15);
                dataInputStream.readFully(bArrCopyOf, i14, iMin);
                iMin = Math.min(i13 - i15, 10485760);
                i14 = i15;
            }
            map.put(utf, bArrCopyOf);
        }
        return new o(map);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void t(o oVar, DataOutputStream dataOutputStream) throws IOException {
        Set<Map.Entry> setD = oVar.d();
        dataOutputStream.writeInt(setD.size());
        for (Map.Entry entry : setD) {
            dataOutputStream.writeUTF((String) entry.getKey());
            byte[] bArr = (byte[]) entry.getValue();
            dataOutputStream.writeInt(bArr.length);
            dataOutputStream.write(bArr);
        }
    }

    public void e(String str, n nVar) {
        j jVarM = m(str);
        if (jVarM.b(nVar)) {
            this.f27364e.h(jVarM);
        }
    }

    public int f(String str) {
        return m(str).f27353a;
    }

    public j g(String str) {
        return (j) this.f27360a.get(str);
    }

    public Collection h() {
        return Collections.unmodifiableCollection(this.f27360a.values());
    }

    public m j(String str) {
        j jVarG = g(str);
        return jVarG != null ? jVarG.d() : o.f27380c;
    }

    public String k(int i11) {
        return (String) this.f27361b.get(i11);
    }

    public j m(String str) {
        j jVar = (j) this.f27360a.get(str);
        return jVar == null ? d(str) : jVar;
    }

    public void n(long j11) {
        c cVar;
        this.f27364e.c(j11);
        c cVar2 = this.f27365f;
        if (cVar2 != null) {
            cVar2.c(j11);
        }
        if (this.f27364e.a() || (cVar = this.f27365f) == null || !cVar.a()) {
            this.f27364e.e(this.f27360a, this.f27361b);
        } else {
            this.f27365f.e(this.f27360a, this.f27361b);
            this.f27364e.d(this.f27360a);
        }
        c cVar3 = this.f27365f;
        if (cVar3 != null) {
            cVar3.f();
            this.f27365f = null;
        }
    }

    public void p(String str) {
        j jVar = (j) this.f27360a.get(str);
        if (jVar != null && jVar.g() && jVar.i()) {
            this.f27360a.remove(str);
            int i11 = jVar.f27353a;
            boolean z10 = this.f27363d.get(i11);
            this.f27364e.g(jVar, z10);
            if (z10) {
                this.f27361b.remove(i11);
                this.f27363d.delete(i11);
            } else {
                this.f27361b.put(i11, null);
                this.f27362c.put(i11, true);
            }
        }
    }

    public void r() {
        r4 it = ImmutableSet.copyOf((Collection) this.f27360a.keySet()).iterator();
        while (it.hasNext()) {
            p((String) it.next());
        }
    }

    public void s() {
        this.f27364e.b(this.f27360a);
        int size = this.f27362c.size();
        for (int i11 = 0; i11 < size; i11++) {
            this.f27361b.remove(this.f27362c.keyAt(i11));
        }
        this.f27362c.clear();
        this.f27363d.clear();
    }
}
