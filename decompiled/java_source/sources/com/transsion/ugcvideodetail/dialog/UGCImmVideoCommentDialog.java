package com.transsion.ugcvideodetail.dialog;

import android.app.Dialog;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.w;
import com.blankj.utilcode.util.y;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.noober.background.view.BLTextView;
import com.therouter.TheRouter;
import com.transsion.baseui.R$style;
import com.transsion.baseui.dialog.BaseViewBindingDialog;
import com.transsion.postdetailapi.CommentTopicType;
import com.transsion.postdetailapi.IPostDetailApi;
import com.transsion.ugcvideodetail.R$id;
import com.transsion.ugcvideodetail.fragment.UGCImmVideoDetailFragment;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\u0018\u0000 )2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001*B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\t\u0010\u0004J\u0019\u0010\f\u001a\u00020\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016¢\u0006\u0004\b\f\u0010\rJ\u0019\u0010\u000f\u001a\u00020\u000e2\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J!\u0010\u0013\u001a\u00020\b2\u0006\u0010\u0012\u001a\u00020\u00112\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016¢\u0006\u0004\b\u0013\u0010\u0014R\u0018\u0010\u0018\u001a\u0004\u0018\u00010\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u0018\u0010\u001c\u001a\u0004\u0018\u00010\u00198\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u0016\u0010\u001e\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010\u0017R\u0016\u0010!\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010 R.\u0010(\u001a\u001c\u0012\u0004\u0012\u00020#\u0012\u0006\u0012\u0004\u0018\u00010$\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020\u00020\"8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b&\u0010'¨\u0006+"}, d2 = {"Lcom/transsion/ugcvideodetail/dialog/UGCImmVideoCommentDialog;", "Lcom/transsion/baseui/dialog/BaseViewBindingDialog;", "Lqv/b;", "<init>", "()V", "", "v0", "()I", "", "t0", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/app/Dialog;", "onCreateDialog", "(Landroid/os/Bundle;)Landroid/app/Dialog;", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Ljava/lang/String;", "ugcVideoId", "Landroidx/fragment/app/Fragment;", "e", "Landroidx/fragment/app/Fragment;", "commentFragment", "f", "commentId", "g", "I", "commentCount", "Lkotlin/Function3;", "Landroid/view/LayoutInflater;", "Landroid/view/ViewGroup;", "", "n0", "()Lkotlin/jvm/functions/Function3;", "bindingInflater", "h", "a", "UGCVideoDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class UGCImmVideoCommentDialog extends BaseViewBindingDialog<qv.b> {

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private String ugcVideoId;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private Fragment commentFragment;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private String commentId = "";

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private int commentCount;

    /* JADX INFO: renamed from: com.transsion.ugcvideodetail.dialog.UGCImmVideoCommentDialog$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final UGCImmVideoCommentDialog a(String str, int i11) {
            UGCImmVideoCommentDialog uGCImmVideoCommentDialog = new UGCImmVideoCommentDialog();
            uGCImmVideoCommentDialog.setArguments(androidx.core.os.d.b(TuplesKt.a("video_id", str), TuplesKt.a("comment_count", Integer.valueOf(i11))));
            return uGCImmVideoCommentDialog;
        }
    }

    private final void t0() {
        Dialog dialog;
        final Window window;
        if (Build.VERSION.SDK_INT < 35 || (dialog = getDialog()) == null || (window = dialog.getWindow()) == null) {
            return;
        }
        ViewCompat.setOnApplyWindowInsetsListener(window.getDecorView(), new OnApplyWindowInsetsListener() { // from class: com.transsion.ugcvideodetail.dialog.d
            @Override // androidx.core.view.OnApplyWindowInsetsListener
            public final WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
                return UGCImmVideoCommentDialog.u0(this.f56041a, window, view, windowInsetsCompat);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final WindowInsetsCompat u0(UGCImmVideoCommentDialog uGCImmVideoCommentDialog, Window window, View view, WindowInsetsCompat insets) {
        qv.b bVar;
        ConstraintLayout constraintLayout;
        Intrinsics.h(insets, "insets");
        int iB = insets.isVisible(WindowInsetsCompat.Type.navigationBars()) ? insets.getInsets(WindowInsetsCompat.Type.navigationBars()).f79128d : dk.a.b(8);
        if (iB > 0 && (bVar = (qv.b) uGCImmVideoCommentDialog.getViewBinding()) != null && (constraintLayout = bVar.f73706b) != null) {
            constraintLayout.setPadding(0, 0, 0, iB);
        }
        ViewCompat.setOnApplyWindowInsetsListener(window.getDecorView(), null);
        return insets;
    }

    private final int v0() {
        return (y.c() * 7) / 10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void w0(UGCImmVideoCommentDialog uGCImmVideoCommentDialog, View view) {
        uGCImmVideoCommentDialog.dismissAllowingStateLoss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void x0(UGCImmVideoCommentDialog uGCImmVideoCommentDialog, View view) {
        uGCImmVideoCommentDialog.dismissAllowingStateLoss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void y0(UGCImmVideoCommentDialog uGCImmVideoCommentDialog, View view, View view2) {
        androidx.p010savedstate.e eVar = uGCImmVideoCommentDialog.commentFragment;
        ep.a aVar = eVar instanceof ep.a ? (ep.a) eVar : null;
        if (aVar != null) {
            aVar.s(view);
            aVar.q();
        }
    }

    @Override // com.transsion.baseui.dialog.BaseViewBindingDialog
    public Function3 n0() {
        return UGCImmVideoCommentDialog$bindingInflater$1.INSTANCE;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setStyle(0, R$style.BottomDialogTheme);
        Bundle arguments = getArguments();
        if (arguments != null) {
            String string = arguments.getString("video_id", "");
            this.ugcVideoId = string;
            this.commentId = string != null ? string : "";
            this.commentCount = arguments.getInt("comment_count", 0);
        }
    }

    @Override // androidx.fragment.app.DialogFragment
    public Dialog onCreateDialog(Bundle savedInstanceState) {
        Dialog dialogOnCreateDialog = super.onCreateDialog(savedInstanceState);
        Intrinsics.g(dialogOnCreateDialog, "onCreateDialog(...)");
        Window window = dialogOnCreateDialog.getWindow();
        if (window != null) {
            window.setWindowAnimations(com.transsnet.downloader.R$style.BottomShowAnimation);
            window.setGravity(80);
            window.setDimAmount(0.5f);
            window.getDecorView().setPadding(0, 0, 0, 0);
            WindowManager.LayoutParams attributes = window.getAttributes();
            if (attributes == null) {
                attributes = new WindowManager.LayoutParams();
            }
            attributes.width = -1;
            attributes.height = v0();
            window.setBackgroundDrawable(null);
            window.setAttributes(attributes);
        }
        return dialogOnCreateDialog;
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(final View view, Bundle savedInstanceState) {
        BLTextView bLTextView;
        TextView textView;
        String str;
        View view2;
        ImageView imageView;
        FrameLayout frameLayout;
        ViewGroup.LayoutParams layoutParams;
        Intrinsics.h(view, "view");
        super.onViewCreated(view, savedInstanceState);
        t0();
        qv.b bVar = (qv.b) getViewBinding();
        if (bVar != null && (frameLayout = bVar.f73708d) != null && (layoutParams = frameLayout.getLayoutParams()) != null) {
            layoutParams.height = v0() - dk.a.b(48);
        }
        qv.b bVar2 = (qv.b) getViewBinding();
        if (bVar2 != null && (imageView = bVar2.f73709e) != null) {
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.ugcvideodetail.dialog.a
                @Override // android.view.View.OnClickListener
                public final void onClick(View view3) {
                    UGCImmVideoCommentDialog.w0(this.f56037a, view3);
                }
            });
        }
        qv.b bVar3 = (qv.b) getViewBinding();
        if (bVar3 != null && (view2 = bVar3.f73715k) != null) {
            view2.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.ugcvideodetail.dialog.b
                @Override // android.view.View.OnClickListener
                public final void onClick(View view3) {
                    UGCImmVideoCommentDialog.x0(this.f56038a, view3);
                }
            });
        }
        qv.b bVar4 = (qv.b) getViewBinding();
        if (bVar4 != null && (textView = bVar4.f73712h) != null) {
            int i11 = this.commentCount;
            if (i11 > 0) {
                str = "(" + (i11 > 99 ? "99+" : Integer.valueOf(i11)) + ")";
            } else {
                str = "";
            }
            textView.setText(str);
        }
        Fragment parentFragment = getParentFragment();
        Fragment fragmentF = null;
        UGCImmVideoDetailFragment uGCImmVideoDetailFragment = parentFragment instanceof UGCImmVideoDetailFragment ? (UGCImmVideoDetailFragment) parentFragment : null;
        IPostDetailApi iPostDetailApi = (IPostDetailApi) TheRouter.d(IPostDetailApi.class, new Object[0]);
        if (iPostDetailApi != null) {
            fragmentF = iPostDetailApi.f(this.ugcVideoId, CommentTopicType.UGC_VIDEO.getValue(), 0L, true, true, "", null, uGCImmVideoDetailFragment != null ? uGCImmVideoDetailFragment.getTrackId() : null, uGCImmVideoDetailFragment != null ? uGCImmVideoDetailFragment.getPreviousTrackId() : null, uGCImmVideoDetailFragment != null ? uGCImmVideoDetailFragment.getPreviousPageVideoId() : null, this.ugcVideoId, "/ugc_video/immersive_detail", uGCImmVideoDetailFragment != null ? uGCImmVideoDetailFragment.getCollectionId() : null);
        }
        this.commentFragment = fragmentF;
        if (fragmentF != null) {
            FragmentManager childFragmentManager = getChildFragmentManager();
            Intrinsics.g(childFragmentManager, "getChildFragmentManager(...)");
            w wVarP = childFragmentManager.p();
            Intrinsics.g(wVarP, "beginTransaction()");
            wVarP.s(R$id.fl_comment_container, fragmentF);
            wVarP.i();
        }
        qv.b bVar5 = (qv.b) getViewBinding();
        if (bVar5 == null || (bLTextView = bVar5.f73710f) == null) {
            return;
        }
        bLTextView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.ugcvideodetail.dialog.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view3) {
                UGCImmVideoCommentDialog.y0(this.f56039a, view, view3);
            }
        });
    }
}
