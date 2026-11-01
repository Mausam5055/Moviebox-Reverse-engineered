package com.transsion.baselib.db.video;

import androidx.room.RoomDatabase;
import java.util.Collections;
import java.util.List;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes5.dex */
public final class h implements PlaybackRecordDao {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final RoomDatabase f43162a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final androidx.room.g f43163b = new a();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final androidx.room.e f43164c = new b();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final androidx.room.e f43165d = new c();

    class a extends androidx.room.g {
        a() {
        }

        @Override // androidx.room.g
        protected String b() {
            return "INSERT OR REPLACE INTO `playback_record_table` (`subjectId`,`se`,`ep`,`lastAdStartTimeStamp`,`lastAdEndTimeStamp`,`rewardUnlock`) VALUES (?,?,?,?,?,?)";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.room.g
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void a(z3.e eVar, PlaybackRecordTable playbackRecordTable) {
            if (playbackRecordTable.getSubjectId() == null) {
                eVar.g(1);
            } else {
                eVar.j(1, playbackRecordTable.getSubjectId());
            }
            eVar.c(2, playbackRecordTable.getSe());
            eVar.c(3, playbackRecordTable.getEp());
            eVar.c(4, playbackRecordTable.getLastAdStartTimeStamp());
            eVar.c(5, playbackRecordTable.getLastAdEndTimeStamp());
            eVar.c(6, playbackRecordTable.getRewardUnlock() ? 1L : 0L);
        }
    }

    class b extends androidx.room.e {
        b() {
        }

        @Override // androidx.room.e
        protected String b() {
            return "DELETE FROM `playback_record_table` WHERE `subjectId` = ? AND `ep` = ? AND `se` = ?";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.room.e
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public void a(z3.e eVar, PlaybackRecordTable playbackRecordTable) {
            if (playbackRecordTable.getSubjectId() == null) {
                eVar.g(1);
            } else {
                eVar.j(1, playbackRecordTable.getSubjectId());
            }
            eVar.c(2, playbackRecordTable.getEp());
            eVar.c(3, playbackRecordTable.getSe());
        }
    }

    class c extends androidx.room.e {
        c() {
        }

        @Override // androidx.room.e
        protected String b() {
            return "UPDATE OR ABORT `playback_record_table` SET `subjectId` = ?,`se` = ?,`ep` = ?,`lastAdStartTimeStamp` = ?,`lastAdEndTimeStamp` = ?,`rewardUnlock` = ? WHERE `subjectId` = ? AND `ep` = ? AND `se` = ?";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.room.e
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public void a(z3.e eVar, PlaybackRecordTable playbackRecordTable) {
            if (playbackRecordTable.getSubjectId() == null) {
                eVar.g(1);
            } else {
                eVar.j(1, playbackRecordTable.getSubjectId());
            }
            eVar.c(2, playbackRecordTable.getSe());
            eVar.c(3, playbackRecordTable.getEp());
            eVar.c(4, playbackRecordTable.getLastAdStartTimeStamp());
            eVar.c(5, playbackRecordTable.getLastAdEndTimeStamp());
            eVar.c(6, playbackRecordTable.getRewardUnlock() ? 1L : 0L);
            if (playbackRecordTable.getSubjectId() == null) {
                eVar.g(7);
            } else {
                eVar.j(7, playbackRecordTable.getSubjectId());
            }
            eVar.c(8, playbackRecordTable.getEp());
            eVar.c(9, playbackRecordTable.getSe());
        }
    }

    public h(RoomDatabase roomDatabase) {
        this.f43162a = roomDatabase;
    }

    public static List h() {
        return Collections.emptyList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ PlaybackRecordTable i(String str, int i11, int i12, z3.b bVar) {
        z3.e eVarD0 = bVar.D0("SELECT * FROM playback_record_table WHERE subjectId = ? AND se = ? AND ep = ? LIMIT 1");
        try {
            if (str == null) {
                eVarD0.g(1);
            } else {
                eVarD0.j(1, str);
            }
            eVarD0.c(2, i11);
            eVarD0.c(3, i12);
            int iD = androidx.room.util.k.d(eVarD0, "subjectId");
            int iD2 = androidx.room.util.k.d(eVarD0, "se");
            int iD3 = androidx.room.util.k.d(eVarD0, "ep");
            int iD4 = androidx.room.util.k.d(eVarD0, "lastAdStartTimeStamp");
            int iD5 = androidx.room.util.k.d(eVarD0, "lastAdEndTimeStamp");
            int iD6 = androidx.room.util.k.d(eVarD0, "rewardUnlock");
            PlaybackRecordTable playbackRecordTable = null;
            if (eVarD0.A0()) {
                playbackRecordTable = new PlaybackRecordTable(eVarD0.isNull(iD) ? null : eVarD0.n0(iD), (int) eVarD0.getLong(iD2), (int) eVarD0.getLong(iD3), eVarD0.getLong(iD4), eVarD0.getLong(iD5), ((int) eVarD0.getLong(iD6)) != 0);
            }
            eVarD0.close();
            return playbackRecordTable;
        } catch (Throwable th2) {
            eVarD0.close();
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit j(PlaybackRecordTable playbackRecordTable, z3.b bVar) throws Exception {
        this.f43163b.d(bVar, playbackRecordTable);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit k(PlaybackRecordTable playbackRecordTable, z3.b bVar) throws Exception {
        this.f43165d.c(bVar, playbackRecordTable);
        return Unit.f67061a;
    }

    @Override // com.transsion.baselib.db.video.PlaybackRecordDao
    public Object a(final String str, final int i11, final int i12, Continuation continuation) {
        return androidx.room.util.b.f(this.f43162a, true, false, new Function1() { // from class: com.transsion.baselib.db.video.f
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return h.i(str, i11, i12, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // com.transsion.baselib.db.video.PlaybackRecordDao
    public Object b(PlaybackRecordTable playbackRecordTable, Continuation continuation) {
        return PlaybackRecordDao.DefaultImpls.a(this, playbackRecordTable, continuation);
    }

    @Override // com.transsion.baselib.db.video.PlaybackRecordDao
    public Object c(final PlaybackRecordTable playbackRecordTable, Continuation continuation) {
        playbackRecordTable.getClass();
        return androidx.room.util.b.f(this.f43162a, false, true, new Function1() { // from class: com.transsion.baselib.db.video.g
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return this.f43158a.j(playbackRecordTable, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // com.transsion.baselib.db.video.PlaybackRecordDao
    public Object d(final PlaybackRecordTable playbackRecordTable, Continuation continuation) {
        playbackRecordTable.getClass();
        return androidx.room.util.b.f(this.f43162a, false, true, new Function1() { // from class: com.transsion.baselib.db.video.e
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return this.f43146a.k(playbackRecordTable, (z3.b) obj);
            }
        }, continuation);
    }
}
