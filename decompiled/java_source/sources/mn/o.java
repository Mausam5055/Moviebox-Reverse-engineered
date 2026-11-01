package mn;

import androidx.room.RoomDatabase;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.mpush.api.PermanentPushMessage;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes6.dex */
public final class o implements j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final RoomDatabase f69650a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final androidx.room.g f69651b = new a();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final androidx.room.e f69652c = new b();

    class a extends androidx.room.g {
        a() {
        }

        @Override // androidx.room.g
        protected String b() {
            return "INSERT OR REPLACE INTO `permanent_push_message` (`id`,`deeplink`,`subject_id`,`image`,`title`) VALUES (nullif(?, 0),?,?,?,?)";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.room.g
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void a(z3.e eVar, PermanentPushMessage permanentPushMessage) {
            eVar.c(1, permanentPushMessage.getId());
            if (permanentPushMessage.getDeeplink() == null) {
                eVar.g(2);
            } else {
                eVar.j(2, permanentPushMessage.getDeeplink());
            }
            if (permanentPushMessage.getSubjectId() == null) {
                eVar.g(3);
            } else {
                eVar.j(3, permanentPushMessage.getSubjectId());
            }
            if (permanentPushMessage.getImage() == null) {
                eVar.g(4);
            } else {
                eVar.j(4, permanentPushMessage.getImage());
            }
            if (permanentPushMessage.getTitle() == null) {
                eVar.g(5);
            } else {
                eVar.j(5, permanentPushMessage.getTitle());
            }
        }
    }

    class b extends androidx.room.e {
        b() {
        }

        @Override // androidx.room.e
        protected String b() {
            return "DELETE FROM `permanent_push_message` WHERE `id` = ?";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.room.e
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public void a(z3.e eVar, PermanentPushMessage permanentPushMessage) {
            eVar.c(1, permanentPushMessage.getId());
        }
    }

    public o(RoomDatabase roomDatabase) {
        this.f69650a = roomDatabase;
    }

    public static List g() {
        return Collections.emptyList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object h(z3.b bVar) {
        z3.e eVarD0 = bVar.D0("DELETE FROM permanent_push_message");
        try {
            eVarD0.A0();
            return null;
        } finally {
            eVarD0.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object i(PermanentPushMessage permanentPushMessage, z3.b bVar) throws Exception {
        this.f69652c.c(bVar, permanentPushMessage);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ List j(z3.b bVar) {
        z3.e eVarD0 = bVar.D0("SELECT * FROM permanent_push_message");
        try {
            int iD = androidx.room.util.k.d(eVarD0, "id");
            int iD2 = androidx.room.util.k.d(eVarD0, "deeplink");
            int iD3 = androidx.room.util.k.d(eVarD0, "subject_id");
            int iD4 = androidx.room.util.k.d(eVarD0, "image");
            int iD5 = androidx.room.util.k.d(eVarD0, CampaignEx.JSON_KEY_TITLE);
            ArrayList arrayList = new ArrayList();
            while (eVarD0.A0()) {
                arrayList.add(new PermanentPushMessage((int) eVarD0.getLong(iD), eVarD0.isNull(iD2) ? null : eVarD0.n0(iD2), eVarD0.isNull(iD3) ? null : eVarD0.n0(iD3), eVarD0.isNull(iD4) ? null : eVarD0.n0(iD4), eVarD0.isNull(iD5) ? null : eVarD0.n0(iD5)));
            }
            return arrayList;
        } finally {
            eVarD0.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object k(List list, z3.b bVar) throws Exception {
        this.f69651b.c(bVar, list);
        return null;
    }

    @Override // mn.j
    public void a(final PermanentPushMessage permanentPushMessage) {
        permanentPushMessage.getClass();
        androidx.room.util.b.d(this.f69650a, false, true, new Function1() { // from class: mn.l
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return this.f69646a.i(permanentPushMessage, (z3.b) obj);
            }
        });
    }

    @Override // mn.j
    public void b(final List list) {
        list.getClass();
        androidx.room.util.b.d(this.f69650a, false, true, new Function1() { // from class: mn.m
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return this.f69648a.k(list, (z3.b) obj);
            }
        });
    }

    @Override // mn.j
    public void clear() {
        androidx.room.util.b.d(this.f69650a, false, true, new Function1() { // from class: mn.n
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return o.h((z3.b) obj);
            }
        });
    }

    @Override // mn.j
    public List getAll() {
        return (List) androidx.room.util.b.d(this.f69650a, true, false, new Function1() { // from class: mn.k
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return o.j((z3.b) obj);
            }
        });
    }
}
