package com.transsion.moviedetail.fragment;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.os.Build;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.activity.result.ActivityResult;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.FragmentActivity;
import androidx.p009lifecycle.Lifecycle;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.blankj.utilcode.util.Utils;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.loadmore.LoadMoreStatus;
import com.hisavana.common.bean.TAdErrorCode;
import com.mbridge.msdk.mbsignalcommon.commonwebview.ToolBar;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.tn.lib.net.bean.BaseDto;
import com.tn.lib.view.StateView;
import com.tn.lib.widget.R$string;
import com.tn.lib.widget.dialog.TRDialog;
import com.tn.lib.widget.dialog.TRDialogListener;
import com.transsion.ad.bidding.base.AbsAdBidding;
import com.transsion.ad.bidding.base.BiddingIntermediateMaterialBean;
import com.transsion.ad.bidding.nativead.BiddingListManager;
import com.transsion.ad.bidding.nativead.BiddingNativeManager;
import com.transsion.baselib.db.audio.AudioBean;
import com.transsion.baseui.fragment.PageStatusFragment;
import com.transsion.mb.config.manager.ConfigBean;
import com.transsion.moviedetail.R$layout;
import com.transsion.moviedetail.view.SubjectCommentsLoadMoreView;
import com.transsion.moviedetail.viewmodel.HotViewModel;
import com.transsion.moviedetailapi.AbsSubjectListViewModel;
import com.transsion.moviedetailapi.SubjectType;
import com.transsion.moviedetailapi.bean.Audio;
import com.transsion.moviedetailapi.bean.Group;
import com.transsion.moviedetailapi.bean.LikeBean;
import com.transsion.moviedetailapi.bean.Media;
import com.transsion.moviedetailapi.bean.Pager;
import com.transsion.moviedetailapi.bean.PostSubjectBean;
import com.transsion.moviedetailapi.bean.PostSubjectItem;
import com.transsion.moviedetailapi.bean.RoomBean;
import com.transsion.moviedetailapi.bean.RoomItem;
import com.transsion.moviedetailapi.bean.Stat;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.moviedetailapi.bean.User;
import com.transsion.moviedetailapi.p006enum.PostListSource;
import com.transsion.moviedetailapi.p006enum.ProfileSubSource;
import com.transsion.ninegridview.helper.FileHelper;
import com.transsion.postdetail.R$id;
import com.transsion.postdetail.util.PostSaveHelper;
import com.transsion.postdetailapi.IPostDetailApi;
import com.transsion.room.api.IAudioApi;
import com.transsion.room.api.IFloatingApi;
import com.transsion.room.api.IRoomApi;
import com.transsion.room.api.RoomsViewType;
import com.transsion.share.bean.PostType;
import com.transsion.share.share.ShareDialogFragment;
import com.transsion.user.action.sync.event.CommentEvent;
import com.transsion.usercenterapi.ReportType;
import com.transsion.web.api.WebConstants;
import com.transsion.web.api.WebPageIdentity;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import com.transsnet.flow.event.sync.event.LikeEvent;
import com.transsnet.loginapi.ILoginApi;
import com.transsnet.loginapi.bean.UserInfo;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000 \u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0015\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\b\u0016\u0018\u0000 ¼\u00012\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u00032\u00020\u0004:\u0002½\u0001B\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\b\u0010\u0006J\u000f\u0010\t\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\t\u0010\u0006J\u000f\u0010\n\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\n\u0010\u0006J\u0019\u0010\r\u001a\u00020\u00072\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u000f\u0010\u0006J\u000f\u0010\u0010\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u0010\u0010\u0006J\u000f\u0010\u0011\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u0011\u0010\u0006J\u0017\u0010\u0014\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u0012H\u0002¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u0016\u0010\u0006J\u000f\u0010\u0017\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u0017\u0010\u0006J\u000f\u0010\u0018\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u0018\u0010\u0006J#\u0010\u001d\u001a\u00020\u00072\b\u0010\u001a\u001a\u0004\u0018\u00010\u00192\b\u0010\u001c\u001a\u0004\u0018\u00010\u001bH\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ\u0019\u0010!\u001a\u00020\u00072\b\u0010 \u001a\u0004\u0018\u00010\u001fH\u0002¢\u0006\u0004\b!\u0010\"J\u000f\u0010#\u001a\u00020\u0007H\u0002¢\u0006\u0004\b#\u0010\u0006J\u000f\u0010$\u001a\u00020\u0007H\u0002¢\u0006\u0004\b$\u0010\u0006J\u0019\u0010%\u001a\u00020\u00072\b\u0010 \u001a\u0004\u0018\u00010\u001fH\u0002¢\u0006\u0004\b%\u0010\"J!\u0010'\u001a\u00020\u00072\b\u0010 \u001a\u0004\u0018\u00010\u001f2\u0006\u0010&\u001a\u00020\u001bH\u0002¢\u0006\u0004\b'\u0010(J\u001f\u0010+\u001a\u00020\u00072\u000e\u0010*\u001a\n\u0012\u0004\u0012\u00020\u0019\u0018\u00010)H\u0002¢\u0006\u0004\b+\u0010,J\u0019\u0010.\u001a\u00020\u00072\b\u0010-\u001a\u0004\u0018\u00010\u0019H\u0002¢\u0006\u0004\b.\u0010/J\u0019\u00101\u001a\u00020\u00072\b\u00100\u001a\u0004\u0018\u00010\u0019H\u0002¢\u0006\u0004\b1\u0010/J\u0019\u00103\u001a\u00020\u00072\b\u00102\u001a\u0004\u0018\u00010\u001fH\u0002¢\u0006\u0004\b3\u0010\"J\u000f\u00104\u001a\u00020\u0007H\u0002¢\u0006\u0004\b4\u0010\u0006J\u000f\u00105\u001a\u00020\u0007H\u0002¢\u0006\u0004\b5\u0010\u0006J\u000f\u00106\u001a\u00020\u0007H\u0002¢\u0006\u0004\b6\u0010\u0006J\u000f\u00107\u001a\u00020\u0007H\u0002¢\u0006\u0004\b7\u0010\u0006J\u000f\u00108\u001a\u00020\u0007H\u0002¢\u0006\u0004\b8\u0010\u0006J\u000f\u00109\u001a\u00020\u0007H\u0002¢\u0006\u0004\b9\u0010\u0006J\u000f\u0010:\u001a\u00020\u0007H\u0002¢\u0006\u0004\b:\u0010\u0006J\u000f\u0010;\u001a\u00020\u0019H\u0002¢\u0006\u0004\b;\u0010<J\u000f\u0010=\u001a\u00020\u0019H\u0002¢\u0006\u0004\b=\u0010<J\u001b\u0010@\u001a\u0004\u0018\u00010\u001f2\b\u0010?\u001a\u0004\u0018\u00010>H\u0002¢\u0006\u0004\b@\u0010AJ\u000f\u0010C\u001a\u00020BH\u0002¢\u0006\u0004\bC\u0010DJ\u0019\u0010G\u001a\u00020\u00072\b\u0010F\u001a\u0004\u0018\u00010EH\u0016¢\u0006\u0004\bG\u0010HJ\u0017\u0010K\u001a\u00020\u00022\u0006\u0010J\u001a\u00020IH\u0016¢\u0006\u0004\bK\u0010LJ\u000f\u0010M\u001a\u00020\u0019H\u0016¢\u0006\u0004\bM\u0010<J\u000f\u0010N\u001a\u00020\u001bH\u0016¢\u0006\u0004\bN\u0010OJ\u000f\u0010P\u001a\u00020\u0007H\u0016¢\u0006\u0004\bP\u0010\u0006J\u001f\u0010U\u001a\u00020\u00072\u0006\u0010R\u001a\u00020Q2\u0006\u0010T\u001a\u00020SH\u0016¢\u0006\u0004\bU\u0010VJ\u000f\u0010W\u001a\u00020\u0007H\u0016¢\u0006\u0004\bW\u0010\u0006J\u000f\u0010X\u001a\u00020\u0007H\u0016¢\u0006\u0004\bX\u0010\u0006J\u000f\u0010Y\u001a\u00020\u0007H\u0016¢\u0006\u0004\bY\u0010\u0006J\r\u0010Z\u001a\u00020\u0007¢\u0006\u0004\bZ\u0010\u0006J\u0017\u0010]\u001a\u00020\u00072\u0006\u0010\\\u001a\u00020[H\u0016¢\u0006\u0004\b]\u0010^J\u0017\u0010_\u001a\u00020\u00072\u0006\u0010\\\u001a\u00020[H\u0016¢\u0006\u0004\b_\u0010^J1\u0010f\u001a\u00020\u00072\u0006\u0010a\u001a\u00020`2\u0010\u0010c\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00190b2\u0006\u0010e\u001a\u00020dH\u0016¢\u0006\u0004\bf\u0010gJ\u000f\u0010h\u001a\u00020\u0007H\u0016¢\u0006\u0004\bh\u0010\u0006J\u000f\u0010i\u001a\u00020\u0007H\u0016¢\u0006\u0004\bi\u0010\u0006J\u000f\u0010j\u001a\u00020\u0007H\u0016¢\u0006\u0004\bj\u0010\u0006J\u0011\u0010l\u001a\u0004\u0018\u00010kH\u0016¢\u0006\u0004\bl\u0010mJ\u0017\u0010o\u001a\u00020k2\u0006\u0010n\u001a\u00020\u001bH\u0016¢\u0006\u0004\bo\u0010pJ\u0017\u0010q\u001a\u00020k2\u0006\u0010n\u001a\u00020\u001bH\u0016¢\u0006\u0004\bq\u0010pJ\u0017\u0010s\u001a\u00020\u00072\u0006\u0010r\u001a\u00020\u001bH\u0016¢\u0006\u0004\bs\u0010tJ\u000f\u0010v\u001a\u00020uH\u0016¢\u0006\u0004\bv\u0010wJ\u0017\u0010y\u001a\u00020\u00072\u0006\u0010x\u001a\u00020\u001bH\u0016¢\u0006\u0004\by\u0010tR\u0018\u0010{\u001a\u0004\u0018\u00010z8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b{\u0010|R\u0018\u0010~\u001a\u0004\u0018\u00010}8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b~\u0010\u007fR\u001c\u0010\u0081\u0001\u001a\u0005\u0018\u00010\u0080\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0081\u0001\u0010\u0082\u0001R\u001c\u0010\u0084\u0001\u001a\u0005\u0018\u00010\u0083\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0084\u0001\u0010\u0085\u0001R\u001c\u0010\u0087\u0001\u001a\u0005\u0018\u00010\u0086\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0087\u0001\u0010\u0088\u0001R\u001b\u0010\u0089\u0001\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0089\u0001\u0010\u008a\u0001R\u001b\u0010\u008b\u0001\u001a\u0004\u0018\u00010\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008b\u0001\u0010\u008c\u0001R#\u0010\u008f\u0001\u001a\f\u0012\u0005\u0012\u00030\u008e\u0001\u0018\u00010\u008d\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008f\u0001\u0010\u0090\u0001R#\u0010\u0096\u0001\u001a\u0005\u0018\u00010\u0091\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b\u0092\u0001\u0010\u0093\u0001\u001a\u0006\b\u0094\u0001\u0010\u0095\u0001R#\u0010\u009b\u0001\u001a\u0005\u0018\u00010\u0097\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b\u0098\u0001\u0010\u0093\u0001\u001a\u0006\b\u0099\u0001\u0010\u009a\u0001R#\u0010 \u0001\u001a\u0005\u0018\u00010\u009c\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b\u009d\u0001\u0010\u0093\u0001\u001a\u0006\b\u009e\u0001\u0010\u009f\u0001R\u001c\u0010¢\u0001\u001a\u0005\u0018\u00010¡\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¢\u0001\u0010£\u0001R\u001b\u0010¤\u0001\u001a\u0004\u0018\u00010k8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¤\u0001\u0010¥\u0001R#\u0010ª\u0001\u001a\u0005\u0018\u00010¦\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b§\u0001\u0010\u0093\u0001\u001a\u0006\b¨\u0001\u0010©\u0001R\u001c\u0010¬\u0001\u001a\u0005\u0018\u00010«\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¬\u0001\u0010\u00ad\u0001R\u001c\u0010¯\u0001\u001a\u0005\u0018\u00010®\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¯\u0001\u0010°\u0001R\u0019\u0010±\u0001\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b±\u0001\u0010²\u0001R\u001b\u0010³\u0001\u001a\u0004\u0018\u00010\u00198\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b³\u0001\u0010´\u0001R2\u0010º\u0001\u001a\u0014\u0012\u0004\u0012\u00020\u00190µ\u0001j\t\u0012\u0004\u0012\u00020\u0019`¶\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b·\u0001\u0010\u0093\u0001\u001a\u0006\b¸\u0001\u0010¹\u0001R\u0019\u0010»\u0001\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b»\u0001\u0010²\u0001¨\u0006¾\u0001"}, d2 = {"Lcom/transsion/moviedetail/fragment/SubjectListFragment;", "Lcom/transsion/baseui/fragment/PageStatusFragment;", "Lcn/g;", "Lix/a;", "Lcom/tn/lib/widget/dialog/TRDialogListener;", "<init>", "()V", "", "initExposureHelper", "initLaunch", "initLiveData", "Lcom/transsion/moviedetailapi/bean/PostSubjectBean;", "postSubjectBean", "updateSubjectList", "(Lcom/transsion/moviedetailapi/bean/PostSubjectBean;)V", "initScrollListener", "initPlayer", "checkToShowEmptyView", "Lcom/transsion/moviedetailapi/bean/LikeBean;", "likeBean", "updateLikeStatus", "(Lcom/transsion/moviedetailapi/bean/LikeBean;)V", "lazyLoadData", "loadMore", "initClickListener", "", "postId", "", "hasLike", "like", "(Ljava/lang/String;Ljava/lang/Boolean;)V", "Lcom/transsion/moviedetailapi/bean/PostSubjectItem;", "postItem", "onDownLoadClick", "(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V", "requestPermission", "showSettingDialog", "share", "fromComment", "openDetail", "(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Z)V", "Lcom/tn/lib/net/bean/BaseDto;", "data", "updateDeletePost", "(Lcom/tn/lib/net/bean/BaseDto;)V", "id", "removePost", "(Ljava/lang/String;)V", "url", "toWeb", WebConstants.FIELD_ITEM, "showAudioFloating", "observeDelete", "observeLike", "observeComment", "initAd", "insertLast", "initListVideoPreload", "localLogPause", "pageName", "()Ljava/lang/String;", "subpageName", "Lcom/transsion/moviedetailapi/bean/RoomBean;", "bean", "getRecommendRoomsBean", "(Lcom/transsion/moviedetailapi/bean/RoomBean;)Lcom/transsion/moviedetailapi/bean/PostSubjectItem;", "", "getPostExposurePercent", "()F", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "getViewBinding", "(Landroid/view/LayoutInflater;)Lcn/g;", "getPageStateLayoutTitle", "isAudioShowNoNetworkLayout", "()Z", "initViewData", "Landroid/net/Network;", "network", "Landroid/net/NetworkCapabilities;", "networkCapabilities", "onConnected", "(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V", "initViewModel", "initListener", "retryLoadData", ToolBar.REFRESH, "Lcom/tn/lib/widget/dialog/TRDialog;", "dialog", "onLeftButtonClick", "(Lcom/tn/lib/widget/dialog/TRDialog;)V", "onRightButtonClick", "", "requestCode", "", "permissions", "", "grantResults", "onRequestPermissionsResult", "(I[Ljava/lang/String;[I)V", "onResume", "onPause", "onDestroy", "Landroid/view/View;", "getLoadingView", "()Landroid/view/View;", "isShowTitleLayout", "getLocalNoNetworkView", "(Z)Landroid/view/View;", "getEmptyView", "hidden", "onHiddenChanged", "(Z)V", "Lhj/b;", "newLogViewConfig", "()Lhj/b;", "fullscreen", "onScreenChange", "Lsj/b;", "mExposureHelper", "Lsj/b;", "Lcom/transsion/ad/bidding/nativead/BiddingListManager;", "middleListManager", "Lcom/transsion/ad/bidding/nativead/BiddingListManager;", "Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;", "nativeManager", "Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;", "Lcom/transsion/moviedetailapi/AbsSubjectListViewModel;", "mHotViewModel", "Lcom/transsion/moviedetailapi/AbsSubjectListViewModel;", "Lcom/transsion/moviedetail/adapter/j;", "mAdapter", "Lcom/transsion/moviedetail/adapter/j;", "mPostSubjectBean", "Lcom/transsion/moviedetailapi/bean/PostSubjectBean;", "mPostSubjectItem", "Lcom/transsion/moviedetailapi/bean/PostSubjectItem;", "Landroidx/activity/result/b;", "Landroid/content/Intent;", "postDetailLauncher", "Landroidx/activity/result/b;", "Lcom/transsnet/loginapi/ILoginApi;", "mLoginApi$delegate", "Lkotlin/Lazy;", "getMLoginApi", "()Lcom/transsnet/loginapi/ILoginApi;", "mLoginApi", "Lcom/transsion/room/api/IAudioApi;", "mAudioApi$delegate", "getMAudioApi", "()Lcom/transsion/room/api/IAudioApi;", "mAudioApi", "Lcom/transsion/room/api/IFloatingApi;", "mFloatApi$delegate", "getMFloatApi", "()Lcom/transsion/room/api/IFloatingApi;", "mFloatApi", "Laq/c;", "mRoomView", "Laq/c;", "mEmptyLayout", "Landroid/view/View;", "Lcom/transsion/room/api/IRoomApi;", "mRoomApi$delegate", "getMRoomApi", "()Lcom/transsion/room/api/IRoomApi;", "mRoomApi", "Lcom/transsion/ninegridview/a;", "mGifPlayerManager", "Lcom/transsion/ninegridview/a;", "Lcom/transsion/moviedetailapi/bean/Subject;", "mSubject", "Lcom/transsion/moviedetailapi/bean/Subject;", "firstLoad", "Z", "curPageName", "Ljava/lang/String;", "Ljava/util/HashSet;", "Lkotlin/collections/HashSet;", "mExposureList$delegate", "getMExposureList", "()Ljava/util/HashSet;", "mExposureList", "isFirst", "Companion", "a", "MovieDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public class SubjectListFragment extends PageStatusFragment<cn.g> implements ix.a, TRDialogListener {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final String KEY_POST_EXPOSURE_PERCENT = "sa_post_exposure_percent";
    public static final String TAG = "MoveListFragment";
    private String curPageName;
    private boolean firstLoad;
    private com.transsion.moviedetail.adapter.j mAdapter;
    private View mEmptyLayout;
    private sj.b mExposureHelper;
    private com.transsion.ninegridview.a mGifPlayerManager;
    private AbsSubjectListViewModel mHotViewModel;
    private PostSubjectBean mPostSubjectBean;
    private PostSubjectItem mPostSubjectItem;
    private aq.c mRoomView;
    private Subject mSubject;
    private BiddingListManager middleListManager;
    private BiddingNativeManager nativeManager;
    private androidx.activity.result.b postDetailLauncher;

    /* JADX INFO: renamed from: mLoginApi$delegate, reason: from kotlin metadata */
    private final Lazy mLoginApi = LazyKt.b(new Function0() { // from class: com.transsion.moviedetail.fragment.h2
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return SubjectListFragment.mLoginApi_delegate$lambda$0();
        }
    });

    /* JADX INFO: renamed from: mAudioApi$delegate, reason: from kotlin metadata */
    private final Lazy mAudioApi = LazyKt.b(new Function0() { // from class: com.transsion.moviedetail.fragment.i2
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return SubjectListFragment.mAudioApi_delegate$lambda$1();
        }
    });

    /* JADX INFO: renamed from: mFloatApi$delegate, reason: from kotlin metadata */
    private final Lazy mFloatApi = LazyKt.b(new Function0() { // from class: com.transsion.moviedetail.fragment.j2
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return SubjectListFragment.mFloatApi_delegate$lambda$2();
        }
    });

    /* JADX INFO: renamed from: mRoomApi$delegate, reason: from kotlin metadata */
    private final Lazy mRoomApi = LazyKt.b(new Function0() { // from class: com.transsion.moviedetail.fragment.k2
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return SubjectListFragment.mRoomApi_delegate$lambda$3();
        }
    });

    /* JADX INFO: renamed from: mExposureList$delegate, reason: from kotlin metadata */
    private final Lazy mExposureList = LazyKt.b(new Function0() { // from class: com.transsion.moviedetail.fragment.l2
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return SubjectListFragment.mExposureList_delegate$lambda$4();
        }
    });
    private boolean isFirst = true;

    /* JADX INFO: renamed from: com.transsion.moviedetail.fragment.SubjectListFragment$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final SubjectListFragment a(Bundle params, Class type) {
            Intrinsics.h(params, "params");
            Intrinsics.h(type, "type");
            SubjectListFragment subjectListFragment = new SubjectListFragment();
            params.putSerializable("view_model_type", type);
            subjectListFragment.setArguments(params);
            return subjectListFragment;
        }
    }

    public static final class b implements sj.a {
        b() {
        }

        @Override // sj.a
        public void a(int i11, long j11, View view) {
            PostSubjectItem postSubjectItem;
            AbsSubjectListViewModel absSubjectListViewModelS1;
            PostListSource postListSourceA;
            SubjectListFragment subjectListFragment = SubjectListFragment.this;
            try {
                Result.Companion companion = Result.INSTANCE;
                com.transsion.moviedetail.adapter.j jVar = subjectListFragment.mAdapter;
                if (jVar != null && (postSubjectItem = (PostSubjectItem) jVar.getItem(i11)) != null) {
                    String strName = "";
                    if (subjectListFragment.mAdapter != null) {
                        com.transsion.moviedetail.adapter.j jVar2 = subjectListFragment.mAdapter;
                        strName = (jVar2 == null || (absSubjectListViewModelS1 = jVar2.getViewModel()) == null || (postListSourceA = absSubjectListViewModelS1.A()) == null) ? null : postListSourceA.name();
                    }
                    String str = strName;
                    if (!CollectionsKt.b0(subjectListFragment.getMExposureList(), postSubjectItem.getPostId())) {
                        String postId = postSubjectItem.getPostId();
                        if (postId != null) {
                            subjectListFragment.getMExposureList().add(postId);
                        }
                        com.transsion.postdetail.helper.a.f48866a.w(str, subjectListFragment.pageName(), subjectListFragment.subpageName(), i11, j11, postSubjectItem, (64 & 64) != 0 ? null : null);
                    }
                }
                Result.m454constructorimpl(Unit.f67061a);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m454constructorimpl(ResultKt.a(th2));
            }
        }
    }

    public static final class c extends RecyclerView.r {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f47087a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f47088b;

        c() {
        }

        private final void d(RecyclerView recyclerView) {
            RecyclerView.m layoutManager = recyclerView.getLayoutManager();
            if (!(layoutManager instanceof LinearLayoutManager)) {
                throw new RuntimeException("Unsupported layoutManager.");
            }
            LinearLayoutManager linearLayoutManager = (LinearLayoutManager) layoutManager;
            this.f47087a = linearLayoutManager.findLastCompletelyVisibleItemPosition();
            this.f47088b = linearLayoutManager.findFirstCompletelyVisibleItemPosition();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.r
        public void onScrollStateChanged(RecyclerView recyclerView, int i11) {
            com.transsion.moviedetail.adapter.j jVar;
            r6.f fVarH0;
            r6.f fVarH1;
            Intrinsics.h(recyclerView, "recyclerView");
            RecyclerView.m layoutManager = recyclerView.getLayoutManager();
            int childCount = layoutManager != null ? layoutManager.getChildCount() : 0;
            int itemCount = layoutManager != null ? layoutManager.getItemCount() : 0;
            if (i11 != 0 || childCount <= 0 || this.f47087a < itemCount - 1) {
                return;
            }
            com.transsion.moviedetail.adapter.j jVar2 = SubjectListFragment.this.mAdapter;
            if (((jVar2 == null || (fVarH1 = jVar2.h0()) == null) ? null : fVarH1.i()) != LoadMoreStatus.Fail || (jVar = SubjectListFragment.this.mAdapter) == null || (fVarH0 = jVar.h0()) == null) {
                return;
            }
            fVarH0.w();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.r
        public void onScrolled(RecyclerView recyclerView, int i11, int i12) {
            Intrinsics.h(recyclerView, "recyclerView");
            d(recyclerView);
        }
    }

    public static final class d extends DiffUtil.e {
        d() {
        }

        @Override // androidx.recyclerview.widget.DiffUtil.e
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public boolean areContentsTheSame(PostSubjectItem oldItem, PostSubjectItem newItem) {
            Intrinsics.h(oldItem, "oldItem");
            Intrinsics.h(newItem, "newItem");
            return Intrinsics.c(String.valueOf(oldItem.getPostId()), String.valueOf(newItem.getPostId()));
        }

        @Override // androidx.recyclerview.widget.DiffUtil.e
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public boolean areItemsTheSame(PostSubjectItem oldItem, PostSubjectItem newItem) {
            Intrinsics.h(oldItem, "oldItem");
            Intrinsics.h(newItem, "newItem");
            Subject subject = oldItem.getSubject();
            String subjectId = subject != null ? subject.getSubjectId() : null;
            Subject subject2 = newItem.getSubject();
            return Intrinsics.c(subjectId, subject2 != null ? subject2.getSubjectId() : null);
        }
    }

    public static final class e implements com.transsion.share.share.a {
        e() {
        }

        @Override // com.transsion.share.share.a
        public void a(String id2, PostType postType) {
            Intrinsics.h(id2, "id");
            AbsSubjectListViewModel absSubjectListViewModel = SubjectListFragment.this.mHotViewModel;
            if (absSubjectListViewModel != null) {
                absSubjectListViewModel.m(id2);
            }
        }

        @Override // com.transsion.share.share.a
        public void b(String str) {
            lg.a.C0828a.f(lg.a.f68839a, SubjectListFragment.TAG, "id" + str, false, 4, null);
            SubjectListFragment.this.removePost(str);
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

    /* JADX INFO: renamed from: com.transsion.moviedetail.fragment.SubjectListFragment$insertLast$1, reason: invalid class name */
    /* JADX INFO: loaded from: classes6.dex */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.moviedetail.fragment.SubjectListFragment$insertLast$1", f = "SubjectListFragment.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
        final /* synthetic */ List<PostSubjectItem> $dataList;
        int label;

        /* JADX INFO: renamed from: com.transsion.moviedetail.fragment.SubjectListFragment$insertLast$1$2, reason: invalid class name */
        /* JADX INFO: loaded from: classes5.dex */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
        @DebugMetadata(c = "com.transsion.moviedetail.fragment.SubjectListFragment$insertLast$1$2", f = "SubjectListFragment.kt", l = {1174}, m = "invokeSuspend")
        static final class AnonymousClass2 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
            int label;
            final /* synthetic */ SubjectListFragment this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass2(SubjectListFragment subjectListFragment, Continuation<? super AnonymousClass2> continuation) {
                super(2, continuation);
                this.this$0 = subjectListFragment;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new AnonymousClass2(this.this$0, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
                return ((AnonymousClass2) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) throws Throwable {
                Object objF = IntrinsicsKt.f();
                int i11 = this.label;
                if (i11 == 0) {
                    ResultKt.b(obj);
                    BiddingNativeManager biddingNativeManager = this.this$0.nativeManager;
                    if (biddingNativeManager != null) {
                        this.label = 1;
                        if (AbsAdBidding.w0(biddingNativeManager, 0, false, this, 3, null) == objF) {
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

        /* JADX INFO: renamed from: com.transsion.moviedetail.fragment.SubjectListFragment$insertLast$1$a */
        public static final class a extends di.a {

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            final /* synthetic */ SubjectListFragment f47091d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            final /* synthetic */ List f47092e;

            a(SubjectListFragment subjectListFragment, List list) {
                this.f47091d = subjectListFragment;
                this.f47092e = list;
            }

            @Override // di.a
            public void i(TAdErrorCode tAdErrorCode) {
                super.i(tAdErrorCode);
            }

            @Override // di.a
            public void j(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
                Function2 function2R;
                super.j(biddingIntermediateMaterialBean);
                BiddingNativeManager biddingNativeManager = this.f47091d.nativeManager;
                if (biddingNativeManager != null) {
                    SubjectListFragment subjectListFragment = this.f47091d;
                    List list = this.f47092e;
                    BiddingListManager biddingListManager = subjectListFragment.middleListManager;
                    if (biddingListManager != null && (function2R = biddingListManager.r()) != null) {
                    }
                    BiddingListManager biddingListManager2 = subjectListFragment.middleListManager;
                    if (biddingListManager2 != null) {
                        biddingListManager2.D(null);
                    }
                }
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(List<PostSubjectItem> list, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$dataList = list;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return SubjectListFragment.this.new AnonymousClass1(this.$dataList, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            IntrinsicsKt.f();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
            SubjectListFragment.this.nativeManager = new BiddingNativeManager();
            BiddingNativeManager biddingNativeManager = SubjectListFragment.this.nativeManager;
            if (biddingNativeManager != null) {
                biddingNativeManager.O0("SubjectDetailRecommendScene");
            }
            BiddingNativeManager biddingNativeManager2 = SubjectListFragment.this.nativeManager;
            if (biddingNativeManager2 != null) {
                biddingNativeManager2.N0(new a(SubjectListFragment.this, this.$dataList));
            }
            kotlinx.coroutines.k.d(androidx.p009lifecycle.v.a(SubjectListFragment.this), null, null, new AnonymousClass2(SubjectListFragment.this, null), 3, null);
            return Unit.f67061a;
        }
    }

    private final void checkToShowEmptyView() {
        PostSubjectItem recommendRoomsBean;
        aq.c cVar;
        View view;
        Unit unit;
        aq.c cVar2;
        View view2;
        String value;
        ProfileSubSource profileSubSourceB;
        RecyclerView recyclerView;
        cn.g mViewBinding;
        RecyclerView recyclerView2;
        com.transsion.moviedetail.adapter.j jVar = this.mAdapter;
        if (jVar == null || jVar.getItemCount() != 0) {
            return;
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            cn.g mViewBinding2 = getMViewBinding();
            if (mViewBinding2 != null && (recyclerView = mViewBinding2.f17353b) != null && recyclerView.getItemDecorationCount() == 0 && (mViewBinding = getMViewBinding()) != null && (recyclerView2 = mViewBinding.f17353b) != null) {
                recyclerView2.addItemDecoration(new ig.i(com.blankj.utilcode.util.a0.a(16.0f), 0));
            }
            Context context = getContext();
            Unit unit2 = null;
            if (context != null) {
                if (this.mRoomView == null) {
                    IRoomApi mRoomApi = getMRoomApi();
                    this.mRoomView = mRoomApi != null ? mRoomApi.c(context, RoomsViewType.TYPE_SUBJECT_DETAIL) : null;
                }
                AbsSubjectListViewModel absSubjectListViewModel = this.mHotViewModel;
                if (absSubjectListViewModel instanceof HotViewModel) {
                    Intrinsics.f(absSubjectListViewModel, "null cannot be cast to non-null type com.transsion.moviedetail.viewmodel.HotViewModel");
                    RoomBean roomBean = (RoomBean) ((HotViewModel) absSubjectListViewModel).d0().f();
                    if (roomBean != null && (recommendRoomsBean = getRecommendRoomsBean(roomBean)) != null) {
                        List<RoomItem> roomList = recommendRoomsBean.getRoomList();
                        if (roomList != null) {
                            aq.c cVar3 = this.mRoomView;
                            if (cVar3 != null) {
                                String strPageName = pageName();
                                AbsSubjectListViewModel absSubjectListViewModel2 = this.mHotViewModel;
                                if (absSubjectListViewModel2 == null || (profileSubSourceB = absSubjectListViewModel2.B()) == null || (value = profileSubSourceB.getValue()) == null) {
                                    value = ProfileSubSource.COMMENTS.getValue();
                                }
                                cVar3.setReportName(strPageName, value);
                            }
                            aq.c cVar4 = this.mRoomView;
                            if (cVar4 != null) {
                                cVar4.setList(roomList);
                                unit = Unit.f67061a;
                            } else {
                                unit = null;
                            }
                            if (unit != null && (cVar2 = this.mRoomView) != null && (view2 = cVar2.getView()) != null) {
                                jg.c.g(view2);
                                unit2 = Unit.f67061a;
                            }
                        }
                        if (unit2 != null && (cVar = this.mRoomView) != null && (view = cVar.getView()) != null) {
                            jg.c.g(view);
                        }
                    }
                }
                com.transsion.moviedetail.adapter.j jVar2 = this.mAdapter;
                if (jVar2 != null) {
                    jVar2.Y0(getEmptyView(false));
                }
                com.transsion.moviedetail.adapter.j jVar3 = this.mAdapter;
                if (jVar3 != null) {
                    jVar3.z1(true);
                }
                unit2 = Unit.f67061a;
            }
            Result.m454constructorimpl(unit2);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th2));
        }
    }

    private final IAudioApi getMAudioApi() {
        return (IAudioApi) this.mAudioApi.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final HashSet<String> getMExposureList() {
        return (HashSet) this.mExposureList.getValue();
    }

    private final IFloatingApi getMFloatApi() {
        return (IFloatingApi) this.mFloatApi.getValue();
    }

    private final ILoginApi getMLoginApi() {
        return (ILoginApi) this.mLoginApi.getValue();
    }

    private final IRoomApi getMRoomApi() {
        return (IRoomApi) this.mRoomApi.getValue();
    }

    private final float getPostExposurePercent() {
        Float fT;
        ConfigBean configBeanD = sm.f.d(sm.f.f75407c.a(), KEY_POST_EXPOSURE_PERCENT, false, 2, null);
        String value = configBeanD != null ? configBeanD.getValue() : null;
        if (value == null || value.length() == 0 || (fT = StringsKt.t(value)) == null) {
            return 0.6f;
        }
        return fT.floatValue();
    }

    private final PostSubjectItem getRecommendRoomsBean(RoomBean bean) {
        List<Object> data;
        PostSubjectItem postSubjectItem;
        List<RoomItem> items = bean != null ? bean.getItems() : null;
        List<RoomItem> list = items;
        if (list == null || list.isEmpty()) {
            return null;
        }
        com.transsion.moviedetail.adapter.j jVar = this.mAdapter;
        if (jVar != null && (data = jVar.getData()) != null && (postSubjectItem = (PostSubjectItem) CollectionsKt.k0(data)) != null && postSubjectItem.isRoomList()) {
            return null;
        }
        if (items.size() > 3) {
            items = items.subList(0, 3);
        }
        PostSubjectItem postSubjectItem2 = new PostSubjectItem(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, null, null, false, null, false, null, false, false, false, false, null, -1, 1, null);
        postSubjectItem2.setRoomList(true);
        postSubjectItem2.setRoomList(items);
        return postSubjectItem2;
    }

    private final void initAd() {
        AbsSubjectListViewModel absSubjectListViewModel = this.mHotViewModel;
        if ((absSubjectListViewModel != null ? absSubjectListViewModel.A() : null) != PostListSource.SUBJECT) {
            return;
        }
        BiddingListManager biddingListManager = new BiddingListManager();
        this.middleListManager = biddingListManager;
        cn.g mViewBinding = getMViewBinding();
        biddingListManager.F(mViewBinding != null ? mViewBinding.f17353b : null);
        BiddingListManager biddingListManager2 = this.middleListManager;
        if (biddingListManager2 != null) {
            biddingListManager2.A(androidx.p009lifecycle.v.a(this));
        }
        BiddingListManager biddingListManager3 = this.middleListManager;
        if (biddingListManager3 != null) {
            biddingListManager3.G("SubjectDetailRecommendScene");
        }
        BiddingListManager biddingListManager4 = this.middleListManager;
        if (biddingListManager4 != null) {
            biddingListManager4.z(new Function2() { // from class: com.transsion.moviedetail.fragment.u1
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return SubjectListFragment.initAd$lambda$60(this.f47237a, ((Integer) obj).intValue(), (BiddingNativeManager) obj2);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit initAd$lambda$60(SubjectListFragment subjectListFragment, int i11, BiddingNativeManager current) {
        List<Object> data;
        Intrinsics.h(current, "current");
        if (current != null) {
            PostSubjectItem postSubjectItem = new PostSubjectItem(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, null, null, false, null, false, null, false, false, false, false, null, -1, 1, null);
            postSubjectItem.setNonAdDelegate(current);
            com.transsion.moviedetail.adapter.j jVar = subjectListFragment.mAdapter;
            int size = (jVar == null || (data = jVar.getData()) == null) ? 0 : data.size();
            if (i11 <= size) {
                com.transsion.moviedetail.adapter.j jVar2 = subjectListFragment.mAdapter;
                if (jVar2 != null) {
                    jVar2.n(i11, postSubjectItem);
                }
            } else {
                com.transsion.moviedetail.adapter.j jVar3 = subjectListFragment.mAdapter;
                if (jVar3 != null) {
                    jVar3.n(size, postSubjectItem);
                }
            }
        }
        return Unit.f67061a;
    }

    private final void initClickListener() {
    }

    private final void initExposureHelper() {
        RecyclerView recyclerView;
        float postExposurePercent = getPostExposurePercent();
        lg.a.C0828a.f(lg.a.f68839a, "PostList", "initExposureHelper, postExposurePercent:" + postExposurePercent, false, 4, null);
        sj.b bVar = new sj.b(postExposurePercent, new b(), false, 4, null);
        bVar.n(2);
        cn.g mViewBinding = getMViewBinding();
        if (mViewBinding != null && (recyclerView = mViewBinding.f17353b) != null) {
            recyclerView.addOnScrollListener(bVar);
        }
        this.mExposureHelper = bVar;
    }

    private final void initLaunch() {
        this.postDetailLauncher = registerForActivityResult(new f.j(), new androidx.activity.result.a() { // from class: com.transsion.moviedetail.fragment.y1
            @Override // androidx.activity.result.a
            public final void a(Object obj) {
                SubjectListFragment.initLaunch$lambda$13(this.f47255a, (ActivityResult) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initLaunch$lambda$13(SubjectListFragment subjectListFragment, ActivityResult it) {
        Intrinsics.h(it, "it");
        if (it.getResultCode() == -1) {
            Intent data = it.getData();
            Serializable serializableExtra = data != null ? data.getSerializableExtra(MimeTypes.BASE_TYPE_AUDIO) : null;
            if (serializableExtra instanceof AudioBean) {
                lg.a.C0828a.f(lg.a.f68839a, TAG, "showFloating", false, 4, null);
                IFloatingApi iFloatingApi = (IFloatingApi) TheRouter.d(IFloatingApi.class, new Object[0]);
                if (iFloatingApi != null) {
                    iFloatingApi.a(new WeakReference(subjectListFragment.requireActivity()), (AudioBean) serializableExtra);
                }
            }
            Intent data2 = it.getData();
            subjectListFragment.removePost(data2 != null ? data2.getStringExtra("id") : null);
        }
    }

    private final void initListVideoPreload() {
        RecyclerView recyclerView;
        AbsSubjectListViewModel absSubjectListViewModel = this.mHotViewModel;
        if (absSubjectListViewModel != null) {
            if ((absSubjectListViewModel != null ? absSubjectListViewModel.A() : null) != PostListSource.SUBJECT) {
                return;
            }
            jn.b bVar = new jn.b(0.75f, new Function1() { // from class: com.transsion.moviedetail.fragment.z1
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return SubjectListFragment.initListVideoPreload$lambda$61(this.f47257a, ((Integer) obj).intValue());
                }
            });
            cn.g mViewBinding = getMViewBinding();
            if (mViewBinding == null || (recyclerView = mViewBinding.f17353b) == null) {
                return;
            }
            recyclerView.addOnScrollListener(bVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final PostSubjectItem initListVideoPreload$lambda$61(SubjectListFragment subjectListFragment, int i11) {
        List<Object> data;
        try {
            com.transsion.moviedetail.adapter.j jVar = subjectListFragment.mAdapter;
            if (jVar == null || (data = jVar.getData()) == null) {
                return null;
            }
            return (PostSubjectItem) data.get(i11);
        } catch (Throwable unused) {
            return null;
        }
    }

    private final void initLiveData() {
        AbsSubjectListViewModel absSubjectListViewModel = this.mHotViewModel;
        if (absSubjectListViewModel != null) {
            if (absSubjectListViewModel instanceof HotViewModel) {
                ((HotViewModel) absSubjectListViewModel).d0().j(this, new o2(new Function1() { // from class: com.transsion.moviedetail.fragment.a2
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return SubjectListFragment.initLiveData$lambda$22$lambda$14(this.f47146a, (RoomBean) obj);
                    }
                }));
            }
            absSubjectListViewModel.x().j(this, new o2(new Function1() { // from class: com.transsion.moviedetail.fragment.b2
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return SubjectListFragment.initLiveData$lambda$22$lambda$16(this.f47151a, (PostSubjectBean) obj);
                }
            }));
            absSubjectListViewModel.r().j(this, new o2(new Function1() { // from class: com.transsion.moviedetail.fragment.c2
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return SubjectListFragment.initLiveData$lambda$22$lambda$17(this.f47156a, (LikeBean) obj);
                }
            }));
            absSubjectListViewModel.n().j(getViewLifecycleOwner(), new o2(new Function1() { // from class: com.transsion.moviedetail.fragment.e2
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return SubjectListFragment.initLiveData$lambda$22$lambda$20(this.f47165a, (List) obj);
                }
            }));
            absSubjectListViewModel.p().j(getViewLifecycleOwner(), new o2(new Function1() { // from class: com.transsion.moviedetail.fragment.f2
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return SubjectListFragment.initLiveData$lambda$22$lambda$21(this.f47170a, (BaseDto) obj);
                }
            }));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit initLiveData$lambda$22$lambda$14(SubjectListFragment subjectListFragment, RoomBean roomBean) {
        AbsSubjectListViewModel absSubjectListViewModel;
        com.transsion.moviedetail.adapter.j jVar = subjectListFragment.mAdapter;
        List<Object> data = jVar != null ? jVar.getData() : null;
        if ((data == null || data.isEmpty()) && (absSubjectListViewModel = subjectListFragment.mHotViewModel) != null) {
            absSubjectListViewModel.E(true);
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit initLiveData$lambda$22$lambda$16(final SubjectListFragment subjectListFragment, final PostSubjectBean postSubjectBean) {
        RecyclerView recyclerView;
        hj.b logViewConfig = subjectListFragment.getLogViewConfig();
        if (logViewConfig != null) {
            logViewConfig.k(true);
        }
        subjectListFragment.showContentView();
        subjectListFragment.mPostSubjectBean = postSubjectBean;
        jn.d.d(subjectListFragment.getContext(), postSubjectBean != null ? postSubjectBean.getItems() : null);
        if (subjectListFragment.firstLoad) {
            cn.g mViewBinding = subjectListFragment.getMViewBinding();
            if (mViewBinding != null && (recyclerView = mViewBinding.f17353b) != null) {
                recyclerView.postDelayed(new Runnable() { // from class: com.transsion.moviedetail.fragment.s1
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f47225a.updateSubjectList(postSubjectBean);
                    }
                }, 300L);
            }
        } else {
            subjectListFragment.firstLoad = true;
            subjectListFragment.updateSubjectList(postSubjectBean);
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit initLiveData$lambda$22$lambda$17(SubjectListFragment subjectListFragment, LikeBean likeBean) {
        if (likeBean != null) {
            subjectListFragment.updateLikeStatus(likeBean);
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit initLiveData$lambda$22$lambda$20(SubjectListFragment subjectListFragment, List list) {
        List<Object> arrayList;
        com.transsion.moviedetail.adapter.j jVar;
        r6.f fVarH0;
        RecyclerView recyclerView;
        RecyclerView.m layoutManager;
        List<Object> data;
        PostSubjectItem postSubjectItem;
        if (list != null) {
            com.transsion.moviedetail.adapter.j jVar2 = subjectListFragment.mAdapter;
            if (jVar2 == null || (arrayList = jVar2.getData()) == null) {
                arrayList = new ArrayList<>();
            }
            ArrayList arrayList2 = new ArrayList();
            if (arrayList.isEmpty()) {
                arrayList2.addAll(list);
            } else {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    PostSubjectItem postSubjectItem2 = (PostSubjectItem) it.next();
                    if (!arrayList.contains(postSubjectItem2)) {
                        arrayList2.add(postSubjectItem2);
                    }
                }
            }
            com.transsion.moviedetail.adapter.j jVar3 = subjectListFragment.mAdapter;
            int i11 = (jVar3 == null || (data = jVar3.getData()) == null || (postSubjectItem = (PostSubjectItem) CollectionsKt.k0(data)) == null || !postSubjectItem.isRoomList()) ? 0 : 1;
            com.transsion.moviedetail.adapter.j jVar4 = subjectListFragment.mAdapter;
            if (jVar4 != null) {
                jVar4.o(i11, arrayList2);
            }
            cn.g mViewBinding = subjectListFragment.getMViewBinding();
            if (mViewBinding != null && (recyclerView = mViewBinding.f17353b) != null && (layoutManager = recyclerView.getLayoutManager()) != null) {
                try {
                    if ((layoutManager instanceof LinearLayoutManager) && ((LinearLayoutManager) layoutManager).findFirstVisibleItemPosition() <= 1) {
                        ((LinearLayoutManager) layoutManager).scrollToPosition(0);
                    }
                } catch (Exception unused) {
                }
            }
            com.transsion.moviedetail.adapter.j jVar5 = subjectListFragment.mAdapter;
            if ((jVar5 != null ? jVar5.getItemCount() : 0) == list.size() && (jVar = subjectListFragment.mAdapter) != null && (fVarH0 = jVar.h0()) != null) {
                fVarH0.t(false);
            }
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit initLiveData$lambda$22$lambda$21(SubjectListFragment subjectListFragment, BaseDto baseDto) {
        subjectListFragment.updateDeletePost(baseDto);
        return Unit.f67061a;
    }

    private final void initPlayer() {
        RecyclerView recyclerView;
        com.transsion.ninegridview.a aVar = new com.transsion.ninegridview.a();
        cn.g mViewBinding = getMViewBinding();
        if (mViewBinding != null && (recyclerView = mViewBinding.f17353b) != null) {
            aVar.n(recyclerView, this.mAdapter);
        }
        this.mGifPlayerManager = aVar;
    }

    private final void initScrollListener() {
        RecyclerView recyclerView;
        cn.g mViewBinding = getMViewBinding();
        if (mViewBinding == null || (recyclerView = mViewBinding.f17353b) == null) {
            return;
        }
        recyclerView.addOnScrollListener(new c());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public static final void initViewData$lambda$11$lambda$10(SubjectListFragment subjectListFragment, BaseQuickAdapter adapter, View view, int i11) {
        User user;
        User user2;
        User user3;
        User user4;
        Media media;
        Subject subject;
        Subject subject2;
        Subject subject3;
        Integer subjectType;
        AbsSubjectListViewModel absSubjectListViewModelS1;
        PostListSource postListSourceA;
        Group group;
        AbsSubjectListViewModel absSubjectListViewModel;
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "view");
        if (com.transsion.baseui.util.c.f43504a.a(view.getId(), 500L)) {
            return;
        }
        Object item = adapter.getItem(i11);
        String str = null;
        str = null;
        PostSubjectItem postSubjectItem = item instanceof PostSubjectItem ? (PostSubjectItem) item : null;
        int id2 = view.getId();
        if (id2 == R$id.v_post_share) {
            subjectListFragment.share(postSubjectItem);
            str = "share";
        } else if (id2 == R$id.v_post_download) {
            subjectListFragment.onDownLoadClick(postSubjectItem);
            subjectListFragment.mPostSubjectItem = postSubjectItem;
            str = "download";
        } else if (id2 == R$id.v_post_like) {
            String str2 = postSubjectItem != null ? Intrinsics.c(postSubjectItem.getHasLike(), Boolean.TRUE) : false ? "dislike" : "like";
            subjectListFragment.like(postSubjectItem != null ? postSubjectItem.getPostId() : null, postSubjectItem != null ? postSubjectItem.getHasLike() : null);
            str = str2;
        } else if (id2 == R$id.v_post_comment) {
            subjectListFragment.openDetail(postSubjectItem, true);
            str = "comment";
        } else if (id2 == R$id.tv_room_tag) {
            Navigator.x(TheRouter.c("/room/detail").K("id", (postSubjectItem == null || (group = postSubjectItem.getGroup()) == null) ? null : group.getGroupId()), subjectListFragment.requireContext(), null, 2, null);
            str = "group";
        } else if (id2 == R$id.fl_cover || id2 == R$id.tv_room_name || id2 == R$id.tv_post_date) {
            AbsSubjectListViewModel absSubjectListViewModel2 = subjectListFragment.mHotViewModel;
            if ((absSubjectListViewModel2 != null ? absSubjectListViewModel2.B() : null) == ProfileSubSource.POSTS) {
                Navigator.x(TheRouter.c("/post/detail").K(WebConstants.PAGE_FROM, subjectListFragment.pageName()).J("item_object", postSubjectItem).K("rec_ops", postSubjectItem != null ? postSubjectItem.getOps() : null).K("id", postSubjectItem != null ? postSubjectItem.getPostId() : null).K("item_type", postSubjectItem != null ? postSubjectItem.getItemType() : null).K("media_type", (postSubjectItem == null || (media = postSubjectItem.getMedia()) == null) ? null : media.getMediaType()), subjectListFragment.requireContext(), null, 2, null);
            } else {
                UserInfo userInfo = new UserInfo();
                userInfo.setUserId((postSubjectItem == null || (user4 = postSubjectItem.getUser()) == null) ? null : user4.getUserId());
                userInfo.setAvatar((postSubjectItem == null || (user3 = postSubjectItem.getUser()) == null) ? null : user3.getAvatar());
                userInfo.setUsername((postSubjectItem == null || (user2 = postSubjectItem.getUser()) == null) ? null : user2.getUsername());
                userInfo.setNickname((postSubjectItem == null || (user = postSubjectItem.getUser()) == null) ? null : user.getNickname());
                Navigator.x(TheRouter.c("/profile/user_profile").K("userId", userInfo.getUserId()), subjectListFragment.requireContext(), null, 2, null);
                str = "user_center";
            }
        } else if (id2 == com.transsion.moviedetail.R$id.cl_audio) {
            subjectListFragment.showAudioFloating(postSubjectItem);
            str = "audio_play";
        } else if (id2 == R$id.cl_subject_content) {
            com.transsion.moviedetail.adapter.j jVar = subjectListFragment.mAdapter;
            if (jVar != null && (absSubjectListViewModelS1 = jVar.getViewModel()) != null && (postListSourceA = absSubjectListViewModelS1.A()) != null) {
                postListSourceA.name();
            }
            Navigator.x(TheRouter.c("/movie/detail").F("subject_type", (postSubjectItem == null || (subject3 = postSubjectItem.getSubject()) == null || (subjectType = subject3.getSubjectType()) == null) ? SubjectType.MOVIE.getValue() : subjectType.intValue()).K("id", (postSubjectItem == null || (subject2 = postSubjectItem.getSubject()) == null) ? null : subject2.getSubjectId()).K("ops", (postSubjectItem == null || (subject = postSubjectItem.getSubject()) == null) ? null : subject.getOps()), subjectListFragment.requireContext(), null, 2, null);
            str = "subject";
        }
        if (postSubjectItem == null || (absSubjectListViewModel = subjectListFragment.mHotViewModel) == null) {
            return;
        }
        if (str == null) {
            str = "";
        }
        absSubjectListViewModel.J(postSubjectItem, i11, str, subjectListFragment.subpageName());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initViewData$lambda$11$lambda$8(SubjectListFragment subjectListFragment, BaseQuickAdapter adapter, View view, int i11) {
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "view");
        if (com.transsion.baseui.util.c.f43504a.a(view.getId(), 500L)) {
            return;
        }
        Object item = adapter.getItem(i11);
        if (item instanceof PostSubjectItem) {
            PostSubjectItem postSubjectItem = (PostSubjectItem) item;
            subjectListFragment.openDetail(postSubjectItem, false);
            AbsSubjectListViewModel absSubjectListViewModel = subjectListFragment.mHotViewModel;
            if (absSubjectListViewModel != null) {
                absSubjectListViewModel.I(postSubjectItem, i11, subjectListFragment.subpageName());
            }
        }
    }

    private final void insertLast() {
        List<Object> arrayList;
        AbsSubjectListViewModel absSubjectListViewModel = this.mHotViewModel;
        if ((absSubjectListViewModel != null ? absSubjectListViewModel.A() : null) == PostListSource.SUBJECT) {
            com.transsion.moviedetail.adapter.j jVar = this.mAdapter;
            if (jVar == null || (arrayList = jVar.getData()) == null) {
                arrayList = new ArrayList<>();
            }
            if (arrayList.size() <= com.transsion.ad.scene.a.p(com.transsion.ad.scene.a.f42201a, "SubjectDetailRecommendScene", 0, 2, null)) {
                kotlinx.coroutines.k.d(androidx.p009lifecycle.v.a(this), null, null, new AnonymousClass1(arrayList, null), 3, null);
            }
        }
    }

    private final void lazyLoadData() {
        if (!nh.m.f70474a.e()) {
            com.transsion.moviedetail.adapter.j jVar = this.mAdapter;
            if (jVar != null) {
                jVar.Y0(getLocalNoNetworkView(false));
                return;
            }
            return;
        }
        showLoadingView();
        if ((this.mHotViewModel instanceof HotViewModel) && aq.h.f16093a.a()) {
            AbsSubjectListViewModel absSubjectListViewModel = this.mHotViewModel;
            Intrinsics.f(absSubjectListViewModel, "null cannot be cast to non-null type com.transsion.moviedetail.viewmodel.HotViewModel");
            HotViewModel.c0((HotViewModel) absSubjectListViewModel, null, 0, 3, null);
        } else {
            AbsSubjectListViewModel absSubjectListViewModel2 = this.mHotViewModel;
            if (absSubjectListViewModel2 != null) {
                absSubjectListViewModel2.E(true);
            }
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    private final void like(String postId, Boolean hasLike) {
        boolean zC = Intrinsics.c(hasLike, Boolean.TRUE);
        if (!nh.m.f70474a.e()) {
            uh.b.f76753a.d(R$string.no_network_tips);
            return;
        }
        AbsSubjectListViewModel absSubjectListViewModel = this.mHotViewModel;
        if (absSubjectListViewModel != null) {
            absSubjectListViewModel.C(postId, zC ? 1 : 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void loadMore() {
        RecyclerView recyclerView;
        if (nh.m.f70474a.e()) {
            AbsSubjectListViewModel absSubjectListViewModel = this.mHotViewModel;
            if (absSubjectListViewModel != null) {
                absSubjectListViewModel.E(false);
                return;
            }
            return;
        }
        uh.b.f76753a.d(R$string.no_network_tips);
        cn.g mViewBinding = getMViewBinding();
        if (mViewBinding == null || (recyclerView = mViewBinding.f17353b) == null) {
            return;
        }
        recyclerView.postDelayed(new Runnable() { // from class: com.transsion.moviedetail.fragment.w1
            @Override // java.lang.Runnable
            public final void run() {
                SubjectListFragment.loadMore$lambda$42(this.f47248a);
            }
        }, 500L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void loadMore$lambda$42(SubjectListFragment subjectListFragment) {
        r6.f fVarH0;
        com.transsion.moviedetail.adapter.j jVar = subjectListFragment.mAdapter;
        if (jVar == null || (fVarH0 = jVar.h0()) == null) {
            return;
        }
        fVarH0.v();
    }

    private final void localLogPause() {
        sj.b bVar = this.mExposureHelper;
        if (bVar != null) {
            bVar.f();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final IAudioApi mAudioApi_delegate$lambda$1() {
        return (IAudioApi) TheRouter.d(IAudioApi.class, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final HashSet mExposureList_delegate$lambda$4() {
        return new HashSet();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final IFloatingApi mFloatApi_delegate$lambda$2() {
        return (IFloatingApi) TheRouter.d(IFloatingApi.class, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ILoginApi mLoginApi_delegate$lambda$0() {
        return (ILoginApi) TheRouter.d(ILoginApi.class, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final IRoomApi mRoomApi_delegate$lambda$3() {
        return (IRoomApi) TheRouter.d(IRoomApi.class, new Object[0]);
    }

    @JvmStatic
    public static final SubjectListFragment newInstance(Bundle bundle, Class<? extends AbsSubjectListViewModel> cls) {
        return INSTANCE.a(bundle, cls);
    }

    private final void observeComment() {
        Function1 function1 = new Function1() { // from class: com.transsion.moviedetail.fragment.g2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return SubjectListFragment.observeComment$lambda$58(this.f47175a, (CommentEvent) obj);
            }
        };
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = CommentEvent.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.observeEvent(this, name, Lifecycle.State.CREATED, kotlinx.coroutines.y0.c().q(), false, function1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:44:0x00a9 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:45:0x00ab A[Catch: Exception -> 0x0039, TryCatch #1 {Exception -> 0x0039, blocks: (B:3:0x000a, B:5:0x000f, B:7:0x0015, B:8:0x001a, B:10:0x0020, B:13:0x0036, B:17:0x003e, B:19:0x0042, B:21:0x0048, B:24:0x0052, B:41:0x008d, B:42:0x00a5, B:45:0x00ab, B:47:0x00b1, B:26:0x0058, B:28:0x0060, B:30:0x0066, B:34:0x006f, B:35:0x0078, B:37:0x007e, B:39:0x0084), top: B:53:0x000a, inners: #0 }] */
    /* JADX WARN: Code duplicated, block: B:46:0x00b0  */
    public static final Unit observeComment$lambda$58(SubjectListFragment subjectListFragment, CommentEvent value) {
        com.transsion.moviedetail.adapter.j jVar;
        int iA0;
        Stat stat;
        List<Object> data;
        List<Object> data2;
        Intrinsics.h(value, "value");
        try {
            com.transsion.moviedetail.adapter.j jVar2 = subjectListFragment.mAdapter;
            int i11 = -1;
            if (jVar2 != null && (data2 = jVar2.getData()) != null) {
                Iterator<Object> it = data2.iterator();
                int i12 = 0;
                while (it.hasNext()) {
                    if (Intrinsics.c(((PostSubjectItem) it.next()).getPostId(), value.getSubjectId())) {
                        i11 = i12;
                        break;
                    }
                    i12++;
                }
            }
            if (i11 >= 0) {
                com.transsion.moviedetail.adapter.j jVar3 = subjectListFragment.mAdapter;
                PostSubjectItem postSubjectItem = (jVar3 == null || (data = jVar3.getData()) == null) ? null : (PostSubjectItem) data.get(i11);
                if (postSubjectItem == null || (stat = postSubjectItem.getStat()) == null) {
                    jVar = subjectListFragment.mAdapter;
                    if (jVar != null) {
                        if (jVar != null) {
                            iA0 = jVar.a0();
                        } else {
                            iA0 = 0;
                        }
                        jVar.notifyItemChanged(i11 + iA0);
                    }
                } else {
                    try {
                        if (value.getStatus()) {
                            Long commentCount = stat.getCommentCount();
                            stat.setCommentCount(Long.valueOf((commentCount != null ? commentCount.longValue() : 0L) + 1));
                        } else {
                            Long commentCount2 = stat.getCommentCount();
                            stat.setCommentCount(Long.valueOf((commentCount2 != null ? commentCount2.longValue() : 1L) - 1));
                        }
                    } catch (Exception e11) {
                        lg.a.C0828a.g(lg.a.f68839a, " callback change data fail " + e11.getMessage(), false, 2, null);
                    }
                    jVar = subjectListFragment.mAdapter;
                    if (jVar != null) {
                        if (jVar != null) {
                            iA0 = jVar.a0();
                        } else {
                            iA0 = 0;
                        }
                        jVar.notifyItemChanged(i11 + iA0);
                    }
                }
            }
        } catch (Exception e12) {
            lg.a.C0828a.g(lg.a.f68839a, " callback change data fail " + e12.getMessage(), false, 2, null);
        }
        return Unit.f67061a;
    }

    private final void observeDelete() {
        Function1 function1 = new Function1() { // from class: com.transsion.moviedetail.fragment.v1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return SubjectListFragment.observeDelete$lambda$51(this.f47242a, (uy.b) obj);
            }
        };
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = uy.b.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.observeEvent(this, name, Lifecycle.State.CREATED, kotlinx.coroutines.y0.c().q(), false, function1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit observeDelete$lambda$51(SubjectListFragment subjectListFragment, uy.b value) {
        com.transsion.moviedetail.adapter.j jVar;
        List<Object> data;
        Intrinsics.h(value, "value");
        try {
            com.transsion.moviedetail.adapter.j jVar2 = subjectListFragment.mAdapter;
            int i11 = -1;
            if (jVar2 != null && (data = jVar2.getData()) != null) {
                Iterator<Object> it = data.iterator();
                int i12 = 0;
                while (it.hasNext()) {
                    if (Intrinsics.c(((PostSubjectItem) it.next()).getPostId(), value.a())) {
                        i11 = i12;
                        break;
                    }
                    i12++;
                }
            }
            if (i11 >= 0 && (jVar = subjectListFragment.mAdapter) != null) {
                jVar.G0(i11);
            }
            subjectListFragment.checkToShowEmptyView();
        } catch (Exception unused) {
            lg.a.C0828a.g(lg.a.f68839a, " callback change data fail", false, 2, null);
        }
        return Unit.f67061a;
    }

    private final void observeLike() {
        Function1 function1 = new Function1() { // from class: com.transsion.moviedetail.fragment.x1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return SubjectListFragment.observeLike$lambda$55(this.f47252a, (LikeEvent) obj);
            }
        };
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = LikeEvent.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.observeEvent(this, name, Lifecycle.State.CREATED, kotlinx.coroutines.y0.c().q(), false, function1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:43:0x0099 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:44:0x009b A[Catch: Exception -> 0x00ae, TryCatch #0 {Exception -> 0x00ae, blocks: (B:3:0x0008, B:5:0x000d, B:7:0x0013, B:8:0x0018, B:10:0x001e, B:16:0x0038, B:18:0x003c, B:20:0x0042, B:23:0x004c, B:25:0x0059, B:40:0x0092, B:39:0x0088, B:41:0x0095, B:44:0x009b, B:46:0x00a1, B:13:0x0033, B:27:0x005f, B:29:0x0067, B:33:0x0070, B:37:0x0078), top: B:51:0x0008, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:45:0x00a0  */
    public static final Unit observeLike$lambda$55(SubjectListFragment subjectListFragment, LikeEvent value) {
        int i11;
        com.transsion.moviedetail.adapter.j jVar;
        int iA0;
        Stat stat;
        Object objM454constructorimpl;
        List<Object> data;
        List<Object> data2;
        int i12 = 1;
        Intrinsics.h(value, "value");
        try {
            com.transsion.moviedetail.adapter.j jVar2 = subjectListFragment.mAdapter;
            if (jVar2 != null && (data2 = jVar2.getData()) != null) {
                Iterator<Object> it = data2.iterator();
                i11 = 0;
                while (true) {
                    if (!it.hasNext()) {
                        i11 = -1;
                        break;
                    }
                    if (Intrinsics.c(((PostSubjectItem) it.next()).getPostId(), value.getSubjectId())) {
                        break;
                    }
                    i11++;
                }
            } else {
                i11 = -1;
                break;
            }
            if (i11 >= 0) {
                com.transsion.moviedetail.adapter.j jVar3 = subjectListFragment.mAdapter;
                PostSubjectItem postSubjectItem = (jVar3 == null || (data = jVar3.getData()) == null) ? null : (PostSubjectItem) data.get(i11);
                if (postSubjectItem != null) {
                    postSubjectItem.setHasLike(Boolean.valueOf(value.getLike()));
                }
                if (postSubjectItem == null || (stat = postSubjectItem.getStat()) == null) {
                    jVar = subjectListFragment.mAdapter;
                    if (jVar != null) {
                        if (jVar != null) {
                            iA0 = jVar.a0();
                        } else {
                            iA0 = 0;
                        }
                        jVar.notifyItemChanged(i11 + iA0, Boolean.valueOf(value.getLike()));
                    }
                } else {
                    try {
                        Result.Companion companion = Result.INSTANCE;
                        Long likeCount = stat.getLikeCount();
                        long jLongValue = likeCount != null ? likeCount.longValue() : 0L;
                        if (!value.getLike()) {
                            i12 = -1;
                        }
                        stat.setLikeCount(Long.valueOf(jLongValue + ((long) i12)));
                        objM454constructorimpl = Result.m454constructorimpl(Unit.f67061a);
                    } catch (Throwable th2) {
                        Result.Companion companion2 = Result.INSTANCE;
                        objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
                    }
                    Result.m453boximpl(objM454constructorimpl);
                    jVar = subjectListFragment.mAdapter;
                    if (jVar != null) {
                        if (jVar != null) {
                            iA0 = jVar.a0();
                        } else {
                            iA0 = 0;
                        }
                        jVar.notifyItemChanged(i11 + iA0, Boolean.valueOf(value.getLike()));
                    }
                }
            }
        } catch (Exception unused) {
            lg.a.C0828a.g(lg.a.f68839a, " callback change data fail", false, 2, null);
        }
        return Unit.f67061a;
    }

    private final void onDownLoadClick(PostSubjectItem postItem) {
        if (Build.VERSION.SDK_INT >= 29) {
            PostSaveHelper.f50145a.e(postItem);
            return;
        }
        Context context = getContext();
        if (context == null) {
            context = Utils.a();
        }
        if (androidx.core.content.b.checkSelfPermission(context, "android.permission.WRITE_EXTERNAL_STORAGE") == 0) {
            Context context2 = getContext();
            if (context2 == null) {
                context2 = Utils.a();
            }
            if (androidx.core.content.b.checkSelfPermission(context2, "android.permission.READ_EXTERNAL_STORAGE") == 0) {
                PostSaveHelper.f50145a.e(postItem);
                return;
            }
        }
        requestPermission();
    }

    private final void openDetail(PostSubjectItem postItem, boolean fromComment) {
        Media media;
        IPostDetailApi iPostDetailApi = (IPostDetailApi) TheRouter.d(IPostDetailApi.class, new Object[0]);
        AbsSubjectListViewModel absSubjectListViewModel = this.mHotViewModel;
        PostListSource postListSourceA = absSubjectListViewModel != null ? absSubjectListViewModel.A() : null;
        PostListSource postListSource = PostListSource.PROFILE;
        if (postListSourceA != postListSource && postItem != null && iPostDetailApi != null) {
            iPostDetailApi.i(postItem);
        }
        Navigator navigatorZ = TheRouter.c("/post/detail").K(WebConstants.PAGE_FROM, pageName()).J("item_object", postItem).K("rec_ops", postItem != null ? postItem.getOps() : null).K("id", postItem != null ? postItem.getPostId() : null).K("item_type", postItem != null ? postItem.getItemType() : null).K("media_type", (postItem == null || (media = postItem.getMedia()) == null) ? null : media.getMediaType()).z("from_comment", fromComment);
        AbsSubjectListViewModel absSubjectListViewModel2 = this.mHotViewModel;
        Navigator.x(navigatorZ.z("video_load_more", (absSubjectListViewModel2 != null ? absSubjectListViewModel2.A() : null) != postListSource), getContext(), null, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String pageName() {
        String str = this.curPageName;
        return str == null ? "" : str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void removePost(String id2) {
        com.transsion.moviedetail.adapter.j jVar = this.mAdapter;
        if (jVar != null) {
            int i11 = 0;
            for (Object obj : jVar.getData()) {
                int i12 = i11 + 1;
                if (i11 < 0) {
                    CollectionsKt.u();
                }
                if (Intrinsics.c(((PostSubjectItem) obj).getPostId(), id2)) {
                    if (jVar.getItemCount() > 2) {
                        jVar.getData().remove(i11);
                        jVar.notifyDataSetChanged();
                        return;
                    } else {
                        jVar.getData().clear();
                        jVar.notifyDataSetChanged();
                        checkToShowEmptyView();
                        return;
                    }
                }
                i11 = i12;
            }
        }
    }

    private final void requestPermission() {
        requestPermissions(new String[]{"android.permission.WRITE_EXTERNAL_STORAGE", "android.permission.READ_EXTERNAL_STORAGE"}, FileHelper.f47682a.l());
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0032  */
    private final void share(PostSubjectItem postItem) {
        boolean z10;
        User user;
        User user2;
        ILoginApi mLoginApi = getMLoginApi();
        UserInfo userInfoI = mLoginApi != null ? mLoginApi.i() : null;
        if ((userInfoI != null ? userInfoI.getUserId() : null) != null) {
            if (Intrinsics.c(userInfoI.getUserId(), (postItem == null || (user2 = postItem.getUser()) == null) ? null : user2.getUserId())) {
                z10 = true;
            } else {
                z10 = false;
            }
        } else {
            z10 = false;
        }
        ShareDialogFragment shareDialogFragmentA = ShareDialogFragment.INSTANCE.a(PostType.POST_TYPE, postItem != null ? postItem.getPostId() : null, (postItem == null || (user = postItem.getUser()) == null) ? null : user.getUserId(), ReportType.POST.getValue(), (3328 & 16) != 0 ? "" : postItem != null ? postItem.getTitle() : null, (3328 & 32) != 0 ? "" : "", (3328 & 64) != 0 ? false : false, (3328 & 128) != 0 ? false : z10, (3328 & 256) != 0 ? false : false, "postdetail", (3328 & 1024) != 0 ? "" : null, (3328 & 2048) != 0 ? "" : null);
        shareDialogFragmentA.G0(new e());
        shareDialogFragmentA.show(getChildFragmentManager(), "share");
    }

    private final void showAudioFloating(PostSubjectItem item) {
        String url;
        Integer size;
        List<Audio> audio;
        if (item != null) {
            String coverUrl$default = PostSubjectItem.getCoverUrl$default(item, false, 1, null);
            Media media = item.getMedia();
            Audio audio2 = (media == null || (audio = media.getAudio()) == null || audio.isEmpty()) ? null : audio.get(0);
            if (audio2 == null || (url = audio2.getUrl()) == null) {
                url = "";
            }
            Long duration = audio2 != null ? audio2.getDuration() : null;
            Long lValueOf = (audio2 == null || (size = audio2.getSize()) == null) ? null : Long.valueOf(size.intValue());
            String url2 = audio2 != null ? audio2.getUrl() : null;
            String title = item.getTitle();
            String content = item.getContent();
            if (content == null) {
                content = "";
            }
            Integer bitrate = audio2 != null ? audio2.getBitrate() : null;
            String postId = item.getPostId();
            Subject subject = item.getSubject();
            String subjectId = subject != null ? subject.getSubjectId() : null;
            Subject subject2 = item.getSubject();
            String title2 = subject2 != null ? subject2.getTitle() : null;
            Group group = item.getGroup();
            AudioBean audioBean = new AudioBean(url, coverUrl$default, duration, lValueOf, url2, title, content, bitrate, null, null, null, null, null, postId, subjectId, group != null ? group.getGroupId() : null, 0, title2, 0, 0, 859904, null);
            IFloatingApi mFloatApi = getMFloatApi();
            if (mFloatApi != null) {
                mFloatApi.a(new WeakReference((Activity) getContext()), audioBean);
            }
            audioBean.setOps(item.getRec_ops());
            IAudioApi mAudioApi = getMAudioApi();
            if (mAudioApi != null) {
                IAudioApi.a.a(mAudioApi, audioBean, false, 2, null);
            }
        }
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

    /* JADX INFO: Access modifiers changed from: private */
    public final String subpageName() {
        AbsSubjectListViewModel absSubjectListViewModel = this.mHotViewModel;
        if (absSubjectListViewModel != null) {
            ProfileSubSource profileSubSourceB = absSubjectListViewModel.B();
            String value = profileSubSourceB != null ? profileSubSourceB.getValue() : null;
            if (value != null) {
                return value;
            }
        }
        return "";
    }

    private final void toWeb(String url) {
        Navigator.x(TheRouter.c(WebPageIdentity.WEB_VIEW).K("url", url), requireContext(), null, 2, null);
    }

    private final void updateDeletePost(BaseDto<String> data) {
        List<Object> data2;
        List<Object> data3;
        List<Object> data4;
        if (!Intrinsics.c(data != null ? data.getCode() : null, "0")) {
            uh.b.f76753a.e(getString(com.transsion.moviedetail.R$string.delete_post_failed));
            return;
        }
        com.transsion.moviedetail.adapter.j jVar = this.mAdapter;
        List<Object> data5 = jVar != null ? jVar.getData() : null;
        if (data5 != null) {
            int i11 = 0;
            for (Object obj : data5) {
                int i12 = i11 + 1;
                if (i11 < 0) {
                    CollectionsKt.u();
                }
                PostSubjectItem postSubjectItem = (PostSubjectItem) obj;
                if (Intrinsics.c(postSubjectItem.getPostId(), data.getData())) {
                    com.transsion.moviedetail.adapter.j jVar2 = this.mAdapter;
                    if (jVar2 == null || (data3 = jVar2.getData()) == null || data3.size() != 1) {
                        com.transsion.moviedetail.adapter.j jVar3 = this.mAdapter;
                        if (jVar3 != null) {
                            jVar3.notifyItemRemoved(i11);
                        }
                        com.transsion.moviedetail.adapter.j jVar4 = this.mAdapter;
                        if (jVar4 == null || (data2 = jVar4.getData()) == null) {
                            return;
                        }
                        data2.remove(postSubjectItem);
                        return;
                    }
                    com.transsion.moviedetail.adapter.j jVar5 = this.mAdapter;
                    if (jVar5 != null && (data4 = jVar5.getData()) != null) {
                        data4.remove(postSubjectItem);
                    }
                    com.transsion.moviedetail.adapter.j jVar6 = this.mAdapter;
                    if (jVar6 != null) {
                        jVar6.notifyDataSetChanged();
                        return;
                    }
                    return;
                }
                i11 = i12;
            }
        }
    }

    private final void updateLikeStatus(LikeBean likeBean) {
        List<Object> data;
        com.transsion.moviedetail.adapter.j jVar = this.mAdapter;
        if (jVar == null || (data = jVar.getData()) == null) {
            return;
        }
        int i11 = 0;
        for (Object obj : data) {
            int i12 = i11 + 1;
            if (i11 < 0) {
                CollectionsKt.u();
            }
            PostSubjectItem postSubjectItem = (PostSubjectItem) obj;
            if (Intrinsics.c(likeBean.isAffected(), Boolean.TRUE) && Intrinsics.c(postSubjectItem.getPostId(), likeBean.getPostId())) {
                Boolean hasLike = postSubjectItem.getHasLike();
                postSubjectItem.setHasLike(hasLike != null ? Boolean.valueOf(!hasLike.booleanValue()) : null);
                Stat stat = postSubjectItem.getStat();
                if (stat != null) {
                    Integer likes = likeBean.getLikes();
                    stat.setLikeCount(likes != null ? Long.valueOf(likes.intValue()) : null);
                }
                com.transsion.moviedetail.adapter.j jVar2 = this.mAdapter;
                if (jVar2 != null) {
                    jVar2.notifyItemChanged(i11);
                    return;
                }
                return;
            }
            i11 = i12;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateSubjectList(PostSubjectBean postSubjectBean) {
        List<Object> arrayList;
        PostSubjectItem recommendRoomsBean;
        r6.f fVarH0;
        Object objM454constructorimpl;
        r6.f fVarH1;
        Pager pager;
        r6.f fVarH2;
        com.transsion.moviedetail.adapter.j jVar;
        r6.f fVarH3;
        r6.f fVarH4;
        com.transsion.moviedetail.adapter.j jVar2;
        r6.f fVarH5;
        if (postSubjectBean == null) {
            com.transsion.moviedetail.adapter.j jVar3 = this.mAdapter;
            if (jVar3 != null && (fVarH4 = jVar3.h0()) != null && fVarH4.r() && (jVar2 = this.mAdapter) != null && (fVarH5 = jVar2.h0()) != null) {
                fVarH5.v();
            }
        } else {
            if (postSubjectBean.getSubject() != null) {
                this.mSubject = postSubjectBean.getSubject();
            }
            List<PostSubjectItem> items = postSubjectBean.getItems();
            if (items != null) {
                com.transsion.moviedetail.adapter.j jVar4 = this.mAdapter;
                if (jVar4 == null || (arrayList = jVar4.getData()) == null) {
                    arrayList = new ArrayList<>();
                }
                ArrayList arrayList2 = new ArrayList();
                if (arrayList.isEmpty()) {
                    for (PostSubjectItem postSubjectItem : items) {
                        Subject subject = this.mSubject;
                        if (subject != null) {
                            postSubjectItem.setSubject(subject);
                        }
                    }
                    arrayList2.addAll(items);
                } else {
                    for (PostSubjectItem postSubjectItem2 : items) {
                        if (!arrayList.contains(postSubjectItem2)) {
                            Subject subject2 = this.mSubject;
                            if (subject2 != null) {
                                postSubjectItem2.setSubject(subject2);
                            }
                            arrayList2.add(postSubjectItem2);
                        }
                    }
                }
                if (arrayList2.isEmpty()) {
                    com.transsion.moviedetail.adapter.j jVar5 = this.mAdapter;
                    if (jVar5 != null && (fVarH0 = jVar5.h0()) != null) {
                        r6.f.u(fVarH0, false, 1, null);
                    }
                    checkToShowEmptyView();
                    return;
                }
                if (this.mHotViewModel instanceof HotViewModel) {
                    com.transsion.moviedetail.adapter.j jVar6 = this.mAdapter;
                    List<Object> data = jVar6 != null ? jVar6.getData() : null;
                    if (data == null || data.isEmpty()) {
                        AbsSubjectListViewModel absSubjectListViewModel = this.mHotViewModel;
                        Intrinsics.f(absSubjectListViewModel, "null cannot be cast to non-null type com.transsion.moviedetail.viewmodel.HotViewModel");
                        RoomBean roomBean = (RoomBean) ((HotViewModel) absSubjectListViewModel).d0().f();
                        if (roomBean != null && (recommendRoomsBean = getRecommendRoomsBean(roomBean)) != null) {
                            arrayList2.add(0, recommendRoomsBean);
                        }
                    }
                }
                com.transsion.moviedetail.adapter.j jVar7 = this.mAdapter;
                if (jVar7 != null) {
                    jVar7.q(arrayList2);
                }
            }
        }
        com.transsion.moviedetail.adapter.j jVar8 = this.mAdapter;
        if (jVar8 != null && (fVarH2 = jVar8.h0()) != null && fVarH2.r() && (jVar = this.mAdapter) != null && (fVarH3 = jVar.h0()) != null) {
            fVarH3.s();
        }
        if ((postSubjectBean == null || (pager = postSubjectBean.getPager()) == null) ? false : Intrinsics.c(pager.getHasMore(), Boolean.FALSE)) {
            com.transsion.moviedetail.adapter.j jVar9 = this.mAdapter;
            if (jVar9 != null && (fVarH1 = jVar9.h0()) != null) {
                fVarH1.t(false);
            }
            try {
                Result.Companion companion = Result.INSTANCE;
                insertLast();
                objM454constructorimpl = Result.m454constructorimpl(Unit.f67061a);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
            }
            Result.m457exceptionOrNullimpl(objM454constructorimpl);
        }
        checkToShowEmptyView();
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public View getEmptyView(boolean isShowTitleLayout) {
        if (this.mEmptyLayout == null) {
            aq.c cVarC = null;
            View viewInflate = LayoutInflater.from(getContext()).inflate(R$layout.layout_hot_empty_view, (ViewGroup) null);
            cn.x xVarA = cn.x.a(viewInflate);
            Intrinsics.g(xVarA, "bind(...)");
            if (this.mHotViewModel instanceof HotViewModel) {
                if (this.mRoomView == null) {
                    IRoomApi mRoomApi = getMRoomApi();
                    if (mRoomApi != null) {
                        Context context = viewInflate.getContext();
                        Intrinsics.g(context, "getContext(...)");
                        cVarC = mRoomApi.c(context, RoomsViewType.TYPE_SUBJECT_DETAIL);
                    }
                    this.mRoomView = cVarC;
                }
                FrameLayout frameLayout = xVarA.f17531c;
                aq.c cVar = this.mRoomView;
                Intrinsics.e(cVar);
                frameLayout.addView(cVar.getView());
            }
            FrameLayout frameLayout2 = xVarA.f17530b;
            Context contextRequireContext = requireContext();
            Intrinsics.g(contextRequireContext, "requireContext(...)");
            StateView stateView = new StateView(contextRequireContext);
            stateView.showData(2, 2, isShowTitleLayout, getPageStateLayoutTitle(), getEmptyDescText());
            frameLayout2.addView(stateView);
            this.mEmptyLayout = viewInflate;
        }
        View view = this.mEmptyLayout;
        Intrinsics.e(view);
        return view;
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public View getLoadingView() {
        return LayoutInflater.from(requireContext()).inflate(R$layout.layout_commnets_loading_view, (ViewGroup) getFlStateView(), false);
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public View getLocalNoNetworkView(boolean isShowTitleLayout) {
        View viewInflate = LayoutInflater.from(getContext()).inflate(R$layout.layout_state_view, (ViewGroup) null);
        cn.y yVarA = cn.y.a(viewInflate);
        Intrinsics.g(yVarA, "bind(...)");
        yVarA.f17535d.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.moviedetail.fragment.d2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f47160a.retryLoadData();
            }
        });
        Intrinsics.g(viewInflate, "apply(...)");
        return viewInflate;
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public String getPageStateLayoutTitle() {
        return "";
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public cn.g getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        cn.g gVarC = cn.g.c(inflater);
        Intrinsics.g(gVarC, "inflate(...)");
        return gVarC;
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initListener() {
        initExposureHelper();
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initViewData() {
        RecyclerView recyclerView;
        RecyclerView recyclerView2;
        initAd();
        cn.g mViewBinding = getMViewBinding();
        if (mViewBinding != null && (recyclerView2 = mViewBinding.f17353b) != null) {
            recyclerView2.setLayoutManager(new LinearLayoutManager(recyclerView2.getContext()));
        }
        com.transsion.moviedetail.adapter.j jVar = new com.transsion.moviedetail.adapter.j(new ArrayList(), this.mHotViewModel, pageName(), hj.i.f64505a.i());
        r6.f fVarH0 = jVar.h0();
        fVarH0.C(new SubjectCommentsLoadMoreView());
        fVarH0.z(true);
        fVarH0.D(new p6.f() { // from class: com.transsion.moviedetail.fragment.m2
            @Override // p6.f
            public final void a() {
                this.f47198a.loadMore();
            }
        });
        jVar.R0(new d());
        jVar.w1(new p6.d() { // from class: com.transsion.moviedetail.fragment.n2
            @Override // p6.d
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i11) {
                SubjectListFragment.initViewData$lambda$11$lambda$8(this.f47202a, baseQuickAdapter, view, i11);
            }
        });
        initScrollListener();
        jVar.l(R$id.fl_cover, R$id.tv_room_name, R$id.tv_post_date, R$id.v_post_like, R$id.v_post_download, R$id.v_post_comment, R$id.v_post_share, R$id.cl_subject_content, R$id.tv_room_tag);
        jVar.s1(new p6.b() { // from class: com.transsion.moviedetail.fragment.t1
            @Override // p6.b
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i11) {
                SubjectListFragment.initViewData$lambda$11$lambda$10(this.f47230a, baseQuickAdapter, view, i11);
            }
        });
        this.mAdapter = jVar;
        cn.g mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (recyclerView = mViewBinding2.f17353b) != null) {
            recyclerView.setAdapter(this.mAdapter);
        }
        initLiveData();
        initClickListener();
        observeDelete();
        observeLike();
        observeComment();
        initLaunch();
        initPlayer();
        initListVideoPreload();
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initViewModel() {
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public boolean isAudioShowNoNetworkLayout() {
        return false;
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public hj.b newLogViewConfig() {
        return new hj.b(pageName(), false, 2, null);
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment, nh.n
    public void onConnected(Network network, NetworkCapabilities networkCapabilities) {
        List<Object> data;
        Intrinsics.h(network, "network");
        Intrinsics.h(networkCapabilities, "networkCapabilities");
        super.onConnected(network, networkCapabilities);
        com.transsion.moviedetail.adapter.j jVar = this.mAdapter;
        if (jVar == null || (data = jVar.getData()) == null || !data.isEmpty()) {
            loadMore();
        } else {
            lazyLoadData();
        }
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        HashMap mapG;
        HashMap mapG2;
        String strZ;
        HashMap mapG3;
        String strF0;
        super.onCreate(savedInstanceState);
        try {
            Bundle arguments = getArguments();
            Serializable serializable = arguments != null ? arguments.getSerializable("view_model_type") : null;
            Intrinsics.f(serializable, "null cannot be cast to non-null type java.lang.Class<com.transsion.moviedetailapi.AbsSubjectListViewModel>");
            AbsSubjectListViewModel absSubjectListViewModel = (AbsSubjectListViewModel) new androidx.p009lifecycle.v0(this).a((Class) serializable);
            this.mHotViewModel = absSubjectListViewModel;
            if (absSubjectListViewModel != null) {
                absSubjectListViewModel.F(getArguments());
            }
            Bundle arguments2 = getArguments();
            this.curPageName = arguments2 != null ? arguments2.getString("page_name") : null;
            AbsSubjectListViewModel absSubjectListViewModel2 = this.mHotViewModel;
            if (absSubjectListViewModel2 != null) {
                absSubjectListViewModel2.N(hj.i.f64505a.i());
            }
            if (this.mHotViewModel instanceof HotViewModel) {
                hj.b logViewConfig = getLogViewConfig();
                String str = "";
                if (logViewConfig != null && (mapG3 = logViewConfig.g()) != null) {
                    AbsSubjectListViewModel absSubjectListViewModel3 = this.mHotViewModel;
                    HotViewModel hotViewModel = absSubjectListViewModel3 instanceof HotViewModel ? (HotViewModel) absSubjectListViewModel3 : null;
                    if (hotViewModel == null || (strF0 = hotViewModel.f0()) == null) {
                        strF0 = "";
                    }
                }
                hj.b logViewConfig2 = getLogViewConfig();
                if (logViewConfig2 != null && (mapG2 = logViewConfig2.g()) != null) {
                    AbsSubjectListViewModel absSubjectListViewModel4 = this.mHotViewModel;
                    HotViewModel hotViewModel2 = absSubjectListViewModel4 instanceof HotViewModel ? (HotViewModel) absSubjectListViewModel4 : null;
                    if (hotViewModel2 != null && (strZ = hotViewModel2.Z()) != null) {
                        str = strZ;
                    }
                }
            }
        } catch (Exception unused) {
        }
        hj.b logViewConfig3 = getLogViewConfig();
        if (logViewConfig3 == null || (mapG = logViewConfig3.g()) == null) {
            return;
        }
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        com.transsion.ninegridview.a aVar = this.mGifPlayerManager;
        if (aVar != null) {
            aVar.f();
        }
        super.onDestroy();
        androidx.activity.result.b bVar = this.postDetailLauncher;
        if (bVar != null) {
            bVar.c();
        }
        BiddingListManager biddingListManager = this.middleListManager;
        if (biddingListManager != null) {
            biddingListManager.o();
        }
        BiddingNativeManager biddingNativeManager = this.nativeManager;
        if (biddingNativeManager != null) {
            biddingNativeManager.V();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean hidden) {
        super.onHiddenChanged(hidden);
        if (isResumed()) {
            if (hidden) {
                logPause();
                localLogPause();
            } else {
                logResume();
            }
        }
        com.transsion.baseui.activity.k.h(null, this, hidden, null, 9, null);
    }

    @Override // com.tn.lib.widget.dialog.TRDialogListener
    public void onLeftButtonClick(TRDialog dialog) {
        Intrinsics.h(dialog, "dialog");
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment, androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        localLogPause();
        com.transsion.ninegridview.a aVar = this.mGifPlayerManager;
        if (aVar != null) {
            aVar.k();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onRequestPermissionsResult(int requestCode, String[] permissions, int[] grantResults) {
        Intrinsics.h(permissions, "permissions");
        Intrinsics.h(grantResults, "grantResults");
        super.onRequestPermissionsResult(requestCode, permissions, grantResults);
        if (requestCode == FileHelper.f47682a.l()) {
            if (grantResults.length > 1 && grantResults[0] == 0 && grantResults[1] == 0) {
                PostSaveHelper.f50145a.e(this.mPostSubjectItem);
                return;
            }
            FragmentActivity activity = getActivity();
            Intrinsics.f(activity, "null cannot be cast to non-null type android.app.Activity");
            if (ActivityCompat.j(activity, "android.permission.WRITE_EXTERNAL_STORAGE")) {
                return;
            }
            showSettingDialog();
        }
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        com.transsion.ninegridview.a aVar = this.mGifPlayerManager;
        if (aVar != null) {
            aVar.l();
        }
        if (this.isFirst) {
            this.isFirst = false;
            lazyLoadData();
        }
    }

    @Override // com.tn.lib.widget.dialog.TRDialogListener
    public void onRightButtonClick(TRDialog dialog) {
        Intrinsics.h(dialog, "dialog");
        com.transsion.ninegridview.helper.b bVar = com.transsion.ninegridview.helper.b.f47691a;
        FragmentActivity activity = getActivity();
        Intrinsics.f(activity, "null cannot be cast to non-null type android.app.Activity");
        bVar.a(activity, 101);
    }

    @Override // ix.a
    public void onScreenChange(boolean fullscreen) {
        if (isAdded() && !isHidden() && isResumed()) {
            if (!fullscreen) {
                logResume();
            } else {
                logPause();
                localLogPause();
            }
        }
    }

    public final void refresh() {
        AbsSubjectListViewModel absSubjectListViewModel = this.mHotViewModel;
        if (absSubjectListViewModel != null) {
            absSubjectListViewModel.F(getArguments());
        }
        com.transsion.moviedetail.adapter.j jVar = this.mAdapter;
        if (jVar != null) {
            jVar.Q1();
        }
        com.transsion.ninegridview.a aVar = this.mGifPlayerManager;
        if (aVar != null) {
            aVar.m();
        }
        lazyLoadData();
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void retryLoadData() {
        lazyLoadData();
    }
}
