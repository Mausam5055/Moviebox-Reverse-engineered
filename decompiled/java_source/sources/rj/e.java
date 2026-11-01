package rj;

import androidx.room.RoomDatabase;
import androidx.room.g;
import androidx.room.util.k;
import com.cloud.tmc.integration.permission.PermissionConstant;
import com.hisavana.common.tracking.TrackingKey;
import com.transsion.baselib.db.room.RoomItemBean;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes6.dex */
public final class e implements rj.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final RoomDatabase f74540a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final g f74541b = new a();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final androidx.room.e f74542c = new b();

    class a extends g {
        a() {
        }

        @Override // androidx.room.g
        protected String b() {
            return "INSERT OR REPLACE INTO `room_table` (`groupId`,`name`,`avatar`,`hasJoin`,`newPostCount`,`description`,`postCount`,`userCount`,`level`,`updateTimeStamp`) VALUES (?,?,?,?,?,?,?,?,?,?)";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.room.g
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void a(z3.e eVar, RoomItemBean roomItemBean) {
            if (roomItemBean.getGroupId() == null) {
                eVar.g(1);
            } else {
                eVar.j(1, roomItemBean.getGroupId());
            }
            if (roomItemBean.getName() == null) {
                eVar.g(2);
            } else {
                eVar.j(2, roomItemBean.getName());
            }
            if (roomItemBean.getAvatar() == null) {
                eVar.g(3);
            } else {
                eVar.j(3, roomItemBean.getAvatar());
            }
            Integer numValueOf = roomItemBean.getHasJoin() == null ? null : Integer.valueOf(roomItemBean.getHasJoin().booleanValue() ? 1 : 0);
            if (numValueOf == null) {
                eVar.g(4);
            } else {
                eVar.c(4, numValueOf.intValue());
            }
            if (roomItemBean.getNewPostCount() == null) {
                eVar.g(5);
            } else {
                eVar.c(5, roomItemBean.getNewPostCount().longValue());
            }
            if (roomItemBean.getDescription() == null) {
                eVar.g(6);
            } else {
                eVar.j(6, roomItemBean.getDescription());
            }
            if (roomItemBean.getPostCount() == null) {
                eVar.g(7);
            } else {
                eVar.c(7, roomItemBean.getPostCount().longValue());
            }
            if (roomItemBean.getUserCount() == null) {
                eVar.g(8);
            } else {
                eVar.c(8, roomItemBean.getUserCount().longValue());
            }
            if (roomItemBean.getLevel() == null) {
                eVar.g(9);
            } else {
                eVar.j(9, roomItemBean.getLevel());
            }
            eVar.c(10, roomItemBean.getUpdateTimeStamp());
        }
    }

    class b extends androidx.room.e {
        b() {
        }

        @Override // androidx.room.e
        protected String b() {
            return "DELETE FROM `room_table` WHERE `groupId` = ?";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.room.e
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public void a(z3.e eVar, RoomItemBean roomItemBean) {
            if (roomItemBean.getGroupId() == null) {
                eVar.g(1);
            } else {
                eVar.j(1, roomItemBean.getGroupId());
            }
        }
    }

    public e(RoomDatabase roomDatabase) {
        this.f74540a = roomDatabase;
    }

    public static List g() {
        return Collections.emptyList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit h(RoomItemBean roomItemBean, z3.b bVar) throws Exception {
        this.f74542c.c(bVar, roomItemBean);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ List i(z3.b bVar) {
        Boolean boolValueOf;
        z3.e eVarD0 = bVar.D0("SELECT * FROM ROOM_TABLE ORDER BY updateTimeStamp DESC");
        try {
            int iD = k.d(eVarD0, "groupId");
            int iD2 = k.d(eVarD0, "name");
            int iD3 = k.d(eVarD0, "avatar");
            int iD4 = k.d(eVarD0, "hasJoin");
            int iD5 = k.d(eVarD0, "newPostCount");
            int iD6 = k.d(eVarD0, TrackingKey.DESCRIPTION);
            int iD7 = k.d(eVarD0, "postCount");
            int iD8 = k.d(eVarD0, "userCount");
            int iD9 = k.d(eVarD0, PermissionConstant.level);
            int iD10 = k.d(eVarD0, "updateTimeStamp");
            ArrayList arrayList = new ArrayList();
            while (eVarD0.A0()) {
                String strN0 = eVarD0.isNull(iD) ? null : eVarD0.n0(iD);
                String strN1 = eVarD0.isNull(iD2) ? null : eVarD0.n0(iD2);
                String strN2 = eVarD0.isNull(iD3) ? null : eVarD0.n0(iD3);
                Integer numValueOf = eVarD0.isNull(iD4) ? null : Integer.valueOf((int) eVarD0.getLong(iD4));
                if (numValueOf == null) {
                    boolValueOf = null;
                } else {
                    boolValueOf = Boolean.valueOf(numValueOf.intValue() != 0);
                }
                arrayList.add(new RoomItemBean(strN0, strN1, strN2, boolValueOf, eVarD0.isNull(iD5) ? null : Long.valueOf(eVarD0.getLong(iD5)), eVarD0.isNull(iD6) ? null : eVarD0.n0(iD6), eVarD0.isNull(iD7) ? null : Long.valueOf(eVarD0.getLong(iD7)), eVarD0.isNull(iD8) ? null : Long.valueOf(eVarD0.getLong(iD8)), eVarD0.isNull(iD9) ? null : eVarD0.n0(iD9), eVarD0.getLong(iD10)));
            }
            return arrayList;
        } finally {
            eVarD0.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit j(RoomItemBean roomItemBean, z3.b bVar) throws Exception {
        this.f74541b.d(bVar, roomItemBean);
        return Unit.f67061a;
    }

    @Override // rj.a
    public Object a(Continuation continuation) {
        return androidx.room.util.b.f(this.f74540a, true, false, new Function1() { // from class: rj.c
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return e.i((z3.b) obj);
            }
        }, continuation);
    }

    @Override // rj.a
    public Object b(final RoomItemBean roomItemBean, Continuation continuation) {
        roomItemBean.getClass();
        return androidx.room.util.b.f(this.f74540a, false, true, new Function1() { // from class: rj.b
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return this.f74536a.j(roomItemBean, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // rj.a
    public Object c(final RoomItemBean roomItemBean, Continuation continuation) {
        roomItemBean.getClass();
        return androidx.room.util.b.f(this.f74540a, false, true, new Function1() { // from class: rj.d
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return this.f74538a.h(roomItemBean, (z3.b) obj);
            }
        }, continuation);
    }
}
