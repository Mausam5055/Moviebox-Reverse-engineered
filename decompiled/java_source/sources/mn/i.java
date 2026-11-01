package mn;

import androidx.room.RoomDatabase;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.hisavana.common.tracking.TrackingKey;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.transsion.mpush.api.LocalPushMessage;
import com.transsion.ninegridview.preview.GifImagePreviewActivity;
import com.transsion.push.PushConstants;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes6.dex */
public final class i implements mn.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final RoomDatabase f69641a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final androidx.room.g f69642b = new a();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final androidx.room.e f69643c = new b();

    class a extends androidx.room.g {
        a() {
        }

        @Override // androidx.room.g
        protected String b() {
            return "INSERT OR REPLACE INTO `msg_standard` (`id`,`message_id`,`title`,`desc`,`deep_link`,`image_list`,`push_time`,`source`,`style`,`type`,`receive_time`,`msg_status`,`show_time`,`force_show`,`has_screen_on`,`extra_map`,`built_in`,`permanent_msg_status`) VALUES (nullif(?, 0),?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.room.g
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void a(z3.e eVar, LocalPushMessage localPushMessage) {
            eVar.c(1, localPushMessage.getId());
            if (localPushMessage.getMessageId() == null) {
                eVar.g(2);
            } else {
                eVar.j(2, localPushMessage.getMessageId());
            }
            if (localPushMessage.getTitle() == null) {
                eVar.g(3);
            } else {
                eVar.j(3, localPushMessage.getTitle());
            }
            if (localPushMessage.getDesc() == null) {
                eVar.g(4);
            } else {
                eVar.j(4, localPushMessage.getDesc());
            }
            if (localPushMessage.getDeeplink() == null) {
                eVar.g(5);
            } else {
                eVar.j(5, localPushMessage.getDeeplink());
            }
            if (localPushMessage.getImageList() == null) {
                eVar.g(6);
            } else {
                eVar.j(6, localPushMessage.getImageList());
            }
            if (localPushMessage.getPushTime() == null) {
                eVar.g(7);
            } else {
                eVar.j(7, localPushMessage.getPushTime());
            }
            if (localPushMessage.getSource() == null) {
                eVar.g(8);
            } else {
                eVar.j(8, localPushMessage.getSource());
            }
            if (localPushMessage.getStyle() == null) {
                eVar.g(9);
            } else {
                eVar.j(9, localPushMessage.getStyle());
            }
            if (localPushMessage.getType() == null) {
                eVar.g(10);
            } else {
                eVar.j(10, localPushMessage.getType());
            }
            eVar.c(11, localPushMessage.getReceiveTime());
            eVar.c(12, localPushMessage.getMsgStatus());
            eVar.c(13, localPushMessage.getShowTime());
            eVar.c(14, localPushMessage.getForceShow() ? 1L : 0L);
            eVar.c(15, localPushMessage.getHasScreenOn() ? 1L : 0L);
            if (localPushMessage.getExtraMap() == null) {
                eVar.g(16);
            } else {
                eVar.j(16, localPushMessage.getExtraMap());
            }
            eVar.c(17, localPushMessage.getBuiltIn() ? 1L : 0L);
            eVar.c(18, localPushMessage.getPermanentMsgStatus());
        }
    }

    class b extends androidx.room.e {
        b() {
        }

        @Override // androidx.room.e
        protected String b() {
            return "UPDATE OR ABORT `msg_standard` SET `id` = ?,`message_id` = ?,`title` = ?,`desc` = ?,`deep_link` = ?,`image_list` = ?,`push_time` = ?,`source` = ?,`style` = ?,`type` = ?,`receive_time` = ?,`msg_status` = ?,`show_time` = ?,`force_show` = ?,`has_screen_on` = ?,`extra_map` = ?,`built_in` = ?,`permanent_msg_status` = ? WHERE `id` = ?";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.room.e
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public void a(z3.e eVar, LocalPushMessage localPushMessage) {
            eVar.c(1, localPushMessage.getId());
            if (localPushMessage.getMessageId() == null) {
                eVar.g(2);
            } else {
                eVar.j(2, localPushMessage.getMessageId());
            }
            if (localPushMessage.getTitle() == null) {
                eVar.g(3);
            } else {
                eVar.j(3, localPushMessage.getTitle());
            }
            if (localPushMessage.getDesc() == null) {
                eVar.g(4);
            } else {
                eVar.j(4, localPushMessage.getDesc());
            }
            if (localPushMessage.getDeeplink() == null) {
                eVar.g(5);
            } else {
                eVar.j(5, localPushMessage.getDeeplink());
            }
            if (localPushMessage.getImageList() == null) {
                eVar.g(6);
            } else {
                eVar.j(6, localPushMessage.getImageList());
            }
            if (localPushMessage.getPushTime() == null) {
                eVar.g(7);
            } else {
                eVar.j(7, localPushMessage.getPushTime());
            }
            if (localPushMessage.getSource() == null) {
                eVar.g(8);
            } else {
                eVar.j(8, localPushMessage.getSource());
            }
            if (localPushMessage.getStyle() == null) {
                eVar.g(9);
            } else {
                eVar.j(9, localPushMessage.getStyle());
            }
            if (localPushMessage.getType() == null) {
                eVar.g(10);
            } else {
                eVar.j(10, localPushMessage.getType());
            }
            eVar.c(11, localPushMessage.getReceiveTime());
            eVar.c(12, localPushMessage.getMsgStatus());
            eVar.c(13, localPushMessage.getShowTime());
            eVar.c(14, localPushMessage.getForceShow() ? 1L : 0L);
            eVar.c(15, localPushMessage.getHasScreenOn() ? 1L : 0L);
            if (localPushMessage.getExtraMap() == null) {
                eVar.g(16);
            } else {
                eVar.j(16, localPushMessage.getExtraMap());
            }
            eVar.c(17, localPushMessage.getBuiltIn() ? 1L : 0L);
            eVar.c(18, localPushMessage.getPermanentMsgStatus());
            eVar.c(19, localPushMessage.getId());
        }
    }

    public i(RoomDatabase roomDatabase) {
        this.f69641a = roomDatabase;
    }

    public static List o() {
        return Collections.emptyList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Unit p(z3.b bVar) {
        z3.e eVarD0 = bVar.D0("DELETE FROM msg_standard");
        try {
            eVarD0.A0();
            return Unit.f67061a;
        } finally {
            eVarD0.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ List q(z3.b bVar) {
        z3.e eVarD0 = bVar.D0("SELECT * FROM msg_standard ORDER BY receive_time DESC");
        try {
            int iD = androidx.room.util.k.d(eVarD0, "id");
            int iD2 = androidx.room.util.k.d(eVarD0, PushConstants.EXTRA_PUSH_MESSAGE_ID);
            int iD3 = androidx.room.util.k.d(eVarD0, CampaignEx.JSON_KEY_TITLE);
            int iD4 = androidx.room.util.k.d(eVarD0, CampaignEx.JSON_KEY_DESC);
            int iD5 = androidx.room.util.k.d(eVarD0, CampaignEx.JSON_KEY_DEEP_LINK_URL);
            int iD6 = androidx.room.util.k.d(eVarD0, GifImagePreviewActivity.IMAGE_LIST);
            int iD7 = androidx.room.util.k.d(eVarD0, "push_time");
            int iD8 = androidx.room.util.k.d(eVarD0, EventConstants.KEY_SOURCE);
            int iD9 = androidx.room.util.k.d(eVarD0, TtmlNode.TAG_STYLE);
            int iD10 = androidx.room.util.k.d(eVarD0, NativeComponentConstants.KEY_COMPONENT_TYPE);
            int iD11 = androidx.room.util.k.d(eVarD0, "receive_time");
            int iD12 = androidx.room.util.k.d(eVarD0, "msg_status");
            int iD13 = androidx.room.util.k.d(eVarD0, TrackingKey.SHOW_TIME);
            int iD14 = androidx.room.util.k.d(eVarD0, "force_show");
            int iD15 = androidx.room.util.k.d(eVarD0, "has_screen_on");
            int iD16 = androidx.room.util.k.d(eVarD0, "extra_map");
            int iD17 = androidx.room.util.k.d(eVarD0, "built_in");
            int iD18 = androidx.room.util.k.d(eVarD0, "permanent_msg_status");
            ArrayList arrayList = new ArrayList();
            while (eVarD0.A0()) {
                int i11 = iD14;
                ArrayList arrayList2 = arrayList;
                int i12 = iD2;
                int i13 = iD3;
                int i14 = iD5;
                int i15 = iD4;
                int i16 = iD15;
                int i17 = iD16;
                arrayList2.add(new LocalPushMessage((int) eVarD0.getLong(iD), eVarD0.isNull(iD2) ? null : eVarD0.n0(iD2), eVarD0.isNull(iD3) ? null : eVarD0.n0(iD3), eVarD0.isNull(iD4) ? null : eVarD0.n0(iD4), eVarD0.isNull(iD5) ? null : eVarD0.n0(iD5), eVarD0.isNull(iD6) ? null : eVarD0.n0(iD6), eVarD0.isNull(iD7) ? null : eVarD0.n0(iD7), eVarD0.isNull(iD8) ? null : eVarD0.n0(iD8), eVarD0.isNull(iD9) ? null : eVarD0.n0(iD9), eVarD0.isNull(iD10) ? null : eVarD0.n0(iD10), eVarD0.getLong(iD11), (int) eVarD0.getLong(iD12), eVarD0.getLong(iD13), ((int) eVarD0.getLong(i11)) != 0, ((int) eVarD0.getLong(iD15)) != 0, eVarD0.isNull(iD16) ? null : eVarD0.n0(iD16), ((int) eVarD0.getLong(iD17)) != 0, (int) eVarD0.getLong(iD18)));
                iD14 = i11;
                iD16 = i17;
                iD4 = i15;
                iD5 = i14;
                iD18 = iD18;
                iD3 = i13;
                iD6 = iD6;
                iD15 = i16;
                iD17 = iD17;
                arrayList = arrayList2;
                iD2 = i12;
            }
            return arrayList;
        } finally {
            eVarD0.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ LocalPushMessage r(String str, z3.b bVar) {
        z3.e eVarD0 = bVar.D0("SELECT * FROM msg_standard WHERE message_id = ? LIMIT 1");
        try {
            if (str == null) {
                eVarD0.g(1);
            } else {
                eVarD0.j(1, str);
            }
            int iD = androidx.room.util.k.d(eVarD0, "id");
            int iD2 = androidx.room.util.k.d(eVarD0, PushConstants.EXTRA_PUSH_MESSAGE_ID);
            int iD3 = androidx.room.util.k.d(eVarD0, CampaignEx.JSON_KEY_TITLE);
            int iD4 = androidx.room.util.k.d(eVarD0, CampaignEx.JSON_KEY_DESC);
            int iD5 = androidx.room.util.k.d(eVarD0, CampaignEx.JSON_KEY_DEEP_LINK_URL);
            int iD6 = androidx.room.util.k.d(eVarD0, GifImagePreviewActivity.IMAGE_LIST);
            int iD7 = androidx.room.util.k.d(eVarD0, "push_time");
            int iD8 = androidx.room.util.k.d(eVarD0, EventConstants.KEY_SOURCE);
            int iD9 = androidx.room.util.k.d(eVarD0, TtmlNode.TAG_STYLE);
            int iD10 = androidx.room.util.k.d(eVarD0, NativeComponentConstants.KEY_COMPONENT_TYPE);
            int iD11 = androidx.room.util.k.d(eVarD0, "receive_time");
            int iD12 = androidx.room.util.k.d(eVarD0, "msg_status");
            int iD13 = androidx.room.util.k.d(eVarD0, TrackingKey.SHOW_TIME);
            int iD14 = androidx.room.util.k.d(eVarD0, "force_show");
            int iD15 = androidx.room.util.k.d(eVarD0, "has_screen_on");
            int iD16 = androidx.room.util.k.d(eVarD0, "extra_map");
            int iD17 = androidx.room.util.k.d(eVarD0, "built_in");
            int iD18 = androidx.room.util.k.d(eVarD0, "permanent_msg_status");
            LocalPushMessage localPushMessage = null;
            if (eVarD0.A0()) {
                localPushMessage = new LocalPushMessage((int) eVarD0.getLong(iD), eVarD0.isNull(iD2) ? null : eVarD0.n0(iD2), eVarD0.isNull(iD3) ? null : eVarD0.n0(iD3), eVarD0.isNull(iD4) ? null : eVarD0.n0(iD4), eVarD0.isNull(iD5) ? null : eVarD0.n0(iD5), eVarD0.isNull(iD6) ? null : eVarD0.n0(iD6), eVarD0.isNull(iD7) ? null : eVarD0.n0(iD7), eVarD0.isNull(iD8) ? null : eVarD0.n0(iD8), eVarD0.isNull(iD9) ? null : eVarD0.n0(iD9), eVarD0.isNull(iD10) ? null : eVarD0.n0(iD10), eVarD0.getLong(iD11), (int) eVarD0.getLong(iD12), eVarD0.getLong(iD13), ((int) eVarD0.getLong(iD14)) != 0, ((int) eVarD0.getLong(iD15)) != 0, eVarD0.isNull(r16) ? null : eVarD0.n0(iD16), ((int) eVarD0.getLong(iD17)) != 0, (int) eVarD0.getLong(iD18));
            }
            eVarD0.close();
            return localPushMessage;
        } catch (Throwable th2) {
            eVarD0.close();
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ List s(z3.b bVar) {
        z3.e eVarD0 = bVar.D0("SELECT * FROM msg_standard WHERE msg_status = 0 ORDER BY receive_time DESC");
        try {
            int iD = androidx.room.util.k.d(eVarD0, "id");
            int iD2 = androidx.room.util.k.d(eVarD0, PushConstants.EXTRA_PUSH_MESSAGE_ID);
            int iD3 = androidx.room.util.k.d(eVarD0, CampaignEx.JSON_KEY_TITLE);
            int iD4 = androidx.room.util.k.d(eVarD0, CampaignEx.JSON_KEY_DESC);
            int iD5 = androidx.room.util.k.d(eVarD0, CampaignEx.JSON_KEY_DEEP_LINK_URL);
            int iD6 = androidx.room.util.k.d(eVarD0, GifImagePreviewActivity.IMAGE_LIST);
            int iD7 = androidx.room.util.k.d(eVarD0, "push_time");
            int iD8 = androidx.room.util.k.d(eVarD0, EventConstants.KEY_SOURCE);
            int iD9 = androidx.room.util.k.d(eVarD0, TtmlNode.TAG_STYLE);
            int iD10 = androidx.room.util.k.d(eVarD0, NativeComponentConstants.KEY_COMPONENT_TYPE);
            int iD11 = androidx.room.util.k.d(eVarD0, "receive_time");
            int iD12 = androidx.room.util.k.d(eVarD0, "msg_status");
            int iD13 = androidx.room.util.k.d(eVarD0, TrackingKey.SHOW_TIME);
            int iD14 = androidx.room.util.k.d(eVarD0, "force_show");
            int iD15 = androidx.room.util.k.d(eVarD0, "has_screen_on");
            int iD16 = androidx.room.util.k.d(eVarD0, "extra_map");
            int iD17 = androidx.room.util.k.d(eVarD0, "built_in");
            int iD18 = androidx.room.util.k.d(eVarD0, "permanent_msg_status");
            ArrayList arrayList = new ArrayList();
            while (eVarD0.A0()) {
                int i11 = iD14;
                ArrayList arrayList2 = arrayList;
                int i12 = iD2;
                int i13 = iD3;
                int i14 = iD5;
                int i15 = iD4;
                int i16 = iD15;
                int i17 = iD16;
                arrayList2.add(new LocalPushMessage((int) eVarD0.getLong(iD), eVarD0.isNull(iD2) ? null : eVarD0.n0(iD2), eVarD0.isNull(iD3) ? null : eVarD0.n0(iD3), eVarD0.isNull(iD4) ? null : eVarD0.n0(iD4), eVarD0.isNull(iD5) ? null : eVarD0.n0(iD5), eVarD0.isNull(iD6) ? null : eVarD0.n0(iD6), eVarD0.isNull(iD7) ? null : eVarD0.n0(iD7), eVarD0.isNull(iD8) ? null : eVarD0.n0(iD8), eVarD0.isNull(iD9) ? null : eVarD0.n0(iD9), eVarD0.isNull(iD10) ? null : eVarD0.n0(iD10), eVarD0.getLong(iD11), (int) eVarD0.getLong(iD12), eVarD0.getLong(iD13), ((int) eVarD0.getLong(i11)) != 0, ((int) eVarD0.getLong(iD15)) != 0, eVarD0.isNull(iD16) ? null : eVarD0.n0(iD16), ((int) eVarD0.getLong(iD17)) != 0, (int) eVarD0.getLong(iD18)));
                iD14 = i11;
                iD16 = i17;
                iD4 = i15;
                iD5 = i14;
                iD18 = iD18;
                iD3 = i13;
                iD6 = iD6;
                iD15 = i16;
                iD17 = iD17;
                arrayList = arrayList2;
                iD2 = i12;
            }
            return arrayList;
        } finally {
            eVarD0.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit t(List list, z3.b bVar) throws Exception {
        this.f69642b.c(bVar, list);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit u(LocalPushMessage localPushMessage, z3.b bVar) throws Exception {
        this.f69643c.c(bVar, localPushMessage);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Unit v(int i11, String str, z3.b bVar) {
        z3.e eVarD0 = bVar.D0("UPDATE msg_standard SET msg_status = ? WHERE message_id = ?");
        try {
            eVarD0.c(1, i11);
            if (str == null) {
                eVarD0.g(2);
            } else {
                eVarD0.j(2, str);
            }
            eVarD0.A0();
            return Unit.f67061a;
        } finally {
            eVarD0.close();
        }
    }

    @Override // mn.a
    public Object a(Continuation continuation) {
        return androidx.room.util.b.f(this.f69641a, false, true, new Function1() { // from class: mn.e
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return i.p((z3.b) obj);
            }
        }, continuation);
    }

    @Override // mn.a
    public Object b(final List list, Continuation continuation) {
        list.getClass();
        return androidx.room.util.b.f(this.f69641a, false, true, new Function1() { // from class: mn.f
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return this.f69636a.t(list, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // mn.a
    public Object c(final String str, final int i11, Continuation continuation) {
        return androidx.room.util.b.f(this.f69641a, false, true, new Function1() { // from class: mn.c
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return i.v(i11, str, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // mn.a
    public Object d(Continuation continuation) {
        return androidx.room.util.b.f(this.f69641a, true, false, new Function1() { // from class: mn.d
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return i.q((z3.b) obj);
            }
        }, continuation);
    }

    @Override // mn.a
    public Object e(Continuation continuation) {
        return androidx.room.util.b.f(this.f69641a, true, false, new Function1() { // from class: mn.b
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return i.s((z3.b) obj);
            }
        }, continuation);
    }

    @Override // mn.a
    public Object f(final LocalPushMessage localPushMessage, Continuation continuation) {
        localPushMessage.getClass();
        return androidx.room.util.b.f(this.f69641a, false, true, new Function1() { // from class: mn.g
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return this.f69638a.u(localPushMessage, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // mn.a
    public Object g(final String str, Continuation continuation) {
        return androidx.room.util.b.f(this.f69641a, true, false, new Function1() { // from class: mn.h
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return i.r(str, (z3.b) obj);
            }
        }, continuation);
    }
}
