package com.transsion.postdetail.helper;

import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.moviedetailapi.bean.Group;
import com.transsion.moviedetailapi.bean.Link;
import com.transsion.moviedetailapi.bean.Media;
import com.transsion.moviedetailapi.bean.MediaType;
import com.transsion.moviedetailapi.bean.PostItemType;
import com.transsion.moviedetailapi.bean.PostSubjectItem;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.moviedetailapi.bean.User;
import com.transsion.player.mediasession.MediaItem;
import com.transsion.web.api.WebConstants;
import java.util.HashMap;
import java.util.Map;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f48866a = new a();

    private a() {
    }

    public static /* synthetic */ void B(a aVar, PostSubjectItem postSubjectItem, String str, String str2, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            str = "postdetail";
        }
        if ((i11 & 4) != 0) {
            str2 = null;
        }
        aVar.A(postSubjectItem, str, str2);
    }

    public static /* synthetic */ void D(a aVar, PostSubjectItem postSubjectItem, String str, String str2, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            str = "postdetail";
        }
        if ((i11 & 4) != 0) {
            str2 = null;
        }
        aVar.C(postSubjectItem, str, str2);
    }

    public static /* synthetic */ void b(a aVar, PostSubjectItem postSubjectItem, String str, String str2, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            str = "postdetail";
        }
        if ((i11 & 4) != 0) {
            str2 = null;
        }
        aVar.a(postSubjectItem, str, str2);
    }

    public static /* synthetic */ void d(a aVar, PostSubjectItem postSubjectItem, String str, String str2, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            str = "postdetail";
        }
        if ((i11 & 4) != 0) {
            str2 = null;
        }
        aVar.c(postSubjectItem, str, str2);
    }

    public static /* synthetic */ void f(a aVar, PostSubjectItem postSubjectItem, String str, String str2, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            str = "postdetail";
        }
        if ((i11 & 4) != 0) {
            str2 = null;
        }
        aVar.e(postSubjectItem, str, str2);
    }

    public static /* synthetic */ void j(a aVar, PostSubjectItem postSubjectItem, String str, String str2, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            str = "postdetail";
        }
        if ((i11 & 4) != 0) {
            str2 = null;
        }
        aVar.i(postSubjectItem, str, str2);
    }

    public static /* synthetic */ void n(a aVar, PostSubjectItem postSubjectItem, String str, String str2, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            str = "postdetail";
        }
        if ((i11 & 4) != 0) {
            str2 = null;
        }
        aVar.m(postSubjectItem, str, str2);
    }

    public static /* synthetic */ void q(a aVar, PostSubjectItem postSubjectItem, boolean z10, String str, String str2, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            str = "postdetail";
        }
        if ((i11 & 8) != 0) {
            str2 = null;
        }
        aVar.p(postSubjectItem, z10, str, str2);
    }

    private final void r(PostSubjectItem postSubjectItem, String str, String str2, String str3) {
        String subjectId;
        String postId;
        String value;
        String value2;
        String value3;
        String groupId;
        String title;
        String url;
        String ops;
        User user;
        String userId;
        Link link;
        Group group;
        Media media;
        Media media2;
        Subject subject;
        Subject subject2;
        HashMap map = new HashMap();
        if (str3 != null && str3.length() != 0) {
            map.put(WebConstants.PAGE_FROM, str3);
        }
        map.put("module_name", str);
        String str4 = "";
        if (postSubjectItem == null || (subject2 = postSubjectItem.getSubject()) == null || (subjectId = subject2.getSubjectId()) == null) {
            subjectId = "";
        }
        map.put("subject_id", subjectId);
        map.put("has_resource", String.valueOf((postSubjectItem == null || (subject = postSubjectItem.getSubject()) == null) ? null : subject.getHasResource()));
        if (postSubjectItem == null || (postId = postSubjectItem.getPostId()) == null) {
            postId = "";
        }
        map.put("post_id", postId);
        if (postSubjectItem == null || (media2 = postSubjectItem.getMedia()) == null || (value = media2.getMediaType()) == null) {
            value = MediaType.TEXT.getValue();
        }
        map.put("post_media_type", value);
        if (postSubjectItem == null || (value2 = postSubjectItem.getItemType()) == null) {
            value2 = PostItemType.SUBJECT.getValue();
        }
        map.put("item_type", value2);
        if (postSubjectItem == null || (media = postSubjectItem.getMedia()) == null || (value3 = media.getMediaType()) == null) {
            value3 = MediaType.TEXT.getValue();
        }
        map.put("post_media_type", value3);
        if (postSubjectItem == null || (group = postSubjectItem.getGroup()) == null || (groupId = group.getGroupId()) == null) {
            groupId = "";
        }
        map.put("group_id", groupId);
        if (postSubjectItem == null || (title = postSubjectItem.getTitle()) == null) {
            title = "";
        }
        map.put(CampaignEx.JSON_KEY_TITLE, title);
        if (postSubjectItem == null || (link = postSubjectItem.getLink()) == null || (url = link.getUrl()) == null) {
            url = "";
        }
        map.put("link_url", url);
        if (postSubjectItem == null || (ops = postSubjectItem.getOps()) == null) {
            ops = "";
        }
        map.put("ops", ops);
        if (postSubjectItem != null && (user = postSubjectItem.getUser()) != null && (userId = user.getUserId()) != null) {
            str4 = userId;
        }
        map.put("avatar_user_id", str4);
        com.transsion.baselib.helper.a.f43262a.g(str2, map);
    }

    public static /* synthetic */ void t(a aVar, PostSubjectItem postSubjectItem, String str, String str2, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            str = "postdetail";
        }
        if ((i11 & 4) != 0) {
            str2 = null;
        }
        aVar.s(postSubjectItem, str, str2);
    }

    public static /* synthetic */ void v(a aVar, PostSubjectItem postSubjectItem, String str, String str2, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            str = "postdetail";
        }
        if ((i11 & 4) != 0) {
            str2 = null;
        }
        aVar.u(postSubjectItem, str, str2);
    }

    public final void A(PostSubjectItem postSubjectItem, String pageName, String str) {
        Intrinsics.h(pageName, "pageName");
        r(postSubjectItem, "share", pageName, str);
    }

    public final void C(PostSubjectItem postSubjectItem, String pageName, String str) {
        Intrinsics.h(pageName, "pageName");
        r(postSubjectItem, "subject", pageName, str);
    }

    public final void a(PostSubjectItem postSubjectItem, String pageName, String str) {
        Intrinsics.h(pageName, "pageName");
        r(postSubjectItem, "audio_play", pageName, str);
    }

    public final void c(PostSubjectItem postSubjectItem, String pageName, String str) {
        Intrinsics.h(pageName, "pageName");
        r(postSubjectItem, "avatar", pageName, str);
    }

    public final void e(PostSubjectItem postSubjectItem, String pageName, String str) {
        Intrinsics.h(pageName, "pageName");
        r(postSubjectItem, "comment", pageName, str);
    }

    public final void g(String pageName, int i11, long j11, String str, String str2, String commentType, String str3, String str4, String str5, String str6, String str7, String str8) {
        Intrinsics.h(pageName, "pageName");
        Intrinsics.h(commentType, "commentType");
        if (str == null) {
            str = "";
        }
        Pair pairA = TuplesKt.a("comment_id", str);
        Pair pairA2 = TuplesKt.a(RequestParameters.POSITION, String.valueOf(i11));
        Pair pairA3 = TuplesKt.a("browse_duration", String.valueOf(j11));
        Pair pairA4 = TuplesKt.a("module_name", "comment");
        if (str2 == null) {
            str2 = "";
        }
        Map mapM = MapsKt.m(pairA, pairA2, pairA3, pairA4, TuplesKt.a("topic_id", str2), TuplesKt.a("comment_type", commentType));
        if (str3 != null && str3.length() != 0) {
            mapM.put(WebConstants.PAGE_FROM, str3);
        }
        if (str4 != null) {
            mapM.put("track_id", str4);
        }
        if (str5 != null) {
            mapM.put("parent_track_id", str5);
        }
        if (str6 != null) {
            mapM.put("parent_content_id", str6);
        }
        if (str7 != null) {
            mapM.put("content_id", str7);
        }
        if (str8 != null) {
            mapM.put("belong_to_collection_id", str8);
        }
        hj.i.f64505a.D(pageName, mapM);
    }

    public final void h(String postId, String moduleName, String pageName, String str, String commentType, String str2, String str3, String str4, String str5, String str6) {
        Intrinsics.h(postId, "postId");
        Intrinsics.h(moduleName, "moduleName");
        Intrinsics.h(pageName, "pageName");
        Intrinsics.h(commentType, "commentType");
        HashMap map = new HashMap();
        map.put("module_name", moduleName);
        map.put("topic_id", postId);
        map.put("comment_type", commentType);
        if (str != null && str.length() != 0) {
            map.put(WebConstants.PAGE_FROM, str);
        }
        if (str2 != null) {
            map.put("track_id", str2);
        }
        if (str3 != null) {
            map.put("parent_track_id", str3);
        }
        if (str4 != null) {
            map.put("parent_content_id", str4);
        }
        if (str5 != null) {
            map.put("content_id", str5);
        }
        if (str6 != null) {
            map.put("belong_to_collection_id", str6);
        }
        com.transsion.baselib.helper.a.f43262a.g(pageName, map);
    }

    public final void i(PostSubjectItem postSubjectItem, String pageName, String str) {
        Intrinsics.h(pageName, "pageName");
        r(postSubjectItem, "download", pageName, str);
    }

    public final void k(PostSubjectItem postSubjectItem, String pageName, String str) {
        Intrinsics.h(pageName, "pageName");
        r(postSubjectItem, "downloaded", pageName, str);
    }

    public final void l(PostSubjectItem postSubjectItem, String pageName, String str) {
        Intrinsics.h(pageName, "pageName");
        r(postSubjectItem, "post_feedback", pageName, str);
    }

    public final void m(PostSubjectItem postSubjectItem, String pageName, String str) {
        Intrinsics.h(pageName, "pageName");
        r(postSubjectItem, "group", pageName, str);
    }

    public final void o(PostSubjectItem postSubjectItem, String pageName, String str) {
        Intrinsics.h(pageName, "pageName");
        r(postSubjectItem, "image", pageName, str);
    }

    public final void p(PostSubjectItem postSubjectItem, boolean z10, String pageName, String str) {
        Intrinsics.h(pageName, "pageName");
        r(postSubjectItem, z10 ? "dislike" : "like", pageName, str);
    }

    public final void s(PostSubjectItem postSubjectItem, String pageName, String str) {
        Intrinsics.h(pageName, "pageName");
        r(postSubjectItem, "pause", pageName, str);
    }

    public final void u(PostSubjectItem postSubjectItem, String pageName, String str) {
        Intrinsics.h(pageName, "pageName");
        r(postSubjectItem, MediaItem.MUSIC_FLOAT_STATE_PLAY, pageName, str);
    }

    public final void w(String str, String pageName, String subpageName, int i11, long j11, PostSubjectItem item, String str2) {
        String userId;
        String groupId;
        String subjectId;
        String string;
        String value;
        Integer subjectType;
        Intrinsics.h(pageName, "pageName");
        Intrinsics.h(subpageName, "subpageName");
        Intrinsics.h(item, "item");
        String postId = item.getPostId();
        if (postId == null) {
            postId = "";
        }
        Pair pairA = TuplesKt.a("post_id", postId);
        Pair pairA2 = TuplesKt.a(RequestParameters.POSITION, String.valueOf(i11));
        Pair pairA3 = TuplesKt.a(WebConstants.PAGE_FROM, str);
        Pair pairA4 = TuplesKt.a("browse_duration", String.valueOf(j11));
        Pair pairA5 = TuplesKt.a("subpage_name", subpageName);
        Pair pairA6 = TuplesKt.a("module_name", WebConstants.FIELD_ITEM);
        Pair pairA7 = TuplesKt.a("is_cache_post", String.valueOf(item.isRoomCache()));
        User user = item.getUser();
        if (user == null || (userId = user.getUserId()) == null) {
            userId = "";
        }
        Pair pairA8 = TuplesKt.a("user_id", userId);
        if (str2 == null) {
            Group group = item.getGroup();
            groupId = group != null ? group.getGroupId() : null;
            if (groupId == null) {
                groupId = "";
            }
        } else {
            groupId = str2;
        }
        Pair pairA9 = TuplesKt.a("group_id", groupId);
        Subject subject = item.getSubject();
        if (subject == null || (subjectId = subject.getSubjectId()) == null) {
            subjectId = "";
        }
        Pair pairA10 = TuplesKt.a("subject_id", subjectId);
        Subject subject2 = item.getSubject();
        if (subject2 == null || (subjectType = subject2.getSubjectType()) == null || (string = subjectType.toString()) == null) {
            string = "";
        }
        Pair pairA11 = TuplesKt.a("subject_type", string);
        Pair pairA12 = TuplesKt.a("builtin", item.getBuiltIn() ? "1" : "0");
        Media media = item.getMedia();
        if (media == null || (value = media.getMediaType()) == null) {
            value = MediaType.TEXT.getValue();
        }
        Pair pairA13 = TuplesKt.a("post_media_type", value);
        String ops = item.getOps();
        hj.i.f64505a.D(pageName, MapsKt.m(pairA, pairA2, pairA3, pairA4, pairA5, pairA6, pairA7, pairA8, pairA9, pairA10, pairA11, pairA12, pairA13, TuplesKt.a("ops", ops != null ? ops : "")));
    }

    public final void y(String str, String pageName, String subpageName, int i11, String moduleName, PostSubjectItem item, String str2) {
        String userId;
        String subjectId;
        String value;
        Integer subjectType;
        String string;
        Intrinsics.h(pageName, "pageName");
        Intrinsics.h(subpageName, "subpageName");
        Intrinsics.h(moduleName, "moduleName");
        Intrinsics.h(item, "item");
        String postId = item.getPostId();
        String str3 = "";
        if (postId == null) {
            postId = "";
        }
        Pair pairA = TuplesKt.a("post_id", postId);
        Pair pairA2 = TuplesKt.a(RequestParameters.POSITION, String.valueOf(i11));
        Pair pairA3 = TuplesKt.a(WebConstants.PAGE_FROM, str);
        Pair pairA4 = TuplesKt.a("subpage_name", subpageName);
        Pair pairA5 = TuplesKt.a("module_name", moduleName);
        Pair pairA6 = TuplesKt.a("is_cache_post", String.valueOf(item.isRoomCache()));
        User user = item.getUser();
        if (user == null || (userId = user.getUserId()) == null) {
            userId = "";
        }
        Pair pairA7 = TuplesKt.a("user_id", userId);
        if (str2 == null) {
            Group group = item.getGroup();
            str2 = group != null ? group.getGroupId() : null;
            if (str2 == null) {
                str2 = "";
            }
        }
        Pair pairA8 = TuplesKt.a("group_id", str2);
        Subject subject = item.getSubject();
        if (subject == null || (subjectId = subject.getSubjectId()) == null) {
            subjectId = "";
        }
        Pair pairA9 = TuplesKt.a("subject_id", subjectId);
        Subject subject2 = item.getSubject();
        if (subject2 != null && (subjectType = subject2.getSubjectType()) != null && (string = subjectType.toString()) != null) {
            str3 = string;
        }
        Pair pairA10 = TuplesKt.a("subject_type", str3);
        Media media = item.getMedia();
        if (media == null || (value = media.getMediaType()) == null) {
            value = MediaType.TEXT.getValue();
        }
        hj.i.f64505a.p(pageName, MapsKt.m(pairA, pairA2, pairA3, pairA4, pairA5, pairA6, pairA7, pairA8, pairA9, pairA10, TuplesKt.a("post_media_type", value), TuplesKt.a("ops", item.getOps())));
    }
}
