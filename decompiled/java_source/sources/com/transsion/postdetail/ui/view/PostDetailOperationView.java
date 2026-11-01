package com.transsion.postdetail.ui.view;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.tn.lib.widget.R$drawable;
import com.transsion.baseui.R$mipmap;
import com.transsion.moviedetailapi.bean.Media;
import com.transsion.moviedetailapi.bean.MediaType;
import com.transsion.moviedetailapi.bean.PostSubjectItem;
import com.transsion.moviedetailapi.bean.Stat;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tB\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\nB\u001b\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\b\u0010\u000bJ'\u0010\u0011\u001a\u00020\r2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0002¢\u0006\u0004\b\u0011\u0010\u0012J'\u0010\u0014\u001a\u00020\r2\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\r0\f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0002¢\u0006\u0004\b\u0014\u0010\u0012J\u001d\u0010\u0016\u001a\u00020\r2\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\r0\fH\u0002¢\u0006\u0004\b\u0016\u0010\u0017J'\u0010\u0019\u001a\u00020\r2\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\r0\f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0002¢\u0006\u0004\b\u0019\u0010\u0012JW\u0010\u001a\u001a\u00020\r2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u000e\b\u0002\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\f2\u000e\b\u0002\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\r0\f2\u000e\b\u0002\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\r0\f2\u000e\b\u0002\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\r0\f¢\u0006\u0004\b\u001a\u0010\u001bJ\u0015\u0010\u001e\u001a\u00020\r2\u0006\u0010\u001d\u001a\u00020\u001c¢\u0006\u0004\b\u001e\u0010\u001fR\u0018\u0010#\u001a\u0004\u0018\u00010 8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b!\u0010\"¨\u0006$"}, d2 = {"Lcom/transsion/postdetail/ui/view/PostDetailOperationView;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "(Landroid/content/Context;)V", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "Lkotlin/Function0;", "", "onCLickLike", "Lcom/transsion/moviedetailapi/bean/PostSubjectItem;", "postSubjectItem", "x", "(Lkotlin/jvm/functions/Function0;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V", "onCLickComment", TtmlNode.TAG_P, "onCLickShare", "z", "(Lkotlin/jvm/functions/Function0;)V", "onCLickDownload", "v", "showData", "(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V", "", "commentCount", "updateCommentNum", "(J)V", "Lso/s0;", "a", "Lso/s0;", "mViewBinding", "PostDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class PostDetailOperationView extends ConstraintLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private so.s0 mViewBinding;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public PostDetailOperationView(Context context) {
        this(context, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public PostDetailOperationView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PostDetailOperationView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        Intrinsics.h(context, "context");
        this.mViewBinding = so.s0.c(LayoutInflater.from(context));
        ConstraintLayout.b bVar = new ConstraintLayout.b(-1, -2);
        so.s0 s0Var = this.mViewBinding;
        addView(s0Var != null ? s0Var.getRoot() : null, bVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void A(Function0 function0, View view) {
        function0.invoke();
    }

    private final void p(final Function0 onCLickComment, PostSubjectItem postSubjectItem) {
        AppCompatTextView appCompatTextView;
        Stat stat;
        Long commentCount;
        View view;
        so.s0 s0Var = this.mViewBinding;
        if (s0Var != null && (view = s0Var.f75713h) != null) {
            view.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.postdetail.ui.view.j1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    PostDetailOperationView.q(onCLickComment, view2);
                }
            });
        }
        String strA = com.transsion.baseui.util.j.a((postSubjectItem == null || (stat = postSubjectItem.getStat()) == null || (commentCount = stat.getCommentCount()) == null) ? 0L : commentCount.longValue());
        so.s0 s0Var2 = this.mViewBinding;
        if (s0Var2 == null || (appCompatTextView = s0Var2.f75711f) == null) {
            return;
        }
        appCompatTextView.setText(strA);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(Function0 function0, View view) {
        function0.invoke();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit r() {
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit s() {
        return Unit.f67061a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void showData$default(PostDetailOperationView postDetailOperationView, PostSubjectItem postSubjectItem, Function0 function0, Function0 function1, Function0 function2, Function0 function3, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            function0 = new Function0() { // from class: com.transsion.postdetail.ui.view.d1
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return PostDetailOperationView.r();
                }
            };
        }
        Function0 function4 = function0;
        if ((i11 & 4) != 0) {
            function1 = new Function0() { // from class: com.transsion.postdetail.ui.view.e1
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return PostDetailOperationView.s();
                }
            };
        }
        Function0 function5 = function1;
        if ((i11 & 8) != 0) {
            function2 = new Function0() { // from class: com.transsion.postdetail.ui.view.f1
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return PostDetailOperationView.t();
                }
            };
        }
        Function0 function6 = function2;
        if ((i11 & 16) != 0) {
            function3 = new Function0() { // from class: com.transsion.postdetail.ui.view.g1
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return PostDetailOperationView.u();
                }
            };
        }
        postDetailOperationView.showData(postSubjectItem, function4, function5, function6, function3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit t() {
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit u() {
        return Unit.f67061a;
    }

    private final void v(final Function0 onCLickDownload, PostSubjectItem postSubjectItem) {
        View view;
        Media media;
        if (TextUtils.equals(MediaType.AUDIO.getValue(), (postSubjectItem == null || (media = postSubjectItem.getMedia()) == null) ? null : media.getMediaType())) {
            so.s0 s0Var = this.mViewBinding;
            if (s0Var == null || (view = s0Var.f75714i) == null) {
                return;
            }
            view.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.postdetail.ui.view.h1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    PostDetailOperationView.w(onCLickDownload, view2);
                }
            });
            return;
        }
        so.s0 s0Var2 = this.mViewBinding;
        if (s0Var2 != null) {
            s0Var2.f75714i.setVisibility(8);
            s0Var2.f75708c.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void w(Function0 function0, View view) {
        function0.invoke();
    }

    private final void x(final Function0 onCLickLike, PostSubjectItem postSubjectItem) {
        Stat stat;
        Long likeCount;
        View view;
        so.s0 s0Var = this.mViewBinding;
        if (s0Var != null && (view = s0Var.f75715j) != null) {
            view.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.postdetail.ui.view.k1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    PostDetailOperationView.y(onCLickLike, view2);
                }
            });
        }
        int i11 = postSubjectItem != null ? Intrinsics.c(postSubjectItem.getHasLike(), Boolean.TRUE) : false ? R$mipmap.movie_detail_icon_liked : R$drawable.ic_movie_like;
        String strA = com.transsion.baseui.util.j.a((postSubjectItem == null || (stat = postSubjectItem.getStat()) == null || (likeCount = stat.getLikeCount()) == null) ? 0L : likeCount.longValue());
        if (TextUtils.equals("0", strA)) {
            strA = "";
        }
        so.s0 s0Var2 = this.mViewBinding;
        if (s0Var2 != null) {
            s0Var2.f75709d.setImageResource(i11);
            s0Var2.f75712g.setText(strA);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void y(Function0 function0, View view) {
        if (com.transsion.baseui.util.c.f43504a.a(view.getId(), 2000L)) {
            return;
        }
        function0.invoke();
    }

    private final void z(final Function0 onCLickShare) {
        View view;
        so.s0 s0Var = this.mViewBinding;
        if (s0Var == null || (view = s0Var.f75716k) == null) {
            return;
        }
        view.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.postdetail.ui.view.i1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                PostDetailOperationView.A(onCLickShare, view2);
            }
        });
    }

    public final void showData(PostSubjectItem postSubjectItem, Function0<Unit> onCLickLike, Function0<Unit> onCLickComment, Function0<Unit> onCLickShare, Function0<Unit> onCLickDownload) {
        Intrinsics.h(onCLickLike, "onCLickLike");
        Intrinsics.h(onCLickComment, "onCLickComment");
        Intrinsics.h(onCLickShare, "onCLickShare");
        Intrinsics.h(onCLickDownload, "onCLickDownload");
        x(onCLickLike, postSubjectItem);
        p(onCLickComment, postSubjectItem);
        z(onCLickShare);
        v(onCLickDownload, postSubjectItem);
    }

    public final void updateCommentNum(long commentCount) {
        AppCompatTextView appCompatTextView;
        AppCompatTextView appCompatTextView2;
        AppCompatTextView appCompatTextView3;
        if (commentCount <= 0) {
            so.s0 s0Var = this.mViewBinding;
            if (s0Var == null || (appCompatTextView = s0Var.f75711f) == null) {
                return;
            }
            appCompatTextView.setVisibility(8);
            return;
        }
        so.s0 s0Var2 = this.mViewBinding;
        if (s0Var2 != null && (appCompatTextView3 = s0Var2.f75711f) != null) {
            appCompatTextView3.setText(com.transsion.baseui.util.j.a(commentCount));
        }
        so.s0 s0Var3 = this.mViewBinding;
        if (s0Var3 == null || (appCompatTextView2 = s0Var3.f75711f) == null) {
            return;
        }
        appCompatTextView2.setVisibility(0);
    }
}
