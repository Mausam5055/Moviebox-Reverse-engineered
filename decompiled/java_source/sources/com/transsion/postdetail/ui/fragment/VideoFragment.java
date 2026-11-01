package com.transsion.postdetail.ui.fragment;

import android.content.Context;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.recyclerview.widget.RecyclerView;
import com.blankj.utilcode.util.Utils;
import com.chad.library.adapter.base.loadmore.LoadMoreStatus;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.MBridgeConstans;
import com.therouter.TheRouter;
import com.tn.lib.view.DefaultView;
import com.tn.lib.widget.R$mipmap;
import com.tn.lib.widget.TnTextView;
import com.tn.lib.widget.dialog.TRDialog;
import com.tn.lib.widget.dialog.TRDialogListener;
import com.transsion.ad.bidding.nativead.BiddingListManager;
import com.transsion.ad.bidding.nativead.BiddingNativeManager;
import com.transsion.baseui.fragment.BaseFragment;
import com.transsion.memberapi.IMemberApi;
import com.transsion.moviedetailapi.SubjectType;
import com.transsion.moviedetailapi.bean.Media;
import com.transsion.moviedetailapi.bean.Pager;
import com.transsion.moviedetailapi.bean.PostItemType;
import com.transsion.moviedetailapi.bean.PostSubjectBean;
import com.transsion.moviedetailapi.bean.PostSubjectItem;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.moviedetailapi.bean.User;
import com.transsion.moviedetailapi.bean.Video;
import com.transsion.ninegridview.helper.FileHelper;
import com.transsion.player.config.RenderType;
import com.transsion.player.ui.ORPlayerView;
import com.transsion.postdetail.R$string;
import com.transsion.postdetail.control.VideoPagerChangeControl;
import com.transsion.postdetail.helper.ImmVideoHelper;
import com.transsion.postdetail.helper.NegativeFeedbackHelper;
import com.transsion.postdetail.ui.fragment.preload.VideoDataLoader;
import com.transsion.postdetail.ui.fragment.preload.VideoImmersiveDataLoaderV2;
import com.transsion.postdetail.ui.view.ImmVideoLoadMoreView;
import com.transsion.postdetail.ui.view.ImmVideoNoNetworkView;
import com.transsion.postdetail.util.PostSaveHelper;
import com.transsion.postdetail.viewmodel.PostDetailViewModel;
import com.transsion.room.api.IAudioApi;
import com.transsion.shorttv.base.pager.PagerLayoutManager;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000à\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0015\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010 \n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 ¡\u00012\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u00032\u00020\u0004:\u0002¢\u0001B\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\b\u0010\u0006J\u000f\u0010\t\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\t\u0010\u0006J\u000f\u0010\n\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\n\u0010\u0006J\u000f\u0010\u000b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u000b\u0010\u0006J\u000f\u0010\f\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\f\u0010\u0006J\u0017\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u0011\u0010\u0006J\u0017\u0010\u0014\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u0012H\u0002¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u0016\u0010\u0006J\u000f\u0010\u0017\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u0017\u0010\u0006J\u0019\u0010\u001b\u001a\u0004\u0018\u00010\u001a2\u0006\u0010\u0019\u001a\u00020\u0018H\u0002¢\u0006\u0004\b\u001b\u0010\u001cJ\u0019\u0010\u001d\u001a\u0004\u0018\u00010\u001a2\u0006\u0010\u0019\u001a\u00020\u0018H\u0002¢\u0006\u0004\b\u001d\u0010\u001cJ\u000f\u0010\u001e\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u001e\u0010\u0006J\u000f\u0010\u001f\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u001f\u0010\u0006J\u000f\u0010 \u001a\u00020\u0007H\u0002¢\u0006\u0004\b \u0010\u0006J\u000f\u0010!\u001a\u00020\u0007H\u0002¢\u0006\u0004\b!\u0010\u0006J\u000f\u0010\"\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\"\u0010\u0006J\u0017\u0010%\u001a\u00020\u00072\u0006\u0010$\u001a\u00020#H\u0002¢\u0006\u0004\b%\u0010&J\u0017\u0010)\u001a\u00020(2\u0006\u0010'\u001a\u00020\rH\u0002¢\u0006\u0004\b)\u0010*J\u000f\u0010+\u001a\u00020\u0007H\u0002¢\u0006\u0004\b+\u0010\u0006J\u000f\u0010,\u001a\u00020\u0007H\u0002¢\u0006\u0004\b,\u0010\u0006J\u0017\u0010/\u001a\u00020\u00072\u0006\u0010.\u001a\u00020-H\u0002¢\u0006\u0004\b/\u00100J\u000f\u00101\u001a\u00020\u0007H\u0002¢\u0006\u0004\b1\u0010\u0006J\u000f\u00102\u001a\u00020\u0007H\u0002¢\u0006\u0004\b2\u0010\u0006J\u0017\u00105\u001a\u00020\u00022\u0006\u00104\u001a\u000203H\u0016¢\u0006\u0004\b5\u00106J\u0019\u00109\u001a\u00020\u00072\b\u00108\u001a\u0004\u0018\u000107H\u0016¢\u0006\u0004\b9\u0010:J\u000f\u0010<\u001a\u00020;H\u0016¢\u0006\u0004\b<\u0010=J!\u0010?\u001a\u00020\u00072\u0006\u0010>\u001a\u00020\u001a2\b\u00108\u001a\u0004\u0018\u000107H\u0016¢\u0006\u0004\b?\u0010@J!\u0010A\u001a\u00020\u00072\u0006\u0010>\u001a\u00020\u001a2\b\u00108\u001a\u0004\u0018\u000107H\u0016¢\u0006\u0004\bA\u0010@J\u000f\u0010B\u001a\u00020\u0007H\u0016¢\u0006\u0004\bB\u0010\u0006J\u000f\u0010C\u001a\u00020\u0007H\u0016¢\u0006\u0004\bC\u0010\u0006J\u000f\u0010D\u001a\u00020\u0007H\u0016¢\u0006\u0004\bD\u0010\u0006J\u0017\u0010F\u001a\u00020\u00072\u0006\u0010E\u001a\u00020(H\u0016¢\u0006\u0004\bF\u0010GJ\u000f\u0010H\u001a\u00020\u0007H\u0016¢\u0006\u0004\bH\u0010\u0006J\u000f\u0010I\u001a\u00020\u0007H\u0016¢\u0006\u0004\bI\u0010\u0006J\u000f\u0010J\u001a\u00020\u0007H\u0016¢\u0006\u0004\bJ\u0010\u0006J\u0017\u0010L\u001a\u00020\u00072\u0006\u0010K\u001a\u000207H\u0016¢\u0006\u0004\bL\u0010:J\u000f\u0010M\u001a\u00020\u0007H\u0016¢\u0006\u0004\bM\u0010\u0006J\u0017\u0010P\u001a\u00020\u00072\u0006\u0010O\u001a\u00020NH\u0016¢\u0006\u0004\bP\u0010QJ\u0017\u0010R\u001a\u00020\u00072\u0006\u0010O\u001a\u00020NH\u0016¢\u0006\u0004\bR\u0010QJ1\u0010X\u001a\u00020\u00072\u0006\u0010S\u001a\u00020#2\u0010\u0010U\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\r0T2\u0006\u0010W\u001a\u00020VH\u0016¢\u0006\u0004\bX\u0010YR\u0016\u0010Z\u001a\u00020\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bZ\u0010[R\u0016\u0010\\\u001a\u00020\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\\\u0010[R\u0016\u0010]\u001a\u00020#8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b]\u0010^R\u0016\u0010_\u001a\u00020(8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b_\u0010`R$\u0010a\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\ba\u0010[\u001a\u0004\bb\u0010c\"\u0004\bd\u0010\u0010R\u0016\u0010e\u001a\u00020\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\be\u0010[R\u0016\u0010f\u001a\u00020#8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bf\u0010^R\u0016\u0010g\u001a\u00020(8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bg\u0010`R\u0016\u0010h\u001a\u00020\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bh\u0010[R\u0018\u0010i\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bi\u0010[R\u001b\u0010o\u001a\u00020j8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bk\u0010l\u001a\u0004\bm\u0010nR\u001d\u0010t\u001a\u0004\u0018\u00010p8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bq\u0010l\u001a\u0004\br\u0010sR\u0018\u0010v\u001a\u0004\u0018\u00010u8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bv\u0010wR\u0018\u0010y\u001a\u0004\u0018\u00010x8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\by\u0010zR\u0018\u0010|\u001a\u0004\u0018\u00010{8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b|\u0010}R\u0019\u0010\u007f\u001a\u0004\u0018\u00010~8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u007f\u0010\u0080\u0001R\u001c\u0010\u0082\u0001\u001a\u0005\u0018\u00010\u0081\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0082\u0001\u0010\u0083\u0001R\u0018\u0010\u0084\u0001\u001a\u00020(8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0084\u0001\u0010`R\u0018\u0010\u0085\u0001\u001a\u00020(8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0085\u0001\u0010`R\u0018\u0010\u0086\u0001\u001a\u00020(8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0086\u0001\u0010`R\u0018\u0010\u0087\u0001\u001a\u00020(8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0087\u0001\u0010`R/\u0010\u008a\u0001\u001a\u0018\u0012\u0004\u0012\u00020-\u0018\u00010\u0088\u0001j\u000b\u0012\u0004\u0012\u00020-\u0018\u0001`\u0089\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008a\u0001\u0010\u008b\u0001R\u0018\u0010\u008c\u0001\u001a\u00020(8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u008c\u0001\u0010`R\u0018\u0010\u008d\u0001\u001a\u00020(8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u008d\u0001\u0010`R\u0018\u0010\u008e\u0001\u001a\u00020#8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u008e\u0001\u0010^R\u0018\u0010\u008f\u0001\u001a\u00020#8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u008f\u0001\u0010^R\u0018\u0010\u0090\u0001\u001a\u00020(8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0090\u0001\u0010`R\u0018\u0010\u0091\u0001\u001a\u00020#8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0091\u0001\u0010^R#\u0010\u0093\u0001\u001a\t\u0012\u0004\u0012\u00020\r0\u0092\u00018\u0006¢\u0006\u0010\n\u0006\b\u0093\u0001\u0010\u0094\u0001\u001a\u0006\b\u0095\u0001\u0010\u0096\u0001R*\u0010\u0098\u0001\u001a\u00030\u0097\u00018\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\b\u0098\u0001\u0010\u0099\u0001\u001a\u0006\b\u009a\u0001\u0010\u009b\u0001\"\u0006\b\u009c\u0001\u0010\u009d\u0001R\u001c\u0010\u009f\u0001\u001a\u0005\u0018\u00010\u009e\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009f\u0001\u0010 \u0001¨\u0006£\u0001"}, d2 = {"Lcom/transsion/postdetail/ui/fragment/VideoFragment;", "Lcom/transsion/baseui/fragment/BaseFragment;", "Lso/r;", "Lzm/e;", "Lcom/tn/lib/widget/dialog/TRDialogListener;", "<init>", "()V", "", "initPlayer", "initAdapter", "initViewModel", "initBack", "initAudioListener", "", "postId", "removeVideoByPostId", "(Ljava/lang/String;)V", "observeRemoveVideo", "Lcom/transsion/moviedetailapi/bean/PostSubjectBean;", "subjectBean", "updateData", "(Lcom/transsion/moviedetailapi/bean/PostSubjectBean;)V", "showNotNetError", "showEmpty", "Landroid/content/Context;", "context", "Landroid/view/View;", "getEmptyView", "(Landroid/content/Context;)Landroid/view/View;", "getNotNetErrorView", "hideProgress", "showProgress", "loadMore", "loadData", "doLoadData", "", "it", "scrollToPosition", "(I)V", "itemType", "", "checkItemType", "(Ljava/lang/String;)Z", "localLogPause", "initAd", "Lcom/transsion/moviedetailapi/bean/PostSubjectItem;", WebConstants.FIELD_ITEM, "setPTParams", "(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V", "initNonAd", "showSettingDialog", "Landroid/view/LayoutInflater;", "inflater", "getViewBinding", "(Landroid/view/LayoutInflater;)Lso/r;", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Lhj/b;", "newLogViewConfig", "()Lhj/b;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "initView", "(Landroid/view/View;Landroid/os/Bundle;)V", "initData", "lazyLoadData", "onResume", "onPause", "hidden", "onHiddenChanged", "(Z)V", "logPause", "logResume", "onDestroy", "outState", "onSaveInstanceState", "onMemberStateChange", "Lcom/tn/lib/widget/dialog/TRDialog;", "dialog", "onLeftButtonClick", "(Lcom/tn/lib/widget/dialog/TRDialog;)V", "onRightButtonClick", "requestCode", "", "permissions", "", "grantResults", "onRequestPermissionsResult", "(I[Ljava/lang/String;[I)V", "mPostId", "Ljava/lang/String;", "mItemType", "mTabId", "I", "fromComment", "Z", "tran_ops", "getTran_ops", "()Ljava/lang/String;", "setTran_ops", "mNextPage", "mPerPage", "videoLoadMore", "commentId", "pageFrom", "Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;", "mVideoViewModel$delegate", "Lkotlin/Lazy;", "getMVideoViewModel", "()Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;", "mVideoViewModel", "Lcom/transsion/room/api/IAudioApi;", "mAudioApi$delegate", "getMAudioApi", "()Lcom/transsion/room/api/IAudioApi;", "mAudioApi", "Lcom/transsion/shorttv/base/pager/PagerLayoutManager;", "mPagerLayoutManager", "Lcom/transsion/shorttv/base/pager/PagerLayoutManager;", "Lcom/transsion/postdetail/control/VideoPagerChangeControl;", "mPagerChangeControl", "Lcom/transsion/postdetail/control/VideoPagerChangeControl;", "Lcom/transsion/postdetail/ui/adapter/e;", "mAdapter", "Lcom/transsion/postdetail/ui/adapter/e;", "Lcom/transsion/player/orplayer/g;", "mOrPlayer", "Lcom/transsion/player/orplayer/g;", "Lcom/transsion/player/ui/ORPlayerView;", "mOrPlayerView", "Lcom/transsion/player/ui/ORPlayerView;", "isLoadingData", "isFirstLoadMore", "attachToMain", "needBackToRoom", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "downloadedShortsList", "Ljava/util/ArrayList;", "prioritizeDownloaded", "isFromDownloaded", "currentDownloadedIndex", "startDownloadedIndex", "hasShownOnlineToast", "savedCurrentIndex", "", "list", "Ljava/util/List;", "getList", "()Ljava/util/List;", "", "resumeTimeStamp", "J", "getResumeTimeStamp", "()J", "setResumeTimeStamp", "(J)V", "Lcom/transsion/ad/bidding/nativead/BiddingListManager;", "v3ListManager", "Lcom/transsion/ad/bidding/nativead/BiddingListManager;", "Companion", "a", "PostDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class VideoFragment extends BaseFragment<so.r> implements zm.e, TRDialogListener {
    private static final String CURRENT_INDEX = "CURRENT_INDEX";

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final String PAGE_NAME = "postdetail_video";
    private boolean attachToMain;
    private int currentDownloadedIndex;
    private ArrayList<PostSubjectItem> downloadedShortsList;
    private boolean fromComment;
    private boolean hasShownOnlineToast;
    private boolean isFirstLoadMore;
    private boolean isFromDownloaded;
    private boolean isLoadingData;
    private final List<String> list;
    private com.transsion.postdetail.ui.adapter.e mAdapter;

    /* JADX INFO: renamed from: mAudioApi$delegate, reason: from kotlin metadata */
    private final Lazy mAudioApi;
    private com.transsion.player.orplayer.g mOrPlayer;
    private ORPlayerView mOrPlayerView;
    private VideoPagerChangeControl mPagerChangeControl;
    private PagerLayoutManager mPagerLayoutManager;
    private int mTabId;

    /* JADX INFO: renamed from: mVideoViewModel$delegate, reason: from kotlin metadata */
    private final Lazy mVideoViewModel;
    private boolean needBackToRoom;
    private String pageFrom;
    private boolean prioritizeDownloaded;
    private long resumeTimeStamp;
    private int savedCurrentIndex;
    private int startDownloadedIndex;
    private String tran_ops;
    private BiddingListManager v3ListManager;
    private boolean videoLoadMore;
    private String mPostId = "";
    private String mItemType = "";
    private String mNextPage = "1";
    private int mPerPage = 5;
    private String commentId = "";

    /* JADX INFO: renamed from: com.transsion.postdetail.ui.fragment.VideoFragment$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final VideoFragment a(String str, String str2, Integer num, boolean z10, boolean z11, String str3, boolean z12, String str4, String str5, boolean z13, ArrayList arrayList, boolean z14, boolean z15) {
            int iC;
            VideoFragment videoFragment = new VideoFragment();
            if (str == null || str.length() == 0) {
                iC = qm.e.f73644a.c(new VideoImmersiveDataLoaderV2(str5, "0", "1", 8));
            } else {
                iC = qm.e.f73644a.c(new VideoDataLoader(str));
            }
            videoFragment.setArguments(androidx.core.os.d.b(TuplesKt.a("id", str), TuplesKt.a("item_type", str2), TuplesKt.a("tab_id", num), TuplesKt.a("video_load_more", Boolean.valueOf(z10)), TuplesKt.a("from_comment", Boolean.valueOf(z11)), TuplesKt.a("rec_ops", str3), TuplesKt.a("attach_to_main", Boolean.valueOf(z12)), TuplesKt.a("yy_preload_id", Integer.valueOf(iC)), TuplesKt.a("comment_id", str4), TuplesKt.a(WebConstants.PAGE_FROM, str5), TuplesKt.a("need_back_to_room", Boolean.valueOf(z13)), TuplesKt.a("downloaded_shorts_list", arrayList), TuplesKt.a("prioritize_downloaded", Boolean.valueOf(z14)), TuplesKt.a("is_from_downloaded", Boolean.valueOf(z15))));
            return videoFragment;
        }
    }

    public static final class b extends androidx.activity.u {
        b() {
            super(true);
        }

        @Override // androidx.activity.u
        public void handleOnBackPressed() {
            if (VideoFragment.this.needBackToRoom) {
                aq.h.i(aq.h.f16093a, null, null, null, false, 15, null);
            }
            FragmentActivity activity = VideoFragment.this.getActivity();
            if (activity != null) {
                activity.finish();
            }
        }
    }

    public static final class c implements nh.n {
        c() {
        }

        @Override // nh.n
        public void onConnected() {
            nh.n.a.a(this);
        }

        @Override // nh.n
        public void onConnected(Network network, NetworkCapabilities networkCapabilities) {
            r6.f fVarH0;
            Intrinsics.h(network, "network");
            Intrinsics.h(networkCapabilities, "networkCapabilities");
            if (((PostSubjectBean) VideoFragment.this.getMVideoViewModel().v().f()) == null) {
                VideoFragment.this.loadData();
                return;
            }
            com.transsion.postdetail.ui.adapter.e eVar = VideoFragment.this.mAdapter;
            if (((eVar == null || (fVarH0 = eVar.h0()) == null) ? null : fVarH0.i()) == LoadMoreStatus.Fail) {
                VideoFragment.this.loadMore();
            }
        }

        @Override // nh.n
        public void onDisconnected() {
        }
    }

    public static final class d extends VideoPagerChangeControl {
        d(boolean z10, com.transsion.postdetail.ui.adapter.e eVar, com.transsion.player.orplayer.g gVar, ORPlayerView oRPlayerView, PagerLayoutManager pagerLayoutManager, String str) {
            super(VideoFragment.this, z10, eVar, gVar, oRPlayerView, pagerLayoutManager, str);
        }

        @Override // com.transsion.postdetail.control.VideoPagerChangeControl, cs.a
        public void f(int i11, boolean z10, View view) {
            super.f(i11, z10, view);
            if (VideoFragment.this.isFromDownloaded) {
                ArrayList arrayList = VideoFragment.this.downloadedShortsList;
                int size = VideoFragment.this.startDownloadedIndex >= 0 ? (arrayList != null ? arrayList.size() : 0) - VideoFragment.this.startDownloadedIndex : 0;
                if (size <= 0 || i11 < size) {
                    VideoFragment.this.hasShownOnlineToast = false;
                } else {
                    if (VideoFragment.this.hasShownOnlineToast) {
                        return;
                    }
                    VideoFragment.this.hasShownOnlineToast = true;
                    com.transsion.baseui.util.m.a(R$string.shorts_view_online_content);
                    com.transsion.baselib.helper.a.f43262a.c(VideoFragment.PAGE_NAME, "online");
                }
            }
        }
    }

    public static final class e extends RecyclerView.r {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private long f49643a;

        e() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.r
        public void onScrollStateChanged(RecyclerView recyclerView, int i11) {
            List<Object> data;
            Intrinsics.h(recyclerView, "recyclerView");
            super.onScrollStateChanged(recyclerView, i11);
            if (!VideoFragment.this.isFromDownloaded || nh.m.f70474a.e() || i11 == 0) {
                return;
            }
            VideoPagerChangeControl videoPagerChangeControl = VideoFragment.this.mPagerChangeControl;
            int size = 0;
            int iH = videoPagerChangeControl != null ? videoPagerChangeControl.h() : 0;
            com.transsion.postdetail.ui.adapter.e eVar = VideoFragment.this.mAdapter;
            if (eVar != null && (data = eVar.getData()) != null) {
                size = data.size();
            }
            boolean zCanScrollVertically = recyclerView.canScrollVertically(1);
            if (iH < size - 1 || zCanScrollVertically) {
                return;
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (jCurrentTimeMillis - this.f49643a > 2000) {
                this.f49643a = jCurrentTimeMillis;
                com.transsion.baseui.util.m.e(R$string.shorts_no_more_downloaded);
                com.transsion.baselib.helper.a.f43262a.c(VideoFragment.PAGE_NAME, OfflineConstantsKt.OFFLINE);
            }
        }
    }

    static final class f implements androidx.p009lifecycle.c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f49645a;

        f(Function1 function) {
            Intrinsics.h(function, "function");
            this.f49645a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f49645a;
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
            this.f49645a.invoke(obj);
        }
    }

    public VideoFragment() {
        final Function0<Fragment> function0 = new Function0<Fragment>() { // from class: com.transsion.postdetail.ui.fragment.VideoFragment$special$$inlined$viewModels$default$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Fragment invoke() {
                return this;
            }
        };
        this.mVideoViewModel = FragmentViewModelLazyKt.a(this, Reflection.b(PostDetailViewModel.class), new Function0<androidx.p009lifecycle.x0>() { // from class: com.transsion.postdetail.ui.fragment.VideoFragment$special$$inlined$viewModels$default$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final androidx.p009lifecycle.x0 invoke() {
                androidx.p009lifecycle.x0 viewModelStore = ((androidx.p009lifecycle.y0) function0.invoke()).getViewModelStore();
                Intrinsics.g(viewModelStore, "ownerProducer().viewModelStore");
                return viewModelStore;
            }
        }, new Function0<androidx.lifecycle.v0.c>() { // from class: com.transsion.postdetail.ui.fragment.VideoFragment$special$$inlined$viewModels$default$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final androidx.lifecycle.v0.c invoke() {
                Object objInvoke = function0.invoke();
                androidx.p009lifecycle.m mVar = objInvoke instanceof androidx.p009lifecycle.m ? (androidx.p009lifecycle.m) objInvoke : null;
                androidx.lifecycle.v0.c defaultViewModelProviderFactory = mVar != null ? mVar.getDefaultViewModelProviderFactory() : null;
                if (defaultViewModelProviderFactory == null) {
                    defaultViewModelProviderFactory = this.getDefaultViewModelProviderFactory();
                }
                Intrinsics.g(defaultViewModelProviderFactory, "(ownerProducer() as? Has…tViewModelProviderFactory");
                return defaultViewModelProviderFactory;
            }
        });
        this.mAudioApi = LazyKt.b(new Function0() { // from class: com.transsion.postdetail.ui.fragment.l6
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return VideoFragment.mAudioApi_delegate$lambda$0();
            }
        });
        this.isFirstLoadMore = true;
        this.currentDownloadedIndex = -1;
        this.savedCurrentIndex = -1;
        this.list = CollectionsKt.e(PostItemType.SUBJECT.getValue());
    }

    private final boolean checkItemType(String itemType) {
        return this.list.contains(itemType);
    }

    private final void doLoadData() {
        ArrayList<PostSubjectItem> arrayList;
        if (this.isLoadingData) {
            return;
        }
        if (this.prioritizeDownloaded && (arrayList = this.downloadedShortsList) != null && !arrayList.isEmpty()) {
            int i11 = this.currentDownloadedIndex + 1;
            this.currentDownloadedIndex = i11;
            ArrayList<PostSubjectItem> arrayList2 = this.downloadedShortsList;
            Intrinsics.e(arrayList2);
            if (i11 < arrayList2.size()) {
                ArrayList<PostSubjectItem> arrayList3 = this.downloadedShortsList;
                Intrinsics.e(arrayList3);
                PostSubjectItem postSubjectItem = arrayList3.get(this.currentDownloadedIndex);
                Intrinsics.g(postSubjectItem, "get(...)");
                updateData(new PostSubjectBean(CollectionsKt.q(postSubjectItem), null, null, null));
                return;
            }
            this.prioritizeDownloaded = false;
        }
        this.isLoadingData = true;
        PostDetailViewModel mVideoViewModel = getMVideoViewModel();
        String str = this.mPostId;
        mVideoViewModel.u(str, this.mTabId, this.mNextPage, this.mPerPage, this.videoLoadMore, (this.attachToMain && (str == null || str.length() == 0)) ? 1 : 0);
    }

    private final View getEmptyView(Context context) {
        final DefaultView defaultView = new DefaultView(context, DefaultView.ModelStyle.MODEL_STYLE_NIGHT);
        defaultView.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        defaultView.setGravity(17);
        defaultView.setDefaultImageViewVisibility(0);
        defaultView.setDefaultImage(R$mipmap.ic_no_content);
        String string = context.getString(com.tn.lib.widget.R$string.no_content);
        Intrinsics.g(string, "getString(...)");
        defaultView.setDescText(string);
        defaultView.setStyle(DefaultView.DefaultViewStyle.STYLE_IMAGE_DESC_BTN);
        defaultView.setBtnVisibility(0);
        String string2 = context.getString(com.transsion.baseui.R$string.retry_text);
        Intrinsics.g(string2, "getString(...)");
        defaultView.setBtnText(string2);
        defaultView.setBtnClickListener(new View.OnClickListener() { // from class: com.transsion.postdetail.ui.fragment.w5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VideoFragment.getEmptyView$lambda$25$lambda$24(this.f49847a, defaultView, view);
            }
        });
        defaultView.setVisibility(0);
        return defaultView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getEmptyView$lambda$25$lambda$24(VideoFragment videoFragment, DefaultView defaultView, View view) {
        videoFragment.loadData();
        defaultView.setVisibility(8);
    }

    private final IAudioApi getMAudioApi() {
        return (IAudioApi) this.mAudioApi.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final PostDetailViewModel getMVideoViewModel() {
        return (PostDetailViewModel) this.mVideoViewModel.getValue();
    }

    private final View getNotNetErrorView(Context context) {
        final ImmVideoNoNetworkView immVideoNoNetworkView = new ImmVideoNoNetworkView(context);
        jg.c.e(immVideoNoNetworkView);
        immVideoNoNetworkView.retry(new Function0() { // from class: com.transsion.postdetail.ui.fragment.z5
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return VideoFragment.getNotNetErrorView$lambda$28$lambda$26(immVideoNoNetworkView, this);
            }
        });
        immVideoNoNetworkView.goToSetting(new Function0() { // from class: com.transsion.postdetail.ui.fragment.a6
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return VideoFragment.getNotNetErrorView$lambda$28$lambda$27();
            }
        });
        com.tn.lib.view.r.a(PAGE_NAME);
        return immVideoNoNetworkView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit getNotNetErrorView$lambda$28$lambda$26(ImmVideoNoNetworkView immVideoNoNetworkView, VideoFragment videoFragment) {
        jg.c.g(immVideoNoNetworkView);
        videoFragment.showProgress();
        videoFragment.loadData();
        com.tn.lib.view.r.b(PAGE_NAME);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit getNotNetErrorView$lambda$28$lambda$27() {
        com.tn.lib.view.r.c(PAGE_NAME);
        return Unit.f67061a;
    }

    private final void hideProgress() {
        ProgressBar progressBar;
        so.r mViewBinding = getMViewBinding();
        if (mViewBinding == null || (progressBar = mViewBinding.f75694d) == null) {
            return;
        }
        jg.c.g(progressBar);
    }

    private final void initAd() {
        BiddingListManager biddingListManager = new BiddingListManager();
        this.v3ListManager = biddingListManager;
        so.r mViewBinding = getMViewBinding();
        biddingListManager.F(mViewBinding != null ? mViewBinding.f75695e : null);
        BiddingListManager biddingListManager2 = this.v3ListManager;
        if (biddingListManager2 != null) {
            biddingListManager2.A(androidx.p009lifecycle.v.a(this));
        }
        BiddingListManager biddingListManager3 = this.v3ListManager;
        if (biddingListManager3 != null) {
            biddingListManager3.G("VideoForYouListScene");
        }
        BiddingListManager biddingListManager4 = this.v3ListManager;
        if (biddingListManager4 != null) {
            biddingListManager4.z(new Function2() { // from class: com.transsion.postdetail.ui.fragment.c6
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return VideoFragment.initAd$lambda$34(this.f49664a, ((Integer) obj).intValue(), (BiddingNativeManager) obj2);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit initAd$lambda$34(VideoFragment videoFragment, int i11, BiddingNativeManager current) {
        List<Object> data;
        Intrinsics.h(current, "current");
        if (current != null) {
            PostSubjectItem postSubjectItem = new PostSubjectItem(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, null, null, false, null, false, null, false, false, false, false, null, -1, 1, null);
            postSubjectItem.setNonAdDelegate(current);
            com.transsion.postdetail.ui.adapter.e eVar = videoFragment.mAdapter;
            int size = (eVar == null || (data = eVar.getData()) == null) ? 0 : data.size();
            if (i11 <= size) {
                com.transsion.postdetail.ui.adapter.e eVar2 = videoFragment.mAdapter;
                if (eVar2 != null) {
                    eVar2.n(i11, postSubjectItem);
                }
            } else {
                com.transsion.postdetail.ui.adapter.e eVar3 = videoFragment.mAdapter;
                if (eVar3 != null) {
                    eVar3.n(size, postSubjectItem);
                }
            }
        }
        return Unit.f67061a;
    }

    private final void initAdapter() {
        ArrayList arrayList = new ArrayList();
        boolean z10 = this.videoLoadMore;
        String str = this.mPostId;
        String str2 = this.mItemType;
        boolean z11 = this.attachToMain;
        String str3 = this.commentId;
        String str4 = this.pageFrom;
        if (str4 == null) {
            str4 = "";
        }
        com.transsion.postdetail.ui.adapter.e eVar = new com.transsion.postdetail.ui.adapter.e(arrayList, this, z10, str, str2, z11, str3, str4, this.isFromDownloaded);
        eVar.h0().z(this.videoLoadMore);
        if (this.videoLoadMore) {
            eVar.h0().C(new ImmVideoLoadMoreView());
            eVar.h0().z(true);
            eVar.h0().y(true);
            eVar.h0().E(2);
            eVar.h0().D(new p6.f() { // from class: com.transsion.postdetail.ui.fragment.b6
                @Override // p6.f
                public final void a() {
                    VideoFragment.initAdapter$lambda$7$lambda$6(this.f49657a);
                }
            });
        }
        this.mAdapter = eVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initAdapter$lambda$7$lambda$6(final VideoFragment videoFragment) {
        RecyclerView recyclerView;
        RecyclerView recyclerView2;
        ArrayList<PostSubjectItem> arrayList;
        boolean zE = nh.m.f70474a.e();
        boolean z10 = (!videoFragment.prioritizeDownloaded || (arrayList = videoFragment.downloadedShortsList) == null || arrayList.isEmpty()) ? false : true;
        if (!zE && !z10) {
            so.r mViewBinding = videoFragment.getMViewBinding();
            if (mViewBinding == null || (recyclerView2 = mViewBinding.f75695e) == null) {
                return;
            }
            recyclerView2.postDelayed(new Runnable() { // from class: com.transsion.postdetail.ui.fragment.g6
                @Override // java.lang.Runnable
                public final void run() {
                    VideoFragment.initAdapter$lambda$7$lambda$6$lambda$5(this.f49715a);
                }
            }, 500L);
            return;
        }
        if (videoFragment.isFirstLoadMore) {
            videoFragment.isFirstLoadMore = false;
            videoFragment.loadMore();
            return;
        }
        so.r mViewBinding2 = videoFragment.getMViewBinding();
        if (mViewBinding2 == null || (recyclerView = mViewBinding2.f75695e) == null) {
            return;
        }
        recyclerView.postDelayed(new Runnable() { // from class: com.transsion.postdetail.ui.fragment.f6
            @Override // java.lang.Runnable
            public final void run() {
                this.f49692a.loadMore();
            }
        }, 500L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initAdapter$lambda$7$lambda$6$lambda$5(VideoFragment videoFragment) {
        r6.f fVarH0;
        videoFragment.isLoadingData = false;
        com.transsion.postdetail.ui.adapter.e eVar = videoFragment.mAdapter;
        if (eVar == null || (fVarH0 = eVar.h0()) == null) {
            return;
        }
        fVarH0.v();
    }

    private final void initAudioListener() {
        IAudioApi mAudioApi = getMAudioApi();
        if (mAudioApi != null) {
            mAudioApi.pause();
        }
    }

    private final void initBack() {
        AppCompatImageView appCompatImageView;
        TnTextView tnTextView;
        AppCompatImageView appCompatImageView2;
        so.r mViewBinding;
        AppCompatImageView appCompatImageView3;
        AppCompatImageView appCompatImageView4;
        ConstraintLayout constraintLayout;
        so.r mViewBinding2 = getMViewBinding();
        ViewGroup.LayoutParams layoutParams = (mViewBinding2 == null || (constraintLayout = mViewBinding2.f75696f) == null) ? null : constraintLayout.getLayoutParams();
        Intrinsics.f(layoutParams, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams");
        ((FrameLayout.LayoutParams) layoutParams).topMargin = com.blankj.utilcode.util.d.c();
        so.r mViewBinding3 = getMViewBinding();
        if (mViewBinding3 != null && (appCompatImageView4 = mViewBinding3.f75693c) != null) {
            appCompatImageView4.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.postdetail.ui.fragment.x5
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    VideoFragment.initBack$lambda$14(this.f49854a, view);
                }
            });
        }
        if (this.isFromDownloaded && (mViewBinding = getMViewBinding()) != null && (appCompatImageView3 = mViewBinding.f75693c) != null) {
            jg.c.g(appCompatImageView3);
        }
        if (this.mPostId.length() == 0) {
            so.r mViewBinding4 = getMViewBinding();
            if (mViewBinding4 == null || (appCompatImageView2 = mViewBinding4.f75692b) == null) {
                return;
            }
            jg.c.g(appCompatImageView2);
            return;
        }
        so.r mViewBinding5 = getMViewBinding();
        if (mViewBinding5 != null && (tnTextView = mViewBinding5.f75697g) != null) {
            jg.c.g(tnTextView);
        }
        so.r mViewBinding6 = getMViewBinding();
        if (mViewBinding6 != null && (appCompatImageView = mViewBinding6.f75692b) != null) {
            appCompatImageView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.postdetail.ui.fragment.y5
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    VideoFragment.initBack$lambda$15(this.f49861a, view);
                }
            });
        }
        requireActivity().getOnBackPressedDispatcher().i(this, new b());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initBack$lambda$14(final VideoFragment videoFragment, View view) {
        final String postId;
        String userId;
        View viewT;
        List<Object> data;
        if (com.transsion.baseui.util.c.f43504a.a(view.getId(), 500L)) {
            return;
        }
        PagerLayoutManager pagerLayoutManager = videoFragment.mPagerLayoutManager;
        PostSubjectItem postSubjectItem = null;
        if (pagerLayoutManager != null && (viewT = pagerLayoutManager.T()) != null) {
            PagerLayoutManager pagerLayoutManager2 = videoFragment.mPagerLayoutManager;
            Integer numValueOf = pagerLayoutManager2 != null ? Integer.valueOf(pagerLayoutManager2.getPosition(viewT)) : null;
            if (numValueOf != null) {
                int iIntValue = numValueOf.intValue();
                com.transsion.postdetail.ui.adapter.e eVar = videoFragment.mAdapter;
                if (eVar != null && (data = eVar.getData()) != null) {
                    postSubjectItem = (PostSubjectItem) CollectionsKt.l0(data, iIntValue);
                }
            }
        }
        if (postSubjectItem == null || (postId = postSubjectItem.getPostId()) == null) {
            return;
        }
        User user = postSubjectItem.getUser();
        if (user == null || (userId = user.getUserId()) == null) {
            userId = "";
        }
        String str = userId;
        com.transsion.postdetail.helper.a.f48866a.l(postSubjectItem, PAGE_NAME, videoFragment.pageFrom);
        NegativeFeedbackHelper negativeFeedbackHelper = NegativeFeedbackHelper.f48849a;
        Context contextRequireContext = videoFragment.requireContext();
        Intrinsics.g(contextRequireContext, "requireContext(...)");
        androidx.p009lifecycle.u viewLifecycleOwner = videoFragment.getViewLifecycleOwner();
        Intrinsics.g(viewLifecycleOwner, "getViewLifecycleOwner(...)");
        negativeFeedbackHelper.k(postId, str, contextRequireContext, androidx.p009lifecycle.v.a(viewLifecycleOwner), PAGE_NAME, new Function0() { // from class: com.transsion.postdetail.ui.fragment.h6
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return VideoFragment.initBack$lambda$14$lambda$13(this.f49722a, postId);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit initBack$lambda$14$lambda$13(VideoFragment videoFragment, String str) {
        videoFragment.removeVideoByPostId(str);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initBack$lambda$15(VideoFragment videoFragment, View view) {
        if (videoFragment.needBackToRoom) {
            aq.h.i(aq.h.f16093a, null, null, null, false, 15, null);
        }
        videoFragment.requireActivity().finish();
    }

    private final void initNonAd() {
    }

    private final void initPlayer() {
        Context contextRequireContext = requireContext();
        Intrinsics.g(contextRequireContext, "requireContext(...)");
        this.mOrPlayer = new com.transsion.player.orplayer.g.a(contextRequireContext).b(new bo.d(null, false, 0, 0, 0, 0, 0, 0, 0L, 0, 0, false, true, false, false, false, null, 126975, null)).a();
        FragmentActivity fragmentActivityRequireActivity = requireActivity();
        Intrinsics.g(fragmentActivityRequireActivity, "requireActivity(...)");
        ORPlayerView oRPlayerView = new ORPlayerView(fragmentActivityRequireActivity, RenderType.TEXTURE_VIEW);
        this.mOrPlayerView = oRPlayerView;
        com.transsion.player.orplayer.g gVar = this.mOrPlayer;
        if (gVar != null) {
            gVar.setTextureView(oRPlayerView.getTextureView());
        }
        com.transsion.player.orplayer.g gVar2 = this.mOrPlayer;
        if (gVar2 != null) {
            gVar2.setLooping(true);
        }
    }

    private final void initViewModel() {
        getMVideoViewModel().v().j(this, new f(new Function1() { // from class: com.transsion.postdetail.ui.fragment.i6
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return VideoFragment.initViewModel$lambda$8(this.f49733a, (PostSubjectBean) obj);
            }
        }));
        getMVideoViewModel().t().j(this, new f(new Function1() { // from class: com.transsion.postdetail.ui.fragment.j6
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return VideoFragment.initViewModel$lambda$9(this.f49740a, (String) obj);
            }
        }));
        if (this.attachToMain) {
            ImmVideoHelper.f48840h.a().i().j(this, new f(new Function1() { // from class: com.transsion.postdetail.ui.fragment.k6
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return VideoFragment.initViewModel$lambda$10(this.f49747a, (List) obj);
                }
            }));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit initViewModel$lambda$10(VideoFragment videoFragment, List list) {
        List list2 = list;
        if (list2 == null || list2.isEmpty()) {
            videoFragment.showProgress();
            videoFragment.loadData();
        } else {
            lg.a.C0828a.f(lg.a.f68839a, PAGE_NAME, "get cache " + ((PostSubjectItem) list.get(0)).getTitle(), false, 4, null);
            videoFragment.updateData(new PostSubjectBean(CollectionsKt.U0(list), null, null, null));
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit initViewModel$lambda$8(VideoFragment videoFragment, PostSubjectBean postSubjectBean) {
        r6.f fVarH0;
        com.transsion.postdetail.ui.adapter.e eVar;
        r6.f fVarH1;
        List<Object> data;
        videoFragment.isLoadingData = false;
        if (postSubjectBean == null) {
            com.transsion.postdetail.ui.adapter.e eVar2 = videoFragment.mAdapter;
            if (eVar2 == null || (data = eVar2.getData()) == null || data.size() != 0) {
                com.transsion.postdetail.ui.adapter.e eVar3 = videoFragment.mAdapter;
                if (eVar3 != null && (fVarH0 = eVar3.h0()) != null && fVarH0.r() && (eVar = videoFragment.mAdapter) != null && (fVarH1 = eVar.h0()) != null) {
                    fVarH1.v();
                }
            } else if (nh.m.f70474a.e()) {
                videoFragment.showEmpty();
            } else {
                videoFragment.showNotNetError();
            }
        } else {
            hj.b logViewConfig = videoFragment.getLogViewConfig();
            if (logViewConfig != null) {
                logViewConfig.k(true);
            }
            videoFragment.updateData(postSubjectBean);
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit initViewModel$lambda$9(VideoFragment videoFragment, String str) {
        if (TextUtils.equals("0", str)) {
            ty.b.f76417a.a().e(videoFragment.mPostId);
            FragmentActivity activity = videoFragment.getActivity();
            if (activity != null) {
                activity.finish();
            }
        } else {
            uh.b.a aVar = uh.b.f76753a;
            FragmentActivity activity2 = videoFragment.getActivity();
            aVar.e(activity2 != null ? activity2.getString(R$string.delete_post_failed) : null);
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void loadData() {
        doLoadData();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void loadMore() {
        loadData();
    }

    private final void localLogPause() {
        HashMap mapG;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        hj.b logViewConfig = getLogViewConfig();
        long jH = jElapsedRealtime - (logViewConfig != null ? logViewConfig.h() : 0L);
        hj.b logViewConfig2 = getLogViewConfig();
        if (logViewConfig2 == null || (mapG = logViewConfig2.g()) == null) {
            return;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final IAudioApi mAudioApi_delegate$lambda$0() {
        return (IAudioApi) TheRouter.d(IAudioApi.class, new Object[0]);
    }

    private final void observeRemoveVideo() {
        getMVideoViewModel().C().j(this, new f(new Function1() { // from class: com.transsion.postdetail.ui.fragment.e6
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return VideoFragment.observeRemoveVideo$lambda$18(this.f49683a, (Integer) obj);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit observeRemoveVideo$lambda$18(final VideoFragment videoFragment, final Integer num) {
        RecyclerView recyclerView;
        try {
            if (num.intValue() >= 0) {
                VideoPagerChangeControl videoPagerChangeControl = videoFragment.mPagerChangeControl;
                if (videoPagerChangeControl != null) {
                    videoPagerChangeControl.n();
                }
                com.transsion.postdetail.ui.adapter.e eVar = videoFragment.mAdapter;
                if (eVar != null) {
                    Intrinsics.e(num);
                    eVar.G0(num.intValue());
                }
                so.r mViewBinding = videoFragment.getMViewBinding();
                if (mViewBinding != null && (recyclerView = mViewBinding.f75695e) != null) {
                    recyclerView.post(new Runnable() { // from class: com.transsion.postdetail.ui.fragment.d6
                        @Override // java.lang.Runnable
                        public final void run() {
                            VideoFragment.observeRemoveVideo$lambda$18$lambda$17(this.f49672a, num);
                        }
                    });
                }
            }
        } catch (Throwable unused) {
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void observeRemoveVideo$lambda$18$lambda$17(VideoFragment videoFragment, Integer num) {
        RecyclerView.b0 b0VarFindViewHolderForAdapterPosition;
        RecyclerView recyclerView;
        Integer numValueOf;
        so.r mViewBinding = videoFragment.getMViewBinding();
        if (mViewBinding == null || (recyclerView = mViewBinding.f75695e) == null) {
            b0VarFindViewHolderForAdapterPosition = null;
        } else {
            com.transsion.postdetail.ui.adapter.e eVar = videoFragment.mAdapter;
            if (eVar != null) {
                int iA0 = eVar.a0();
                Intrinsics.e(num);
                numValueOf = Integer.valueOf(iA0 + num.intValue());
            } else {
                numValueOf = num;
            }
            Intrinsics.e(numValueOf);
            b0VarFindViewHolderForAdapterPosition = recyclerView.findViewHolderForAdapterPosition(numValueOf.intValue());
        }
        VideoPagerChangeControl videoPagerChangeControl = videoFragment.mPagerChangeControl;
        if (videoPagerChangeControl != null) {
            Intrinsics.e(num);
            videoPagerChangeControl.f(num.intValue(), true, b0VarFindViewHolderForAdapterPosition != null ? b0VarFindViewHolderForAdapterPosition.itemView : null);
        }
    }

    private final void removeVideoByPostId(String postId) {
        List<Object> data;
        com.transsion.postdetail.ui.adapter.e eVar = this.mAdapter;
        int i11 = -1;
        if (eVar != null && (data = eVar.getData()) != null) {
            Iterator<Object> it = data.iterator();
            int i12 = 0;
            while (it.hasNext()) {
                if (Intrinsics.c(((PostSubjectItem) it.next()).getPostId(), postId)) {
                    i11 = i12;
                    break;
                }
                i12++;
            }
        }
        if (i11 >= 0) {
            getMVideoViewModel().C().q(Integer.valueOf(i11));
            NegativeFeedbackHelper.f48849a.i(postId);
        }
    }

    private final void scrollToPosition(final int it) {
        RecyclerView recyclerView;
        RecyclerView recyclerView2;
        List<Object> data;
        com.transsion.postdetail.ui.adapter.e eVar = this.mAdapter;
        if (((eVar == null || (data = eVar.getData()) == null) ? 0 : data.size()) <= it) {
            return;
        }
        so.r mViewBinding = getMViewBinding();
        if (mViewBinding != null && (recyclerView2 = mViewBinding.f75695e) != null) {
            recyclerView2.scrollToPosition(it);
        }
        so.r mViewBinding2 = getMViewBinding();
        if (mViewBinding2 == null || (recyclerView = mViewBinding2.f75695e) == null) {
            return;
        }
        recyclerView.post(new Runnable() { // from class: com.transsion.postdetail.ui.fragment.v5
            @Override // java.lang.Runnable
            public final void run() {
                VideoFragment.scrollToPosition$lambda$31(this.f49839a, it);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void scrollToPosition$lambda$31(VideoFragment videoFragment, int i11) {
        PagerLayoutManager pagerLayoutManager = videoFragment.mPagerLayoutManager;
        if (pagerLayoutManager != null) {
            View viewT = pagerLayoutManager.T();
            if (viewT != null) {
                lg.a.C0828a.r(lg.a.f68839a, "ImmVideoPlayer", new String[]{"initView2， scrollToPosition ：" + i11}, false, 4, null);
                VideoPagerChangeControl videoPagerChangeControl = videoFragment.mPagerChangeControl;
                if (videoPagerChangeControl != null) {
                    videoPagerChangeControl.f(i11, true, viewT);
                    return;
                }
                return;
            }
            int childCount = pagerLayoutManager.getChildCount();
            for (int i12 = 0; i12 < childCount; i12++) {
                View childAt = pagerLayoutManager.getChildAt(i12);
                if (childAt != null && pagerLayoutManager.getPosition(childAt) == i11) {
                    lg.a.C0828a.r(lg.a.f68839a, "ImmVideoPlayer", new String[]{"initView， scrollToPosition ：" + i11}, false, 4, null);
                    VideoPagerChangeControl videoPagerChangeControl2 = videoFragment.mPagerChangeControl;
                    if (videoPagerChangeControl2 != null) {
                        videoPagerChangeControl2.f(i11, true, childAt);
                        return;
                    }
                    return;
                }
            }
        }
    }

    private final void setPTParams(PostSubjectItem item) {
        HashMap mapG;
        HashMap mapG2;
        HashMap mapG3;
        String mediaType;
        hj.b logViewConfig = getLogViewConfig();
        if (logViewConfig != null) {
            logViewConfig.k(true);
        }
        hj.b logViewConfig2 = getLogViewConfig();
        if (logViewConfig2 != null) {
            logViewConfig2.n(item.getRec_ops());
        }
        hj.b logViewConfig3 = getLogViewConfig();
        if (logViewConfig3 != null && (mapG3 = logViewConfig3.g()) != null) {
            Media media = item.getMedia();
            if (media == null || (mediaType = media.getMediaType()) == null) {
                mediaType = "";
            }
            mapG3.put("post_media_type", mediaType);
        }
        hj.b logViewConfig4 = getLogViewConfig();
        if (logViewConfig4 != null && (mapG2 = logViewConfig4.g()) != null) {
            Subject subject = item.getSubject();
            mapG2.put("subject_id", subject != null ? subject.getSubjectId() : null);
        }
        hj.b logViewConfig5 = getLogViewConfig();
        if (logViewConfig5 == null || (mapG = logViewConfig5.g()) == null) {
            return;
        }
        Subject subject2 = item.getSubject();
        mapG.put("has_resource", String.valueOf(subject2 != null ? subject2.getHasResource() : null));
    }

    private final void showEmpty() {
        com.transsion.postdetail.ui.adapter.e eVar;
        List<Object> data;
        hideProgress();
        com.transsion.postdetail.ui.adapter.e eVar2 = this.mAdapter;
        if (eVar2 == null || (data = eVar2.getData()) == null || !(!data.isEmpty())) {
            Context contextRequireContext = requireContext();
            Intrinsics.g(contextRequireContext, "requireContext(...)");
            View emptyView = getEmptyView(contextRequireContext);
            if (emptyView == null || (eVar = this.mAdapter) == null) {
                return;
            }
            eVar.Y0(emptyView);
        }
    }

    private final void showNotNetError() {
        com.transsion.postdetail.ui.adapter.e eVar;
        TnTextView tnTextView;
        List<Object> data;
        hideProgress();
        com.transsion.postdetail.ui.adapter.e eVar2 = this.mAdapter;
        if (eVar2 == null || (data = eVar2.getData()) == null || !(!data.isEmpty())) {
            so.r mViewBinding = getMViewBinding();
            if (mViewBinding != null && (tnTextView = mViewBinding.f75697g) != null) {
                jg.c.g(tnTextView);
            }
            Context contextRequireContext = requireContext();
            Intrinsics.g(contextRequireContext, "requireContext(...)");
            View notNetErrorView = getNotNetErrorView(contextRequireContext);
            if (notNetErrorView == null || (eVar = this.mAdapter) == null) {
                return;
            }
            eVar.Y0(notNetErrorView);
        }
    }

    private final void showProgress() {
        ProgressBar progressBar;
        so.r mViewBinding = getMViewBinding();
        if (mViewBinding == null || (progressBar = mViewBinding.f75694d) == null) {
            return;
        }
        jg.c.k(progressBar);
    }

    private final void showSettingDialog() {
        String string = Utils.a().getString(com.transsion.ninegridview.R$string.permission_deny_down_tip, "\"" + Utils.a().getString(com.transsion.baseui.R$string.base_app_name) + "\"", "\"" + Utils.a().getString(com.transsion.ninegridview.R$string.system_settings) + "\"");
        Intrinsics.g(string, "getString(...)");
        TRDialog.a aVarG = new TRDialog.a().g(string);
        String string2 = Utils.a().getString(com.transsion.ninegridview.R$string.cancel);
        Intrinsics.g(string2, "getString(...)");
        TRDialog.a aVarE = aVarG.e(string2);
        String string3 = Utils.a().getString(com.transsion.ninegridview.R$string.system_settings);
        Intrinsics.g(string3, "getString(...)");
        aVarE.j(string3).f(this).a().show(getChildFragmentManager(), "settings");
    }

    private final void updateData(PostSubjectBean subjectBean) {
        String nextPage;
        com.transsion.postdetail.ui.adapter.e eVar;
        r6.f fVarH0;
        r6.f fVarH1;
        com.transsion.postdetail.ui.adapter.e eVar2;
        r6.f fVarH2;
        hideProgress();
        Pager pager = subjectBean.getPager();
        if (pager == null || (nextPage = pager.getNextPage()) == null) {
            nextPage = "1";
        }
        this.mNextPage = nextPage;
        List<PostSubjectItem> items = subjectBean.getItems();
        if (items != null) {
            Iterator<PostSubjectItem> it = items.iterator();
            while (it.hasNext()) {
                PostSubjectItem next = it.next();
                Media media = next.getMedia();
                if ((media != null ? media.getVideo() : null) != null) {
                    Media media2 = next.getMedia();
                    List<Video> video = media2 != null ? media2.getVideo() : null;
                    Intrinsics.e(video);
                    if (video.isEmpty()) {
                    }
                }
                it.remove();
            }
            com.transsion.postdetail.ui.adapter.e eVar3 = this.mAdapter;
            List<Object> data = eVar3 != null ? eVar3.getData() : null;
            ArrayList arrayList = new ArrayList();
            if (data == null || !(!data.isEmpty())) {
                arrayList.addAll(items);
            } else {
                PostSubjectItem postSubjectItem = (PostSubjectItem) CollectionsKt.k0(data);
                if (postSubjectItem != null) {
                    setPTParams(postSubjectItem);
                }
                for (PostSubjectItem postSubjectItem2 : items) {
                    if (data.contains(postSubjectItem2)) {
                        Subject subject = postSubjectItem2.getSubject();
                        if (subject != null) {
                            Integer subjectType = subject.getSubjectType();
                            int value = SubjectType.SHORT_TV.getValue();
                            if (subjectType != null && subjectType.intValue() == value) {
                            }
                        }
                        lg.a.C0828a.f(lg.a.f68839a, "ImmVideoList", "find same item title..." + postSubjectItem2.getTitle() + " id  " + postSubjectItem2.getPostId(), false, 4, null);
                    }
                    arrayList.add(postSubjectItem2);
                }
            }
            com.transsion.postdetail.ui.adapter.e eVar4 = this.mAdapter;
            if (eVar4 != null) {
                eVar4.q(arrayList);
            }
            VideoPagerChangeControl videoPagerChangeControl = this.mPagerChangeControl;
            if (videoPagerChangeControl != null) {
                videoPagerChangeControl.k();
            }
            if (this.attachToMain) {
                ImmVideoHelper immVideoHelperA = ImmVideoHelper.f48840h.a();
                com.transsion.postdetail.ui.adapter.e eVar5 = this.mAdapter;
                immVideoHelperA.r(eVar5 != null ? eVar5.getData() : null);
            }
        }
        com.transsion.postdetail.ui.adapter.e eVar6 = this.mAdapter;
        if (eVar6 != null && (fVarH1 = eVar6.h0()) != null && fVarH1.r() && (eVar2 = this.mAdapter) != null && (fVarH2 = eVar2.h0()) != null) {
            fVarH2.s();
        }
        Pager pager2 = subjectBean.getPager();
        if ((pager2 != null ? Intrinsics.c(pager2.getHasMore(), Boolean.FALSE) : false) && (eVar = this.mAdapter) != null && (fVarH0 = eVar.h0()) != null) {
            r6.f.u(fVarH0, false, 1, null);
        }
        int i11 = this.savedCurrentIndex;
        if (i11 >= 0) {
            scrollToPosition(i11);
            this.savedCurrentIndex = -1;
        }
    }

    public final List<String> getList() {
        return this.list;
    }

    public final long getResumeTimeStamp() {
        return this.resumeTimeStamp;
    }

    public final String getTran_ops() {
        return this.tran_ops;
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public so.r getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        so.r rVarC = so.r.c(inflater);
        Intrinsics.g(rVarC, "inflate(...)");
        return rVarC;
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0030  */
    @Override // com.transsion.baseui.fragment.BaseFragment
    public void initData(View view, Bundle savedInstanceState) {
        List listG;
        ArrayList<PostSubjectItem> arrayList;
        String nextPage;
        Intrinsics.h(view, "view");
        setNetListener(new c());
        initViewModel();
        PostSubjectBean postSubjectBeanB = getMVideoViewModel().B();
        if (postSubjectBeanB == null) {
            listG = ImmVideoHelper.f48840h.a().g();
        } else {
            Pager pager = postSubjectBeanB.getPager();
            if (pager == null || (nextPage = pager.getNextPage()) == null) {
                nextPage = "1";
            }
            this.mNextPage = nextPage;
            listG = postSubjectBeanB.getItems();
            if (listG == null) {
                listG = ImmVideoHelper.f48840h.a().g();
            }
        }
        if (listG.isEmpty()) {
            if (this.attachToMain) {
                ImmVideoHelper.f48840h.a().p();
                return;
            } else {
                showProgress();
                loadData();
                return;
            }
        }
        if (!this.isFromDownloaded || (arrayList = this.downloadedShortsList) == null || arrayList.isEmpty()) {
            PostSubjectItem postSubjectItem = (PostSubjectItem) CollectionsKt.k0(listG);
            if (postSubjectItem != null) {
                setPTParams(postSubjectItem);
            }
            com.transsion.postdetail.ui.adapter.e eVar = this.mAdapter;
            if (eVar != null) {
                eVar.q(listG);
                return;
            }
            return;
        }
        ArrayList arrayList2 = new ArrayList();
        ArrayList<PostSubjectItem> arrayList3 = this.downloadedShortsList;
        Intrinsics.e(arrayList3);
        int size = arrayList3.size();
        for (int i11 = this.startDownloadedIndex; i11 < size; i11++) {
            ArrayList<PostSubjectItem> arrayList4 = this.downloadedShortsList;
            Intrinsics.e(arrayList4);
            PostSubjectItem postSubjectItem2 = arrayList4.get(i11);
            Intrinsics.g(postSubjectItem2, "get(...)");
            arrayList2.add(postSubjectItem2);
        }
        com.transsion.postdetail.ui.adapter.e eVar2 = this.mAdapter;
        if (eVar2 != null) {
            eVar2.n1(arrayList2);
        }
        this.prioritizeDownloaded = false;
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public void initView(View view, Bundle savedInstanceState) {
        HashMap mapG;
        RecyclerView recyclerView;
        RecyclerView recyclerView2;
        RecyclerView recyclerView3;
        Intrinsics.h(view, "view");
        int i11 = savedInstanceState != null ? savedInstanceState.getInt(CURRENT_INDEX) : -1;
        this.savedCurrentIndex = i11;
        lg.a.C0828a.r(lg.a.f68839a, "ImmVideoPlayer", new String[]{"initView， savedCurrentIndex ：" + i11}, false, 4, null);
        initAd();
        initNonAd();
        initAdapter();
        initPlayer();
        initBack();
        initAudioListener();
        observeRemoveVideo();
        FragmentActivity fragmentActivityRequireActivity = requireActivity();
        Intrinsics.g(fragmentActivityRequireActivity, "requireActivity(...)");
        PagerLayoutManager pagerLayoutManager = new PagerLayoutManager(fragmentActivityRequireActivity);
        this.mPagerLayoutManager = pagerLayoutManager;
        d dVar = new d(this.fromComment, this.mAdapter, this.mOrPlayer, this.mOrPlayerView, pagerLayoutManager, this.pageFrom);
        this.mPagerChangeControl = dVar;
        PagerLayoutManager pagerLayoutManager2 = this.mPagerLayoutManager;
        if (pagerLayoutManager2 != null) {
            pagerLayoutManager2.X(dVar);
        }
        so.r mViewBinding = getMViewBinding();
        if (mViewBinding != null && (recyclerView3 = mViewBinding.f75695e) != null) {
            recyclerView3.setLayoutManager(this.mPagerLayoutManager);
        }
        so.r mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (recyclerView2 = mViewBinding2.f75695e) != null) {
            recyclerView2.setAdapter(this.mAdapter);
        }
        so.r mViewBinding3 = getMViewBinding();
        if (mViewBinding3 != null && (recyclerView = mViewBinding3.f75695e) != null) {
            recyclerView.addOnScrollListener(new e());
        }
        ImmVideoHelper immVideoHelperA = ImmVideoHelper.f48840h.a();
        FragmentActivity fragmentActivityRequireActivity2 = requireActivity();
        Intrinsics.g(fragmentActivityRequireActivity2, "requireActivity(...)");
        immVideoHelperA.k(fragmentActivityRequireActivity2);
        hj.b logViewConfig = getLogViewConfig();
        if (logViewConfig == null || (mapG = logViewConfig.g()) == null) {
            return;
        }
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public void lazyLoadData() {
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public void logPause() {
        super.logPause();
        if (this.resumeTimeStamp != 0) {
            com.transsion.baselib.report.e.f43344a.n(PAGE_NAME, Long.valueOf(SystemClock.elapsedRealtime() - this.resumeTimeStamp), getContext());
        }
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public void logResume() {
        super.logResume();
        this.resumeTimeStamp = SystemClock.elapsedRealtime();
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public hj.b newLogViewConfig() {
        return new hj.b(PAGE_NAME, false, 2, null);
    }

    @Override // com.transsion.baseui.fragment.BaseFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        String string;
        String string2;
        HashMap mapG;
        HashMap mapG2;
        HashMap mapG3;
        ArrayList<PostSubjectItem> arrayList;
        String string3;
        super.onCreate(savedInstanceState);
        Bundle arguments = getArguments();
        String str = "";
        if (arguments == null || (string = arguments.getString("id")) == null) {
            string = "";
        }
        this.mPostId = string;
        Bundle arguments2 = getArguments();
        if (arguments2 == null || (string2 = arguments2.getString("comment_id")) == null) {
            string2 = "";
        }
        this.commentId = string2;
        Bundle arguments3 = getArguments();
        if (arguments3 != null && (string3 = arguments3.getString("item_type")) != null) {
            str = string3;
        }
        this.mItemType = str;
        Bundle arguments4 = getArguments();
        this.mTabId = arguments4 != null ? arguments4.getInt("tab_id") : 0;
        Bundle arguments5 = getArguments();
        this.videoLoadMore = arguments5 != null ? arguments5.getBoolean("video_load_more", true) : true;
        Bundle arguments6 = getArguments();
        this.fromComment = arguments6 != null ? arguments6.getBoolean("from_comment") : false;
        Bundle arguments7 = getArguments();
        this.tran_ops = arguments7 != null ? arguments7.getString("rec_ops") : null;
        Bundle arguments8 = getArguments();
        this.attachToMain = arguments8 != null ? arguments8.getBoolean("attach_to_main") : false;
        Bundle arguments9 = getArguments();
        this.pageFrom = arguments9 != null ? arguments9.getString(WebConstants.PAGE_FROM) : null;
        Bundle arguments10 = getArguments();
        this.needBackToRoom = arguments10 != null ? arguments10.getBoolean("need_back_to_room") : false;
        Bundle arguments11 = getArguments();
        Serializable serializable = arguments11 != null ? arguments11.getSerializable("downloaded_shorts_list") : null;
        this.downloadedShortsList = serializable instanceof ArrayList ? (ArrayList) serializable : null;
        Bundle arguments12 = getArguments();
        this.prioritizeDownloaded = arguments12 != null ? arguments12.getBoolean("prioritize_downloaded") : false;
        Bundle arguments13 = getArguments();
        this.isFromDownloaded = arguments13 != null ? arguments13.getBoolean("is_from_downloaded") : false;
        if (this.prioritizeDownloaded && (arrayList = this.downloadedShortsList) != null && !arrayList.isEmpty()) {
            ArrayList<PostSubjectItem> arrayList2 = this.downloadedShortsList;
            int i11 = -1;
            if (arrayList2 != null) {
                Iterator<PostSubjectItem> it = arrayList2.iterator();
                int i12 = 0;
                while (it.hasNext()) {
                    if (Intrinsics.c(it.next().getPostId(), this.mPostId)) {
                        i11 = i12;
                        break;
                    }
                    i12++;
                }
            }
            this.currentDownloadedIndex = i11;
            if (i11 < 0) {
                i11 = 0;
            }
            this.startDownloadedIndex = i11;
        }
        hj.b logViewConfig = getLogViewConfig();
        if (logViewConfig != null && (mapG3 = logViewConfig.g()) != null) {
        }
        hj.b logViewConfig2 = getLogViewConfig();
        if (logViewConfig2 != null && (mapG2 = logViewConfig2.g()) != null) {
        }
        hj.b logViewConfig3 = getLogViewConfig();
        if (logViewConfig3 != null && (mapG = logViewConfig3.g()) != null) {
        }
        PostDetailViewModel mVideoViewModel = getMVideoViewModel();
        if (mVideoViewModel != null) {
            Bundle arguments14 = getArguments();
            mVideoViewModel.F(arguments14 != null ? Integer.valueOf(arguments14.getInt("yy_preload_id")) : null, this.pageFrom);
        }
        IMemberApi iMemberApi = (IMemberApi) TheRouter.d(IMemberApi.class, new Object[0]);
        if (iMemberApi != null) {
            iMemberApi.E(this);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        com.transsion.player.orplayer.g gVar = this.mOrPlayer;
        this.mOrPlayer = null;
        if (gVar != null) {
            gVar.release();
        }
        ImmVideoHelper.f48840h.a().f();
        BiddingListManager biddingListManager = this.v3ListManager;
        if (biddingListManager != null) {
            biddingListManager.o();
        }
        IMemberApi iMemberApi = (IMemberApi) TheRouter.d(IMemberApi.class, new Object[0]);
        if (iMemberApi != null) {
            iMemberApi.t(this);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean hidden) {
        super.onHiddenChanged(hidden);
        if (isResumed()) {
            if (hidden) {
                com.transsion.player.orplayer.g gVar = this.mOrPlayer;
                if (gVar != null) {
                    gVar.pause();
                }
                logPause();
            } else {
                com.transsion.player.orplayer.g gVar2 = this.mOrPlayer;
                if (gVar2 != null) {
                    gVar2.play();
                }
                logResume();
            }
            VideoPagerChangeControl videoPagerChangeControl = this.mPagerChangeControl;
            if (videoPagerChangeControl != null) {
                videoPagerChangeControl.l(hidden);
            }
        }
        com.transsion.baseui.activity.k.h(null, this, hidden, null, 9, null);
    }

    @Override // com.tn.lib.widget.dialog.TRDialogListener
    public void onLeftButtonClick(TRDialog dialog) {
        Intrinsics.h(dialog, "dialog");
    }

    @Override // zm.e
    public void onMemberStateChange() {
        lg.a.C0828a.f(lg.a.f68839a, "co_mem", "VideoFragment --> onMemberStateChange() --> refresh list", false, 4, null);
        com.transsion.postdetail.ui.adapter.e eVar = this.mAdapter;
        if (eVar != null) {
            eVar.n1(null);
        }
        loadData();
    }

    @Override // com.transsion.baseui.fragment.BaseFragment, androidx.fragment.app.Fragment
    public void onPause() {
        localLogPause();
        super.onPause();
        com.transsion.baseui.activity.k.l(null, this, null, 5, null);
    }

    @Override // androidx.fragment.app.Fragment
    public void onRequestPermissionsResult(int requestCode, String[] permissions, int[] grantResults) {
        PostSubjectItem postSubjectItem;
        List<Object> data;
        Intrinsics.h(permissions, "permissions");
        Intrinsics.h(grantResults, "grantResults");
        super.onRequestPermissionsResult(requestCode, permissions, grantResults);
        if (requestCode == FileHelper.f47682a.l()) {
            if (grantResults.length > 1) {
                if (grantResults[0] == 0 && grantResults[1] == 0) {
                    PostSaveHelper postSaveHelper = PostSaveHelper.f50145a;
                    com.transsion.postdetail.ui.adapter.e eVar = this.mAdapter;
                    if (eVar == null || (data = eVar.getData()) == null) {
                        postSubjectItem = null;
                    } else {
                        VideoPagerChangeControl videoPagerChangeControl = this.mPagerChangeControl;
                        postSubjectItem = (PostSubjectItem) data.get(videoPagerChangeControl != null ? videoPagerChangeControl.h() : 0);
                    }
                    postSaveHelper.c(postSubjectItem);
                    return;
                }
            }
            FragmentActivity activity = getActivity();
            Intrinsics.f(activity, "null cannot be cast to non-null type android.app.Activity");
            if (ActivityCompat.j(activity, "android.permission.WRITE_EXTERNAL_STORAGE")) {
                return;
            }
            showSettingDialog();
        }
    }

    @Override // com.transsion.baseui.fragment.BaseFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        String strF = NegativeFeedbackHelper.f48849a.f();
        if (strF != null) {
            removeVideoByPostId(strF);
        }
        com.transsion.baseui.activity.k.p(null, this, "visible=" + isVisible(), 1, null);
    }

    @Override // com.tn.lib.widget.dialog.TRDialogListener
    public void onRightButtonClick(TRDialog dialog) {
        Intrinsics.h(dialog, "dialog");
        com.transsion.ninegridview.helper.b bVar = com.transsion.ninegridview.helper.b.f47691a;
        FragmentActivity activity = getActivity();
        Intrinsics.f(activity, "null cannot be cast to non-null type android.app.Activity");
        bVar.a(activity, 101);
    }

    @Override // androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle outState) {
        Intrinsics.h(outState, "outState");
        super.onSaveInstanceState(outState);
        VideoPagerChangeControl videoPagerChangeControl = this.mPagerChangeControl;
        outState.putInt(CURRENT_INDEX, videoPagerChangeControl != null ? videoPagerChangeControl.h() : 0);
    }

    public final void setResumeTimeStamp(long j11) {
        this.resumeTimeStamp = j11;
    }

    public final void setTran_ops(String str) {
        this.tran_ops = str;
    }
}
