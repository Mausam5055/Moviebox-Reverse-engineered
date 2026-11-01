package androidx.media3.datasource.cache;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import androidx.media3.common.util.a1;
import androidx.media3.database.DatabaseIOException;
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

/* JADX INFO: loaded from: classes2.dex */
class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final HashMap f10841a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final SparseArray f10842b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final SparseBooleanArray f10843c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final SparseBooleanArray f10844d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private c f10845e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private c f10846f;

    private static final class a implements c {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static final String[] f10847e = {"id", "key", TtmlNode.TAG_METADATA};

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final v1.a f10848a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final SparseArray f10849b = new SparseArray();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private String f10850c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private String f10851d;

        public a(v1.a aVar) {
            this.f10848a = aVar;
        }

        private void i(SQLiteDatabase sQLiteDatabase, j jVar) throws IOException {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            k.r(jVar.d(), new DataOutputStream(byteArrayOutputStream));
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            ContentValues contentValues = new ContentValues();
            contentValues.put("id", Integer.valueOf(jVar.f10834a));
            contentValues.put("key", jVar.f10835b);
            contentValues.put(TtmlNode.TAG_METADATA, byteArray);
            sQLiteDatabase.replaceOrThrow((String) androidx.media3.common.util.a.e(this.f10851d), null, contentValues);
        }

        private static void j(v1.a aVar, String str) throws DatabaseIOException {
            try {
                String strN = n(str);
                SQLiteDatabase writableDatabase = aVar.getWritableDatabase();
                writableDatabase.beginTransactionNonExclusive();
                try {
                    v1.c.c(writableDatabase, 1, str);
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
            sQLiteDatabase.delete((String) androidx.media3.common.util.a.e(this.f10851d), "id = ?", new String[]{Integer.toString(i11)});
        }

        private static void l(SQLiteDatabase sQLiteDatabase, String str) {
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS " + str);
        }

        private Cursor m() {
            return this.f10848a.getReadableDatabase().query((String) androidx.media3.common.util.a.e(this.f10851d), f10847e, null, null, null, null, null);
        }

        private static String n(String str) {
            return "ExoPlayerCacheIndex" + str;
        }

        private void o(SQLiteDatabase sQLiteDatabase) throws DatabaseIOException {
            v1.c.d(sQLiteDatabase, 1, (String) androidx.media3.common.util.a.e(this.f10850c), 1);
            l(sQLiteDatabase, (String) androidx.media3.common.util.a.e(this.f10851d));
            sQLiteDatabase.execSQL("CREATE TABLE " + this.f10851d + " (id INTEGER PRIMARY KEY NOT NULL,key TEXT NOT NULL,metadata BLOB NOT NULL)");
        }

        @Override // androidx.media3.datasource.cache.k.c
        public boolean a() throws DatabaseIOException {
            try {
                return v1.c.b(this.f10848a.getReadableDatabase(), 1, (String) androidx.media3.common.util.a.e(this.f10850c)) != -1;
            } catch (SQLException e11) {
                throw new DatabaseIOException(e11);
            }
        }

        @Override // androidx.media3.datasource.cache.k.c
        public void b(HashMap map) throws DatabaseIOException {
            if (this.f10849b.size() == 0) {
                return;
            }
            try {
                SQLiteDatabase writableDatabase = this.f10848a.getWritableDatabase();
                writableDatabase.beginTransactionNonExclusive();
                for (int i11 = 0; i11 < this.f10849b.size(); i11++) {
                    try {
                        j jVar = (j) this.f10849b.valueAt(i11);
                        if (jVar == null) {
                            k(writableDatabase, this.f10849b.keyAt(i11));
                        } else {
                            i(writableDatabase, jVar);
                        }
                    } catch (Throwable th2) {
                        writableDatabase.endTransaction();
                        throw th2;
                    }
                }
                writableDatabase.setTransactionSuccessful();
                this.f10849b.clear();
                writableDatabase.endTransaction();
            } catch (SQLException e11) {
                throw new DatabaseIOException(e11);
            }
        }

        @Override // androidx.media3.datasource.cache.k.c
        public void c(long j11) {
            String hexString = Long.toHexString(j11);
            this.f10850c = hexString;
            this.f10851d = n(hexString);
        }

        @Override // androidx.media3.datasource.cache.k.c
        public void d(HashMap map) throws DatabaseIOException {
            try {
                SQLiteDatabase writableDatabase = this.f10848a.getWritableDatabase();
                writableDatabase.beginTransactionNonExclusive();
                try {
                    o(writableDatabase);
                    Iterator it = map.values().iterator();
                    while (it.hasNext()) {
                        i(writableDatabase, (j) it.next());
                    }
                    writableDatabase.setTransactionSuccessful();
                    this.f10849b.clear();
                } finally {
                    writableDatabase.endTransaction();
                }
            } catch (SQLException e11) {
                throw new DatabaseIOException(e11);
            }
        }

        @Override // androidx.media3.datasource.cache.k.c
        public void e(HashMap map, SparseArray sparseArray) throws DatabaseIOException {
            androidx.media3.common.util.a.g(this.f10849b.size() == 0);
            try {
                if (v1.c.b(this.f10848a.getReadableDatabase(), 1, (String) androidx.media3.common.util.a.e(this.f10850c)) != 1) {
                    SQLiteDatabase writableDatabase = this.f10848a.getWritableDatabase();
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
                        j jVar = new j(cursorM.getInt(0), (String) androidx.media3.common.util.a.e(cursorM.getString(1)), k.o(new DataInputStream(new ByteArrayInputStream(cursorM.getBlob(2)))));
                        map.put(jVar.f10835b, jVar);
                        sparseArray.put(jVar.f10834a, jVar.f10835b);
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

        @Override // androidx.media3.datasource.cache.k.c
        public void f() throws DatabaseIOException {
            j(this.f10848a, (String) androidx.media3.common.util.a.e(this.f10850c));
        }

        @Override // androidx.media3.datasource.cache.k.c
        public void g(j jVar, boolean z10) {
            if (z10) {
                this.f10849b.delete(jVar.f10834a);
            } else {
                this.f10849b.put(jVar.f10834a, null);
            }
        }

        @Override // androidx.media3.datasource.cache.k.c
        public void h(j jVar) {
            this.f10849b.put(jVar.f10834a, jVar);
        }
    }

    private static class b implements c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final boolean f10852a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Cipher f10853b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final SecretKeySpec f10854c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final SecureRandom f10855d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final androidx.media3.common.util.b f10856e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private boolean f10857f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private r f10858g;

        public b(File file, byte[] bArr, boolean z10) {
            Cipher cipher;
            SecretKeySpec secretKeySpec;
            androidx.media3.common.util.a.g((bArr == null && z10) ? false : true);
            if (bArr != null) {
                androidx.media3.common.util.a.a(bArr.length == 16);
                try {
                    cipher = Cipher.getInstance("AES/CBC/PKCS5PADDING");
                    secretKeySpec = new SecretKeySpec(bArr, "AES");
                } catch (NoSuchAlgorithmException | NoSuchPaddingException e11) {
                    throw new IllegalStateException(e11);
                }
            } else {
                androidx.media3.common.util.a.a(!z10);
                cipher = null;
                secretKeySpec = null;
            }
            this.f10852a = z10;
            this.f10853b = cipher;
            this.f10854c = secretKeySpec;
            this.f10855d = z10 ? new SecureRandom() : null;
            this.f10856e = new androidx.media3.common.util.b(file);
        }

        private int i(j jVar, int i11) {
            int i12;
            int iHashCode;
            int iHashCode2 = (jVar.f10834a * 31) + jVar.f10835b.hashCode();
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
            o oVarO;
            int i12 = dataInputStream.readInt();
            String utf = dataInputStream.readUTF();
            if (i11 < 2) {
                long j11 = dataInputStream.readLong();
                n nVar = new n();
                n.g(nVar, j11);
                oVarO = o.f10861c.c(nVar);
            } else {
                oVarO = k.o(dataInputStream);
            }
            return new j(i12, utf, oVarO);
        }

        private boolean k(HashMap map, SparseArray sparseArray) throws Throwable {
            if (!this.f10856e.c()) {
                return true;
            }
            DataInputStream dataInputStream = null;
            try {
                BufferedInputStream bufferedInputStream = new BufferedInputStream(this.f10856e.d());
                DataInputStream dataInputStream2 = new DataInputStream(bufferedInputStream);
                try {
                    int i11 = dataInputStream2.readInt();
                    if (i11 >= 0 && i11 <= 2) {
                        if ((dataInputStream2.readInt() & 1) != 0) {
                            if (this.f10853b == null) {
                                a1.m(dataInputStream2);
                                return false;
                            }
                            byte[] bArr = new byte[16];
                            dataInputStream2.readFully(bArr);
                            try {
                                this.f10853b.init(2, (Key) a1.i(this.f10854c), new IvParameterSpec(bArr));
                                dataInputStream2 = new DataInputStream(new CipherInputStream(bufferedInputStream, this.f10853b));
                            } catch (InvalidAlgorithmParameterException e11) {
                                e = e11;
                                throw new IllegalStateException(e);
                            } catch (InvalidKeyException e12) {
                                e = e12;
                                throw new IllegalStateException(e);
                            }
                        } else if (this.f10852a) {
                            this.f10857f = true;
                        }
                        int i12 = dataInputStream2.readInt();
                        int i13 = 0;
                        for (int i14 = 0; i14 < i12; i14++) {
                            j jVarJ = j(i11, dataInputStream2);
                            map.put(jVarJ.f10835b, jVarJ);
                            sparseArray.put(jVarJ.f10834a, jVarJ.f10835b);
                            i13 += i(jVarJ, i11);
                        }
                        int i15 = dataInputStream2.readInt();
                        boolean z10 = dataInputStream2.read() == -1;
                        if (i15 == i13 && z10) {
                            a1.m(dataInputStream2);
                            return true;
                        }
                        a1.m(dataInputStream2);
                        return false;
                    }
                    a1.m(dataInputStream2);
                    return false;
                } catch (IOException unused) {
                    dataInputStream = dataInputStream2;
                    if (dataInputStream != null) {
                        a1.m(dataInputStream);
                    }
                    return false;
                } catch (Throwable th2) {
                    th = th2;
                    dataInputStream = dataInputStream2;
                    if (dataInputStream != null) {
                        a1.m(dataInputStream);
                    }
                    throw th;
                }
            } catch (IOException unused2) {
            } catch (Throwable th3) {
                th = th3;
            }
        }

        private void l(j jVar, DataOutputStream dataOutputStream) throws IOException {
            dataOutputStream.writeInt(jVar.f10834a);
            dataOutputStream.writeUTF(jVar.f10835b);
            k.r(jVar.d(), dataOutputStream);
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
                OutputStream outputStreamF = this.f10856e.f();
                r rVar = this.f10858g;
                if (rVar == null) {
                    this.f10858g = new r(outputStreamF);
                } else {
                    rVar.b(outputStreamF);
                }
                r rVar2 = this.f10858g;
                DataOutputStream dataOutputStream2 = new DataOutputStream(rVar2);
                try {
                    dataOutputStream2.writeInt(2);
                    int i11 = 0;
                    dataOutputStream2.writeInt(this.f10852a ? 1 : 0);
                    if (this.f10852a) {
                        byte[] bArr = new byte[16];
                        ((SecureRandom) a1.i(this.f10855d)).nextBytes(bArr);
                        dataOutputStream2.write(bArr);
                        try {
                            ((Cipher) a1.i(this.f10853b)).init(1, (Key) a1.i(this.f10854c), new IvParameterSpec(bArr));
                            dataOutputStream2.flush();
                            dataOutputStream2 = new DataOutputStream(new CipherOutputStream(rVar2, this.f10853b));
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
                    this.f10856e.b(dataOutputStream2);
                    a1.m(null);
                } catch (Throwable th2) {
                    th = th2;
                    dataOutputStream = dataOutputStream2;
                    a1.m(dataOutputStream);
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        }

        @Override // androidx.media3.datasource.cache.k.c
        public boolean a() {
            return this.f10856e.c();
        }

        @Override // androidx.media3.datasource.cache.k.c
        public void b(HashMap map) throws Throwable {
            if (this.f10857f) {
                d(map);
            }
        }

        @Override // androidx.media3.datasource.cache.k.c
        public void c(long j11) {
        }

        @Override // androidx.media3.datasource.cache.k.c
        public void d(HashMap map) throws Throwable {
            m(map);
            this.f10857f = false;
        }

        @Override // androidx.media3.datasource.cache.k.c
        public void e(HashMap map, SparseArray sparseArray) {
            androidx.media3.common.util.a.g(!this.f10857f);
            if (k(map, sparseArray)) {
                return;
            }
            map.clear();
            sparseArray.clear();
            this.f10856e.a();
        }

        @Override // androidx.media3.datasource.cache.k.c
        public void f() {
            this.f10856e.a();
        }

        @Override // androidx.media3.datasource.cache.k.c
        public void g(j jVar, boolean z10) {
            this.f10857f = true;
        }

        @Override // androidx.media3.datasource.cache.k.c
        public void h(j jVar) {
            this.f10857f = true;
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

    public k(v1.a aVar, File file, byte[] bArr, boolean z10, boolean z11) {
        androidx.media3.common.util.a.g((aVar == null && file == null) ? false : true);
        this.f10841a = new HashMap();
        this.f10842b = new SparseArray();
        this.f10843c = new SparseBooleanArray();
        this.f10844d = new SparseBooleanArray();
        a aVar2 = aVar != null ? new a(aVar) : null;
        b bVar = file != null ? new b(new File(file, CachedContentIndex.FILE_NAME), bArr, z10) : null;
        if (aVar2 == null || (bVar != null && z11)) {
            this.f10845e = (c) a1.i(bVar);
            this.f10846f = aVar2;
        } else {
            this.f10845e = aVar2;
            this.f10846f = bVar;
        }
    }

    private j c(String str) {
        int iJ = j(this.f10842b);
        j jVar = new j(iJ, str);
        this.f10841a.put(str, jVar);
        this.f10842b.put(iJ, str);
        this.f10844d.put(iJ, true);
        this.f10845e.h(jVar);
        return jVar;
    }

    static int j(SparseArray sparseArray) {
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

    public static boolean m(String str) {
        return str.startsWith(CachedContentIndex.FILE_NAME);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static o o(DataInputStream dataInputStream) throws IOException {
        int i11 = dataInputStream.readInt();
        HashMap map = new HashMap();
        for (int i12 = 0; i12 < i11; i12++) {
            String utf = dataInputStream.readUTF();
            int i13 = dataInputStream.readInt();
            if (i13 < 0) {
                throw new IOException("Invalid value size: " + i13);
            }
            int iMin = Math.min(i13, 10485760);
            byte[] bArrCopyOf = a1.f10355f;
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
    public static void r(o oVar, DataOutputStream dataOutputStream) throws IOException {
        Set<Map.Entry> setD = oVar.d();
        dataOutputStream.writeInt(setD.size());
        for (Map.Entry entry : setD) {
            dataOutputStream.writeUTF((String) entry.getKey());
            byte[] bArr = (byte[]) entry.getValue();
            dataOutputStream.writeInt(bArr.length);
            dataOutputStream.write(bArr);
        }
    }

    public void d(String str, n nVar) {
        j jVarK = k(str);
        if (jVarK.b(nVar)) {
            this.f10845e.h(jVarK);
        }
    }

    public int e(String str) {
        return k(str).f10834a;
    }

    public j f(String str) {
        return (j) this.f10841a.get(str);
    }

    public Collection g() {
        return Collections.unmodifiableCollection(this.f10841a.values());
    }

    public m h(String str) {
        j jVarF = f(str);
        return jVarF != null ? jVarF.d() : o.f10861c;
    }

    public String i(int i11) {
        return (String) this.f10842b.get(i11);
    }

    public j k(String str) {
        j jVar = (j) this.f10841a.get(str);
        return jVar == null ? c(str) : jVar;
    }

    public void l(long j11) {
        c cVar;
        this.f10845e.c(j11);
        c cVar2 = this.f10846f;
        if (cVar2 != null) {
            cVar2.c(j11);
        }
        if (this.f10845e.a() || (cVar = this.f10846f) == null || !cVar.a()) {
            this.f10845e.e(this.f10841a, this.f10842b);
        } else {
            this.f10846f.e(this.f10841a, this.f10842b);
            this.f10845e.d(this.f10841a);
        }
        c cVar3 = this.f10846f;
        if (cVar3 != null) {
            cVar3.f();
            this.f10846f = null;
        }
    }

    public void n(String str) {
        j jVar = (j) this.f10841a.get(str);
        if (jVar != null && jVar.g() && jVar.i()) {
            this.f10841a.remove(str);
            int i11 = jVar.f10834a;
            boolean z10 = this.f10844d.get(i11);
            this.f10845e.g(jVar, z10);
            if (z10) {
                this.f10842b.remove(i11);
                this.f10844d.delete(i11);
            } else {
                this.f10842b.put(i11, null);
                this.f10843c.put(i11, true);
            }
        }
    }

    public void p() {
        r4 it = ImmutableSet.copyOf((Collection) this.f10841a.keySet()).iterator();
        while (it.hasNext()) {
            n((String) it.next());
        }
    }

    public void q() {
        this.f10845e.b(this.f10841a);
        int size = this.f10843c.size();
        for (int i11 = 0; i11 < size; i11++) {
            this.f10842b.remove(this.f10843c.keyAt(i11));
        }
        this.f10843c.clear();
        this.f10844d.clear();
    }
}
