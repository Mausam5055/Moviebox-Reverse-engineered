package com.transsion.moviedetailapi;

import android.app.Application;
import android.os.Bundle;
import androidx.p009lifecycle.LiveData;
import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.u0;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.moviedetailapi.bean.Group;
import com.transsion.moviedetailapi.bean.Link;
import com.transsion.moviedetailapi.bean.Media;
import com.transsion.moviedetailapi.bean.MediaType;
import com.transsion.moviedetailapi.bean.PostItemType;
import com.transsion.moviedetailapi.bean.PostSubjectItem;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.moviedetailapi.bean.User;
import com.transsion.moviedetailapi.p006enum.PostListSource;
import com.transsion.moviedetailapi.p006enum.ProfileSubSource;
import com.transsion.web.api.WebConstants;
import java.util.HashMap;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;

/* JADX INFO: loaded from: classes.dex */
public abstract class AbsSubjectListViewModel extends androidx.p009lifecycle.b {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final a f47452j = new a(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Lazy f47453b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Lazy f47454c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Lazy f47455d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Lazy f47456e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Lazy f47457f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Lazy f47458g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f47459h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private PostRankType f47460i;

    /* JADX INFO: loaded from: classes6.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbsSubjectListViewModel(Application application) {
        super(application);
        Intrinsics.h(application, "application");
        this.f47453b = LazyKt.a(LazyThreadSafetyMode.NONE, new Function0() { // from class: com.transsion.moviedetailapi.a
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return AbsSubjectListViewModel.L();
            }
        });
        this.f47454c = LazyKt.b(new Function0() { // from class: com.transsion.moviedetailapi.b
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return AbsSubjectListViewModel.G();
            }
        });
        this.f47455d = LazyKt.b(new Function0() { // from class: com.transsion.moviedetailapi.c
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return AbsSubjectListViewModel.j();
            }
        });
        this.f47456e = LazyKt.b(new Function0() { // from class: com.transsion.moviedetailapi.d
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return AbsSubjectListViewModel.k();
            }
        });
        this.f47457f = LazyKt.b(new Function0() { // from class: com.transsion.moviedetailapi.e
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return AbsSubjectListViewModel.D();
            }
        });
        this.f47458g = LazyKt.b(new Function0() { // from class: com.transsion.moviedetailapi.f
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return AbsSubjectListViewModel.l();
            }
        });
        this.f47459h = "";
        this.f47460i = PostRankType.POST_RANK_TYPE_DEFAULT;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final b0 D() {
        return new b0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final b0 G() {
        return new b0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final kn.a L() {
        return (kn.a) zg.c.f79414e.a().h(kn.a.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final b0 j() {
        return new b0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final b0 k() {
        return new b0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final b0 l() {
        return new b0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final kn.a z() {
        return (kn.a) this.f47453b.getValue();
    }

    public abstract PostListSource A();

    public ProfileSubSource B() {
        return null;
    }

    public void C(String str, int i11) {
        k.d(u0.a(this), null, null, new AbsSubjectListViewModel$like$1(str, i11, this, null), 3, null);
    }

    public abstract void E(boolean z10);

    public abstract void F(Bundle bundle);

    public void H(PostSubjectItem postSubjectItem, int i11) {
        String subjectId;
        String value;
        String groupId;
        String subjectId2;
        String url;
        String userId;
        Intrinsics.h(postSubjectItem, "postSubjectItem");
        HashMap map = new HashMap();
        Subject subject = postSubjectItem.getSubject();
        if (subject == null || (subjectId = subject.getSubjectId()) == null) {
            subjectId = "";
        }
        map.put("subject_id", subjectId);
        Subject subject2 = postSubjectItem.getSubject();
        map.put("has_resource", String.valueOf(subject2 != null ? subject2.getHasResource() : null));
        String postId = postSubjectItem.getPostId();
        if (postId == null) {
            postId = "";
        }
        map.put("post_id", postId);
        Media media = postSubjectItem.getMedia();
        if (media == null || (value = media.getMediaType()) == null) {
            value = MediaType.TEXT.getValue();
        }
        map.put("post_media_type", value);
        Group group = postSubjectItem.getGroup();
        if (group == null || (groupId = group.getGroupId()) == null) {
            groupId = "";
        }
        map.put("group_id", groupId);
        Subject subject3 = postSubjectItem.getSubject();
        if (subject3 == null || (subjectId2 = subject3.getSubjectId()) == null) {
            subjectId2 = "";
        }
        map.put("subject_id", subjectId2);
        String content = postSubjectItem.getContent();
        if (content == null) {
            content = "";
        }
        map.put("link_url", content);
        Link link = postSubjectItem.getLink();
        if (link == null || (url = link.getUrl()) == null) {
            url = "";
        }
        map.put("link_url", url);
        User user = postSubjectItem.getUser();
        if (user == null || (userId = user.getUserId()) == null) {
            userId = "";
        }
        map.put("avatar_user_id", userId);
        map.put("sequence", String.valueOf(i11));
        String ops = postSubjectItem.getOps();
        if (ops == null) {
            ops = "";
        }
        map.put("ops", ops);
        map.put(WebConstants.PAGE_FROM, this.f47459h);
        Map mapQ = q(this.f47460i.ordinal());
        if (mapQ != null) {
            for (Map.Entry entry : mapQ.entrySet()) {
                String str = (String) entry.getKey();
                String str2 = (String) entry.getValue();
                if (str2 == null) {
                    str2 = "";
                }
                map.put(str, str2);
            }
        }
        com.transsion.baselib.helper.a.f43262a.e(w(this.f47460i.ordinal()), map);
    }

    public void I(PostSubjectItem postSubjectItem, int i11, String subPageName) {
        String subjectId;
        String value;
        String groupId;
        String subjectId2;
        String url;
        String userId;
        Intrinsics.h(postSubjectItem, "postSubjectItem");
        Intrinsics.h(subPageName, "subPageName");
        HashMap map = new HashMap();
        Subject subject = postSubjectItem.getSubject();
        if (subject == null || (subjectId = subject.getSubjectId()) == null) {
            subjectId = "";
        }
        map.put("subject_id", subjectId);
        Subject subject2 = postSubjectItem.getSubject();
        map.put("has_resource", String.valueOf(subject2 != null ? subject2.getHasResource() : null));
        String postId = postSubjectItem.getPostId();
        if (postId == null) {
            postId = "";
        }
        map.put("post_id", postId);
        Media media = postSubjectItem.getMedia();
        if (media == null || (value = media.getMediaType()) == null) {
            value = MediaType.TEXT.getValue();
        }
        map.put("post_media_type", value);
        Group group = postSubjectItem.getGroup();
        if (group == null || (groupId = group.getGroupId()) == null) {
            groupId = "";
        }
        map.put("group_id", groupId);
        Subject subject3 = postSubjectItem.getSubject();
        if (subject3 == null || (subjectId2 = subject3.getSubjectId()) == null) {
            subjectId2 = "";
        }
        map.put("subject_id", subjectId2);
        String title = postSubjectItem.getTitle();
        if (title == null) {
            title = "";
        }
        map.put(CampaignEx.JSON_KEY_TITLE, title);
        Link link = postSubjectItem.getLink();
        if (link == null || (url = link.getUrl()) == null) {
            url = "";
        }
        map.put("link_url", url);
        User user = postSubjectItem.getUser();
        if (user == null || (userId = user.getUserId()) == null) {
            userId = "";
        }
        map.put("avatar_user_id", userId);
        map.put("sequence", String.valueOf(i11));
        String ops = postSubjectItem.getOps();
        if (ops == null) {
            ops = "";
        }
        map.put("ops", ops);
        map.put(WebConstants.PAGE_FROM, this.f47459h);
        map.put("module_name", WebConstants.FIELD_ITEM);
        map.put("subpage_name", subPageName);
        Map mapQ = q(this.f47460i.ordinal());
        if (mapQ != null) {
            for (Map.Entry entry : mapQ.entrySet()) {
                String str = (String) entry.getKey();
                String str2 = (String) entry.getValue();
                if (str2 == null) {
                    str2 = "";
                }
                map.put(str, str2);
            }
        }
        com.transsion.baselib.helper.a.f43262a.f(w(this.f47460i.ordinal()), map);
    }

    public void J(PostSubjectItem postSubjectItem, int i11, String moduleName, String subPageName) {
        Intrinsics.h(postSubjectItem, "postSubjectItem");
        Intrinsics.h(moduleName, "moduleName");
        Intrinsics.h(subPageName, "subPageName");
        Link link = postSubjectItem.getLink();
        K(postSubjectItem, i11, moduleName, link != null ? link.getUrl() : null, subPageName);
    }

    public void K(PostSubjectItem postSubjectItem, int i11, String moduleName, String str, String str2) {
        String subjectId;
        String value;
        String value2;
        String groupId;
        String userId;
        Intrinsics.h(postSubjectItem, "postSubjectItem");
        Intrinsics.h(moduleName, "moduleName");
        HashMap map = new HashMap();
        map.put("module_name", moduleName);
        if (str2 == null) {
            str2 = "";
        }
        map.put("subpage_name", str2);
        Subject subject = postSubjectItem.getSubject();
        if (subject == null || (subjectId = subject.getSubjectId()) == null) {
            subjectId = "";
        }
        map.put("subject_id", subjectId);
        Subject subject2 = postSubjectItem.getSubject();
        map.put("has_resource", String.valueOf(subject2 != null ? subject2.getHasResource() : null));
        String postId = postSubjectItem.getPostId();
        if (postId == null) {
            postId = "";
        }
        map.put("post_id", postId);
        Media media = postSubjectItem.getMedia();
        if (media == null || (value = media.getMediaType()) == null) {
            value = MediaType.TEXT.getValue();
        }
        map.put("post_media_type", value);
        String itemType = postSubjectItem.getItemType();
        if (itemType == null) {
            itemType = PostItemType.SUBJECT.getValue();
        }
        map.put("item_type", itemType);
        Media media2 = postSubjectItem.getMedia();
        if (media2 == null || (value2 = media2.getMediaType()) == null) {
            value2 = MediaType.TEXT.getValue();
        }
        map.put("post_media_type", value2);
        Group group = postSubjectItem.getGroup();
        if (group == null || (groupId = group.getGroupId()) == null) {
            groupId = "";
        }
        map.put("group_id", groupId);
        String title = postSubjectItem.getTitle();
        if (title == null) {
            title = "";
        }
        map.put(CampaignEx.JSON_KEY_TITLE, title);
        if (str == null) {
            str = "";
        }
        map.put("link_url", str);
        String ops = postSubjectItem.getOps();
        if (ops == null) {
            ops = "";
        }
        map.put("ops", ops);
        map.put(WebConstants.PAGE_FROM, this.f47459h);
        User user = postSubjectItem.getUser();
        if (user == null || (userId = user.getUserId()) == null) {
            userId = "";
        }
        map.put("avatar_user_id", userId);
        map.put("sequence", String.valueOf(i11));
        Map mapU = u(this.f47460i.ordinal());
        if (mapU != null) {
            for (Map.Entry entry : mapU.entrySet()) {
                String str3 = (String) entry.getKey();
                String str4 = (String) entry.getValue();
                if (str4 == null) {
                    str4 = "";
                }
                map.put(str3, str4);
            }
        }
        com.transsion.baselib.helper.a.f43262a.g(w(this.f47460i.ordinal()), map);
    }

    public final void M(PostRankType postRankType) {
        Intrinsics.h(postRankType, "<set-?>");
        this.f47460i = postRankType;
    }

    public final void N(String str) {
        Intrinsics.h(str, "<set-?>");
        this.f47459h = str;
    }

    public final void m(String str) {
        k.d(u0.a(this), null, null, new AbsSubjectListViewModel$deletePost$1(str, this, null), 3, null);
    }

    public final LiveData n() {
        return o();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final b0 o() {
        return (b0) this.f47455d.getValue();
    }

    public final b0 p() {
        return (b0) this.f47458g.getValue();
    }

    public Map q(int i11) {
        return null;
    }

    public final LiveData r() {
        return s();
    }

    protected final b0 s() {
        return (b0) this.f47457f.getValue();
    }

    public final PostRankType t() {
        return this.f47460i;
    }

    public Map u(int i11) {
        return null;
    }

    public final String v() {
        return this.f47459h;
    }

    public String w(int i11) {
        return "";
    }

    public final LiveData x() {
        return y();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final b0 y() {
        return (b0) this.f47454c.getValue();
    }
}
