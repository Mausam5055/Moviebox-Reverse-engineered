package v6;

import android.database.Cursor;
import androidx.room.g0;
import com.cloud.hisavana.abtestkit.db.ABRoomDatabase_Impl;

/* JADX INFO: loaded from: classes3.dex */
public final class y implements s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ABRoomDatabase_Impl f77073a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final t f77074b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final v f77075c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final w f77076d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final x f77077e;

    public y(ABRoomDatabase_Impl aBRoomDatabase_Impl) {
        this.f77073a = aBRoomDatabase_Impl;
        this.f77074b = new t(aBRoomDatabase_Impl);
        new u(aBRoomDatabase_Impl);
        this.f77075c = new v(aBRoomDatabase_Impl);
        this.f77076d = new w(aBRoomDatabase_Impl);
        this.f77077e = new x(aBRoomDatabase_Impl);
    }

    @Override // v6.s
    public final int a() {
        this.f77073a.j();
        a4.h hVarB = this.f77076d.b();
        try {
            this.f77073a.k();
            try {
                int iF = hVarB.F();
                this.f77073a.e0();
                this.f77073a.t();
                this.f77076d.h(hVarB);
                return iF;
            } catch (Throwable th2) {
                this.f77073a.t();
                throw th2;
            }
        } catch (Throwable th3) {
            this.f77076d.h(hVarB);
            throw th3;
        }
    }

    @Override // v6.s
    public final long a(z zVar) {
        this.f77073a.k();
        try {
            long jB = s.a.b(this, zVar);
            this.f77073a.e0();
            return jB;
        } finally {
            this.f77073a.t();
        }
    }

    @Override // v6.s
    public final Cursor b() {
        return this.f77073a.V(g0.h("SELECT * FROM hisavana_ab_room", 0));
    }

    @Override // v6.s
    public final void b(z zVar) {
        this.f77073a.k();
        try {
            s.a.a(this, zVar);
            this.f77073a.e0();
        } finally {
            this.f77073a.t();
        }
    }
}
