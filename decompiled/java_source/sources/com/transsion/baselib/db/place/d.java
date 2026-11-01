package com.transsion.baselib.db.place;

import androidx.room.RoomDatabase;
import androidx.room.e;
import androidx.room.g;
import androidx.room.util.k;
import com.google.android.libraries.places.api.model.PlaceTypes;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes5.dex */
public final class d implements PlaceDao {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final RoomDatabase f43104a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final g f43105b = new a();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final e f43106c = new b();

    class a extends g {
        a() {
        }

        @Override // androidx.room.g
        protected String b() {
            return "INSERT OR REPLACE INTO `place_list` (`latitude`,`longitude`,`name`,`address`,`distance`) VALUES (?,?,?,?,?)";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.room.g
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void a(z3.e eVar, PlaceDBBean placeDBBean) {
            eVar.a(1, placeDBBean.getLatitude());
            eVar.a(2, placeDBBean.getLongitude());
            if (placeDBBean.getName() == null) {
                eVar.g(3);
            } else {
                eVar.j(3, placeDBBean.getName());
            }
            if (placeDBBean.getAddress() == null) {
                eVar.g(4);
            } else {
                eVar.j(4, placeDBBean.getAddress());
            }
            if (placeDBBean.getDistance() == null) {
                eVar.g(5);
            } else {
                eVar.j(5, placeDBBean.getDistance());
            }
        }
    }

    class b extends e {
        b() {
        }

        @Override // androidx.room.e
        protected String b() {
            return "DELETE FROM `place_list` WHERE `latitude` = ? AND `longitude` = ?";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.room.e
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public void a(z3.e eVar, PlaceDBBean placeDBBean) {
            eVar.a(1, placeDBBean.getLatitude());
            eVar.a(2, placeDBBean.getLongitude());
        }
    }

    public d(RoomDatabase roomDatabase) {
        this.f43104a = roomDatabase;
    }

    public static List h() {
        return Collections.emptyList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Unit i(z3.b bVar) {
        z3.e eVarD0 = bVar.D0("DELETE FROM place_list");
        try {
            eVarD0.A0();
            return Unit.f67061a;
        } finally {
            eVarD0.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ List j(z3.b bVar) {
        z3.e eVarD0 = bVar.D0("SELECT * FROM place_list");
        try {
            int iD = k.d(eVarD0, "latitude");
            int iD2 = k.d(eVarD0, "longitude");
            int iD3 = k.d(eVarD0, "name");
            int iD4 = k.d(eVarD0, PlaceTypes.ADDRESS);
            int iD5 = k.d(eVarD0, "distance");
            ArrayList arrayList = new ArrayList();
            while (eVarD0.A0()) {
                arrayList.add(new PlaceDBBean(eVarD0.getDouble(iD), eVarD0.getDouble(iD2), eVarD0.isNull(iD3) ? null : eVarD0.n0(iD3), eVarD0.isNull(iD4) ? null : eVarD0.n0(iD4), eVarD0.isNull(iD5) ? null : eVarD0.n0(iD5)));
            }
            return arrayList;
        } finally {
            eVarD0.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit k(List list, z3.b bVar) throws Exception {
        this.f43105b.c(bVar, list);
        return Unit.f67061a;
    }

    @Override // com.transsion.baselib.db.place.PlaceDao
    public Object a(Continuation continuation) {
        return androidx.room.util.b.f(this.f43104a, false, true, new Function1() { // from class: com.transsion.baselib.db.place.a
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return d.i((z3.b) obj);
            }
        }, continuation);
    }

    @Override // com.transsion.baselib.db.place.PlaceDao
    public Object b(final List list, Continuation continuation) {
        list.getClass();
        return androidx.room.util.b.f(this.f43104a, false, true, new Function1() { // from class: com.transsion.baselib.db.place.c
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return this.f43102a.k(list, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // com.transsion.baselib.db.place.PlaceDao
    public Object c(List list, Continuation continuation) {
        return PlaceDao.DefaultImpls.a(this, list, continuation);
    }

    @Override // com.transsion.baselib.db.place.PlaceDao
    public Object d(Continuation continuation) {
        return androidx.room.util.b.f(this.f43104a, true, false, new Function1() { // from class: com.transsion.baselib.db.place.b
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return d.j((z3.b) obj);
            }
        }, continuation);
    }
}
