package androidx.room.support;

import android.content.Context;
import android.util.Log;
import androidx.room.RoomDatabase;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.channels.Channels;
import java.nio.channels.FileChannel;
import java.nio.channels.ReadableByteChannel;
import java.util.concurrent.Callable;
import kotlin.Unit;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes2.dex */
public final class m implements a4.e, androidx.room.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f14775a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f14776b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final File f14777c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Callable f14778d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f14779e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final a4.e f14780f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private androidx.room.c f14781g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f14782h;

    public static final class a extends a4.e.a {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f14783c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(int i11, int i12) {
            super(i12);
            this.f14783c = i11;
        }

        @Override // a4.e.a
        public void d(a4.d db2) {
            Intrinsics.h(db2, "db");
        }

        @Override // a4.e.a
        public void f(a4.d db2) {
            Intrinsics.h(db2, "db");
            int i11 = this.f14783c;
            if (i11 < 1) {
                db2.S(i11);
            }
        }

        @Override // a4.e.a
        public void g(a4.d db2, int i11, int i12) {
            Intrinsics.h(db2, "db");
        }
    }

    public m(Context context, String str, File file, Callable callable, int i11, a4.e delegate) {
        Intrinsics.h(context, "context");
        Intrinsics.h(delegate, "delegate");
        this.f14775a = context;
        this.f14776b = str;
        this.f14777c = file;
        this.f14778d = callable;
        this.f14779e = i11;
        this.f14780f = delegate;
    }

    private final void b(File file, boolean z10) throws IOException {
        ReadableByteChannel readableByteChannelNewChannel;
        if (this.f14776b != null) {
            readableByteChannelNewChannel = Channels.newChannel(this.f14775a.getAssets().open(this.f14776b));
        } else if (this.f14777c != null) {
            readableByteChannelNewChannel = new FileInputStream(this.f14777c).getChannel();
        } else {
            Callable callable = this.f14778d;
            if (callable == null) {
                throw new IllegalStateException("copyFromAssetPath, copyFromFile and copyFromInputStream are all null!");
            }
            try {
                readableByteChannelNewChannel = Channels.newChannel((InputStream) callable.call());
            } catch (Exception e11) {
                throw new IOException("inputStreamCallable exception on call", e11);
            }
        }
        File fileCreateTempFile = File.createTempFile("room-copy-helper", ".tmp", this.f14775a.getCacheDir());
        fileCreateTempFile.deleteOnExit();
        FileChannel channel = new FileOutputStream(fileCreateTempFile).getChannel();
        Intrinsics.e(channel);
        androidx.room.util.d.a(readableByteChannelNewChannel, channel);
        File parentFile = file.getParentFile();
        if (parentFile != null && !parentFile.exists() && !parentFile.mkdirs()) {
            throw new IOException("Failed to create directories for " + file.getAbsolutePath());
        }
        Intrinsics.e(fileCreateTempFile);
        h(fileCreateTempFile, z10);
        if (fileCreateTempFile.renameTo(file)) {
            return;
        }
        throw new IOException("Failed to move intermediate file (" + fileCreateTempFile.getAbsolutePath() + ") to destination (" + file.getAbsolutePath() + ").");
    }

    private final a4.e d(File file) {
        try {
            int iH = androidx.room.util.b.h(file);
            return new b4.h().a(a4.e.b.f155f.a(this.f14775a).d(file.getAbsolutePath()).c(new a(iH, RangesKt.f(iH, 1))).b());
        } catch (IOException e11) {
            throw new RuntimeException("Malformed database file, unable to read version.", e11);
        }
    }

    private final void h(File file, boolean z10) {
        androidx.room.c cVar = this.f14781g;
        if (cVar == null) {
            Intrinsics.z("databaseConfiguration");
            cVar = null;
        }
        if (cVar.f14586q == null) {
            return;
        }
        a4.e eVarD = d(file);
        try {
            a4.d writableDatabase = z10 ? eVarD.getWritableDatabase() : eVarD.getReadableDatabase();
            androidx.room.c cVar2 = this.f14781g;
            if (cVar2 == null) {
                Intrinsics.z("databaseConfiguration");
                cVar2 = null;
            }
            RoomDatabase.e eVar = cVar2.f14586q;
            Intrinsics.e(eVar);
            eVar.a(writableDatabase);
            Unit unit = Unit.f67061a;
            CloseableKt.a(eVarD, null);
        } catch (Throwable th2) {
            try {
                throw th2;
            } catch (Throwable th3) {
                CloseableKt.a(eVarD, th2);
                throw th3;
            }
        }
    }

    private final void k(boolean z10) {
        String databaseName = getDatabaseName();
        if (databaseName == null) {
            throw new IllegalStateException("Required value was null.");
        }
        File databasePath = this.f14775a.getDatabasePath(databaseName);
        androidx.room.c cVar = this.f14781g;
        androidx.room.c cVar2 = null;
        if (cVar == null) {
            Intrinsics.z("databaseConfiguration");
            cVar = null;
        }
        d4.a aVar = new d4.a(databaseName, this.f14775a.getFilesDir(), cVar.f14592w);
        try {
            d4.a.c(aVar, false, 1, null);
            if (!databasePath.exists()) {
                try {
                    Intrinsics.e(databasePath);
                    b(databasePath, z10);
                    aVar.d();
                    return;
                } catch (IOException e11) {
                    throw new RuntimeException("Unable to copy database file.", e11);
                }
            }
            try {
                Intrinsics.e(databasePath);
                int iH = androidx.room.util.b.h(databasePath);
                if (iH == this.f14779e) {
                    aVar.d();
                    return;
                }
                androidx.room.c cVar3 = this.f14781g;
                if (cVar3 == null) {
                    Intrinsics.z("databaseConfiguration");
                } else {
                    cVar2 = cVar3;
                }
                if (cVar2.e(iH, this.f14779e)) {
                    aVar.d();
                    return;
                }
                if (this.f14775a.deleteDatabase(databaseName)) {
                    try {
                        b(databasePath, z10);
                        Unit unit = Unit.f67061a;
                    } catch (IOException e12) {
                        Log.w("ROOM", "Unable to copy database file.", e12);
                    }
                } else {
                    Log.w("ROOM", "Failed to delete database file (" + databaseName + ") for a copy destructive migration.");
                }
                aVar.d();
                return;
            } catch (IOException e13) {
                Log.w("ROOM", "Unable to read database version.", e13);
                aVar.d();
                return;
            }
        } catch (Throwable th2) {
            aVar.d();
            throw th2;
        }
        aVar.d();
        throw th2;
    }

    @Override // a4.e, java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() {
        getDelegate().close();
        this.f14782h = false;
    }

    @Override // a4.e
    public String getDatabaseName() {
        return getDelegate().getDatabaseName();
    }

    @Override // androidx.room.d
    public a4.e getDelegate() {
        return this.f14780f;
    }

    @Override // a4.e
    public a4.d getReadableDatabase() {
        if (!this.f14782h) {
            k(false);
            this.f14782h = true;
        }
        return getDelegate().getReadableDatabase();
    }

    @Override // a4.e
    public a4.d getWritableDatabase() {
        if (!this.f14782h) {
            k(true);
            this.f14782h = true;
        }
        return getDelegate().getWritableDatabase();
    }

    public final void i(androidx.room.c databaseConfiguration) {
        Intrinsics.h(databaseConfiguration, "databaseConfiguration");
        this.f14781g = databaseConfiguration;
    }

    @Override // a4.e
    public void setWriteAheadLoggingEnabled(boolean z10) {
        getDelegate().setWriteAheadLoggingEnabled(z10);
    }
}
