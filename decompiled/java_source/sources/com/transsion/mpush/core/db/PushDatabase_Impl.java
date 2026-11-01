package com.transsion.mpush.core.db;

import androidx.room.InvalidationTracker;
import androidx.room.d0;
import androidx.room.util.o;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.hisavana.common.tracking.TrackingKey;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.transsion.ninegridview.preview.GifImagePreviewActivity;
import com.transsion.push.PushConstants;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import mn.i;
import mn.j;
import z3.b;

/* JADX INFO: loaded from: classes6.dex */
public final class PushDatabase_Impl extends PushDatabase {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private volatile mn.a f47483s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private volatile j f47484t;

    class a extends d0 {
        a(int i11, String str, String str2) {
            super(i11, str, str2);
        }

        @Override // androidx.room.d0
        public void a(b bVar) throws Exception {
            z3.a.a(bVar, "CREATE TABLE IF NOT EXISTS `msg_standard` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `message_id` TEXT, `title` TEXT, `desc` TEXT, `deep_link` TEXT, `image_list` TEXT, `push_time` TEXT, `source` TEXT, `style` TEXT, `type` TEXT, `receive_time` INTEGER NOT NULL, `msg_status` INTEGER NOT NULL, `show_time` INTEGER NOT NULL, `force_show` INTEGER NOT NULL, `has_screen_on` INTEGER NOT NULL, `extra_map` TEXT, `built_in` INTEGER NOT NULL, `permanent_msg_status` INTEGER NOT NULL)");
            z3.a.a(bVar, "CREATE TABLE IF NOT EXISTS `permanent_push_message` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `deeplink` TEXT, `subject_id` TEXT, `image` TEXT, `title` TEXT)");
            z3.a.a(bVar, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
            z3.a.a(bVar, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, '6879119c203ebc050de023191e9ef136')");
        }

        @Override // androidx.room.d0
        public void b(b bVar) throws Exception {
            z3.a.a(bVar, "DROP TABLE IF EXISTS `msg_standard`");
            z3.a.a(bVar, "DROP TABLE IF EXISTS `permanent_push_message`");
        }

        @Override // androidx.room.d0
        public void f(b bVar) {
        }

        @Override // androidx.room.d0
        public void g(b bVar) {
            PushDatabase_Impl.this.Q(bVar);
        }

        @Override // androidx.room.d0
        public void h(b bVar) {
        }

        @Override // androidx.room.d0
        public void i(b bVar) {
            androidx.room.util.b.b(bVar);
        }

        @Override // androidx.room.d0
        public d0.a j(b bVar) {
            HashMap map = new HashMap(18);
            map.put("id", new o.a("id", "INTEGER", true, 1, null, 1));
            map.put(PushConstants.EXTRA_PUSH_MESSAGE_ID, new o.a(PushConstants.EXTRA_PUSH_MESSAGE_ID, "TEXT", false, 0, null, 1));
            map.put(CampaignEx.JSON_KEY_TITLE, new o.a(CampaignEx.JSON_KEY_TITLE, "TEXT", false, 0, null, 1));
            map.put(CampaignEx.JSON_KEY_DESC, new o.a(CampaignEx.JSON_KEY_DESC, "TEXT", false, 0, null, 1));
            map.put(CampaignEx.JSON_KEY_DEEP_LINK_URL, new o.a(CampaignEx.JSON_KEY_DEEP_LINK_URL, "TEXT", false, 0, null, 1));
            map.put(GifImagePreviewActivity.IMAGE_LIST, new o.a(GifImagePreviewActivity.IMAGE_LIST, "TEXT", false, 0, null, 1));
            map.put("push_time", new o.a("push_time", "TEXT", false, 0, null, 1));
            map.put(EventConstants.KEY_SOURCE, new o.a(EventConstants.KEY_SOURCE, "TEXT", false, 0, null, 1));
            map.put(TtmlNode.TAG_STYLE, new o.a(TtmlNode.TAG_STYLE, "TEXT", false, 0, null, 1));
            map.put(NativeComponentConstants.KEY_COMPONENT_TYPE, new o.a(NativeComponentConstants.KEY_COMPONENT_TYPE, "TEXT", false, 0, null, 1));
            map.put("receive_time", new o.a("receive_time", "INTEGER", true, 0, null, 1));
            map.put("msg_status", new o.a("msg_status", "INTEGER", true, 0, null, 1));
            map.put(TrackingKey.SHOW_TIME, new o.a(TrackingKey.SHOW_TIME, "INTEGER", true, 0, null, 1));
            map.put("force_show", new o.a("force_show", "INTEGER", true, 0, null, 1));
            map.put("has_screen_on", new o.a("has_screen_on", "INTEGER", true, 0, null, 1));
            map.put("extra_map", new o.a("extra_map", "TEXT", false, 0, null, 1));
            map.put("built_in", new o.a("built_in", "INTEGER", true, 0, null, 1));
            map.put("permanent_msg_status", new o.a("permanent_msg_status", "INTEGER", true, 0, null, 1));
            o oVar = new o("msg_standard", map, new HashSet(0), new HashSet(0));
            o oVarB = o.b(bVar, "msg_standard");
            if (!oVar.equals(oVarB)) {
                return new d0.a(false, "msg_standard(com.transsion.mpush.api.LocalPushMessage).\n Expected:\n" + oVar + "\n Found:\n" + oVarB);
            }
            HashMap map2 = new HashMap(5);
            map2.put("id", new o.a("id", "INTEGER", true, 1, null, 1));
            map2.put("deeplink", new o.a("deeplink", "TEXT", false, 0, null, 1));
            map2.put("subject_id", new o.a("subject_id", "TEXT", false, 0, null, 1));
            map2.put("image", new o.a("image", "TEXT", false, 0, null, 1));
            map2.put(CampaignEx.JSON_KEY_TITLE, new o.a(CampaignEx.JSON_KEY_TITLE, "TEXT", false, 0, null, 1));
            o oVar2 = new o("permanent_push_message", map2, new HashSet(0), new HashSet(0));
            o oVarB2 = o.b(bVar, "permanent_push_message");
            if (oVar2.equals(oVarB2)) {
                return new d0.a(true, null);
            }
            return new d0.a(false, "permanent_push_message(com.transsion.mpush.api.PermanentPushMessage).\n Expected:\n" + oVar2 + "\n Found:\n" + oVarB2);
        }
    }

