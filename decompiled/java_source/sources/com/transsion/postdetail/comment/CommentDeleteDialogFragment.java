package com.transsion.postdetail.comment;

import android.app.Dialog;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.TextView;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentManager;
import androidx.p009lifecycle.v0;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.tn.lib.net.bean.BaseDto;
import com.transsion.postdetail.R$id;
import com.transsion.postdetail.R$layout;
import com.transsion.postdetail.R$string;
import com.transsion.postdetail.R$style;
import com.transsion.postdetail.viewmodel.CommentViewModel;
import com.transsion.postdetailapi.CommentTopicType;
import com.transsion.push.PushConstants;
import com.transsion.share.bean.PostType;
import com.transsion.usercenter.profile.report.ReportDialog;
import com.transsion.usercenterapi.ReportType;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000m\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\b\u0006*\u0001M\u0018\u0000 Q2\u00020\u0001:\u0002'*B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\t\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\t\u0010\u0003J\u000f\u0010\n\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\n\u0010\u0003J\u000f\u0010\f\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\f\u0010\rJ\u0019\u0010\u0010\u001a\u00020\u00062\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J!\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0016¢\u0006\u0004\b\u0012\u0010\u0013J'\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u00142\b\u0010\u0017\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0019\u001a\u00020\u0018¢\u0006\u0004\b\u001a\u0010\u001bJ!\u0010\u001c\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u00142\b\u0010\u0017\u001a\u0004\u0018\u00010\u0016H\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ\u0019\u0010\u001f\u001a\u00020\u001e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0016¢\u0006\u0004\b\u001f\u0010 J\u000f\u0010!\u001a\u00020\u0006H\u0016¢\u0006\u0004\b!\u0010\u0003J\u0015\u0010#\u001a\u00020\u00062\u0006\u0010\"\u001a\u00020\u0016¢\u0006\u0004\b#\u0010$J\u0015\u0010%\u001a\u00020\u00062\u0006\u0010\"\u001a\u00020\u0016¢\u0006\u0004\b%\u0010$R\u0016\u0010)\u001a\u00020&8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b'\u0010(R\u0016\u0010+\u001a\u00020&8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b*\u0010(R\u0018\u0010/\u001a\u0004\u0018\u00010,8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b-\u0010.R\u0018\u00101\u001a\u0004\u0018\u00010,8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b0\u0010.R\u0018\u00103\u001a\u0004\u0018\u00010,8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b2\u0010.R\u0018\u00105\u001a\u0004\u0018\u00010,8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b4\u0010.R\u0016\u0010\"\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b6\u00107R\u0016\u00109\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b8\u00107R\u0016\u0010;\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b:\u00107R\u0016\u0010\u0019\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b<\u0010=R\u0018\u0010@\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b>\u0010?R$\u0010H\u001a\u0004\u0018\u00010A8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bB\u0010C\u001a\u0004\bD\u0010E\"\u0004\bF\u0010GR\u0018\u0010L\u001a\u0004\u0018\u00010I8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bJ\u0010KR\u0016\u0010P\u001a\u00020M8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bN\u0010O¨\u0006R"}, d2 = {"Lcom/transsion/postdetail/comment/CommentDeleteDialogFragment;", "Landroidx/fragment/app/DialogFragment;", "<init>", "()V", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "", "g0", "(Landroid/view/View;)V", "initViewModel", "p0", "", "f0", "()F", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Landroidx/fragment/app/FragmentManager;", "manager", "", "tag", "", "isMaster", "q0", "(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;Z)V", PushConstants.PUSH_SERVICE_TYPE_SHOW, "(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V", "Landroid/app/Dialog;", "onCreateDialog", "(Landroid/os/Bundle;)Landroid/app/Dialog;", "onDestroy", "commentId", "e0", "(Ljava/lang/String;)V", "n0", "", "a", "J", "showDuration", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "respDuration", "Landroid/widget/TextView;", "c", "Landroid/widget/TextView;", "copyText", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "deleteText", "e", "cancelText", "f", "reportText", "g", "Ljava/lang/String;", "h", "topicType", "i", "commentContent", "j", "Z", CampaignEx.JSON_KEY_AD_K, "Landroid/view/View;", "line", "Lcom/transsion/postdetail/comment/CommentDeleteDialogFragment$b;", "l", "Lcom/transsion/postdetail/comment/CommentDeleteDialogFragment$b;", "getMOnCommentDeleteListener", "()Lcom/transsion/postdetail/comment/CommentDeleteDialogFragment$b;", "o0", "(Lcom/transsion/postdetail/comment/CommentDeleteDialogFragment$b;)V", "mOnCommentDeleteListener", "Lcom/transsion/postdetail/viewmodel/CommentViewModel;", "m", "Lcom/transsion/postdetail/viewmodel/CommentViewModel;", "mCommentViewModel", "com/transsion/postdetail/comment/CommentDeleteDialogFragment$d", "n", "Lcom/transsion/postdetail/comment/CommentDeleteDialogFragment$d;", "shareItemCallback", "o", "PostDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class CommentDeleteDialogFragment extends DialogFragment {

    /* JADX INFO: renamed from: o, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private long showDuration;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private long respDuration;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private TextView copyText;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private TextView deleteText;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private TextView cancelText;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private TextView reportText;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private String commentId;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private String topicType;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private String commentContent;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private boolean isMaster;

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    private View line;

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    private b mOnCommentDeleteListener;

    /* JADX INFO: renamed from: m, reason: collision with root package name and from kotlin metadata */
    private CommentViewModel mCommentViewModel;

    /* JADX INFO: renamed from: n, reason: collision with root package name and from kotlin metadata */
    private d shareItemCallback;

    /* JADX INFO: renamed from: com.transsion.postdetail.comment.CommentDeleteDialogFragment$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final CommentDeleteDialogFragment a(String str, String str2, String content) {
            Intrinsics.h(content, "content");
            CommentDeleteDialogFragment commentDeleteDialogFragment = new CommentDeleteDialogFragment();
            Bundle bundle = new Bundle();
            bundle.putString("commentId", str);
            bundle.putString("TOPIC_TYPE", str2);
            bundle.putString("comment_content", content);
            commentDeleteDialogFragment.setArguments(bundle);
            return commentDeleteDialogFragment;
        }
    }

    public interface b {
        void a(String str);
    }

    static final class c implements androidx.p009lifecycle.c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f48684a;

        c(Function1 function) {
            Intrinsics.h(function, "function");
            this.f48684a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f48684a;
        }

        public final boolean equals(Object obj) {
            if ((obj instanceof androidx.p009lifecycle.c0) && (obj instanceof FunctionAdapter)) {
                return Intrinsics.c(a(), ((FunctionAdapter) obj).a());
            }
            return false;
        }

        public final int hashCode() {
            return a().hashCode();
        }

        @Override // androidx.p009lifecycle.c0
        public final /* synthetic */ void onChanged(Object obj) {
            this.f48684a.invoke(obj);
        }
    }

    public static final class d implements com.transsion.share.share.a {
        d() {
        }

        @Override // com.transsion.share.share.a
        public void a(String id2, PostType postType) {
            Intrinsics.h(id2, "id");
        }

        @Override // com.transsion.share.share.a
        public void b(String str) {
            CommentDeleteDialogFragment commentDeleteDialogFragment = CommentDeleteDialogFragment.this;
            commentDeleteDialogFragment.n0(commentDeleteDialogFragment.commentId);
        }

        @Override // com.transsion.share.share.a
        public void c(String url, String fileName, String fileSize, String fileImage) {
            Intrinsics.h(url, "url");
            Intrinsics.h(fileName, "fileName");
            Intrinsics.h(fileSize, "fileSize");
            Intrinsics.h(fileImage, "fileImage");
        }

        @Override // com.transsion.share.share.a
        public void d(String id2) {
            Intrinsics.h(id2, "id");
        }

        @Override // com.transsion.share.share.a
        public void e(String str) {
            com.transsion.share.share.a.C0656a.c(this, str);
        }
    }

    public CommentDeleteDialogFragment() {
        super(R$layout.dialog_delete_comments);
        this.commentId = "";
        this.topicType = CommentTopicType.POST.getValue();
        this.commentContent = "";
        this.shareItemCallback = new d();
    }

    private final float f0() {
        return this.isMaster ? 249.0f : 201.0f;
    }

    private final void g0(final View view) {
        this.copyText = (TextView) view.findViewById(R$id.tv_copy_comment);
        this.reportText = (TextView) view.findViewById(R$id.tv_report_comment);
        this.deleteText = (TextView) view.findViewById(R$id.tv_delete_comment);
        this.cancelText = (TextView) view.findViewById(R$id.tv_cancel);
        this.line = view.findViewById(R$id.line);
        TextView textView = this.copyText;
        if (textView != null) {
            textView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.postdetail.comment.c
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    CommentDeleteDialogFragment.h0(this.f48726a, view, view2);
                }
            });
        }
        TextView textView2 = this.deleteText;
        if (textView2 != null) {
            textView2.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.postdetail.comment.d
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    CommentDeleteDialogFragment.i0(this.f48731a, view2);
                }
            });
        }
        TextView textView3 = this.reportText;
        if (textView3 != null) {
            textView3.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.postdetail.comment.e
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    CommentDeleteDialogFragment.j0(this.f48734a, view2);
                }
            });
        }
        TextView textView4 = this.cancelText;
        if (textView4 != null) {
            textView4.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.postdetail.comment.f
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    CommentDeleteDialogFragment.k0(this.f48737a, view2);
                }
            });
        }
        TextView textView5 = this.copyText;
        if (textView5 != null) {
            textView5.setText(R$string.comment_copy_tips);
        }
        TextView textView6 = this.reportText;
        if (textView6 != null) {
            textView6.setText(R$string.comment_report_tips);
        }
        TextView textView7 = this.deleteText;
        if (textView7 != null) {
            textView7.setText(R$string.comment_delete_tips);
        }
        TextView textView8 = this.cancelText;
        if (textView8 != null) {
            textView8.setText(R$string.player_delete_video_cancel);
        }
        p0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h0(CommentDeleteDialogFragment commentDeleteDialogFragment, View view, View view2) {
        ClipData clipDataNewPlainText = ClipData.newPlainText("Simple test", commentDeleteDialogFragment.commentContent);
        Context context = view.getContext();
        Object systemService = context != null ? context.getSystemService("clipboard") : null;
        Intrinsics.f(systemService, "null cannot be cast to non-null type android.content.ClipboardManager");
        ((ClipboardManager) systemService).setPrimaryClip(clipDataNewPlainText);
        uh.b.f76753a.f(commentDeleteDialogFragment.getString(R$string.comment_copy_success), 17);
        commentDeleteDialogFragment.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i0(CommentDeleteDialogFragment commentDeleteDialogFragment, View view) {
        if (!nh.m.f70474a.e()) {
            commentDeleteDialogFragment.respDuration = 0L;
            uh.b.f76753a.e(commentDeleteDialogFragment.getString(R$string.player_no_network_tip2));
        } else if (TextUtils.isEmpty(commentDeleteDialogFragment.commentId)) {
            commentDeleteDialogFragment.dismiss();
        } else {
            commentDeleteDialogFragment.respDuration = System.currentTimeMillis();
            commentDeleteDialogFragment.e0(commentDeleteDialogFragment.commentId);
        }
    }

    private final void initViewModel() {
        CommentViewModel commentViewModel = (CommentViewModel) new v0(this).a(CommentViewModel.class);
        commentViewModel.j().j(this, new c(new Function1() { // from class: com.transsion.postdetail.comment.a
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return CommentDeleteDialogFragment.l0(this.f48719a, (BaseDto) obj);
            }
        }));
        commentViewModel.o().j(this, new c(new Function1() { // from class: com.transsion.postdetail.comment.b
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return CommentDeleteDialogFragment.m0(this.f48723a, (String) obj);
            }
        }));
        this.mCommentViewModel = commentViewModel;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j0(CommentDeleteDialogFragment commentDeleteDialogFragment, View view) {
        ReportDialog reportDialogA = ReportDialog.INSTANCE.a(ReportType.COMMENT.getValue(), commentDeleteDialogFragment.commentId);
        reportDialogA.k0(commentDeleteDialogFragment.requireContext(), "report");
        reportDialogA.A0(commentDeleteDialogFragment.shareItemCallback);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k0(CommentDeleteDialogFragment commentDeleteDialogFragment, View view) {
        commentDeleteDialogFragment.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit l0(CommentDeleteDialogFragment commentDeleteDialogFragment, BaseDto baseDto) {
        if (Intrinsics.c(baseDto != null ? baseDto.getCode() : null, "0")) {
            b bVar = commentDeleteDialogFragment.mOnCommentDeleteListener;
            if (bVar != null) {
                bVar.a((String) baseDto.getData());
            }
            uh.b.f76753a.f(commentDeleteDialogFragment.getString(R$string.comment_delete_success), 17);
            commentDeleteDialogFragment.dismiss();
        } else {
            uh.b.f76753a.f(commentDeleteDialogFragment.getString(R$string.comment_delete_failed), 17);
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit m0(CommentDeleteDialogFragment commentDeleteDialogFragment, String str) {
        commentDeleteDialogFragment.dismiss();
        b bVar = commentDeleteDialogFragment.mOnCommentDeleteListener;
        if (bVar != null) {
            bVar.a(str);
        }
        return Unit.f67061a;
    }

    private final void p0() {
        if (this.isMaster) {
            TextView textView = this.deleteText;
            if (textView != null) {
                textView.setVisibility(0);
                return;
            }
            return;
        }
        TextView textView2 = this.deleteText;
        if (textView2 != null) {
            textView2.setVisibility(8);
        }
        View view = this.line;
        if (view != null) {
            view.setVisibility(8);
        }
    }

    public final void e0(String commentId) {
        Intrinsics.h(commentId, "commentId");
        CommentViewModel commentViewModel = this.mCommentViewModel;
        if (commentViewModel != null) {
            commentViewModel.g(this.topicType, commentId);
        }
    }

    public final void n0(String commentId) {
        Intrinsics.h(commentId, "commentId");
        CommentViewModel commentViewModel = this.mCommentViewModel;
        if (commentViewModel != null) {
            commentViewModel.t(commentId);
        }
    }

    public final void o0(b bVar) {
        this.mOnCommentDeleteListener = bVar;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setStyle(0, R$style.BottomDialogTheme);
    }

    @Override // androidx.fragment.app.DialogFragment
    public Dialog onCreateDialog(Bundle savedInstanceState) {
        Context contextRequireContext = requireContext();
        Intrinsics.g(contextRequireContext, "requireContext(...)");
        com.google.android.material.bottomsheet.c cVar = new com.google.android.material.bottomsheet.c(contextRequireContext, getTheme());
        Window window = cVar.getWindow();
        if (window != null) {
            window.setGravity(80);
            window.setDimAmount(0.42f);
            WindowManager.LayoutParams attributes = window.getAttributes();
            if (attributes == null) {
                attributes = new WindowManager.LayoutParams();
            }
            attributes.width = com.transsion.baseui.util.a.f43502a.b(contextRequireContext);
            attributes.height = com.blankj.utilcode.util.a0.a(f0());
            window.setAttributes(attributes);
        }
        return cVar;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        String string;
        String value;
        String string2;
        Intrinsics.h(view, "view");
        super.onViewCreated(view, savedInstanceState);
        g0(view);
        initViewModel();
        this.showDuration = System.currentTimeMillis();
        Bundle arguments = getArguments();
        String str = "";
        if (arguments == null || (string = arguments.getString("comment_content")) == null) {
            string = "";
        }
        this.commentContent = string;
        Bundle arguments2 = getArguments();
        if (arguments2 != null && (string2 = arguments2.getString("commentId")) != null) {
            str = string2;
        }
        this.commentId = str;
        Bundle arguments3 = getArguments();
        if (arguments3 == null || (value = arguments3.getString("TOPIC_TYPE")) == null) {
            value = CommentTopicType.POST.getValue();
        }
        this.topicType = value;
    }

    public final void q0(FragmentManager manager, String tag, boolean isMaster) {
        Intrinsics.h(manager, "manager");
        this.isMaster = isMaster;
        p0();
        show(manager, tag);
    }

    @Override // androidx.fragment.app.DialogFragment
    public void show(FragmentManager manager, String tag) {
        Intrinsics.h(manager, "manager");
        super.show(manager, tag);
    }
}
