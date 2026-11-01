package qo;

import com.transsion.postdetail.bean.CommentListBean;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private a f73666a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private CommentListBean f73667b;

    public b(a commentBean, CommentListBean commentListBean) {
        Intrinsics.h(commentBean, "commentBean");
        this.f73666a = commentBean;
        this.f73667b = commentListBean;
    }

    public final a a() {
        return this.f73666a;
    }

    public final CommentListBean b() {
        return this.f73667b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return Intrinsics.c(this.f73666a, bVar.f73666a) && Intrinsics.c(this.f73667b, bVar.f73667b);
    }

    public int hashCode() {
        int iHashCode = this.f73666a.hashCode() * 31;
        CommentListBean commentListBean = this.f73667b;
        return iHashCode + (commentListBean == null ? 0 : commentListBean.hashCode());
    }

    public String toString() {
        return "SubCommentData(commentBean=" + this.f73666a + ", commentListBean=" + this.f73667b + ")";
    }
}