    @Override // androidx.room.RoomDatabase
    public Set C() {
        return new HashSet();
    }

    @Override // androidx.room.RoomDatabase
    protected Map F() {
        HashMap map = new HashMap();
        map.put(mn.a.class, i.o());
        map.put(j.class, mn.o.g());
        return map;
    }

    @Override // com.transsion.mpush.core.db.PushDatabase
    public mn.a j0() {
        mn.a aVar;
        if (this.f47483s != null) {
            return this.f47483s;
        }
        synchronized (this) {
            try {
                if (this.f47483s == null) {
                    this.f47483s = new i(this);
                }
                aVar = this.f47483s;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return aVar;
    }

    @Override // com.transsion.mpush.core.db.PushDatabase
    public j k0() {
        j jVar;
        if (this.f47484t != null) {
            return this.f47484t;
        }
        synchronized (this) {
            try {
                if (this.f47484t == null) {
                    this.f47484t = new mn.o(this);
                }
                jVar = this.f47484t;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return jVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.room.RoomDatabase
    /* JADX INFO: renamed from: m0, reason: merged with bridge method [inline-methods] */
    public d0 r() {
        return new a(2, "6879119c203ebc050de023191e9ef136", "5b9d663bce9d2f7c2d3d3dbab0ef866e");
    }

    @Override // androidx.room.RoomDatabase
    protected InvalidationTracker q() {
        return new InvalidationTracker(this, new HashMap(0), new HashMap(0), "msg_standard", "permanent_push_message");
    }

    @Override // androidx.room.RoomDatabase
    public List v(Map map) {
        return new ArrayList();
    }
}
