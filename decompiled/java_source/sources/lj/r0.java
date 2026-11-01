package lj;

import androidx.core.app.NotificationCompat;
import androidx.room.RoomDatabase;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.transsion.baselib.db.download.DownloadRange;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes6.dex */
public final class r0 implements n0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final RoomDatabase f68928a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final androidx.room.g f68929b = new a();

    class a extends androidx.room.g {
        a() {
        }

        @Override // androidx.room.g
        protected String b() {
            return "INSERT OR REPLACE INTO `download_thread_range` (`threadId`,`rangeId`,`resourceId`,`start`,`end`,`progress`) VALUES (?,?,?,?,?,?)";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.room.g
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void a(z3.e eVar, DownloadRange downloadRange) {
            eVar.c(1, downloadRange.getThreadId());
            eVar.c(2, downloadRange.getRangeId());
            if (downloadRange.getResourceId() == null) {
                eVar.g(3);
            } else {
                eVar.j(3, downloadRange.getResourceId());
            }
            eVar.c(4, downloadRange.getStart());
            eVar.c(5, downloadRange.getEnd());
            eVar.c(6, downloadRange.getProgress());
        }
    }

    public r0(RoomDatabase roomDatabase) {
        this.f68928a = roomDatabase;
    }

    public static List g() {
        return Collections.emptyList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Unit h(String str, z3.b bVar) {
        z3.e eVarD0 = bVar.D0("DELETE FROM DOWNLOAD_THREAD_RANGE WHERE resourceId=?");
        try {
            if (str == null) {
                eVarD0.g(1);
            } else {
                eVarD0.j(1, str);
            }
            eVarD0.A0();
            Unit unit = Unit.f67061a;
            eVarD0.close();
            return unit;
        } catch (Throwable th2) {
            eVarD0.close();
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ List i(String str, z3.b bVar) {
        z3.e eVarD0 = bVar.D0("SELECT * FROM DOWNLOAD_THREAD_RANGE WHERE resourceId = ?");
        try {
            if (str == null) {
                eVarD0.g(1);
            } else {
                eVarD0.j(1, str);
            }
            int iD = androidx.room.util.k.d(eVarD0, "threadId");
            int iD2 = androidx.room.util.k.d(eVarD0, "rangeId");
            int iD3 = androidx.room.util.k.d(eVarD0, "resourceId");
            int iD4 = androidx.room.util.k.d(eVarD0, "start");
            int iD5 = androidx.room.util.k.d(eVarD0, TtmlNode.END);
            int iD6 = androidx.room.util.k.d(eVarD0, NotificationCompat.CATEGORY_PROGRESS);
            ArrayList arrayList = new ArrayList();
            while (eVarD0.A0()) {
                DownloadRange downloadRange = new DownloadRange();
                downloadRange.setThreadId((int) eVarD0.getLong(iD));
                downloadRange.setRangeId((int) eVarD0.getLong(iD2));
                downloadRange.setResourceId(eVarD0.isNull(iD3) ? null : eVarD0.n0(iD3));
                downloadRange.setStart(eVarD0.getLong(iD4));
                downloadRange.setEnd(eVarD0.getLong(iD5));
                downloadRange.setProgress(eVarD0.getLong(iD6));
                arrayList.add(downloadRange);
            }
            eVarD0.close();
            return arrayList;
        } catch (Throwable th2) {
            eVarD0.close();
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit j(DownloadRange downloadRange, z3.b bVar) throws Exception {
        this.f68929b.d(bVar, downloadRange);
        return Unit.f67061a;
    }

    @Override // lj.n0
    public Object b(final String str, Continuation continuation) {
        return androidx.room.util.b.f(this.f68928a, false, true, new Function1() { // from class: lj.q0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return r0.h(str, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // lj.n0
    public Object c(final String str, Continuation continuation) {
        return androidx.room.util.b.f(this.f68928a, true, false, new Function1() { // from class: lj.o0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return r0.i(str, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // lj.n0
    public Object d(final DownloadRange downloadRange, Continuation continuation) {
        downloadRange.getClass();
        return androidx.room.util.b.f(this.f68928a, false, true, new Function1() { // from class: lj.p0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return this.f68925a.j(downloadRange, (z3.b) obj);
            }
        }, continuation);
    }
}
