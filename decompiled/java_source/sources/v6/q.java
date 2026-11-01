package v6;

import android.database.Cursor;
import androidx.room.g0;
import com.cloud.hisavana.abtestkit.db.ABRoomDatabase_Impl;

/* JADX INFO: loaded from: classes3.dex */
public final class q implements m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ABRoomDatabase_Impl f77067a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final n f77068b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final o f77069c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final p f77070d;

    public q(ABRoomDatabase_Impl aBRoomDatabase_Impl) {
        this.f77067a = aBRoomDatabase_Impl;
        this.f77068b = new n(aBRoomDatabase_Impl);
        this.f77069c = new o(aBRoomDatabase_Impl);
        this.f77070d = new p(aBRoomDatabase_Impl);
    }

    @Override // v6.m
    public final int a() {
        this.f77067a.j();
        a4.h hVarB = this.f77070d.b();
        try {
            this.f77067a.k();
            try {
                int iF = hVarB.F();
                this.f77067a.e0();
                this.f77067a.t();
                this.f77070d.h(hVarB);
                return iF;
            } catch (Throwable th2) {
                this.f77067a.t();
                throw th2;
            }
        } catch (Throwable th3) {
            this.f77070d.h(hVarB);
            throw th3;
        }
    }

    @Override // v6.m
    public final long a(r rVar) {
        this.f77067a.j();
        this.f77067a.k();
        try {
            long jM = this.f77068b.m(rVar);
            this.f77067a.e0();
            return jM;
        } finally {
            this.f77067a.t();
        }
    }

    @Override // v6.m
    public final Cursor a(long j11) {
        g0 g0VarH = g0.h("SELECT * FROM hisavana_local_ab_room WHERE LOCAL_AB_VERSION_CODE = ?", 1);
        g0VarH.c(1, j11);
        return this.f77067a.V(g0VarH);
    }

    @Override // v6.m
    public final int b(r rVar) {
        this.f77067a.j();
        this.f77067a.k();
        try {
            int iK = this.f77069c.k(rVar);
            this.f77067a.e0();
            return iK;
        } finally {
            this.f77067a.t();
        }
    }
}
