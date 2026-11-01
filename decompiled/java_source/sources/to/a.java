package to;

import com.transsion.moviedetailapi.bean.Group;
import com.transsion.moviedetailapi.bean.Media;
import com.transsion.moviedetailapi.bean.PostSubjectItem;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.postdetail.ui.adapter.f;
import hj.i;
import java.util.HashMap;
import java.util.HashSet;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private HashSet f76329a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f76330b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f76331c;

    public a(String page, String postId) {
        Intrinsics.h(page, "page");
        Intrinsics.h(postId, "postId");
        this.f76330b = page;
        this.f76331c = postId;
    }

    public final void a(f adapter, int i11, long j11) {
        Boolean hasResource;
        Intrinsics.h(adapter, "adapter");
        if (i11 >= adapter.getData().size()) {
            return;
        }
        PostSubjectItem postSubjectItem = (PostSubjectItem) adapter.getItem(i11);
        if (this.f76329a == null) {
            this.f76329a = new HashSet();
        }
        HashMap map = new HashMap();
        HashSet hashSet = this.f76329a;
        String string = null;
        if (hashSet != null && hashSet.contains(postSubjectItem)) {
            lg.a.C0828a c0828a = lg.a.f68839a;
            String postId = postSubjectItem.getPostId();
            Media media = postSubjectItem.getMedia();
            lg.a.C0828a.f(c0828a, "reportExposure", "trendFragment position:" + i11 + ",videoId: + " + postId + "  mediaType: " + (media != null ? media.getMediaType() : null), false, 4, null);
            return;
        }
        HashSet hashSet2 = this.f76329a;
        if (hashSet2 != null) {
            hashSet2.add(postSubjectItem);
        }
        map.put("post_id", postSubjectItem.getPostId());
        map.put("origin_post_id", this.f76331c);
        map.put("sequence", String.valueOf(i11));
        map.put("item_type", postSubjectItem.getItemType());
        map.put("ops", postSubjectItem.getOps());
        Media media2 = postSubjectItem.getMedia();
        map.put("post_media_type", media2 != null ? media2.getMediaType() : null);
        Subject subject = postSubjectItem.getSubject();
        map.put("subject_id", subject != null ? subject.getSubjectId() : null);
        Group group = postSubjectItem.getGroup();
        map.put("group_id", group != null ? group.getGroupId() : null);
        map.put("browse_duration", String.valueOf(j11));
        Subject subject2 = postSubjectItem.getSubject();
        if (subject2 != null && (hasResource = subject2.getHasResource()) != null) {
            string = hasResource.toString();
        }
        map.put("has_resource", string);
        i.f64505a.D(this.f76330b, map);
    }

    public final void b(int i11, PostSubjectItem item) {
        Intrinsics.h(item, "item");
        HashMap map = new HashMap();
        map.put("post_id", item.getPostId());
        map.put("origin_post_id", this.f76331c);
        map.put("sequence", String.valueOf(i11));
        map.put("item_type", item.getItemType());
        map.put("ops", item.getOps());
        Media media = item.getMedia();
        map.put("post_media_type", media != null ? media.getMediaType() : null);
        Subject subject = item.getSubject();
        map.put("subject_id", subject != null ? subject.getSubjectId() : null);
        Group group = item.getGroup();
        map.put("group_id", group != null ? group.getGroupId() : null);
        i.f64505a.p(this.f76330b, map);
    }
}
