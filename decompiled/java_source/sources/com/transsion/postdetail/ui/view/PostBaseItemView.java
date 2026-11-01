package com.transsion.postdetail.ui.view;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.AssetManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.cardview.widget.CardView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.FragmentActivity;
import androidx.p009lifecycle.Lifecycle;
import androidx.p009lifecycle.LifecycleCoroutineScope;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.imageview.ShapeableImageView;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.noober.background.view.BLConstraintLayout;
import com.noober.background.view.BLLinearLayout;
import com.noober.background.view.BLTextView;
import com.tn.lib.view.NoScrollRecyclerView2;
import com.tn.lib.view.layoutmanager.NpaGridLayoutManager;
import com.tn.lib.widget.R$drawable;
import com.transsion.baseui.util.TimeUtilKt;
import com.transsion.moviedetailapi.bean.CommentBean;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.moviedetailapi.bean.FirstFrame;
import com.transsion.moviedetailapi.bean.Group;
import com.transsion.moviedetailapi.bean.Image;
import com.transsion.moviedetailapi.bean.Media;
import com.transsion.moviedetailapi.bean.MediaType;
import com.transsion.moviedetailapi.bean.PostSubjectItem;
import com.transsion.moviedetailapi.bean.Stat;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.moviedetailapi.bean.User;
import com.transsion.moviedetailapi.bean.Video;
import com.transsion.postdetail.R$layout;
import com.transsion.postdetail.R$string;
import com.transsion.postdetail.bean.CommentLikeBody;
import com.transsion.postdetail.helper.NegativeFeedbackHelper;
import com.transsion.postdetail.ui.adapter.RoomPostContentImageAdapter;
import com.transsion.postdetail.video.PostFeedVideoView;
import com.transsion.postdetail.viewmodel.CommentViewModel;
import com.transsion.web.api.WebConstants;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\t\n\u0002\b!\n\u0002\u0018\u0002\n\u0002\b$\b&\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B\u001b\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u0004\u0010\bB#\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u0004\u0010\u000bJ\u000f\u0010\r\u001a\u00020\fH\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\fH\u0002¢\u0006\u0004\b\u000f\u0010\u000eJ\u0017\u0010\u0012\u001a\u00020\f2\u0006\u0010\u0011\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u0017\u0010\u0014\u001a\u00020\f2\u0006\u0010\u0011\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u0014\u0010\u0013J\u0017\u0010\u0015\u001a\u00020\f2\u0006\u0010\u0011\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u0015\u0010\u0013J\u0017\u0010\u0016\u001a\u00020\f2\u0006\u0010\u0011\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u0016\u0010\u0013J\u001f\u0010\u0019\u001a\u00020\f2\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0011\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u0019\u0010\u001aJ\u0017\u0010\u001b\u001a\u00020\f2\u0006\u0010\u0011\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u001b\u0010\u0013J\u001f\u0010\u001e\u001a\u00020\f2\u0006\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u0011\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u001e\u0010\u001fJ\u0017\u0010 \u001a\u00020\f2\u0006\u0010\u0011\u001a\u00020\u0010H\u0002¢\u0006\u0004\b \u0010\u0013J\u0017\u0010!\u001a\u00020\f2\u0006\u0010\u0011\u001a\u00020\u0010H\u0002¢\u0006\u0004\b!\u0010\u0013J\u0017\u0010\"\u001a\u00020\f2\u0006\u0010\u0011\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\"\u0010\u0013J+\u0010&\u001a\u00020\f2\f\u0010$\u001a\b\u0012\u0004\u0012\u00020\f0#2\f\u0010%\u001a\b\u0012\u0004\u0012\u00020\f0#H\u0002¢\u0006\u0004\b&\u0010'J'\u0010*\u001a\u00020\f2\f\u0010(\u001a\b\u0012\u0004\u0012\u00020\f0#2\b\u0010)\u001a\u0004\u0018\u00010\u0010H\u0002¢\u0006\u0004\b*\u0010+J'\u0010-\u001a\u00020\f2\f\u0010,\u001a\b\u0012\u0004\u0012\u00020\f0#2\b\u0010)\u001a\u0004\u0018\u00010\u0010H\u0002¢\u0006\u0004\b-\u0010+J'\u0010/\u001a\u00020\f2\f\u0010.\u001a\b\u0012\u0004\u0012\u00020\f0#2\b\u0010)\u001a\u0004\u0018\u00010\u0010H\u0002¢\u0006\u0004\b/\u0010+J'\u00101\u001a\u00020\f2\f\u00100\u001a\b\u0012\u0004\u0012\u00020\f0#2\b\u0010)\u001a\u0004\u0018\u00010\u0010H\u0002¢\u0006\u0004\b1\u0010+J\u001d\u00103\u001a\u00020\f2\f\u00102\u001a\b\u0012\u0004\u0012\u00020\f0#H\u0002¢\u0006\u0004\b3\u00104J\u000f\u00105\u001a\u00020\fH\u0014¢\u0006\u0004\b5\u0010\u000eJ\u0011\u00107\u001a\u0004\u0018\u000106H\u0004¢\u0006\u0004\b7\u00108J\u0017\u0010;\u001a\u00020\f2\b\u0010:\u001a\u0004\u0018\u000109¢\u0006\u0004\b;\u0010<J!\u0010?\u001a\u00020\f2\b\u0010=\u001a\u0004\u0018\u00010\u001c2\b\u0010>\u001a\u0004\u0018\u00010\u001c¢\u0006\u0004\b?\u0010@J\u0015\u0010A\u001a\u00020\f2\u0006\u0010\u0011\u001a\u00020\u0010¢\u0006\u0004\bA\u0010\u0013J\u0015\u0010D\u001a\u00020\f2\u0006\u0010C\u001a\u00020B¢\u0006\u0004\bD\u0010EJ!\u0010H\u001a\u00020\f2\u0006\u0010\u0011\u001a\u00020\u00102\b\b\u0002\u0010G\u001a\u00020FH\u0016¢\u0006\u0004\bH\u0010IJ\u001f\u0010L\u001a\u00020\f2\u0006\u0010J\u001a\u00020F2\u0006\u0010K\u001a\u00020FH\u0016¢\u0006\u0004\bL\u0010MJ\u0017\u0010N\u001a\u00020\f2\u0006\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\bN\u0010\u0013J\u0015\u0010Q\u001a\u00020\f2\u0006\u0010P\u001a\u00020O¢\u0006\u0004\bQ\u0010RJ\u0097\u0001\u0010T\u001a\u00020\f2\b\u0010)\u001a\u0004\u0018\u00010\u00102\u000e\b\u0002\u0010.\u001a\b\u0012\u0004\u0012\u00020\f0#2\u000e\b\u0002\u00100\u001a\b\u0012\u0004\u0012\u00020\f0#2\u000e\b\u0002\u00102\u001a\b\u0012\u0004\u0012\u00020\f0#2\u000e\b\u0002\u0010,\u001a\b\u0012\u0004\u0012\u00020\f0#2\u000e\b\u0002\u0010(\u001a\b\u0012\u0004\u0012\u00020\f0#2\u000e\b\u0002\u0010S\u001a\b\u0012\u0004\u0012\u00020\f0#2\u000e\b\u0002\u0010$\u001a\b\u0012\u0004\u0012\u00020\f0#2\u000e\b\u0002\u0010%\u001a\b\u0012\u0004\u0012\u00020\f0#¢\u0006\u0004\bT\u0010UJ'\u0010V\u001a\u00020\f2\f\u0010S\u001a\b\u0012\u0004\u0012\u00020\f0#2\b\u0010)\u001a\u0004\u0018\u00010\u0010H\u0014¢\u0006\u0004\bV\u0010+J\r\u0010W\u001a\u00020\f¢\u0006\u0004\bW\u0010\u000eJ\u0015\u0010Y\u001a\u00020\f2\u0006\u0010X\u001a\u00020F¢\u0006\u0004\bY\u0010ZJ\u0017\u0010[\u001a\u00020\f2\u0006\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b[\u0010\u0013J\u001d\u0010]\u001a\u00020\f2\u0006\u0010\\\u001a\u00020F2\u0006\u0010\u0011\u001a\u00020\u0010¢\u0006\u0004\b]\u0010^J\u0017\u0010_\u001a\u00020\f2\u0006\u0010\u0011\u001a\u00020\u0010H&¢\u0006\u0004\b_\u0010\u0013J\u0017\u0010`\u001a\u00020\f2\u0006\u0010\u0011\u001a\u00020\u0010H&¢\u0006\u0004\b`\u0010\u0013R\u001a\u0010d\u001a\u00020\t8\u0004X\u0084\u0004¢\u0006\f\n\u0004\ba\u0010\u001e\u001a\u0004\bb\u0010cR\u001a\u0010g\u001a\u00020\t8\u0004X\u0084\u0004¢\u0006\f\n\u0004\be\u0010\u001e\u001a\u0004\bf\u0010cR\u001a\u0010j\u001a\u00020\t8\u0004X\u0084\u0004¢\u0006\f\n\u0004\bh\u0010\u001e\u001a\u0004\bi\u0010cR\u0014\u0010l\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bk\u0010\u001eR\u0014\u0010n\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bm\u0010\u001eR\u0014\u0010p\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bo\u0010\u001eR\u001a\u0010v\u001a\u00020q8\u0004X\u0084\u0004¢\u0006\f\n\u0004\br\u0010s\u001a\u0004\bt\u0010uR\u0018\u0010C\u001a\u0004\u0018\u00010B8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bw\u0010xR\u0018\u0010{\u001a\u0004\u0018\u0001098\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\by\u0010zR\u0016\u0010X\u001a\u00020F8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b|\u0010}R(\u0010=\u001a\u0004\u0018\u00010\u001c8\u0004@\u0004X\u0084\u000e¢\u0006\u0016\n\u0004\b~\u0010\u007f\u001a\u0006\b\u0080\u0001\u0010\u0081\u0001\"\u0006\b\u0082\u0001\u0010\u0083\u0001R)\u0010>\u001a\u0004\u0018\u00010\u001c8\u0004@\u0004X\u0084\u000e¢\u0006\u0017\n\u0005\b\u0084\u0001\u0010\u007f\u001a\u0006\b\u0085\u0001\u0010\u0081\u0001\"\u0006\b\u0086\u0001\u0010\u0083\u0001R\u001a\u0010\u0088\u0001\u001a\u0004\u0018\u00010\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0087\u0001\u0010\u007fR\u001a\u0010\u008a\u0001\u001a\u0004\u0018\u00010\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0089\u0001\u0010\u007fR0\u0010\u0090\u0001\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010#8\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0006\b\u008b\u0001\u0010\u008c\u0001\u001a\u0006\b\u008d\u0001\u0010\u008e\u0001\"\u0005\b\u008f\u0001\u00104R0\u0010\u0094\u0001\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010#8\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0006\b\u0091\u0001\u0010\u008c\u0001\u001a\u0006\b\u0092\u0001\u0010\u008e\u0001\"\u0005\b\u0093\u0001\u00104¨\u0006\u0095\u0001"}, d2 = {"Lcom/transsion/postdetail/ui/view/PostBaseItemView;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "res", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "", "G", "()V", "V", "Lcom/transsion/moviedetailapi/bean/PostSubjectItem;", WebConstants.FIELD_ITEM, "setBottomDownLoadStatus", "(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V", "setPostContent", "setPostContentDes", "setHotComment", "Lcom/transsion/moviedetailapi/bean/CommentBean;", "hotComment", "F", "(Lcom/transsion/moviedetailapi/bean/CommentBean;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V", "H", "", "moduleName", "I", "(Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V", "setBottomBarContent", "setPostImage", "setPostVideo", "Lkotlin/Function0;", "onCLickHeader", "onClickNegativeFeedback", "c0", "(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V", "onCLickGroup", "postSubjectItem", "i0", "(Lkotlin/jvm/functions/Function0;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V", "onCLickSubject", "m0", "onCLickLike", "g0", "onCLickComment", "Y", "onCLickShare", "k0", "(Lkotlin/jvm/functions/Function0;)V", "onAttachedToWindow", "Landroidx/fragment/app/FragmentActivity;", "E", "()Landroidx/fragment/app/FragmentActivity;", "Lcom/transsion/postdetail/viewmodel/CommentViewModel;", "viewModel", "setCommentViewModel", "(Lcom/transsion/postdetail/viewmodel/CommentViewModel;)V", "pageName", "pageFrom", "setPage", "(Ljava/lang/String;Ljava/lang/String;)V", "setData", "Landroidx/recyclerview/widget/RecyclerView$s;", "rvPool", "setRecycledViewPool", "(Landroidx/recyclerview/widget/RecyclerView$s;)V", "", "showDistance", "setHeaderPostData", "(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Z)V", "isShowSubject", "isShowRoom", "setBottomSubjectAndRoomVisibility", "(ZZ)V", "setBottomSubjectModuleData", "", "count", "setCommentCount", "(J)V", "onClickDownload", "setBottomBarClick", "(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V", "a0", "setContentMaxLine", "isDetail", "setIsDetail", "(Z)V", "setBottomRoomModuleData", "like", "refreshLike", "(ZLcom/transsion/moviedetailapi/bean/PostSubjectItem;)V", "setHeaderData", "setSubjectAndRoomContent", "a", "getDp36", "()I", "dp36", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "getDp16", "dp16", "c", "getDp32", "dp32", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "rootWidth", "e", "dp78", "f", "dp280", "Lso/w;", "g", "Lso/w;", "getViewBinding", "()Lso/w;", "viewBinding", "h", "Landroidx/recyclerview/widget/RecyclerView$s;", "i", "Lcom/transsion/postdetail/viewmodel/CommentViewModel;", "mCommentViewModel", "j", "Z", CampaignEx.JSON_KEY_AD_K, "Ljava/lang/String;", "getPageName", "()Ljava/lang/String;", "setPageName", "(Ljava/lang/String;)V", "l", "getPageFrom", "setPageFrom", "m", "mPostId", "n", "mAuthorId", "o", "Lkotlin/jvm/functions/Function0;", "getOnNegativeFeedbackSuccess", "()Lkotlin/jvm/functions/Function0;", "setOnNegativeFeedbackSuccess", "onNegativeFeedbackSuccess", TtmlNode.TAG_P, "getOnNegativeFeedbackClick", "setOnNegativeFeedbackClick", "onNegativeFeedbackClick", "PostDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public abstract class PostBaseItemView extends ConstraintLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private final int dp36;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private final int dp16;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private final int dp32;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private final int rootWidth;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private final int dp78;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private final int dp280;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private final so.w viewBinding;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private RecyclerView.s rvPool;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private CommentViewModel mCommentViewModel;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private boolean isDetail;

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    private String pageName;

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    private String pageFrom;

    /* JADX INFO: renamed from: m, reason: collision with root package name and from kotlin metadata */
    private String mPostId;

    /* JADX INFO: renamed from: n, reason: collision with root package name and from kotlin metadata */
    private String mAuthorId;

    /* JADX INFO: renamed from: o, reason: collision with root package name and from kotlin metadata */
    private Function0 onNegativeFeedbackSuccess;

    /* JADX INFO: renamed from: p, reason: collision with root package name and from kotlin metadata */
    private Function0 onNegativeFeedbackClick;

    public static final class a extends DiffUtil.e {
        a() {
        }

        @Override // androidx.recyclerview.widget.DiffUtil.e
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public boolean areContentsTheSame(Image oldItem, Image newItem) {
            Intrinsics.h(oldItem, "oldItem");
            Intrinsics.h(newItem, "newItem");
            return Intrinsics.c(oldItem.getUrl(), newItem.getUrl());
        }

        @Override // androidx.recyclerview.widget.DiffUtil.e
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public boolean areItemsTheSame(Image oldItem, Image newItem) {
            Intrinsics.h(oldItem, "oldItem");
            Intrinsics.h(newItem, "newItem");
            return Intrinsics.c(oldItem.getUrl(), newItem.getUrl());
        }
    }

    /* JADX INFO: renamed from: com.transsion.postdetail.ui.view.PostBaseItemView$setBottomRoomModuleData$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.postdetail.ui.view.PostBaseItemView$setBottomRoomModuleData$1", f = "PostBaseItemView.kt", l = {793}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
        final /* synthetic */ PostSubjectItem $item;
        int label;
        final /* synthetic */ PostBaseItemView this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(PostSubjectItem postSubjectItem, PostBaseItemView postBaseItemView, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$item = postSubjectItem;
            this.this$0 = postBaseItemView;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$item, this.this$0, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Group group;
            Cover cover;
            String url;
            AssetManager assets;
            Object objF = IntrinsicsKt.f();
            int i11 = this.label;
            if (i11 == 0) {
                ResultKt.b(obj);
                Group group2 = this.$item.getGroup();
                if ((group2 == null || group2.getAvatar() == null) && (group = this.$item.getGroup()) != null && (cover = group.getCover()) != null && (url = cover.getUrl()) != null) {
                    PostBaseItemView postBaseItemView = this.this$0;
                    Context context = postBaseItemView.getContext();
                    Bitmap bitmapDecodeStream = BitmapFactory.decodeStream((context == null || (assets = context.getAssets()) == null) ? null : assets.open(url));
                    kotlinx.coroutines.a2 a2VarC = kotlinx.coroutines.y0.c();
                    PostBaseItemView$setBottomRoomModuleData$1$1$1 postBaseItemView$setBottomRoomModuleData$1$1$1 = new PostBaseItemView$setBottomRoomModuleData$1$1$1(postBaseItemView, bitmapDecodeStream, null);
                    this.label = 1;
                    if (kotlinx.coroutines.i.g(a2VarC, postBaseItemView$setBottomRoomModuleData$1$1$1, this) == objF) {
                        return objF;
                    }
                }
                return Unit.f67061a;
            }
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
            Unit unit = Unit.f67061a;
            return Unit.f67061a;
        }
    }

    /* JADX INFO: renamed from: com.transsion.postdetail.ui.view.PostBaseItemView$setBottomSubjectModuleData$1, reason: invalid class name and case insensitive filesystem */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.postdetail.ui.view.PostBaseItemView$setBottomSubjectModuleData$1", f = "PostBaseItemView.kt", l = {649}, m = "invokeSuspend")
    static final class C10731 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
        final /* synthetic */ PostSubjectItem $item;
        int label;
        final /* synthetic */ PostBaseItemView this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C10731(PostSubjectItem postSubjectItem, PostBaseItemView postBaseItemView, Continuation<? super C10731> continuation) {
            super(2, continuation);
            this.$item = postSubjectItem;
            this.this$0 = postBaseItemView;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C10731(this.$item, this.this$0, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
            return ((C10731) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Cover cover;
            String url;
            AssetManager assets;
            Object objF = IntrinsicsKt.f();
            int i11 = this.label;
            if (i11 == 0) {
                ResultKt.b(obj);
                Subject subject = this.$item.getSubject();
                if (subject != null && (cover = subject.getCover()) != null && (url = cover.getUrl()) != null) {
                    PostBaseItemView postBaseItemView = this.this$0;
                    Context context = postBaseItemView.getContext();
                    Bitmap bitmapDecodeStream = BitmapFactory.decodeStream((context == null || (assets = context.getAssets()) == null) ? null : assets.open(url));
                    kotlinx.coroutines.a2 a2VarC = kotlinx.coroutines.y0.c();
                    PostBaseItemView$setBottomSubjectModuleData$1$1$1 postBaseItemView$setBottomSubjectModuleData$1$1$1 = new PostBaseItemView$setBottomSubjectModuleData$1$1$1(postBaseItemView, bitmapDecodeStream, null);
                    this.label = 1;
                    if (kotlinx.coroutines.i.g(a2VarC, postBaseItemView$setBottomSubjectModuleData$1$1$1, this) == objF) {
                        return objF;
                    }
                }
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            return Unit.f67061a;
        }
    }

    /* JADX INFO: renamed from: com.transsion.postdetail.ui.view.PostBaseItemView$setHeaderPostData$1, reason: invalid class name and case insensitive filesystem */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.postdetail.ui.view.PostBaseItemView$setHeaderPostData$1", f = "PostBaseItemView.kt", l = {571}, m = "invokeSuspend")
    static final class C10741 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
        final /* synthetic */ PostSubjectItem $item;
        int label;
        final /* synthetic */ PostBaseItemView this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C10741(PostSubjectItem postSubjectItem, PostBaseItemView postBaseItemView, Continuation<? super C10741> continuation) {
            super(2, continuation);
            this.$item = postSubjectItem;
            this.this$0 = postBaseItemView;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C10741(this.$item, this.this$0, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
            return ((C10741) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            String avatar;
            AssetManager assets;
            Object objF = IntrinsicsKt.f();
            int i11 = this.label;
            if (i11 == 0) {
                ResultKt.b(obj);
                User user = this.$item.getUser();
                if (user != null && (avatar = user.getAvatar()) != null) {
                    PostBaseItemView postBaseItemView = this.this$0;
                    Context context = postBaseItemView.getContext();
                    Bitmap bitmapDecodeStream = BitmapFactory.decodeStream((context == null || (assets = context.getAssets()) == null) ? null : assets.open(avatar));
                    kotlinx.coroutines.a2 a2VarC = kotlinx.coroutines.y0.c();
                    PostBaseItemView$setHeaderPostData$1$1$1 postBaseItemView$setHeaderPostData$1$1$1 = new PostBaseItemView$setHeaderPostData$1$1$1(postBaseItemView, bitmapDecodeStream, null);
                    this.label = 1;
                    if (kotlinx.coroutines.i.g(a2VarC, postBaseItemView$setHeaderPostData$1$1$1, this) == objF) {
                        return objF;
                    }
                }
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            return Unit.f67061a;
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public PostBaseItemView(Context context) {
        this(context, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public PostBaseItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PostBaseItemView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        Intrinsics.h(context, "context");
        this.dp36 = dk.a.b(36);
        this.dp16 = dk.a.b(16);
        this.dp32 = dk.a.b(32);
        Context context2 = getContext();
        Intrinsics.g(context2, "getContext(...)");
        this.rootWidth = com.transsion.baseui.util.b.a(context2) ? dk.a.b(300) : com.blankj.utilcode.util.y.e() - dk.a.b(72);
        this.dp78 = dk.a.b(78);
        this.dp280 = dk.a.b(280);
        View.inflate(getContext(), R$layout.item_provider_room_post_base_layout, this);
        setPadding(0, 0, 0, dk.a.b(4));
        so.w wVarA = so.w.a(this);
        Intrinsics.g(wVarA, "bind(...)");
        this.viewBinding = wVarA;
    }

    private final void F(CommentBean hotComment, PostSubjectItem item) {
        if (!nh.m.f70474a.e()) {
            uh.b.f76753a.d(R$string.base_net_err);
            return;
        }
        Boolean likeStatu = hotComment.getLikeStatu();
        Boolean bool = Boolean.TRUE;
        boolean zC = Intrinsics.c(likeStatu, bool);
        AppCompatImageView appCompatImageView = this.viewBinding.f75740h;
        if (appCompatImageView != null) {
            if (appCompatImageView.isEnabled()) {
                appCompatImageView.setEnabled(false);
                hotComment.setLikeStatu(Boolean.FALSE);
                if (hotComment.getLikeCnt() > 0) {
                    hotComment.setLikeCnt(hotComment.getLikeCnt() - 1);
                }
            } else {
                appCompatImageView.setEnabled(true);
                hotComment.setLikeStatu(bool);
                hotComment.setLikeCnt(hotComment.getLikeCnt() + 1);
            }
        }
        AppCompatTextView appCompatTextView = this.viewBinding.f75752t;
        if (appCompatTextView != null) {
            appCompatTextView.setText(hotComment.getLikeCnt() == 0 ? "" : com.transsion.baseui.util.j.a(hotComment.getLikeCnt()));
        }
        String commentId = hotComment.getCommentId();
        if (commentId != null) {
            if (this.mCommentViewModel == null) {
                G();
            }
            CommentLikeBody commentLikeBody = new CommentLikeBody(commentId, Integer.valueOf(zC ? 1 : 0));
            I(zC ? "dislike_hot_comment" : "like_hot_comment", item);
            in.b bVar = new in.b(!zC, commentId, hotComment.getLikeCnt());
            FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
            String name = in.b.class.getName();
            Intrinsics.g(name, "getName(...)");
            flowEventBus.postEvent(name, bVar, 0L);
            CommentViewModel commentViewModel = this.mCommentViewModel;
            if (commentViewModel != null) {
                commentViewModel.q(commentLikeBody);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:12:0x001c A[PHI: r0
  0x001c: PHI (r0v4 androidx.lifecycle.y0) = (r0v3 androidx.lifecycle.y0), (r0v8 androidx.lifecycle.y0) binds: [B:9:0x0012, B:11:0x001a] A[DONT_GENERATE, DONT_INLINE]] */
    private final void G() {
        androidx.p009lifecycle.y0 y0Var;
        if (this.mCommentViewModel != null) {
            return;
        }
        Object context = getContext();
        androidx.p009lifecycle.y0 y0VarE = context instanceof androidx.p009lifecycle.y0 ? (androidx.p009lifecycle.y0) context : null;
        if (y0VarE == null) {
            y0VarE = E();
            y0Var = y0VarE instanceof androidx.p009lifecycle.y0 ? y0VarE : null;
        }
        if (y0Var != null) {
            this.mCommentViewModel = (CommentViewModel) new androidx.p009lifecycle.v0(y0Var).a(CommentViewModel.class);
        }
    }

    private final void H(PostSubjectItem item) {
        String userId;
        String groupId;
        String subjectId;
        String string;
        String value;
        Integer subjectType;
        String postId = item.getPostId();
        if (postId == null) {
            postId = "";
        }
        Pair pairA = TuplesKt.a("post_id", postId);
        Pair pairA2 = TuplesKt.a(WebConstants.PAGE_FROM, this.pageFrom);
        Pair pairA3 = TuplesKt.a("module_name", "hot_comment");
        Pair pairA4 = TuplesKt.a("is_cache_post", String.valueOf(item.isRoomCache()));
        User user = item.getUser();
        if (user == null || (userId = user.getUserId()) == null) {
            userId = "";
        }
        Pair pairA5 = TuplesKt.a("user_id", userId);
        Group group = item.getGroup();
        if (group == null || (groupId = group.getGroupId()) == null) {
            groupId = "";
        }
        Pair pairA6 = TuplesKt.a("group_id", groupId);
        Subject subject = item.getSubject();
        if (subject == null || (subjectId = subject.getSubjectId()) == null) {
            subjectId = "";
        }
        Pair pairA7 = TuplesKt.a("subject_id", subjectId);
        Subject subject2 = item.getSubject();
        if (subject2 == null || (subjectType = subject2.getSubjectType()) == null || (string = subjectType.toString()) == null) {
            string = "";
        }
        Pair pairA8 = TuplesKt.a("subject_type", string);
        Pair pairA9 = TuplesKt.a("builtin", item.getBuiltIn() ? "1" : "0");
        Media media = item.getMedia();
        if (media == null || (value = media.getMediaType()) == null) {
            value = MediaType.TEXT.getValue();
        }
        Pair pairA10 = TuplesKt.a("post_media_type", value);
        String ops = item.getOps();
        Map mapM = MapsKt.m(pairA, pairA2, pairA3, pairA4, pairA5, pairA6, pairA7, pairA8, pairA9, pairA10, TuplesKt.a("ops", ops != null ? ops : ""));
        String str = this.pageName;
        if (str != null) {
            hj.i.f64505a.D(str, mapM);
        }
    }

    private final void I(String moduleName, PostSubjectItem item) {
        String commentId;
        String value;
        String groupId;
        HashMap map = new HashMap();
        map.put("module_name", moduleName);
        CommentBean hotComment = item.getHotComment();
        String str = "";
        if (hotComment == null || (commentId = hotComment.getCommentId()) == null) {
            commentId = "";
        }
        map.put("comment_id", commentId);
        String postId = item.getPostId();
        if (postId == null) {
            postId = "";
        }
        map.put("post_id", postId);
        String ops = item.getOps();
        if (ops == null) {
            ops = "";
        }
        map.put("ops", ops);
        Group group = item.getGroup();
        if (group != null && (groupId = group.getGroupId()) != null) {
            str = groupId;
        }
        map.put("group_id", str);
        Media media = item.getMedia();
        if (media == null || (value = media.getMediaType()) == null) {
            value = MediaType.TEXT.getValue();
        }
        map.put("post_media_type", value);
        String str2 = this.pageFrom;
        if (str2 != null && str2.length() != 0) {
            String str3 = this.pageFrom;
            Intrinsics.e(str3);
            map.put(WebConstants.PAGE_FROM, str3);
        }
        String str4 = this.pageName;
        if (str4 != null) {
            com.transsion.baselib.helper.a.f43262a.i(str4, map);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit J() {
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit K() {
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit L() {
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit M() {
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit N() {
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit O() {
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit P() {
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit Q() {
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void R(PostBaseItemView postBaseItemView, CommentBean commentBean, PostSubjectItem postSubjectItem, View view) {
        postBaseItemView.F(commentBean, postSubjectItem);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit S(CommentBean commentBean, PostBaseItemView postBaseItemView, in.b value) {
        Intrinsics.h(value, "value");
        if (Intrinsics.c(value.a(), commentBean.getCommentId())) {
            lg.a.C0828a.r(lg.a.f68839a, "hotCommentLikeEvent", new String[]{"commentId=" + value.a()}, false, 4, null);
            commentBean.setLikeStatu(Boolean.valueOf(value.c()));
            commentBean.setLikeCnt(value.b());
            AppCompatTextView appCompatTextView = postBaseItemView.viewBinding.f75752t;
            if (appCompatTextView != null) {
                appCompatTextView.setText(value.b() == 0 ? "" : com.transsion.baseui.util.j.a(value.b()));
            }
            AppCompatImageView appCompatImageView = postBaseItemView.viewBinding.f75740h;
            if (appCompatImageView != null) {
                appCompatImageView.setEnabled(value.c());
            }
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void T(PostBaseItemView postBaseItemView, String str) {
        AppCompatTextView appCompatTextView = postBaseItemView.viewBinding.f75754v;
        Intrinsics.e(appCompatTextView);
        com.transsion.baseui.util.l.h(appCompatTextView, str, 3, null, 4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void U(PostSubjectItem postSubjectItem, PostBaseItemView postBaseItemView, boolean z10) {
        FirstFrame firstFrame;
        String url;
        String thumbnail;
        Cover cover;
        Media media = postSubjectItem.getMedia();
        if (media == null || (firstFrame = media.getFirstFrame()) == null || (url = firstFrame.getUrl()) == null) {
            return;
        }
        if (postSubjectItem.getBuiltIn()) {
            kotlinx.coroutines.k.d(kotlinx.coroutines.o0.a(kotlinx.coroutines.y0.b()), null, null, new PostBaseItemView$setPostVideo$2$1$1(postBaseItemView, url, null), 3, null);
            return;
        }
        ej.f.a aVar = ej.f.f61882a;
        Context context = postBaseItemView.getContext();
        Intrinsics.g(context, "getContext(...)");
        ej.f.b bVarM = aVar.m(context).g(url).c(z10 ? dk.a.b(280) : dk.a.b(162)).m(z10 ? dk.a.b(Sdk$SDKError.Reason.MRAID_JS_DOES_NOT_EXIST_VALUE) : dk.a.b(280));
        Media media2 = postSubjectItem.getMedia();
        if (media2 == null || (cover = media2.getCover()) == null || (thumbnail = cover.getThumbnail()) == null) {
            thumbnail = "";
        }
        ej.f.b bVarL = bVarM.l(thumbnail);
        ShapeableImageView ivCover = postBaseItemView.viewBinding.f75748p.f75531d;
        Intrinsics.g(ivCover, "ivCover");
        bVarL.d(ivCover);
    }

    private final void V() {
        AppCompatImageView appCompatImageView = this.viewBinding.f75742j;
        if (appCompatImageView != null) {
            appCompatImageView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.postdetail.ui.view.w0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    PostBaseItemView.W(this.f50127a, view);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void W(final PostBaseItemView postBaseItemView, View view) {
        FragmentActivity fragmentActivityE;
        String str;
        if (com.transsion.baseui.util.c.f43504a.a(view.getId(), 500L) || (fragmentActivityE = postBaseItemView.E()) == null || (str = postBaseItemView.mPostId) == null) {
            return;
        }
        String str2 = postBaseItemView.mAuthorId;
        String str3 = str2 == null ? "" : str2;
        Function0 function0 = postBaseItemView.onNegativeFeedbackClick;
        if (function0 != null) {
            function0.invoke();
        }
        NegativeFeedbackHelper negativeFeedbackHelper = NegativeFeedbackHelper.f48849a;
        LifecycleCoroutineScope lifecycleCoroutineScopeA = androidx.p009lifecycle.v.a(fragmentActivityE);
        String str4 = postBaseItemView.pageName;
        if (str4 == null) {
            str4 = "";
        }
        negativeFeedbackHelper.k(str, str3, fragmentActivityE, lifecycleCoroutineScopeA, str4, new Function0() { // from class: com.transsion.postdetail.ui.view.s0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return PostBaseItemView.X(this.f50116a);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit X(PostBaseItemView postBaseItemView) {
        Function0 function0 = postBaseItemView.onNegativeFeedbackSuccess;
        if (function0 != null) {
            function0.invoke();
        }
        return Unit.f67061a;
    }

    private final void Y(final Function0 onCLickComment, PostSubjectItem postSubjectItem) {
        this.viewBinding.E.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.postdetail.ui.view.t0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PostBaseItemView.Z(onCLickComment, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void Z(Function0 function0, View view) {
        function0.invoke();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b0(Function0 function0, View view) {
        function0.invoke();
    }

    private final void c0(final Function0 onCLickHeader, Function0 onClickNegativeFeedback) {
        this.viewBinding.f75758z.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.postdetail.ui.view.n0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PostBaseItemView.d0(onCLickHeader, view);
            }
        });
        this.viewBinding.f75737e.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.postdetail.ui.view.o0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PostBaseItemView.e0(onCLickHeader, view);
            }
        });
        this.viewBinding.f75755w.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.postdetail.ui.view.q0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PostBaseItemView.f0(onCLickHeader, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d0(Function0 function0, View view) {
        function0.invoke();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e0(Function0 function0, View view) {
        function0.invoke();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f0(Function0 function0, View view) {
        function0.invoke();
    }

    private final void g0(final Function0 onCLickLike, PostSubjectItem postSubjectItem) {
        this.viewBinding.G.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.postdetail.ui.view.z0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PostBaseItemView.h0(onCLickLike, view);
            }
        });
        if (postSubjectItem != null) {
            setBottomBarContent(postSubjectItem);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h0(Function0 function0, View view) {
        if (com.transsion.baseui.util.c.f43504a.a(view.getId(), 2000L)) {
            return;
        }
        function0.invoke();
    }

    private final void i0(final Function0 onCLickGroup, PostSubjectItem postSubjectItem) {
        this.viewBinding.f75747o.f75501f.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.postdetail.ui.view.e0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PostBaseItemView.j0(onCLickGroup, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j0(Function0 function0, View view) {
        function0.invoke();
    }

    private final void k0(final Function0 onCLickShare) {
        View view;
        so.w wVar = this.viewBinding;
        if (wVar == null || (view = wVar.H) == null) {
            return;
        }
        view.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.postdetail.ui.view.v0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                PostBaseItemView.l0(onCLickShare, view2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l0(Function0 function0, View view) {
        function0.invoke();
    }

    private final void m0(final Function0 onCLickSubject, PostSubjectItem postSubjectItem) {
        this.viewBinding.f75747o.f75497b.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.postdetail.ui.view.p0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PostBaseItemView.n0(onCLickSubject, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n0(Function0 function0, View view) {
        function0.invoke();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void setBottomBarClick$default(PostBaseItemView postBaseItemView, PostSubjectItem postSubjectItem, Function0 function0, Function0 function1, Function0 function2, Function0 function3, Function0 function4, Function0 function5, Function0 function6, Function0 function7, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: setBottomBarClick");
        }
        postBaseItemView.setBottomBarClick(postSubjectItem, (i11 & 2) != 0 ? new Function0() { // from class: com.transsion.postdetail.ui.view.a1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return PostBaseItemView.J();
            }
        } : function0, (i11 & 4) != 0 ? new Function0() { // from class: com.transsion.postdetail.ui.view.f0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return PostBaseItemView.K();
            }
        } : function1, (i11 & 8) != 0 ? new Function0() { // from class: com.transsion.postdetail.ui.view.g0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return PostBaseItemView.L();
            }
        } : function2, (i11 & 16) != 0 ? new Function0() { // from class: com.transsion.postdetail.ui.view.h0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return PostBaseItemView.M();
            }
        } : function3, (i11 & 32) != 0 ? new Function0() { // from class: com.transsion.postdetail.ui.view.i0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return PostBaseItemView.N();
            }
        } : function4, (i11 & 64) != 0 ? new Function0() { // from class: com.transsion.postdetail.ui.view.j0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return PostBaseItemView.O();
            }
        } : function5, (i11 & 128) != 0 ? new Function0() { // from class: com.transsion.postdetail.ui.view.k0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return PostBaseItemView.P();
            }
        } : function6, (i11 & 256) != 0 ? new Function0() { // from class: com.transsion.postdetail.ui.view.l0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return PostBaseItemView.Q();
            }
        } : function7);
    }

    private final void setBottomBarContent(PostSubjectItem item) {
        AppCompatTextView appCompatTextView = this.viewBinding.f75756x;
        Stat stat = item.getStat();
        Long likeCount = stat != null ? stat.getLikeCount() : null;
        String strA = "";
        appCompatTextView.setText((likeCount == null || likeCount.longValue() == 0) ? "" : com.transsion.baseui.util.j.a(likeCount.longValue()));
        if (Intrinsics.c(item.getHasLike(), Boolean.TRUE)) {
            appCompatTextView.setCompoundDrawablesWithIntrinsicBounds(R$drawable.ic_post_like_select, 0, 0, 0);
        } else {
            appCompatTextView.setCompoundDrawablesWithIntrinsicBounds(R$drawable.ic_post_like, 0, 0, 0);
        }
        Stat stat2 = item.getStat();
        Long commentCount = stat2 != null ? stat2.getCommentCount() : null;
        this.viewBinding.f75753u.setText((commentCount == null || commentCount.longValue() == 0) ? "" : com.transsion.baseui.util.j.a(commentCount.longValue()));
        Stat stat3 = item.getStat();
        Long shareCount = stat3 != null ? stat3.getShareCount() : null;
        AppCompatTextView appCompatTextView2 = this.viewBinding.f75757y;
        if (appCompatTextView2 != null) {
            if (shareCount != null && shareCount.longValue() != 0) {
                strA = com.transsion.baseui.util.j.a(shareCount.longValue());
            }
            appCompatTextView2.setText(strA);
        }
    }

    private final void setBottomDownLoadStatus(PostSubjectItem item) {
        Media media = item.getMedia();
        if (!Intrinsics.c(media != null ? media.getMediaType() : null, MediaType.VIDEO.getValue())) {
            Media media2 = item.getMedia();
            if (!Intrinsics.c(media2 != null ? media2.getMediaType() : null, MediaType.IMAGE.getValue())) {
                Media media3 = item.getMedia();
                if (!Intrinsics.c(media3 != null ? media3.getMediaType() : null, MediaType.IMAGE_SINGLE.getValue())) {
                    View view = this.viewBinding.F;
                    if (view != null) {
                        jg.c.g(view);
                    }
                    AppCompatImageView appCompatImageView = this.viewBinding.f75743k;
                    if (appCompatImageView != null) {
                        jg.c.g(appCompatImageView);
                        return;
                    }
                    return;
                }
            }
        }
        View view2 = this.viewBinding.F;
        if (view2 != null) {
            jg.c.k(view2);
        }
        AppCompatImageView appCompatImageView2 = this.viewBinding.f75743k;
        if (appCompatImageView2 != null) {
            jg.c.k(appCompatImageView2);
        }
    }

    public static /* synthetic */ void setHeaderPostData$default(PostBaseItemView postBaseItemView, PostSubjectItem postSubjectItem, boolean z10, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: setHeaderPostData");
        }
        if ((i11 & 2) != 0) {
            z10 = false;
        }
        postBaseItemView.setHeaderPostData(postSubjectItem, z10);
    }

    private final void setHotComment(final PostSubjectItem item) {
        String url;
        ShapeableImageView shapeableImageView;
        final CommentBean hotComment = item.getHotComment();
        String content = hotComment != null ? hotComment.getContent() : null;
        if (content == null || content.length() == 0 || (this instanceof PostDetailItemView)) {
            BLConstraintLayout bLConstraintLayout = this.viewBinding.f75734b;
            if (bLConstraintLayout != null) {
                jg.c.g(bLConstraintLayout);
                return;
            }
            return;
        }
        H(item);
        BLConstraintLayout bLConstraintLayout2 = this.viewBinding.f75734b;
        if (bLConstraintLayout2 != null) {
            jg.c.k(bLConstraintLayout2);
        }
        AppCompatTextView appCompatTextView = this.viewBinding.f75750r;
        if (appCompatTextView != null) {
            appCompatTextView.setText(content);
        }
        String avatarUrl = hotComment.getAvatarUrl();
        if (avatarUrl == null) {
            avatarUrl = "";
        }
        if (avatarUrl.length() > 0 && (shapeableImageView = this.viewBinding.f75738f) != null) {
            ej.f.a aVar = ej.f.f61882a;
            Context context = getContext();
            Intrinsics.g(context, "getContext(...)");
            aVar.m(context).g(avatarUrl).m(dk.a.b(20)).c(dk.a.b(20)).d(shapeableImageView);
        }
        List<Cover> imageList = hotComment.getImageList();
        if (imageList == null || imageList.isEmpty()) {
            ShapeableImageView shapeableImageView2 = this.viewBinding.f75735c;
            if (shapeableImageView2 != null) {
                jg.c.g(shapeableImageView2);
            }
        } else {
            ShapeableImageView shapeableImageView3 = this.viewBinding.f75735c;
            if (shapeableImageView3 != null) {
                shapeableImageView3.setVisibility(0);
                ej.f.a aVar2 = ej.f.f61882a;
                Context context2 = shapeableImageView3.getContext();
                Intrinsics.g(context2, "getContext(...)");
                ej.f.b bVarM = aVar2.m(context2);
                List<Cover> imageList2 = hotComment.getImageList();
                Intrinsics.e(imageList2);
                Cover cover = imageList2.get(0);
                if (cover == null || (url = cover.getUrl()) == null) {
                    url = "";
                }
                bVarM.g(url).m(dk.a.b(20)).c(dk.a.b(20)).d(shapeableImageView3);
            }
        }
        AppCompatTextView appCompatTextView2 = this.viewBinding.f75752t;
        if (appCompatTextView2 != null) {
            appCompatTextView2.setText(hotComment.getLikeCnt() != 0 ? com.transsion.baseui.util.j.a(hotComment.getLikeCnt()) : "");
        }
        AppCompatImageView appCompatImageView = this.viewBinding.f75740h;
        if (appCompatImageView != null) {
            appCompatImageView.setEnabled(Intrinsics.c(hotComment.getLikeStatu(), Boolean.TRUE));
        }
        View view = this.viewBinding.C;
        if (view != null) {
            view.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.postdetail.ui.view.x0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    PostBaseItemView.R(this.f50130a, hotComment, item, view2);
                }
            });
        }
        Context context3 = getContext();
        Intrinsics.f(context3, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity");
        Function1 function1 = new Function1() { // from class: com.transsion.postdetail.ui.view.y0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PostBaseItemView.S(hotComment, this, (in.b) obj);
            }
        };
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = in.b.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.observeEvent((AppCompatActivity) context3, name, Lifecycle.State.CREATED, kotlinx.coroutines.y0.c().q(), false, function1);
    }

    private final void setPostContent(PostSubjectItem item) {
        List<Image> image;
        setPostContentDes(item);
        Media media = item.getMedia();
        String mediaType = media != null ? media.getMediaType() : null;
        if (Intrinsics.c(mediaType, MediaType.TEXT.getValue())) {
            FrameLayout flContent = this.viewBinding.f75736d;
            Intrinsics.g(flContent, "flContent");
            jg.c.g(flContent);
        } else if (Intrinsics.c(mediaType, MediaType.IMAGE.getValue())) {
            FrameLayout flContent2 = this.viewBinding.f75736d;
            Intrinsics.g(flContent2, "flContent");
            Media media2 = item.getMedia();
            flContent2.setVisibility(((media2 == null || (image = media2.getImage()) == null) ? 0 : image.size()) > 0 ? 0 : 8);
            setPostImage(item);
        } else if (Intrinsics.c(mediaType, MediaType.AUDIO.getValue())) {
            FrameLayout flContent3 = this.viewBinding.f75736d;
            Intrinsics.g(flContent3, "flContent");
            jg.c.g(flContent3);
        } else if (Intrinsics.c(mediaType, MediaType.VIDEO.getValue())) {
            FrameLayout flContent4 = this.viewBinding.f75736d;
            Intrinsics.g(flContent4, "flContent");
            jg.c.k(flContent4);
            setPostVideo(item);
        } else {
            FrameLayout flContent5 = this.viewBinding.f75736d;
            Intrinsics.g(flContent5, "flContent");
            jg.c.g(flContent5);
        }
        setHotComment(item);
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0018 A[PHI: r4
  0x0018: PHI (r4v11 java.lang.String) = (r4v3 java.lang.String), (r4v12 java.lang.String) binds: [B:17:0x002b, B:8:0x0015] A[DONT_GENERATE, DONT_INLINE]] */
    private final void setPostContentDes(PostSubjectItem item) {
        String title;
        String content = item.getContent();
        final String str = "";
        if (content == null || content.length() == 0) {
            String title2 = item.getTitle();
            if (title2 == null || title2.length() == 0) {
                AppCompatTextView tvPostContent = this.viewBinding.f75754v;
                Intrinsics.g(tvPostContent, "tvPostContent");
                jg.c.g(tvPostContent);
                return;
            } else {
                title = item.getTitle();
                if (title != null) {
                    str = title;
                }
            }
        } else {
            title = item.getContent();
            if (title != null) {
                str = title;
            }
        }
        AppCompatTextView tvPostContent2 = this.viewBinding.f75754v;
        Intrinsics.g(tvPostContent2, "tvPostContent");
        jg.c.k(tvPostContent2);
        if (!this.isDetail) {
            this.viewBinding.f75754v.post(new Runnable() { // from class: com.transsion.postdetail.ui.view.r0
                @Override // java.lang.Runnable
                public final void run() {
                    PostBaseItemView.T(this.f50111a, str);
                }
            });
            return;
        }
        AppCompatTextView appCompatTextView = this.viewBinding.f75754v;
        Intrinsics.e(appCompatTextView);
        com.transsion.baseui.util.l.e(appCompatTextView, str, null);
    }

    private final void setPostImage(PostSubjectItem item) {
        List<Image> image;
        List<Image> image2;
        Media media = item.getMedia();
        int size = (media == null || (image2 = media.getImage()) == null) ? 0 : image2.size();
        CardView flVideo = this.viewBinding.f75748p.f75530c;
        Intrinsics.g(flVideo, "flVideo");
        jg.c.g(flVideo);
        if (size == 0) {
            NoScrollRecyclerView2 recyclerViewPost = this.viewBinding.f75749q;
            Intrinsics.g(recyclerViewPost, "recyclerViewPost");
            jg.c.g(recyclerViewPost);
            return;
        }
        NoScrollRecyclerView2 recyclerViewPost2 = this.viewBinding.f75749q;
        Intrinsics.g(recyclerViewPost2, "recyclerViewPost");
        jg.c.k(recyclerViewPost2);
        int i11 = 1;
        if (size != 1) {
            i11 = 2;
            if (size != 2 && size != 4) {
                i11 = 3;
            }
        }
        Media media2 = item.getMedia();
        if (media2 == null || (image = media2.getImage()) == null) {
            return;
        }
        Context context = getContext();
        Intrinsics.g(context, "getContext(...)");
        RoomPostContentImageAdapter roomPostContentImageAdapter = new RoomPostContentImageAdapter(i11, com.transsion.baseui.util.b.a(context), this.pageName, this.pageFrom, item);
        roomPostContentImageAdapter.R0(new a());
        NoScrollRecyclerView2 noScrollRecyclerView2 = this.viewBinding.f75749q;
        RecyclerView.s sVar = this.rvPool;
        if (sVar != null) {
            noScrollRecyclerView2.setRecycledViewPool(sVar);
        }
        noScrollRecyclerView2.setLayoutManager(new NpaGridLayoutManager(noScrollRecyclerView2.getContext(), i11));
        if (noScrollRecyclerView2.getItemDecorationCount() == 0) {
            noScrollRecyclerView2.addItemDecoration(new ig.a(dk.a.b(3), dk.a.b(3), 0, 0));
        }
        noScrollRecyclerView2.setAdapter(roomPostContentImageAdapter);
        roomPostContentImageAdapter.n1(image);
    }

    private final void setPostVideo(final PostSubjectItem item) {
        int i11;
        Video video;
        Integer duration;
        List<Video> video2;
        Video video3;
        Integer height;
        FirstFrame firstFrame;
        Integer height2;
        Cover cover;
        Integer height3;
        List<Video> video4;
        Video video5;
        Integer width;
        FirstFrame firstFrame2;
        Integer width2;
        Cover cover2;
        Integer width3;
        NoScrollRecyclerView2 recyclerViewPost = this.viewBinding.f75749q;
        Intrinsics.g(recyclerViewPost, "recyclerViewPost");
        jg.c.g(recyclerViewPost);
        CardView flVideo = this.viewBinding.f75748p.f75530c;
        Intrinsics.g(flVideo, "flVideo");
        jg.c.k(flVideo);
        ShapeableImageView ivCover = this.viewBinding.f75748p.f75531d;
        Intrinsics.g(ivCover, "ivCover");
        jg.c.k(ivCover);
        BLTextView tvVideoDuration = this.viewBinding.f75748p.f75533f;
        Intrinsics.g(tvVideoDuration, "tvVideoDuration");
        jg.c.k(tvVideoDuration);
        AppCompatImageView ivVideoPlay = this.viewBinding.f75748p.f75532e;
        Intrinsics.g(ivVideoPlay, "ivVideoPlay");
        jg.c.k(ivVideoPlay);
        FrameLayout flPlayer = this.viewBinding.f75748p.f75529b;
        Intrinsics.g(flPlayer, "flPlayer");
        int iIntValue = 0;
        if (flPlayer.getChildCount() != 0) {
            View childAt = this.viewBinding.f75748p.f75529b.getChildAt(0);
            PostFeedVideoView postFeedVideoView = childAt instanceof PostFeedVideoView ? (PostFeedVideoView) childAt : null;
            if (postFeedVideoView != null) {
                postFeedVideoView.removePlayer();
            }
        }
        Media media = item.getMedia();
        int iIntValue2 = (media == null || (cover2 = media.getCover()) == null || (width3 = cover2.getWidth()) == null) ? 0 : width3.intValue();
        Media media2 = item.getMedia();
        int iIntValue3 = (media2 == null || (firstFrame2 = media2.getFirstFrame()) == null || (width2 = firstFrame2.getWidth()) == null) ? 0 : width2.intValue();
        Media media3 = item.getMedia();
        int iIntValue4 = (media3 == null || (video4 = media3.getVideo()) == null || (video5 = (Video) CollectionsKt.k0(video4)) == null || (width = video5.getWidth()) == null) ? 0 : width.intValue();
        if (iIntValue2 > 0) {
            i11 = iIntValue2;
        } else if (iIntValue3 > 0) {
            i11 = iIntValue3;
        } else {
            i11 = iIntValue4 > 0 ? iIntValue4 : 0;
        }
        Media media4 = item.getMedia();
        int iIntValue5 = (media4 == null || (cover = media4.getCover()) == null || (height3 = cover.getHeight()) == null) ? 0 : height3.intValue();
        Media media5 = item.getMedia();
        int iIntValue6 = (media5 == null || (firstFrame = media5.getFirstFrame()) == null || (height2 = firstFrame.getHeight()) == null) ? 0 : height2.intValue();
        Media media6 = item.getMedia();
        int iIntValue7 = (media6 == null || (video2 = media6.getVideo()) == null || (video3 = (Video) CollectionsKt.k0(video2)) == null || (height = video3.getHeight()) == null) ? 0 : height.intValue();
        if (iIntValue2 <= 0) {
            if (iIntValue3 > 0) {
                iIntValue5 = iIntValue6;
            } else {
                iIntValue5 = iIntValue4 > 0 ? iIntValue7 : 0;
            }
        }
        final boolean z10 = iIntValue5 > i11;
        ViewGroup.LayoutParams layoutParams = this.viewBinding.f75748p.f75530c.getLayoutParams();
        Intrinsics.f(layoutParams, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        int iB = i11 / iIntValue5 < 1 ? this.rootWidth - dk.a.b(38) : this.rootWidth;
        marginLayoutParams.width = iB;
        int i12 = (iIntValue5 * iB) / i11;
        if (i12 > (iB * 36) / 26) {
            i12 = (iB * 36) / 26;
        }
        marginLayoutParams.height = i12;
        this.viewBinding.f75748p.f75530c.setLayoutParams(marginLayoutParams);
        this.viewBinding.f75748p.f75530c.post(new Runnable() { // from class: com.transsion.postdetail.ui.view.m0
            @Override // java.lang.Runnable
            public final void run() {
                PostBaseItemView.U(item, this, z10);
            }
        });
        BLTextView bLTextView = this.viewBinding.f75748p.f75533f;
        Media media7 = item.getMedia();
        List<Video> video6 = media7 != null ? media7.getVideo() : null;
        if ((video6 != null ? video6.size() : 0) <= 0) {
            Intrinsics.e(bLTextView);
            jg.c.g(bLTextView);
            return;
        }
        if (video6 != null && (video = video6.get(0)) != null && (duration = video.getDuration()) != null) {
            iIntValue = duration.intValue();
        }
        if (iIntValue <= 0) {
            Intrinsics.e(bLTextView);
            jg.c.g(bLTextView);
        } else {
            bLTextView.setText(TimeUtilKt.o(iIntValue));
            Intrinsics.e(bLTextView);
            jg.c.k(bLTextView);
        }
    }

    protected final FragmentActivity E() {
        for (Context context = getContext(); context instanceof ContextWrapper; context = ((ContextWrapper) context).getBaseContext()) {
            if (context instanceof FragmentActivity) {
                return (FragmentActivity) context;
            }
        }
        return null;
    }

    protected void a0(final Function0 onClickDownload, PostSubjectItem postSubjectItem) {
        Intrinsics.h(onClickDownload, "onClickDownload");
        View view = this.viewBinding.F;
        if (view != null) {
            view.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.postdetail.ui.view.u0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    PostBaseItemView.b0(onClickDownload, view2);
                }
            });
        }
    }

    protected final int getDp16() {
        return this.dp16;
    }

    protected final int getDp32() {
        return this.dp32;
    }

    protected final int getDp36() {
        return this.dp36;
    }

    public final Function0<Unit> getOnNegativeFeedbackClick() {
        return this.onNegativeFeedbackClick;
    }

    public final Function0<Unit> getOnNegativeFeedbackSuccess() {
        return this.onNegativeFeedbackSuccess;
    }

    protected final String getPageFrom() {
        return this.pageFrom;
    }

    protected final String getPageName() {
        return this.pageName;
    }

    protected final so.w getViewBinding() {
        return this.viewBinding;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        G();
    }

    public final void refreshLike(boolean like, PostSubjectItem item) {
        Intrinsics.h(item, "item");
        AppCompatTextView appCompatTextView = this.viewBinding.f75756x;
        Stat stat = item.getStat();
        Long likeCount = stat != null ? stat.getLikeCount() : null;
        appCompatTextView.setText((likeCount == null || likeCount.longValue() == 0) ? "" : com.transsion.baseui.util.j.a(likeCount.longValue()));
        if (like) {
            appCompatTextView.setCompoundDrawablesWithIntrinsicBounds(R$drawable.ic_post_like_select, 0, 0, 0);
        } else {
            appCompatTextView.setCompoundDrawablesWithIntrinsicBounds(R$drawable.ic_post_like, 0, 0, 0);
        }
    }

    public final void setBottomBarClick(PostSubjectItem postSubjectItem, Function0<Unit> onCLickLike, Function0<Unit> onCLickComment, Function0<Unit> onCLickShare, Function0<Unit> onCLickSubject, Function0<Unit> onCLickGroup, Function0<Unit> onClickDownload, Function0<Unit> onCLickHeader, Function0<Unit> onClickNegativeFeedback) {
        Intrinsics.h(onCLickLike, "onCLickLike");
        Intrinsics.h(onCLickComment, "onCLickComment");
        Intrinsics.h(onCLickShare, "onCLickShare");
        Intrinsics.h(onCLickSubject, "onCLickSubject");
        Intrinsics.h(onCLickGroup, "onCLickGroup");
        Intrinsics.h(onClickDownload, "onClickDownload");
        Intrinsics.h(onCLickHeader, "onCLickHeader");
        Intrinsics.h(onClickNegativeFeedback, "onClickNegativeFeedback");
        g0(onCLickLike, postSubjectItem);
        Y(onCLickComment, postSubjectItem);
        k0(onCLickShare);
        a0(onClickDownload, postSubjectItem);
        m0(onCLickSubject, postSubjectItem);
        i0(onCLickGroup, postSubjectItem);
        c0(onCLickHeader, onClickNegativeFeedback);
    }

    public void setBottomRoomModuleData(PostSubjectItem item) {
        String avatar;
        Cover cover;
        Intrinsics.h(item, "item");
        AppCompatTextView appCompatTextView = this.viewBinding.f75747o.f75502g;
        Group group = item.getGroup();
        String url = null;
        appCompatTextView.setText(group != null ? group.getName() : null);
        if (item.getBuiltIn()) {
            kotlinx.coroutines.k.d(kotlinx.coroutines.o0.a(kotlinx.coroutines.y0.b()), null, null, new AnonymousClass1(item, this, null), 3, null);
            return;
        }
        ej.f.a aVar = ej.f.f61882a;
        Context context = getContext();
        Intrinsics.g(context, "getContext(...)");
        ej.f.b bVarM = aVar.m(context);
        Group group2 = item.getGroup();
        if (group2 == null || (avatar = group2.getAvatar()) == null) {
            Group group3 = item.getGroup();
            if (group3 != null && (cover = group3.getCover()) != null) {
                url = cover.getUrl();
            }
            avatar = url == null ? "" : url;
        }
        ej.f.b bVarC = bVarM.g(avatar).m(this.dp32).c(this.dp32);
        ShapeableImageView ivRoomCover = this.viewBinding.f75747o.f75498c;
        Intrinsics.g(ivRoomCover, "ivRoomCover");
        bVarC.d(ivRoomCover);
    }

    public void setBottomSubjectAndRoomVisibility(boolean isShowSubject, boolean isShowRoom) {
        if (ak.g.f639a.b()) {
            BLLinearLayout bLLinearLayoutB = this.viewBinding.f75747o.getRoot();
            Intrinsics.g(bLLinearLayoutB, "getRoot(...)");
            bLLinearLayoutB.setVisibility(isShowRoom ? 0 : 8);
            ConstraintLayout clSubjectContent = this.viewBinding.f75747o.f75497b;
            Intrinsics.g(clSubjectContent, "clSubjectContent");
            jg.c.g(clSubjectContent);
            View vSubjectRoomLine = this.viewBinding.f75747o.f75508m;
            Intrinsics.g(vSubjectRoomLine, "vSubjectRoomLine");
            jg.c.g(vSubjectRoomLine);
            LinearLayout llRoomTag = this.viewBinding.f75747o.f75501f;
            Intrinsics.g(llRoomTag, "llRoomTag");
            llRoomTag.setVisibility(isShowRoom ? 0 : 8);
            return;
        }
        if (isShowSubject) {
            BLLinearLayout bLLinearLayoutB2 = this.viewBinding.f75747o.getRoot();
            Intrinsics.g(bLLinearLayoutB2, "getRoot(...)");
            jg.c.k(bLLinearLayoutB2);
            ConstraintLayout clSubjectContent2 = this.viewBinding.f75747o.f75497b;
            Intrinsics.g(clSubjectContent2, "clSubjectContent");
            jg.c.k(clSubjectContent2);
            View vSubjectRoomLine2 = this.viewBinding.f75747o.f75508m;
            Intrinsics.g(vSubjectRoomLine2, "vSubjectRoomLine");
            vSubjectRoomLine2.setVisibility(isShowRoom ? 0 : 8);
            LinearLayout llRoomTag2 = this.viewBinding.f75747o.f75501f;
            Intrinsics.g(llRoomTag2, "llRoomTag");
            llRoomTag2.setVisibility(isShowRoom ? 0 : 8);
            return;
        }
        BLLinearLayout bLLinearLayoutB3 = this.viewBinding.f75747o.getRoot();
        Intrinsics.g(bLLinearLayoutB3, "getRoot(...)");
        bLLinearLayoutB3.setVisibility(isShowRoom ? 0 : 8);
        ConstraintLayout clSubjectContent3 = this.viewBinding.f75747o.f75497b;
        Intrinsics.g(clSubjectContent3, "clSubjectContent");
        jg.c.g(clSubjectContent3);
        View vSubjectRoomLine3 = this.viewBinding.f75747o.f75508m;
        Intrinsics.g(vSubjectRoomLine3, "vSubjectRoomLine");
        jg.c.g(vSubjectRoomLine3);
        LinearLayout llRoomTag3 = this.viewBinding.f75747o.f75501f;
        Intrinsics.g(llRoomTag3, "llRoomTag");
        llRoomTag3.setVisibility(isShowRoom ? 0 : 8);
    }

    public void setBottomSubjectModuleData(PostSubjectItem item) {
        String url;
        String thumbnail;
        Cover cover;
        Cover cover2;
        String title;
        Subject subject;
        String genre;
        List listS0;
        String str;
        Intrinsics.h(item, "item");
        String str2 = "";
        if (item.getBuiltIn()) {
            kotlinx.coroutines.k.d(kotlinx.coroutines.o0.a(kotlinx.coroutines.y0.b()), null, null, new C10731(item, this, null), 3, null);
        } else {
            ej.f.a aVar = ej.f.f61882a;
            Context context = getContext();
            Intrinsics.g(context, "getContext(...)");
            ej.f.b bVarM = aVar.m(context);
            Subject subject2 = item.getSubject();
            if (subject2 == null || (cover2 = subject2.getCover()) == null || (url = cover2.getUrl()) == null) {
                url = "";
            }
            ej.f.b bVarC = bVarM.g(url).m(this.dp32).c(this.dp32);
            Subject subject3 = item.getSubject();
            if (subject3 == null || (cover = subject3.getCover()) == null || (thumbnail = cover.getThumbnail()) == null) {
                thumbnail = "";
            }
            ej.f.b bVarL = bVarC.l(thumbnail);
            ShapeableImageView ivSubjectCover = this.viewBinding.f75747o.f75499d;
            Intrinsics.g(ivSubjectCover, "ivSubjectCover");
            bVarL.d(ivSubjectCover);
        }
        AppCompatTextView appCompatTextView = this.viewBinding.f75747o.f75505j;
        Subject subject4 = item.getSubject();
        if (subject4 == null || (title = subject4.getTitle()) == null) {
            title = "";
        }
        appCompatTextView.setText(title);
        Subject subject5 = item.getSubject();
        this.viewBinding.f75747o.f75500e.setImageResource(com.transsion.moviedetailapi.g.a(subject5 != null ? subject5.getSubjectType() : null));
        Subject subject6 = item.getSubject();
        Date dateL = com.blankj.utilcode.util.c0.l(subject6 != null ? subject6.getReleaseDate() : null, "yyyy-MM-dd");
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(dateL);
        this.viewBinding.f75747o.f75503h.setText(String.valueOf(calendar.get(1)));
        Subject subject7 = item.getSubject();
        String genre2 = subject7 != null ? subject7.getGenre() : null;
        if (genre2 != null && genre2.length() != 0 && (subject = item.getSubject()) != null && (genre = subject.getGenre()) != null && (listS0 = StringsKt.S0(genre, new String[]{", "}, false, 0, 6, null)) != null && (str = (String) CollectionsKt.k0(listS0)) != null) {
            str2 = str;
        }
        AppCompatTextView tvSubjectGenre = this.viewBinding.f75747o.f75504i;
        Intrinsics.g(tvSubjectGenre, "tvSubjectGenre");
        tvSubjectGenre.setVisibility(str2.length() > 0 ? 0 : 8);
        AppCompatTextView tvSubjectGenre2 = this.viewBinding.f75747o.f75504i;
        Intrinsics.g(tvSubjectGenre2, "tvSubjectGenre");
        tvSubjectGenre2.setVisibility(str2.length() > 0 ? 0 : 8);
        this.viewBinding.f75747o.f75504i.setText(str2);
    }

    public final void setCommentCount(long count) {
        AppCompatTextView appCompatTextView;
        so.w wVar = this.viewBinding;
        if (wVar == null || (appCompatTextView = wVar.f75753u) == null) {
            return;
        }
        appCompatTextView.setText(count == 0 ? "" : com.transsion.baseui.util.j.a(count));
    }

    public final void setCommentViewModel(CommentViewModel viewModel) {
        this.mCommentViewModel = viewModel;
    }

    public final void setContentMaxLine() {
        this.viewBinding.f75754v.setMaxLines(Integer.MAX_VALUE);
    }

    public final void setData(PostSubjectItem item) {
        Intrinsics.h(item, "item");
        this.mPostId = item.getPostId();
        User user = item.getUser();
        this.mAuthorId = user != null ? user.getUserId() : null;
        setBottomDownLoadStatus(item);
        setHeaderData(item);
        setPostContent(item);
        setSubjectAndRoomContent(item);
        setBottomBarContent(item);
        V();
    }

    public abstract void setHeaderData(PostSubjectItem item);

    public void setHeaderPostData(PostSubjectItem item, boolean showDistance) {
        String avatar;
        String poiName;
        Long lX;
        String nickname;
        Intrinsics.h(item, "item");
        String str = "";
        if (item.getBuiltIn()) {
            kotlinx.coroutines.k.d(kotlinx.coroutines.o0.a(kotlinx.coroutines.y0.b()), null, null, new C10741(item, this, null), 3, null);
        } else {
            ej.f.a aVar = ej.f.f61882a;
            Context context = getContext();
            Intrinsics.g(context, "getContext(...)");
            ej.f.b bVarM = aVar.m(context);
            User user = item.getUser();
            if (user == null || (avatar = user.getAvatar()) == null) {
                avatar = "";
            }
            ej.f.b bVarC = bVarM.g(avatar).m(this.dp16).c(this.dp16);
            ShapeableImageView ivUserAvatar2 = this.viewBinding.f75746n;
            Intrinsics.g(ivUserAvatar2, "ivUserAvatar2");
            bVarC.d(ivUserAvatar2);
        }
        AppCompatTextView appCompatTextView = this.viewBinding.f75758z;
        User user2 = item.getUser();
        if (user2 != null && (nickname = user2.getNickname()) != null) {
            str = nickname;
        }
        appCompatTextView.setText(str);
        AppCompatTextView appCompatTextView2 = this.viewBinding.f75755w;
        String createdAt = item.getCreatedAt();
        appCompatTextView2.setText(com.transsion.postdetail.util.n.b((createdAt == null || (lX = StringsKt.x(createdAt)) == null) ? 0L : lX.longValue()));
        if (this.isDetail) {
            AppCompatImageView appCompatImageView = this.viewBinding.f75742j;
            if (appCompatImageView != null) {
                jg.c.g(appCompatImageView);
            }
        } else {
            AppCompatImageView appCompatImageView2 = this.viewBinding.f75742j;
            if (appCompatImageView2 != null) {
                jg.c.k(appCompatImageView2);
            }
        }
        View vLocationLine = this.viewBinding.D;
        Intrinsics.g(vLocationLine, "vLocationLine");
        jg.c.g(vLocationLine);
        String poiName2 = item.getPoiName();
        if (poiName2 == null || poiName2.length() == 0) {
            AppCompatImageView ivLocationIcon = this.viewBinding.f75741i;
            Intrinsics.g(ivLocationIcon, "ivLocationIcon");
            jg.c.g(ivLocationIcon);
            AppCompatTextView tvUserNameOrLocation = this.viewBinding.A;
            Intrinsics.g(tvUserNameOrLocation, "tvUserNameOrLocation");
            jg.c.g(tvUserNameOrLocation);
            return;
        }
        AppCompatTextView tvUserNameOrLocation2 = this.viewBinding.A;
        Intrinsics.g(tvUserNameOrLocation2, "tvUserNameOrLocation");
        jg.c.k(tvUserNameOrLocation2);
        AppCompatImageView ivLocationIcon2 = this.viewBinding.f75741i;
        Intrinsics.g(ivLocationIcon2, "ivLocationIcon");
        jg.c.k(ivLocationIcon2);
        String distanceStr = item.getDistanceStr();
        if (distanceStr == null || distanceStr.length() == 0 || !showDistance) {
            poiName = item.getPoiName();
        } else {
            poiName = item.getPoiName() + " " + item.getDistanceStr();
        }
        this.viewBinding.A.setText(poiName);
    }

    public final void setIsDetail(boolean isDetail) {
        this.isDetail = isDetail;
    }

    public final void setOnNegativeFeedbackClick(Function0<Unit> function0) {
        this.onNegativeFeedbackClick = function0;
    }

    public final void setOnNegativeFeedbackSuccess(Function0<Unit> function0) {
        this.onNegativeFeedbackSuccess = function0;
    }

    public final void setPage(String pageName, String pageFrom) {
        this.pageName = pageName;
        this.pageFrom = pageFrom;
    }

    protected final void setPageFrom(String str) {
        this.pageFrom = str;
    }

    protected final void setPageName(String str) {
        this.pageName = str;
    }

    public final void setRecycledViewPool(RecyclerView.s rvPool) {
        Intrinsics.h(rvPool, "rvPool");
        this.rvPool = rvPool;
    }

    public abstract void setSubjectAndRoomContent(PostSubjectItem item);
}
