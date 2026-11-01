package com.transsion.room.helper;

import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.cloud.tmc.integration.constants.IntegrationConstants;
import com.cloud.tmc.integration.event.EventConstants;
import com.transsion.moviedetailapi.bean.Group;
import com.transsion.moviedetailapi.bean.Media;
import com.transsion.moviedetailapi.bean.PostSubjectItem;
import com.transsion.moviedetailapi.bean.RoomItem;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.moviedetailapi.bean.User;
import com.transsion.web.api.WebConstants;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final l f51631a = new l();

    private l() {
    }

    public final void a(String pageName) {
        Intrinsics.h(pageName, "pageName");
        hj.i.f64505a.p(pageName, MapsKt.m(TuplesKt.a(EventConstants.KEY_SOURCE, "my_room"), TuplesKt.a("module_name", IntegrationConstants.NAVIGATION_BAR_ALL_ACTION)));
    }

    public final void b(String pageName, RoomItem item) {
        Intrinsics.h(pageName, "pageName");
        Intrinsics.h(item, "item");
        Pair pairA = TuplesKt.a(EventConstants.KEY_SOURCE, "my_room");
        Pair pairA2 = TuplesKt.a("module_name", WebConstants.FIELD_ITEM);
        String groupId = item.getGroupId();
        if (groupId == null) {
            groupId = "";
        }
        hj.i.f64505a.p(pageName, MapsKt.m(pairA, pairA2, TuplesKt.a("group_id", groupId), TuplesKt.a("ops", item.getOps())));
    }

    public final void c(String pageName, String str, PostSubjectItem item) {
        String userId;
        String mediaType;
        String subjectId;
        String string;
        String groupId;
        Integer subjectType;
        Intrinsics.h(pageName, "pageName");
        Intrinsics.h(item, "item");
        Pair pairA = TuplesKt.a(EventConstants.KEY_SOURCE, str);
        Pair pairA2 = TuplesKt.a("module_name", "group");
        User user = item.getUser();
        String str2 = "";
        if (user == null || (userId = user.getUserId()) == null) {
            userId = "";
        }
        Pair pairA3 = TuplesKt.a("user_id", userId);
        String postId = item.getPostId();
        if (postId == null) {
            postId = "";
        }
        Pair pairA4 = TuplesKt.a("post_id", postId);
        Media media = item.getMedia();
        if (media == null || (mediaType = media.getMediaType()) == null) {
            mediaType = "";
        }
        Pair pairA5 = TuplesKt.a("post_media_type", mediaType);
        Subject subject = item.getSubject();
        if (subject == null || (subjectId = subject.getSubjectId()) == null) {
            subjectId = "";
        }
        Pair pairA6 = TuplesKt.a("subject_id", subjectId);
        Subject subject2 = item.getSubject();
        if (subject2 == null || (subjectType = subject2.getSubjectType()) == null || (string = subjectType.toString()) == null) {
            string = "";
        }
        Pair pairA7 = TuplesKt.a("subject_type", string);
        Pair pairA8 = TuplesKt.a("is_cache_post", String.valueOf(item.isRoomCache()));
        Group group = item.getGroup();
        if (group != null && (groupId = group.getGroupId()) != null) {
            str2 = groupId;
        }
        hj.i.f64505a.p(pageName, MapsKt.m(pairA, pairA2, pairA3, pairA4, pairA5, pairA6, pairA7, pairA8, TuplesKt.a("group_id", str2), TuplesKt.a("ops", item.getOps())));
    }

    public final void d(String pageName, String str) {
        Intrinsics.h(pageName, "pageName");
        hj.i.f64505a.p(pageName, MapsKt.m(TuplesKt.a(EventConstants.KEY_SOURCE, str), TuplesKt.a("module_name", IntegrationConstants.NAVIGATION_BAR_ALL_ACTION)));
    }

    public final void e(String pageName, String moduleName, RoomItem item) {
        Intrinsics.h(pageName, "pageName");
        Intrinsics.h(moduleName, "moduleName");
        Intrinsics.h(item, "item");
        Pair pairA = TuplesKt.a("module_name", moduleName);
        String groupId = item.getGroupId();
        if (groupId == null) {
            groupId = "";
        }
        hj.i.f64505a.D(pageName, MapsKt.m(pairA, TuplesKt.a("group_id", groupId), TuplesKt.a("ops", item.getOps())));
    }

    public final void f(String pageName, String str) {
        Intrinsics.h(pageName, "pageName");
        hj.i.f64505a.p(pageName, MapsKt.m(TuplesKt.a(EventConstants.KEY_SOURCE, str), TuplesKt.a("module_name", "explore")));
    }

    public final void g(String pageName, String str, RoomItem item) {
        Intrinsics.h(pageName, "pageName");
        Intrinsics.h(item, "item");
        Pair pairA = TuplesKt.a(EventConstants.KEY_SOURCE, str);
        Pair pairA2 = TuplesKt.a("module_name", WebConstants.FIELD_ITEM);
        String groupId = item.getGroupId();
        if (groupId == null) {
            groupId = "";
        }
        hj.i.f64505a.p(pageName, MapsKt.m(pairA, pairA2, TuplesKt.a("group_id", groupId), TuplesKt.a("has_join", Intrinsics.c(item.getHasJoin(), Boolean.TRUE) ? "1" : "0"), TuplesKt.a("ops", item.getOps())));
    }

    public final void h(String pageName) {
        Intrinsics.h(pageName, "pageName");
        hj.i.f64505a.p(pageName, MapsKt.m(TuplesKt.a("opt_type", "room_list_more")));
    }

    public final void i(String str, String pageName, int i11, long j11, RoomItem item) {
        Intrinsics.h(pageName, "pageName");
        Intrinsics.h(item, "item");
        String groupId = item.getGroupId();
        if (groupId == null) {
            groupId = "";
        }
        hj.i.f64505a.D(pageName, MapsKt.m(TuplesKt.a("group_id", groupId), TuplesKt.a(RequestParameters.POSITION, String.valueOf(i11)), TuplesKt.a(WebConstants.PAGE_FROM, str), TuplesKt.a("browse_duration", String.valueOf(j11)), TuplesKt.a("module_name", WebConstants.FIELD_ITEM), TuplesKt.a("ops", item.getOps())));
    }

    public final void j(String str, String pageName, int i11, RoomItem item) {
        Intrinsics.h(pageName, "pageName");
        Intrinsics.h(item, "item");
        String groupId = item.getGroupId();
        if (groupId == null) {
            groupId = "";
        }
        hj.i.f64505a.p(pageName, MapsKt.m(TuplesKt.a("group_id", groupId), TuplesKt.a(RequestParameters.POSITION, String.valueOf(i11)), TuplesKt.a(WebConstants.PAGE_FROM, str), TuplesKt.a("module_name", WebConstants.FIELD_ITEM), TuplesKt.a("ops", item.getOps())));
    }
}
