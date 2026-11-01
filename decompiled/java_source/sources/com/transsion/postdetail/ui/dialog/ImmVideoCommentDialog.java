package com.transsion.postdetail.ui.dialog;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.w;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.baseui.R$style;
import com.transsion.baseui.dialog.BaseDialog;
import com.transsion.moviedetailapi.bean.CommentBean;
import com.transsion.moviedetailapi.bean.PostSubjectItem;
import com.transsion.moviedetailapi.bean.Stat;
import com.transsion.postdetail.R$id;
import com.transsion.postdetail.R$layout;
import com.transsion.postdetail.ui.fragment.CommentFragment;
import com.transsion.postdetailapi.CommentTopicType;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0013\u0018\u0000 I2\u00020\u0001:\u0001JB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\b\u0010\u0003J\u0019\u0010\u000b\u001a\u00020\u00072\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u001b\u0010\u000e\u001a\u00020\r2\n\b\u0001\u0010\n\u001a\u0004\u0018\u00010\tH\u0017¢\u0006\u0004\b\u000e\u0010\u000fJ!\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u00102\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0015\u0010\u0016JI\u0010\u001f\u001a\u00020\u00072:\u0010\u001e\u001a6\u0012\u0015\u0012\u0013\u0018\u00010\u0018¢\u0006\f\b\u0019\u0012\b\b\u001a\u0012\u0004\b\b(\u001b\u0012\u0015\u0012\u0013\u0018\u00010\u001c¢\u0006\f\b\u0019\u0012\b\b\u001a\u0012\u0004\b\b(\u001d\u0012\u0004\u0012\u00020\u00070\u0017¢\u0006\u0004\b\u001f\u0010 J\r\u0010!\u001a\u00020\u0007¢\u0006\u0004\b!\u0010\u0003J\u0017\u0010$\u001a\u00020\u00072\b\u0010#\u001a\u0004\u0018\u00010\"¢\u0006\u0004\b$\u0010%R\u0018\u0010)\u001a\u0004\u0018\u00010&8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b'\u0010(R\u0018\u0010-\u001a\u0004\u0018\u00010*8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b+\u0010,R\u0018\u00101\u001a\u0004\u0018\u00010.8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b/\u00100R\u0016\u0010\u001b\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b2\u00103R\u0016\u00105\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b4\u00103R\u0016\u00107\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b6\u00103R$\u0010?\u001a\u0004\u0018\u0001088\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b9\u0010:\u001a\u0004\b;\u0010<\"\u0004\b=\u0010>R0\u0010B\u001a\u001c\u0012\u0006\u0012\u0004\u0018\u00010\u0018\u0012\u0006\u0012\u0004\u0018\u00010\u001c\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b@\u0010AR\u0016\u0010E\u001a\u00020\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bC\u0010DR\u0018\u0010H\u001a\u0004\u0018\u00010\"8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bF\u0010G¨\u0006K"}, d2 = {"Lcom/transsion/postdetail/ui/dialog/ImmVideoCommentDialog;", "Lcom/transsion/baseui/dialog/BaseDialog;", "<init>", "()V", "", "s0", "()I", "", "w0", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/app/Dialog;", "onCreateDialog", "(Landroid/os/Bundle;)Landroid/app/Dialog;", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Lhj/b;", "newLogViewConfig", "()Lhj/b;", "Lkotlin/Function2;", "", "Lkotlin/ParameterName;", "name", "commentId", "", "likeStatu", "callback", "z0", "(Lkotlin/jvm/functions/Function2;)V", "B0", "Lcom/transsion/moviedetailapi/bean/CommentBean;", "commentBean", "y0", "(Lcom/transsion/moviedetailapi/bean/CommentBean;)V", "Lso/g;", "c", "Lso/g;", "viewBinding", "Lcom/transsion/moviedetailapi/bean/PostSubjectItem;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lcom/transsion/moviedetailapi/bean/PostSubjectItem;", "data", "Lcom/transsion/postdetail/ui/fragment/CommentFragment;", "e", "Lcom/transsion/postdetail/ui/fragment/CommentFragment;", "commentFragment", "f", "Ljava/lang/String;", "g", "pageName", "h", "pageFrom", "Lcom/transsion/postdetail/ui/fragment/CommentFragment$b;", "i", "Lcom/transsion/postdetail/ui/fragment/CommentFragment$b;", "r0", "()Lcom/transsion/postdetail/ui/fragment/CommentFragment$b;", "A0", "(Lcom/transsion/postdetail/ui/fragment/CommentFragment$b;)V", "onCommentCountChangedListener", "j", "Lkotlin/jvm/functions/Function2;", "mCommentCallback", CampaignEx.JSON_KEY_AD_K, "Z", "isOpenEdittext", "l", "Lcom/transsion/moviedetailapi/bean/CommentBean;", "mCommentBean", "m", "a", "PostDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class ImmVideoCommentDialog extends BaseDialog {

    /* JADX INFO: renamed from: m, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private so.g viewBinding;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private PostSubjectItem data;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private CommentFragment commentFragment;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private String commentId;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private String pageName;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private String pageFrom;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private CommentFragment.b onCommentCountChangedListener;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private Function2 mCommentCallback;

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    private boolean isOpenEdittext;

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    private CommentBean mCommentBean;

    /* JADX INFO: renamed from: com.transsion.postdetail.ui.dialog.ImmVideoCommentDialog$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ ImmVideoCommentDialog b(Companion companion, PostSubjectItem postSubjectItem, String str, String str2, String str3, int i11, Object obj) {
            if ((i11 & 2) != 0) {
                str = "";
            }
            if ((i11 & 4) != 0) {
                str2 = null;
            }
            if ((i11 & 8) != 0) {
                str3 = null;
            }
            return companion.a(postSubjectItem, str, str2, str3);
        }

        public final ImmVideoCommentDialog a(PostSubjectItem postSubjectItem, String commentId, String str, String str2) {
            Intrinsics.h(commentId, "commentId");
            ImmVideoCommentDialog immVideoCommentDialog = new ImmVideoCommentDialog();
            immVideoCommentDialog.setArguments(androidx.core.os.d.b(TuplesKt.a("POST_ITEM", postSubjectItem), TuplesKt.a("comment_id", commentId), TuplesKt.a("PAGE_NAME", str), TuplesKt.a(WebConstants.PAGE_FROM, str2)));
            return immVideoCommentDialog;
        }
    }

    public ImmVideoCommentDialog() {
        super(R$layout.dialog_imm_video_comment);
        this.commentId = "";
        this.pageName = "";
        this.pageFrom = "";
    }

    private final int s0() {
        int i11 = getResources().getDisplayMetrics().heightPixels;
        return i11 - (i11 / 3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void t0(ImmVideoCommentDialog immVideoCommentDialog, View view) {
        immVideoCommentDialog.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void u0(ImmVideoCommentDialog immVideoCommentDialog, View view) {
        CommentFragment commentFragment = immVideoCommentDialog.commentFragment;
        if (commentFragment != null) {
            commentFragment.s(view);
        }
        CommentFragment commentFragment2 = immVideoCommentDialog.commentFragment;
        if (commentFragment2 != null) {
            commentFragment2.d1(null);
        }
        com.transsion.postdetail.helper.a.f(com.transsion.postdetail.helper.a.f48866a, immVideoCommentDialog.data, null, null, 6, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit v0(ImmVideoCommentDialog immVideoCommentDialog, String str, Boolean bool) {
        Function2 function2 = immVideoCommentDialog.mCommentCallback;
        if (function2 != null) {
        }
        return Unit.f67061a;
    }

    private final void w0() {
        final AppCompatTextView appCompatTextView;
        so.g gVar = this.viewBinding;
        if (gVar == null || (appCompatTextView = gVar.f75526e) == null) {
            return;
        }
        appCompatTextView.postDelayed(new Runnable() { // from class: com.transsion.postdetail.ui.dialog.d
            @Override // java.lang.Runnable
            public final void run() {
                ImmVideoCommentDialog.x0(this.f49437a, appCompatTextView);
            }
        }, 500L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void x0(ImmVideoCommentDialog immVideoCommentDialog, AppCompatTextView appCompatTextView) {
        CommentFragment commentFragment = immVideoCommentDialog.commentFragment;
        if (commentFragment != null) {
            commentFragment.s(appCompatTextView);
        }
        CommentFragment commentFragment2 = immVideoCommentDialog.commentFragment;
        if (commentFragment2 != null) {
            commentFragment2.d1(immVideoCommentDialog.mCommentBean);
        }
        com.transsion.postdetail.helper.a.f(com.transsion.postdetail.helper.a.f48866a, immVideoCommentDialog.data, null, null, 6, null);
    }

    public void A0(CommentFragment.b bVar) {
        this.onCommentCountChangedListener = bVar;
    }

    public final void B0() {
        this.isOpenEdittext = true;
    }

    @Override // com.transsion.baseui.dialog.BaseDialog
    public hj.b newLogViewConfig() {
        return new hj.b("videocomment", false, 2, null);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setStyle(0, R$style.BottomDialogTheme);
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.data = (PostSubjectItem) arguments.getSerializable("POST_ITEM");
            String string = arguments.getString("comment_id", "");
            Intrinsics.g(string, "getString(...)");
            this.commentId = string;
            String string2 = arguments.getString("PAGE_NAME", "");
            Intrinsics.g(string2, "getString(...)");
            this.pageName = string2;
            String string3 = arguments.getString(WebConstants.PAGE_FROM, "");
            Intrinsics.g(string3, "getString(...)");
            this.pageFrom = string3;
        }
    }

    @Override // androidx.fragment.app.DialogFragment
    public Dialog onCreateDialog(Bundle savedInstanceState) {
        Context contextRequireContext = requireContext();
        Intrinsics.g(contextRequireContext, "requireContext(...)");
        com.google.android.material.bottomsheet.c cVar = new com.google.android.material.bottomsheet.c(contextRequireContext, getTheme());
        Window window = cVar.getWindow();
        if (window != null) {
            window.setWindowAnimations(R$style.BaseBottomDialogAnimation);
        }
        Window window2 = cVar.getWindow();
        if (window2 != null) {
            window2.setGravity(80);
            window2.setDimAmount(0.5f);
            WindowManager.LayoutParams attributes = window2.getAttributes();
            if (attributes == null) {
                attributes = new WindowManager.LayoutParams();
            }
            attributes.width = com.transsion.baseui.util.a.f43502a.b(contextRequireContext);
            attributes.height = s0();
            window2.setBackgroundDrawable(null);
            window2.setAttributes(attributes);
        }
        return cVar;
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Stat stat;
        Long commentCount;
        AppCompatTextView appCompatTextView;
        ImageView imageView;
        FrameLayout frameLayout;
        ViewGroup.LayoutParams layoutParams;
        Intrinsics.h(view, "view");
        super.onViewCreated(view, savedInstanceState);
        so.g gVarA = so.g.a(view);
        this.viewBinding = gVarA;
        if (gVarA != null && (frameLayout = gVarA.f75524c) != null && (layoutParams = frameLayout.getLayoutParams()) != null) {
            layoutParams.height = s0();
        }
        so.g gVar = this.viewBinding;
        if (gVar != null && (imageView = gVar.f75525d) != null) {
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.postdetail.ui.dialog.a
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    ImmVideoCommentDialog.t0(this.f49434a, view2);
                }
            });
        }
        so.g gVar2 = this.viewBinding;
        if (gVar2 != null && (appCompatTextView = gVar2.f75526e) != null) {
            appCompatTextView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.postdetail.ui.dialog.b
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    ImmVideoCommentDialog.u0(this.f49435a, view2);
                }
            });
        }
        FragmentManager childFragmentManager = getChildFragmentManager();
        Intrinsics.g(childFragmentManager, "getChildFragmentManager(...)");
        w wVarP = childFragmentManager.p();
        Intrinsics.g(wVarP, "beginTransaction()");
        CommentFragment.Companion companion = CommentFragment.INSTANCE;
        PostSubjectItem postSubjectItem = this.data;
        String postId = postSubjectItem != null ? postSubjectItem.getPostId() : null;
        String value = CommentTopicType.POST.getValue();
        PostSubjectItem postSubjectItem2 = this.data;
        CommentFragment commentFragmentA = companion.a(postId, value, (postSubjectItem2 == null || (stat = postSubjectItem2.getStat()) == null || (commentCount = stat.getCommentCount()) == null) ? 0L : commentCount.longValue(), (8072 & 8) != 0, (8072 & 16) != 0 ? false : false, (8072 & 32) != 0 ? "" : this.commentId, this.pageFrom, (8072 & 128) != 0 ? null : null, (8072 & 256) != 0 ? null : null, (8072 & 512) != 0 ? null : null, (8072 & 1024) != 0 ? null : null, (8072 & 2048) != 0 ? null : null, (8072 & 4096) != 0 ? null : null);
        wVarP.s(R$id.fl_comment_container, commentFragmentA);
        this.commentFragment = commentFragmentA;
        wVarP.i();
        CommentFragment commentFragment = this.commentFragment;
        if (commentFragment != null) {
            commentFragment.b1(getOnCommentCountChangedListener());
        }
        CommentFragment commentFragment2 = this.commentFragment;
        if (commentFragment2 != null) {
            commentFragment2.Z0(new Function2() { // from class: com.transsion.postdetail.ui.dialog.c
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return ImmVideoCommentDialog.v0(this.f49436a, (String) obj, (Boolean) obj2);
                }
            });
        }
        if (this.isOpenEdittext) {
            w0();
        }
    }

    /* JADX INFO: renamed from: r0, reason: from getter */
    public CommentFragment.b getOnCommentCountChangedListener() {
        return this.onCommentCountChangedListener;
    }

    public final void y0(CommentBean commentBean) {
        this.mCommentBean = commentBean;
    }

    public final void z0(Function2 callback) {
        Intrinsics.h(callback, "callback");
        this.mCommentCallback = callback;
    }
}
