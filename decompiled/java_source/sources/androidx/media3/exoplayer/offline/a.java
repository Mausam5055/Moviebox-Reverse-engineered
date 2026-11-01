package androidx.media3.exoplayer.offline;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.text.TextUtils;
import androidx.media3.common.StreamKey;
import androidx.media3.common.util.a1;
import androidx.media3.database.DatabaseIOException;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class a implements t {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final String f12402f = p(3, 4);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final String[] f12403g = {"id", "mime_type", "uri", "stream_keys", "custom_cache_key", "data", "state", "start_time_ms", "update_time_ms", "content_length", "stop_reason", "failure_reason", "percent_downloaded", "bytes_downloaded", "key_set_id"};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f12404a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f12405b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final v1.a f12406c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Object f12407d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f12408e;

    private static final class b implements e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Cursor f12409a;

        private b(Cursor cursor) {
            this.f12409a = cursor;
        }

        @Override // androidx.media3.exoplayer.offline.e
        public c N() {
            return a.n(this.f12409a);
        }

        @Override // androidx.media3.exoplayer.offline.e, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            this.f12409a.close();
        }

        @Override // androidx.media3.exoplayer.offline.e
        public int getPosition() {
            return this.f12409a.getPosition();
        }

        @Override // androidx.media3.exoplayer.offline.e
        public /* synthetic */ boolean moveToNext() {
            return d.a(this);
        }

        @Override // androidx.media3.exoplayer.offline.e
        public boolean moveToPosition(int i11) {
            return this.f12409a.moveToPosition(i11);
        }
    }

    public a(v1.a aVar) {
        this(aVar, "");
    }

    public a(v1.a aVar, String str) {
        this.f12404a = str;
        this.f12406c = aVar;
        this.f12405b = "ExoPlayerDownloads" + str;
        this.f12407d = new Object();
    }

    private static List j(String str) {
        ArrayList arrayList = new ArrayList();
        if (TextUtils.isEmpty(str)) {
            return arrayList;
        }
        for (String str2 : a1.o1(str, ",")) {
            String[] strArrO1 = a1.o1(str2, "\\.");
            androidx.media3.common.util.a.g(strArrO1.length == 3);
            arrayList.add(new StreamKey(Integer.parseInt(strArrO1[0]), Integer.parseInt(strArrO1[1]), Integer.parseInt(strArrO1[2])));
        }
        return arrayList;
    }

    static String k(List list) {
        StringBuilder sb2 = new StringBuilder();
        for (int i11 = 0; i11 < list.size(); i11++) {
            StreamKey streamKey = (StreamKey) list.get(i11);
            sb2.append(streamKey.periodIndex);
            sb2.append('.');
            sb2.append(streamKey.groupIndex);
            sb2.append('.');
            sb2.append(streamKey.streamIndex);
            sb2.append(',');
        }
        if (sb2.length() > 0) {
            sb2.setLength(sb2.length() - 1);
        }
        return sb2.toString();
    }

    private void l() {
        synchronized (this.f12407d) {
            if (this.f12408e) {
                return;
            }
            try {
                int iB = v1.c.b(this.f12406c.getReadableDatabase(), 0, this.f12404a);
                if (iB != 3) {
                    SQLiteDatabase writableDatabase = this.f12406c.getWritableDatabase();
                    writableDatabase.beginTransactionNonExclusive();
                    try {
                        v1.c.d(writableDatabase, 0, this.f12404a, 3);
                        List listR = iB == 2 ? r(writableDatabase) : new ArrayList();
                        writableDatabase.execSQL("DROP TABLE IF EXISTS " + this.f12405b);
                        writableDatabase.execSQL("CREATE TABLE " + this.f12405b + " (id TEXT PRIMARY KEY NOT NULL,mime_type TEXT,uri TEXT NOT NULL,stream_keys TEXT NOT NULL,custom_cache_key TEXT,data BLOB NOT NULL,state INTEGER NOT NULL,start_time_ms INTEGER NOT NULL,update_time_ms INTEGER NOT NULL,content_length INTEGER NOT NULL,stop_reason INTEGER NOT NULL,failure_reason INTEGER NOT NULL,percent_downloaded REAL NOT NULL,bytes_downloaded INTEGER NOT NULL,key_set_id BLOB NOT NULL)");
                        Iterator it = listR.iterator();
                        while (it.hasNext()) {
                            s((c) it.next(), writableDatabase);
                        }
                        writableDatabase.setTransactionSuccessful();
                        writableDatabase.endTransaction();
                    } catch (Throwable th2) {
                        writableDatabase.endTransaction();
                        throw th2;
                    }
                }
                this.f12408e = true;
            } catch (SQLException e11) {
                throw new DatabaseIOException(e11);
            }
        }
    }

    private Cursor m(String str, String[] strArr) throws DatabaseIOException {
        try {
            return this.f12406c.getReadableDatabase().query(this.f12405b, f12403g, str, strArr, null, null, "start_time_ms ASC");
        } catch (SQLiteException e11) {
            throw new DatabaseIOException(e11);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static c n(Cursor cursor) {
        byte[] blob = cursor.getBlob(14);
        DownloadRequest.b bVarF = new DownloadRequest.b((String) androidx.media3.common.util.a.e(cursor.getString(0)), Uri.parse((String) androidx.media3.common.util.a.e(cursor.getString(2)))).e(cursor.getString(1)).f(j(cursor.getString(3)));
        if (blob.length <= 0) {
            blob = null;
        }
        DownloadRequest downloadRequestA = bVarF.d(blob).b(cursor.getString(4)).c(cursor.getBlob(5)).a();
        l lVar = new l();
        lVar.f12424a = cursor.getLong(13);
        lVar.f12425b = cursor.getFloat(12);
        int i11 = cursor.getInt(6);
        return new c(downloadRequestA, i11, cursor.getLong(7), cursor.getLong(8), cursor.getLong(9), cursor.getInt(10), i11 == 4 ? cursor.getInt(11) : 0, lVar);
    }

    private static c o(Cursor cursor) {
        DownloadRequest downloadRequestA = new DownloadRequest.b((String) androidx.media3.common.util.a.e(cursor.getString(0)), Uri.parse((String) androidx.media3.common.util.a.e(cursor.getString(2)))).e(q(cursor.getString(1))).f(j(cursor.getString(3))).b(cursor.getString(4)).c(cursor.getBlob(5)).a();
        l lVar = new l();
        lVar.f12424a = cursor.getLong(13);
        lVar.f12425b = cursor.getFloat(12);
        int i11 = cursor.getInt(6);
        return new c(downloadRequestA, i11, cursor.getLong(7), cursor.getLong(8), cursor.getLong(9), cursor.getInt(10), i11 == 4 ? cursor.getInt(11) : 0, lVar);
    }

    private static String p(int... iArr) {
        if (iArr.length == 0) {
            return "1";
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("state");
        sb2.append(" IN (");
        for (int i11 = 0; i11 < iArr.length; i11++) {
            if (i11 > 0) {
                sb2.append(',');
            }
            sb2.append(iArr[i11]);
        }
        sb2.append(')');
        return sb2.toString();
    }

    private static String q(String str) {
        if ("dash".equals(str)) {
            return MimeTypes.APPLICATION_MPD;
        }
        if ("hls".equals(str)) {
            return MimeTypes.APPLICATION_M3U8;
        }
        return "ss".equals(str) ? MimeTypes.APPLICATION_SS : MimeTypes.VIDEO_UNKNOWN;
    }

    private List r(SQLiteDatabase sQLiteDatabase) {
        ArrayList arrayList = new ArrayList();
        if (!a1.t1(sQLiteDatabase, this.f12405b)) {
            return arrayList;
        }
        Cursor cursorQuery = sQLiteDatabase.query(this.f12405b, new String[]{"id", CampaignEx.JSON_KEY_TITLE, "uri", "stream_keys", "custom_cache_key", "data", "state", "start_time_ms", "update_time_ms", "content_length", "stop_reason", "failure_reason", "percent_downloaded", "bytes_downloaded"}, null, null, null, null, null);
        while (cursorQuery.moveToNext()) {
            try {
                arrayList.add(o(cursorQuery));
            } catch (Throwable th2) {
                if (cursorQuery == null) {
                    throw th2;
                }
                try {
                    cursorQuery.close();
                    throw th2;
                } catch (Throwable th3) {
                    th2.addSuppressed(th3);
                    throw th2;
                }
            }
        }
        cursorQuery.close();
        return arrayList;
    }

    private void s(c cVar, SQLiteDatabase sQLiteDatabase) {
        byte[] bArr = cVar.f12413a.keySetId;
        if (bArr == null) {
            bArr = a1.f10355f;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("id", cVar.f12413a.f12343id);
        contentValues.put("mime_type", cVar.f12413a.mimeType);
        contentValues.put("uri", cVar.f12413a.uri.toString());
        contentValues.put("stream_keys", k(cVar.f12413a.streamKeys));
        contentValues.put("custom_cache_key", cVar.f12413a.customCacheKey);
        contentValues.put("data", cVar.f12413a.data);
        contentValues.put("state", Integer.valueOf(cVar.f12414b));
        contentValues.put("start_time_ms", Long.valueOf(cVar.f12415c));
        contentValues.put("update_time_ms", Long.valueOf(cVar.f12416d));
        contentValues.put("content_length", Long.valueOf(cVar.f12417e));
        contentValues.put("stop_reason", Integer.valueOf(cVar.f12418f));
        contentValues.put("failure_reason", Integer.valueOf(cVar.f12419g));
        contentValues.put("percent_downloaded", Float.valueOf(cVar.b()));
        contentValues.put("bytes_downloaded", Long.valueOf(cVar.a()));
        contentValues.put("key_set_id", bArr);
        sQLiteDatabase.replaceOrThrow(this.f12405b, null, contentValues);
    }

    @Override // androidx.media3.exoplayer.offline.t
    public void a(String str, int i11) throws DatabaseIOException {
        l();
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put("stop_reason", Integer.valueOf(i11));
            this.f12406c.getWritableDatabase().update(this.f12405b, contentValues, f12402f + " AND id = ?", new String[]{str});
        } catch (SQLException e11) {
            throw new DatabaseIOException(e11);
        }
    }

    @Override // androidx.media3.exoplayer.offline.t
    public void b(c cVar) throws DatabaseIOException {
        l();
        try {
            s(cVar, this.f12406c.getWritableDatabase());
        } catch (SQLiteException e11) {
            throw new DatabaseIOException(e11);
        }
    }

    @Override // androidx.media3.exoplayer.offline.t
    public void c(String str) throws DatabaseIOException {
        l();
        try {
            this.f12406c.getWritableDatabase().delete(this.f12405b, "id = ?", new String[]{str});
        } catch (SQLiteException e11) {
            throw new DatabaseIOException(e11);
        }
    }

    @Override // androidx.media3.exoplayer.offline.t
    public void d(int i11) throws DatabaseIOException {
        l();
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put("stop_reason", Integer.valueOf(i11));
            this.f12406c.getWritableDatabase().update(this.f12405b, contentValues, f12402f, null);
        } catch (SQLException e11) {
            throw new DatabaseIOException(e11);
        }
    }

    @Override // androidx.media3.exoplayer.offline.f
    public e e(int... iArr) throws DatabaseIOException {
        l();
        return new b(m(p(iArr), null));
    }

    @Override // androidx.media3.exoplayer.offline.t
    public void f() throws DatabaseIOException {
        l();
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put("state", (Integer) 5);
            contentValues.put("failure_reason", (Integer) 0);
            this.f12406c.getWritableDatabase().update(this.f12405b, contentValues, null, null);
        } catch (SQLException e11) {
            throw new DatabaseIOException(e11);
        }
    }

    @Override // androidx.media3.exoplayer.offline.t
    public void g() throws DatabaseIOException {
        l();
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put("state", (Integer) 0);
            this.f12406c.getWritableDatabase().update(this.f12405b, contentValues, "state = 2", null);
        } catch (SQLException e11) {
            throw new DatabaseIOException(e11);
        }
    }

    @Override // androidx.media3.exoplayer.offline.f
    public c h(String str) throws DatabaseIOException {
        l();
        try {
            Cursor cursorM = m("id = ?", new String[]{str});
            try {
                if (cursorM.getCount() == 0) {
                    cursorM.close();
                    return null;
                }
                cursorM.moveToNext();
                c cVarN = n(cursorM);
                cursorM.close();
                return cVarN;
            } catch (Throwable th2) {
                if (cursorM != null) {
                    try {
                        cursorM.close();
                    } catch (Throwable th3) {
                        th2.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        } catch (SQLiteException e11) {
            throw new DatabaseIOException(e11);
        }
        throw new DatabaseIOException(e11);
    }
}
