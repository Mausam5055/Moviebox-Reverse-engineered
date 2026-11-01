package com.transsion.ad.db.scene;

import androidx.room.RoomDatabase;
import androidx.room.util.k;
import java.util.Collections;
import java.util.List;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes5.dex */
public final class g implements AdSceneLimitDao {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final RoomDatabase f42112a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final androidx.room.g f42113b = new a();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final androidx.room.e f42114c = new b();

    class a extends androidx.room.g {
        a() {
        }

        @Override // androidx.room.g
        protected String b() {
            return "INSERT OR REPLACE INTO `ad_scene_limit_table` (`sceneId`,`lastDisplayAdDate`,`lastDisplayAdTimestamp`,`displayTimes`) VALUES (?,?,?,?)";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.room.g
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void a(z3.e eVar, AdSceneLimit adSceneLimit) {
            if (adSceneLimit.getSceneId() == null) {
                eVar.g(1);
            } else {
                eVar.j(1, adSceneLimit.getSceneId());
            }
            if (adSceneLimit.getLastDisplayAdDate() == null) {
                eVar.g(2);
            } else {
                eVar.j(2, adSceneLimit.getLastDisplayAdDate());
            }
            eVar.c(3, adSceneLimit.getLastDisplayAdTimestamp());
            eVar.c(4, adSceneLimit.getDisplayTimes());
        }
    }

    class b extends androidx.room.e {
        b() {
        }

        @Override // androidx.room.e
        protected String b() {
            return "UPDATE OR ABORT `ad_scene_limit_table` SET `sceneId` = ?,`lastDisplayAdDate` = ?,`lastDisplayAdTimestamp` = ?,`displayTimes` = ? WHERE `sceneId` = ?";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.room.e
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public void a(z3.e eVar, AdSceneLimit adSceneLimit) {
            if (adSceneLimit.getSceneId() == null) {
                eVar.g(1);
            } else {
                eVar.j(1, adSceneLimit.getSceneId());
            }
            if (adSceneLimit.getLastDisplayAdDate() == null) {
                eVar.g(2);
            } else {
                eVar.j(2, adSceneLimit.getLastDisplayAdDate());
            }
            eVar.c(3, adSceneLimit.getLastDisplayAdTimestamp());
            eVar.c(4, adSceneLimit.getDisplayTimes());
            if (adSceneLimit.getSceneId() == null) {
                eVar.g(5);
            } else {
                eVar.j(5, adSceneLimit.getSceneId());
            }
        }
    }

    public g(RoomDatabase roomDatabase) {
        this.f42112a = roomDatabase;
    }

    public static List m() {
        return Collections.emptyList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object n(String str, String str2, long j11, long j12, int i11, Continuation continuation) {
        return AdSceneLimitDao.DefaultImpls.a(this, str, str2, j11, j12, i11, continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object o(String str, String str2, Continuation continuation) {
        return AdSceneLimitDao.DefaultImpls.b(this, str, str2, continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ AdSceneLimit p(String str, z3.b bVar) {
        z3.e eVarD0 = bVar.D0("SELECT * FROM ad_scene_limit_table WHERE sceneId = ? LIMIT 1");
        try {
            if (str == null) {
                eVarD0.g(1);
            } else {
                eVarD0.j(1, str);
            }
            int iD = k.d(eVarD0, "sceneId");
            int iD2 = k.d(eVarD0, "lastDisplayAdDate");
            int iD3 = k.d(eVarD0, "lastDisplayAdTimestamp");
            int iD4 = k.d(eVarD0, "displayTimes");
            AdSceneLimit adSceneLimit = null;
            if (eVarD0.A0()) {
                adSceneLimit = new AdSceneLimit(eVarD0.isNull(iD) ? null : eVarD0.n0(iD), eVarD0.isNull(iD2) ? null : eVarD0.n0(iD2), eVarD0.getLong(iD3), (int) eVarD0.getLong(iD4));
            }
            eVarD0.close();
            return adSceneLimit;
        } catch (Throwable th2) {
            eVarD0.close();
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit q(AdSceneLimit adSceneLimit, z3.b bVar) throws Exception {
        this.f42113b.d(bVar, adSceneLimit);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object r(String str, String str2, long j11, Continuation continuation) {
        return AdSceneLimitDao.DefaultImpls.c(this, str, str2, j11, continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit s(AdSceneLimit adSceneLimit, z3.b bVar) throws Exception {
        this.f42114c.c(bVar, adSceneLimit);
        return Unit.f67061a;
    }

    @Override // com.transsion.ad.db.scene.AdSceneLimitDao
    public Object a(final String str, Continuation continuation) {
        return androidx.room.util.b.f(this.f42112a, true, false, new Function1() { // from class: com.transsion.ad.db.scene.e
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return g.p(str, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // com.transsion.ad.db.scene.AdSceneLimitDao
    public Object b(final String str, final String str2, final long j11, final long j12, final int i11, Continuation continuation) {
        return androidx.room.util.b.e(this.f42112a, new Function1() { // from class: com.transsion.ad.db.scene.a
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return this.f42094a.n(str, str2, j11, j12, i11, (Continuation) obj);
            }
        }, continuation);
    }

    @Override // com.transsion.ad.db.scene.AdSceneLimitDao
    public Object c(final String str, final String str2, final long j11, Continuation continuation) {
        return androidx.room.util.b.e(this.f42112a, new Function1() { // from class: com.transsion.ad.db.scene.b
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return this.f42100a.r(str, str2, j11, (Continuation) obj);
            }
        }, continuation);
    }

    @Override // com.transsion.ad.db.scene.AdSceneLimitDao
    public Object d(final String str, final String str2, Continuation continuation) {
        return androidx.room.util.b.e(this.f42112a, new Function1() { // from class: com.transsion.ad.db.scene.d
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return this.f42106a.o(str, str2, (Continuation) obj);
            }
        }, continuation);
    }

    @Override // com.transsion.ad.db.scene.AdSceneLimitDao
    public Object e(final AdSceneLimit adSceneLimit, Continuation continuation) {
        adSceneLimit.getClass();
        return androidx.room.util.b.f(this.f42112a, false, true, new Function1() { // from class: com.transsion.ad.db.scene.f
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return this.f42110a.q(adSceneLimit, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // com.transsion.ad.db.scene.AdSceneLimitDao
    public Object f(final AdSceneLimit adSceneLimit, Continuation continuation) {
        adSceneLimit.getClass();
        return androidx.room.util.b.f(this.f42112a, false, true, new Function1() { // from class: com.transsion.ad.db.scene.c
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return this.f42104a.s(adSceneLimit, (z3.b) obj);
            }
        }, continuation);
    }
}
