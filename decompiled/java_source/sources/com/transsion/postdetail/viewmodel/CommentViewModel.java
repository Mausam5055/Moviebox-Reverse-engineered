package com.transsion.postdetail.viewmodel;

import android.app.Application;
import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.u0;
import com.transsion.postdetail.bean.CommentBody;
import com.transsion.postdetail.bean.CommentLikeBody;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class CommentViewModel extends androidx.p009lifecycle.b {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final a f50186i = new a(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final b0 f50187b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final b0 f50188c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final b0 f50189d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final b0 f50190e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final b0 f50191f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final b0 f50192g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Lazy f50193h;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CommentViewModel(Application application) {
        super(application);
        Intrinsics.h(application, "application");
        this.f50187b = new b0();
        this.f50188c = new b0();
        this.f50189d = new b0();
        this.f50190e = new b0();
        this.f50191f = new b0();
        this.f50192g = new b0();
        this.f50193h = LazyKt.b(new Function0() { // from class: com.transsion.postdetail.viewmodel.a
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return CommentViewModel.f();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final xo.a f() {
        return (xo.a) zg.c.f79414e.a().h(xo.a.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final xo.a i() {
        return (xo.a) this.f50193h.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void r(String str) {
        lg.a.C0828a.f(lg.a.f68839a, "CommentViewModel", str, false, 4, null);
    }

    public final void g(String topicType, String commentId) {
        Intrinsics.h(topicType, "topicType");
        Intrinsics.h(commentId, "commentId");
        kotlinx.coroutines.k.d(u0.a(this), null, null, new CommentViewModel$deleteComment$1(topicType, this, commentId, null), 3, null);
    }

    public final void h(String postId, String topicType, String rootCommentId, String page, int i11, String locCommentId) {
        Intrinsics.h(postId, "postId");
        Intrinsics.h(topicType, "topicType");
        Intrinsics.h(rootCommentId, "rootCommentId");
        Intrinsics.h(page, "page");
        Intrinsics.h(locCommentId, "locCommentId");
        kotlinx.coroutines.k.d(u0.a(this), null, null, new CommentViewModel$getCommentList$1(this, postId, topicType, rootCommentId, page, locCommentId, i11, null), 3, null);
    }

    public final b0 j() {
        return this.f50191f;
    }

    public final b0 k() {
        return this.f50188c;
    }

    public final b0 l() {
        return this.f50189d;
    }

    public final b0 m() {
        return this.f50190e;
    }

    public final b0 n() {
        return this.f50187b;
    }

    public final b0 o() {
        return this.f50192g;
    }

    public final void p(qo.a info, String topicType, String page, int i11) {
        Intrinsics.h(info, "info");
        Intrinsics.h(topicType, "topicType");
        Intrinsics.h(page, "page");
        kotlinx.coroutines.k.d(u0.a(this), null, null, new CommentViewModel$getSubCommentList$1(this, info, topicType, page, i11, null), 3, null);
    }

    public final void q(CommentLikeBody commentBody) {
        Intrinsics.h(commentBody, "commentBody");
        kotlinx.coroutines.k.d(u0.a(this), null, null, new CommentViewModel$likeComment$1(commentBody, this, null), 3, null);
    }

    public final void s(String topicType, CommentBody commentBody) {
        Intrinsics.h(topicType, "topicType");
        Intrinsics.h(commentBody, "commentBody");
        kotlinx.coroutines.k.d(u0.a(this), null, null, new CommentViewModel$postComment$1(commentBody, topicType, this, null), 3, null);
    }

    public final void t(String commentId) {
        Intrinsics.h(commentId, "commentId");
        this.f50192g.q(commentId);
    }
}
