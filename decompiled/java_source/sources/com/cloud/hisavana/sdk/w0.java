package com.cloud.hisavana.sdk;

import a4.g;
import android.database.Cursor;
import androidx.room.RoomDatabase;
import androidx.room.j0;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class w0 implements v0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final RoomDatabase f23036a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final androidx.room.h f23037b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final androidx.room.f f23038c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final j0 f23039d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final j0 f23040e;

    class a extends androidx.room.h {
        a(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override // androidx.room.j0
        protected String e() {
            return "INSERT OR REPLACE INTO `cloudList_room` (`codeSeatId`,`code_seat_bean`) VALUES (?,?)";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.room.h
        /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
        public void j(a4.h hVar, e1 e1Var) {
            if (e1Var.a() == null) {
                hVar.g(1);
            } else {
                hVar.y(1, e1Var.a());
            }
            if (e1Var.b() == null) {
                hVar.g(2);
            } else {
                hVar.y(2, e1Var.b());
            }
        }
    }

    class b extends androidx.room.f {
        b(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override // androidx.room.j0
        protected String e() {
            return "UPDATE OR ABORT `cloudList_room` SET `codeSeatId` = ?,`code_seat_bean` = ? WHERE `codeSeatId` = ?";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.room.f
        /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
        public void j(a4.h hVar, e1 e1Var) {
            if (e1Var.a() == null) {
                hVar.g(1);
            } else {
                hVar.y(1, e1Var.a());
            }
            if (e1Var.b() == null) {
                hVar.g(2);
            } else {
                hVar.y(2, e1Var.b());
            }
            if (e1Var.a() == null) {
                hVar.g(3);
            } else {
                hVar.y(3, e1Var.a());
            }
        }
    }

    class c extends j0 {
        c(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override // androidx.room.j0
        public String e() {
            return "DELETE FROM cloudList_room";
        }
    }

    class d extends j0 {
        d(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override // androidx.room.j0
        public String e() {
            return "UPDATE cloudList_room SET code_seat_bean = ? WHERE codeSeatId = ?";
        }
    }

    public w0(RoomDatabase roomDatabase) {
        this.f23036a = roomDatabase;
        this.f23037b = new a(roomDatabase);
        this.f23038c = new b(roomDatabase);
        this.f23039d = new c(roomDatabase);
        this.f23040e = new d(roomDatabase);
    }

    public static List d() {
        return Collections.emptyList();
    }

    @Override // com.cloud.hisavana.sdk.v0
    public int a(List list) {
        this.f23036a.j();
        this.f23036a.k();
        try {
            int iL = this.f23038c.l(list);
            this.f23036a.e0();
            return iL;
        } finally {
            this.f23036a.t();
        }
    }

    @Override // com.cloud.hisavana.sdk.v0
    public Cursor a(g gVar) {
        return this.f23036a.V(gVar);
    }

    @Override // com.cloud.hisavana.sdk.v0
    public void a() {
        this.f23036a.j();
        a4.h hVarB = this.f23039d.b();
        try {
            this.f23036a.k();
            try {
                hVarB.F();
                this.f23036a.e0();
                this.f23036a.t();
                this.f23039d.h(hVarB);
            } catch (Throwable th2) {
                this.f23036a.t();
                throw th2;
            }
        } catch (Throwable th3) {
            this.f23039d.h(hVarB);
            throw th3;
        }
    }

    @Override // com.cloud.hisavana.sdk.v0
    public int b(g gVar) {
        this.f23036a.j();
        Cursor cursorG = androidx.room.util.b.g(this.f23036a, gVar, false, null);
        try {
            return cursorG.moveToFirst() ? cursorG.getInt(0) : 0;
        } finally {
            cursorG.close();
        }
    }

    @Override // com.cloud.hisavana.sdk.v0
    public void c(List list) {
        this.f23036a.j();
        this.f23036a.k();
        try {
            this.f23037b.k(list);
            this.f23036a.e0();
        } finally {
            this.f23036a.t();
        }
    }
}
