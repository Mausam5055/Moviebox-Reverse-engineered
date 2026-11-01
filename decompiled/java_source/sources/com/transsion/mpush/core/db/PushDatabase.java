package com.transsion.mpush.core.db;

import a4.d;
import android.content.Context;
import android.database.Cursor;
import androidx.room.RoomDatabase;
import androidx.room.q;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import mn.j;
import y3.c;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b'\u0018\u0000 \n2\u00020\u0001:\u0001\u000bB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H&¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H&¢\u0006\u0004\b\b\u0010\t¨\u0006\f"}, d2 = {"Lcom/transsion/mpush/core/db/PushDatabase;", "Landroidx/room/RoomDatabase;", "<init>", "()V", "Lmn/a;", "j0", "()Lmn/a;", "Lmn/j;", "k0", "()Lmn/j;", TtmlNode.TAG_P, DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "MBPush_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public abstract class PushDatabase extends RoomDatabase {

    /* JADX INFO: renamed from: p, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final a f47481q = new a();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static volatile PushDatabase f47482r;

    public static final class a extends c {
        a() {
            super(1, 2);
        }

        @Override // y3.c
        public void a(d database) {
            Intrinsics.h(database, "database");
            if (PushDatabase.INSTANCE.c(database, "msg_standard", "push_time")) {
                return;
            }
            database.E("ALTER TABLE msg_standard ADD COLUMN push_time TEXT");
        }
    }

    /* JADX INFO: renamed from: com.transsion.mpush.core.db.PushDatabase$b, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final boolean c(d dVar, String str, String str2) {
            Cursor cursorI0 = dVar.i0("PRAGMA table_info(" + str + ")");
            try {
                int columnIndex = cursorI0.getColumnIndex("name");
                if (columnIndex == -1) {
                    CloseableKt.a(cursorI0, null);
                    return false;
                }
                while (cursorI0.moveToNext()) {
                    if (Intrinsics.c(str2, cursorI0.getString(columnIndex))) {
                        CloseableKt.a(cursorI0, null);
                        return true;
                    }
                }
                Unit unit = Unit.f67061a;
                CloseableKt.a(cursorI0, null);
                return false;
            } catch (Throwable th2) {
                try {
                    throw th2;
                } catch (Throwable th3) {
                    CloseableKt.a(cursorI0, th2);
                    throw th3;
                }
            }
        }

        public final PushDatabase b(Context context) {
            Intrinsics.h(context, "context");
            PushDatabase pushDatabase = PushDatabase.f47482r;
            if (pushDatabase == null) {
                synchronized (this) {
                    pushDatabase = PushDatabase.f47482r;
                    if (pushDatabase == null) {
                        Context applicationContext = context.getApplicationContext();
                        Intrinsics.g(applicationContext, "getApplicationContext(...)");
                        RoomDatabase roomDatabaseD = q.a(applicationContext, PushDatabase.class, "new_sdk_push_db").b(PushDatabase.f47481q).d();
                        PushDatabase.f47482r = (PushDatabase) roomDatabaseD;
                        pushDatabase = (PushDatabase) roomDatabaseD;
                    }
                }
            }
            return pushDatabase;
        }
    }

    public abstract mn.a j0();

    public abstract j k0();
}
