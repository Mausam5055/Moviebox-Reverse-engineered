package com.transsion.shorttv.ui.fragment.download;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import androidx.activity.result.ActivityResult;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.constraintlayout.widget.Group;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.p009lifecycle.Lifecycle;
import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.c0;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.blankj.utilcode.util.NetworkUtils;
import com.blankj.utilcode.util.Utils;
import com.blankj.utilcode.util.a0;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.google.android.flexbox.FlexboxLayoutManager;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.imageview.ShapeableImageView;
import com.google.android.material.tabs.TabLayout;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.noober.background.view.BLFrameLayout;
import com.noober.background.view.BLImageView;
import com.noober.background.view.BLView;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.transsion.ad.bidding.video.BiddingVideoManager;
import com.transsion.shorttv.R$color;
import com.transsion.shorttv.R$drawable;
import com.transsion.shorttv.R$layout;
import com.transsion.shorttv.R$mipmap;
import com.transsion.shorttv.R$string;
import com.transsion.shorttv.ad.common.STCommonVideoAdHelper;
import com.transsion.shorttv.base.widget.DefaultView;
import com.transsion.shorttv.bean.Cover;
import com.transsion.shorttv.bean.DownloadItem;
import com.transsion.shorttv.bean.DownloadListBean;
import com.transsion.shorttv.bean.ShortTVFavInfo;
import com.transsion.shorttv.bean.ShortTVItem;
import com.transsion.shorttv.bean.ShortTvInnerPlayBean;
import com.transsion.shorttv.bean.SkuInfo;
import com.transsion.shorttv.bean.Subject;
import com.transsion.shorttv.order.bean.CreatePaynicornOrderReqBean;
import com.transsion.shorttv.order.bean.GetPaynicornOrderStatusRespEntity;
import com.transsion.shorttv.ui.adapter.ShortTvDownloadEpListAdapter;
import com.transsion.shorttv.ui.dialog.ShortTvAlertDialog;
import com.transsion.shorttv.ui.widget.ShortTvDownloadInfoExtendView;
import com.transsion.shorttv.viewmodel.ShortTvDownloadViewModel;
import com.transsion.shorttv.viewmodel.ShortTvViewModel;
import com.transsion.web.api.WebConstants;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Result;
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
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;
import kotlin.reflect.KClass;
import kotlin.text.StringsKt;
import kotlinx.coroutines.a2;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.y0;
import ms.z;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000¸\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u001b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010%\n\u0002\b\u001f\n\u0002\u0018\u0002\n\u0002\b\u0010\b\u0016\u0018\u0000 Ã\u00012\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0002Ä\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J%\u0010\n\u001a\u00020\b2\u0006\u0010\u0006\u001a\u00020\u00052\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0007H\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\f\u001a\u00020\bH\u0002¢\u0006\u0004\b\f\u0010\u0004J\u000f\u0010\r\u001a\u00020\bH\u0002¢\u0006\u0004\b\r\u0010\u0004J\u000f\u0010\u000e\u001a\u00020\bH\u0002¢\u0006\u0004\b\u000e\u0010\u0004J\u0017\u0010\u0011\u001a\u00020\b2\u0006\u0010\u0010\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0013\u001a\u00020\b2\u0006\u0010\u0010\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0013\u0010\u0012J\u0017\u0010\u0014\u001a\u00020\b2\u0006\u0010\u0010\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0014\u0010\u0012J\u0017\u0010\u0017\u001a\u00020\b2\u0006\u0010\u0016\u001a\u00020\u0015H\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\bH\u0002¢\u0006\u0004\b\u0019\u0010\u0004J\u000f\u0010\u001a\u001a\u00020\bH\u0002¢\u0006\u0004\b\u001a\u0010\u0004J\u0017\u0010\u001d\u001a\u00020\b2\u0006\u0010\u001c\u001a\u00020\u001bH\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ\u0017\u0010!\u001a\u00020\b2\u0006\u0010 \u001a\u00020\u001fH\u0002¢\u0006\u0004\b!\u0010\"J\u000f\u0010#\u001a\u00020\u0015H\u0002¢\u0006\u0004\b#\u0010$J\u000f\u0010%\u001a\u00020\bH\u0002¢\u0006\u0004\b%\u0010\u0004J\u000f\u0010'\u001a\u00020&H\u0002¢\u0006\u0004\b'\u0010(J\u0017\u0010*\u001a\u00020\b2\u0006\u0010)\u001a\u00020&H\u0002¢\u0006\u0004\b*\u0010+J\u0017\u0010.\u001a\u00020\b2\u0006\u0010-\u001a\u00020,H\u0002¢\u0006\u0004\b.\u0010/J\u0017\u00101\u001a\u00020\b2\u0006\u00100\u001a\u00020\u0015H\u0002¢\u0006\u0004\b1\u0010\u0018J\u0019\u00104\u001a\u00020\b2\b\u00103\u001a\u0004\u0018\u000102H\u0002¢\u0006\u0004\b4\u00105J\u0017\u00106\u001a\u00020\b2\u0006\u0010-\u001a\u00020,H\u0002¢\u0006\u0004\b6\u0010/J/\u0010<\u001a\u00020\b2\u000e\u00109\u001a\n\u0012\u0004\u0012\u000208\u0018\u0001072\u0006\u0010:\u001a\u00020\u00152\u0006\u0010;\u001a\u00020\u0015H\u0002¢\u0006\u0004\b<\u0010=J\u0017\u0010>\u001a\u00020\b2\u0006\u0010;\u001a\u00020\u0015H\u0002¢\u0006\u0004\b>\u0010\u0018J\u000f\u0010?\u001a\u00020\bH\u0002¢\u0006\u0004\b?\u0010\u0004J\u000f\u0010@\u001a\u00020\bH\u0002¢\u0006\u0004\b@\u0010\u0004J\u000f\u0010A\u001a\u00020\bH\u0002¢\u0006\u0004\bA\u0010\u0004J\u000f\u0010B\u001a\u00020\bH\u0002¢\u0006\u0004\bB\u0010\u0004J\u000f\u0010C\u001a\u00020\u000fH\u0002¢\u0006\u0004\bC\u0010DJ\u000f\u0010E\u001a\u00020\u000fH\u0002¢\u0006\u0004\bE\u0010DJ)\u0010K\u001a\u00020\u000f2\u0006\u0010G\u001a\u00020F2\u0006\u0010I\u001a\u00020H2\b\b\u0002\u0010J\u001a\u00020\u001bH\u0002¢\u0006\u0004\bK\u0010LJ\u0011\u0010M\u001a\u0004\u0018\u00010\u000fH\u0002¢\u0006\u0004\bM\u0010DJ\u000f\u0010N\u001a\u00020\bH\u0002¢\u0006\u0004\bN\u0010\u0004J\u0017\u0010P\u001a\u00020\b2\u0006\u0010O\u001a\u00020\u001bH\u0002¢\u0006\u0004\bP\u0010\u001eJ\u0017\u0010Q\u001a\u00020\b2\u0006\u0010O\u001a\u00020\u001bH\u0002¢\u0006\u0004\bQ\u0010\u001eJ\u000f\u0010R\u001a\u00020\u001bH\u0002¢\u0006\u0004\bR\u0010SJ\u0017\u0010U\u001a\u00020\b2\u0006\u0010T\u001a\u00020\u001bH\u0002¢\u0006\u0004\bU\u0010\u001eJ\u0017\u0010V\u001a\u00020\b2\u0006\u0010T\u001a\u00020\u001bH\u0002¢\u0006\u0004\bV\u0010\u001eJ\u0017\u0010W\u001a\u00020\b2\u0006\u0010 \u001a\u00020\u001fH\u0002¢\u0006\u0004\bW\u0010\"JQ\u0010_\u001a\u00020\b2\b\u0010X\u001a\u0004\u0018\u00010H2\u0006\u0010Y\u001a\u00020H2\b\u0010Z\u001a\u0004\u0018\u00010H2\b\u0010[\u001a\u0004\u0018\u00010H2\b\u0010\\\u001a\u0004\u0018\u00010H2\b\u0010]\u001a\u0004\u0018\u00010H2\u0006\u0010^\u001a\u00020HH\u0002¢\u0006\u0004\b_\u0010`J\u000f\u0010a\u001a\u00020\bH\u0002¢\u0006\u0004\ba\u0010\u0004J\u000f\u0010b\u001a\u00020\bH\u0002¢\u0006\u0004\bb\u0010\u0004J/\u0010g\u001a\u00020\b2\b\u0010c\u001a\u0004\u0018\u00010H2\n\b\u0002\u0010e\u001a\u0004\u0018\u00010d2\b\b\u0002\u0010f\u001a\u00020\u0015H\u0002¢\u0006\u0004\bg\u0010hJ\u000f\u0010i\u001a\u00020\bH\u0016¢\u0006\u0004\bi\u0010\u0004J\u0019\u0010l\u001a\u00020\b2\b\u0010k\u001a\u0004\u0018\u00010jH\u0016¢\u0006\u0004\bl\u0010mJ\u0017\u0010p\u001a\u00020\u00022\u0006\u0010o\u001a\u00020nH\u0016¢\u0006\u0004\bp\u0010qJ\u000f\u0010r\u001a\u00020HH\u0016¢\u0006\u0004\br\u0010sJ\u000f\u0010t\u001a\u00020\u001bH\u0016¢\u0006\u0004\bt\u0010SJ\u000f\u0010u\u001a\u00020\u001bH\u0016¢\u0006\u0004\bu\u0010SJ\u000f\u0010v\u001a\u00020\bH\u0016¢\u0006\u0004\bv\u0010\u0004J\u000f\u0010w\u001a\u00020\bH\u0016¢\u0006\u0004\bw\u0010\u0004J\u000f\u0010x\u001a\u00020\bH\u0016¢\u0006\u0004\bx\u0010\u0004J\u000f\u0010y\u001a\u00020\bH\u0016¢\u0006\u0004\by\u0010\u0004J\u000f\u0010z\u001a\u00020\bH\u0016¢\u0006\u0004\bz\u0010\u0004R\u001e\u0010}\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b{\u0010|R&\u0010\u0083\u0001\u001a\u0011\u0012\r\u0012\u000b \u0080\u0001*\u0004\u0018\u00010\u007f0\u007f0~8\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u0081\u0001\u0010\u0082\u0001R\u0017\u0010\u0086\u0001\u001a\u00020\u00158\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u0084\u0001\u0010\u0085\u0001R!\u0010\u008c\u0001\u001a\u00030\u0087\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b\u0088\u0001\u0010\u0089\u0001\u001a\u0006\b\u008a\u0001\u0010\u008b\u0001R\u0019\u0010\u008f\u0001\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008d\u0001\u0010\u008e\u0001R\u001c\u0010\u0093\u0001\u001a\u0005\u0018\u00010\u0090\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0091\u0001\u0010\u0092\u0001R\u0018\u00100\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0094\u0001\u0010\u0085\u0001R$\u0010\u0098\u0001\u001a\u000f\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u0002080\u0095\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u0096\u0001\u0010\u0097\u0001R$\u0010\u009a\u0001\u001a\u000f\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u0002080\u0095\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u0099\u0001\u0010\u0097\u0001R\u0019\u0010\u009c\u0001\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009b\u0001\u0010\u0085\u0001R\u0019\u0010\u009e\u0001\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009d\u0001\u0010\u0085\u0001R\u0019\u0010 \u0001\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009f\u0001\u0010\u0085\u0001R\u0018\u0010Y\u001a\u00020H8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¡\u0001\u0010¢\u0001R\u0019\u0010¤\u0001\u001a\u00020H8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b£\u0001\u0010¢\u0001R\u001b\u0010§\u0001\u001a\u0004\u0018\u00010d8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¥\u0001\u0010¦\u0001R\u001a\u0010Z\u001a\u0004\u0018\u00010H8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¨\u0001\u0010¢\u0001R\u001a\u0010\\\u001a\u0004\u0018\u00010H8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b©\u0001\u0010¢\u0001R\u001b\u0010«\u0001\u001a\u0004\u0018\u00010H8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bª\u0001\u0010¢\u0001R\u0019\u0010\u00ad\u0001\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¬\u0001\u0010\u008e\u0001R\u0019\u0010¯\u0001\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b®\u0001\u0010\u008e\u0001R\u0019\u0010±\u0001\u001a\u00020H8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b°\u0001\u0010¢\u0001R\u0019\u0010´\u0001\u001a\u00020&8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b²\u0001\u0010³\u0001R\u001c\u0010·\u0001\u001a\u0005\u0018\u00010µ\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0085\u0001\u0010¶\u0001R\u0019\u0010¹\u0001\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¸\u0001\u0010\u008e\u0001R \u0010»\u0001\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bº\u0001\u0010|R\u001a\u0010-\u001a\u0004\u0018\u00010,8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¼\u0001\u0010½\u0001R\u0019\u0010¿\u0001\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¾\u0001\u0010\u0085\u0001R\u001b\u0010Â\u0001\u001a\u00020\u00158\u0006¢\u0006\u000f\n\u0006\bÀ\u0001\u0010\u0085\u0001\u001a\u0005\bÁ\u0001\u0010$¨\u0006Å\u0001"}, d2 = {"Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;", "Lcom/transsion/shorttv/ui/fragment/download/ShortTvDownloadReBaseFragment;", "Lms/z;", "<init>", "()V", "Lqs/i;", "loginProvider", "Lkotlin/Function0;", "", "onSuccess", "x1", "(Lqs/i;Lkotlin/jvm/functions/Function0;)V", "J1", "initHistory", "initView", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "F1", "(Landroid/view/View;)V", "D1", "I1", "", RequestParameters.POSITION, "E1", "(I)V", "X0", "V0", "", "onlyEpisodeList", "y1", "(Z)V", "", "totalSize", "H1", "(J)V", "Y0", "()I", "U1", "Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$a$a;", "L1", "()Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$a$a;", "state", "V1", "(Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$a$a;)V", "Lcom/transsion/shorttv/bean/DownloadListBean;", "listBean", "T1", "(Lcom/transsion/shorttv/bean/DownloadListBean;)V", "totalEpisode", "Q0", "Lcom/google/android/material/tabs/TabLayout$Tab;", "tab", "C1", "(Lcom/google/android/material/tabs/TabLayout$Tab;)V", "R0", "", "Lcom/transsion/shorttv/bean/DownloadItem;", "list", "start", TtmlNode.END, "W1", "(Ljava/util/List;II)V", "W0", "showNotNetError", "S1", "showLoading", "K1", "f1", "()Landroid/view/View;", "e1", "Landroid/content/Context;", "context", "", "desText", "showRightBtn", "b1", "(Landroid/content/Context;Ljava/lang/String;Z)Landroid/view/View;", "a1", "G1", "selectAll", "M1", "O1", "w1", "()Z", "isSelected", "Q1", "P1", "A1", "pageName", "pageFrom", "subjectId", "miniId", "ops", "resourceId", "taskId", "Z0", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "X1", "S0", "userId", "Lcom/transsion/shorttv/bean/Subject;", "dotSubject", "dotEp", "U0", "(Ljava/lang/String;Lcom/transsion/shorttv/bean/Subject;I)V", "initViewData", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "h1", "(Landroid/view/LayoutInflater;)Lms/z;", "getPageStateLayoutTitle", "()Ljava/lang/String;", "isAudioShowNoNetworkLayout", "isMonitorNetworkState", "initViewModel", "initListener", "retryLoadData", TmcConstants.NAVIGATION_ON_START, "onDestroy", "m", "Lkotlin/jvm/functions/Function0;", "loginSuccessCallback", "Landroidx/activity/result/b;", "Landroid/content/Intent;", "kotlin.jvm.PlatformType", "n", "Landroidx/activity/result/b;", "loginLauncher", "o", "I", "padding", "Lcom/transsion/shorttv/utils/b;", TtmlNode.TAG_P, "Lkotlin/Lazy;", "g1", "()Lcom/transsion/shorttv/utils/b;", "shortTVReporter", CampaignEx.JSON_KEY_AD_Q, "Z", "isContentDataRequested", "Lcom/transsion/shorttv/ui/adapter/ShortTvDownloadEpListAdapter;", CampaignEx.JSON_KEY_AD_R, "Lcom/transsion/shorttv/ui/adapter/ShortTvDownloadEpListAdapter;", "shortTVEpAdapter", "s", "", "t", "Ljava/util/Map;", "episodeResourceMap", TmcStartParams.KEY_URL_SHORT, "inDownloadStatusMap", "v", "startPosition", "w", "endPosition", "x", "curDownloadTabPosition", "y", "Ljava/lang/String;", "z", "lastPageFrom", "A", "Lcom/transsion/shorttv/bean/Subject;", "subject", "B", "C", "D", "moduleName", "E", "scroll2Download", "F", "isSelectAll", "G", "formatSize", "H", "Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$a$a;", "downloadBtnState", "Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;", "Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;", "downloadVideoAdHelper", "J", "isRequestingData", "K", "selectAllCallback", "L", "Lcom/transsion/shorttv/bean/DownloadListBean;", "M", "prevSelectedLockedCount", "N", "getAdUnlockEpLimitForDownload", "adUnlockEpLimitForDownload", "O", "a", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public class ShortTVDownloadReFragment extends ShortTvDownloadReBaseFragment<z> {

    /* JADX INFO: renamed from: O, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: A, reason: from kotlin metadata */
    private Subject subject;

    /* JADX INFO: renamed from: B, reason: from kotlin metadata */
    private String subjectId;

    /* JADX INFO: renamed from: C, reason: from kotlin metadata */
    private String ops;

    /* JADX INFO: renamed from: D, reason: from kotlin metadata */
    private String moduleName;

    /* JADX INFO: renamed from: E, reason: from kotlin metadata */
    private boolean scroll2Download;

    /* JADX INFO: renamed from: F, reason: from kotlin metadata */
    private boolean isSelectAll;

    /* JADX INFO: renamed from: G, reason: from kotlin metadata */
    private String formatSize;

    /* JADX INFO: renamed from: H, reason: from kotlin metadata */
    private Companion.AbstractC0666a downloadBtnState;

    /* JADX INFO: renamed from: I, reason: from kotlin metadata */
    private STCommonVideoAdHelper downloadVideoAdHelper;

    /* JADX INFO: renamed from: J, reason: from kotlin metadata */
    private boolean isRequestingData;

    /* JADX INFO: renamed from: K, reason: from kotlin metadata */
    private Function0 selectAllCallback;

    /* JADX INFO: renamed from: L, reason: from kotlin metadata */
    private DownloadListBean listBean;

    /* JADX INFO: renamed from: M, reason: from kotlin metadata */
    private int prevSelectedLockedCount;

    /* JADX INFO: renamed from: N, reason: from kotlin metadata */
    private final int adUnlockEpLimitForDownload;

    /* JADX INFO: renamed from: m, reason: collision with root package name and from kotlin metadata */
    private Function0 loginSuccessCallback;

    /* JADX INFO: renamed from: n, reason: collision with root package name and from kotlin metadata */
    private final androidx.activity.result.b loginLauncher;

    /* JADX INFO: renamed from: o, reason: collision with root package name and from kotlin metadata */
    private final int padding;

    /* JADX INFO: renamed from: p, reason: collision with root package name and from kotlin metadata */
    private final Lazy shortTVReporter;

    /* JADX INFO: renamed from: q, reason: collision with root package name and from kotlin metadata */
    private boolean isContentDataRequested;

    /* JADX INFO: renamed from: r, reason: collision with root package name and from kotlin metadata */
    private ShortTvDownloadEpListAdapter shortTVEpAdapter;

    /* JADX INFO: renamed from: s, reason: collision with root package name and from kotlin metadata */
    private int totalEpisode;

    /* JADX INFO: renamed from: t, reason: collision with root package name and from kotlin metadata */
    private final Map episodeResourceMap;

    /* JADX INFO: renamed from: u, reason: collision with root package name and from kotlin metadata */
    private final Map inDownloadStatusMap;

    /* JADX INFO: renamed from: v, reason: collision with root package name and from kotlin metadata */
    private int startPosition;

    /* JADX INFO: renamed from: w, reason: collision with root package name and from kotlin metadata */
    private int endPosition;

    /* JADX INFO: renamed from: x, reason: collision with root package name and from kotlin metadata */
    private int curDownloadTabPosition;

    /* JADX INFO: renamed from: y, reason: collision with root package name and from kotlin metadata */
    private String pageFrom;

    /* JADX INFO: renamed from: z, reason: collision with root package name and from kotlin metadata */
    private String lastPageFrom;

    /* JADX INFO: renamed from: com.transsion.shorttv.ui.fragment.download.ShortTVDownloadReFragment$a, reason: from kotlin metadata */
    public static final class Companion {

        /* JADX INFO: renamed from: com.transsion.shorttv.ui.fragment.download.ShortTVDownloadReFragment$a$a, reason: collision with other inner class name */
        private static abstract class AbstractC0666a {

            /* JADX INFO: renamed from: com.transsion.shorttv.ui.fragment.download.ShortTVDownloadReFragment$a$a$a, reason: collision with other inner class name */
            public static final class C0667a extends AbstractC0666a {

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                public static final C0667a f53342a = new C0667a();

                private C0667a() {
                    super(null);
                }
            }

            /* JADX INFO: renamed from: com.transsion.shorttv.ui.fragment.download.ShortTVDownloadReFragment$a$a$b */
            public static final class b extends AbstractC0666a {

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                public static final b f53343a = new b();

                private b() {
                    super(null);
                }
            }

            /* JADX INFO: renamed from: com.transsion.shorttv.ui.fragment.download.ShortTVDownloadReFragment$a$a$c */
            public static final class c extends AbstractC0666a {

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                public static final c f53344a = new c();

                private c() {
                    super(null);
                }
            }

            /* JADX INFO: renamed from: com.transsion.shorttv.ui.fragment.download.ShortTVDownloadReFragment$a$a$d */
            public static final class d extends AbstractC0666a {

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                private final boolean f53345a;

                public d(boolean z10) {
                    super(null);
                    this.f53345a = z10;
                }

                public final boolean a() {
                    return this.f53345a;
                }

                public boolean equals(Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    return (obj instanceof d) && this.f53345a == ((d) obj).f53345a;
                }

                public int hashCode() {
                    return androidx.compose.foundation.e.a(this.f53345a);
                }

                public String toString() {
                    return "WatchAd(unlockAll=" + this.f53345a + ")";
                }
            }

            private AbstractC0666a() {
            }

            public /* synthetic */ AbstractC0666a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }
        }

        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final ShortTVDownloadReFragment a(String str, String str2, Subject subject, String str3, String str4, boolean z10) {
            ShortTVDownloadReFragment shortTVDownloadReFragment = new ShortTVDownloadReFragment();
            shortTVDownloadReFragment.setArguments(androidx.core.os.d.b(TuplesKt.a(WebConstants.PAGE_FROM, str), TuplesKt.a("last_page_from", str2), TuplesKt.a("subject", subject), TuplesKt.a("ops", str3), TuplesKt.a("module_name", str4), TuplesKt.a("download_scroll_to_download", Boolean.valueOf(z10))));
            return shortTVDownloadReFragment;
        }
    }

    public static final class b implements TabLayout.OnTabSelectedListener {
        b() {
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        public void onTabReselected(TabLayout.Tab tab) {
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        public void onTabSelected(TabLayout.Tab tab) {
            ShortTVDownloadReFragment.this.C1(tab);
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        public void onTabUnselected(TabLayout.Tab tab) {
        }
    }

    public static final class c implements c0 {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ qs.i f53348b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Subject f53349c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f53350d;

        c(qs.i iVar, Subject subject, int i11) {
            this.f53348b = iVar;
            this.f53349c = subject;
            this.f53350d = i11;
        }

        @Override // androidx.p009lifecycle.c0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onChanged(Unit unit) {
            b0 b0VarR;
            Long l11;
            b0 b0VarP;
            b0 b0VarJ;
            b0 b0VarJ2;
            ShortTVDownloadReFragment.this.K1();
            ShortTvDownloadViewModel shortTvDownloadViewModelH0 = ShortTVDownloadReFragment.this.getViewModel();
            if (shortTvDownloadViewModelH0 != null && (b0VarJ2 = shortTvDownloadViewModelH0.j()) != null) {
                b0VarJ2.o(this);
            }
            ShortTvDownloadViewModel shortTvDownloadViewModelH1 = ShortTVDownloadReFragment.this.getViewModel();
            Subject subject = null;
            if (shortTvDownloadViewModelH1 != null && (b0VarJ = shortTvDownloadViewModelH1.j()) != null) {
                b0VarJ.q(null);
            }
            ShortTvDownloadViewModel shortTvDownloadViewModelH2 = ShortTVDownloadReFragment.this.getViewModel();
            if (shortTvDownloadViewModelH2 != null && (b0VarP = shortTvDownloadViewModelH2.p()) != null) {
                subject = (Subject) b0VarP.f();
            }
            if (subject == null || subject.isPaid() != 1) {
                ShortTVDownloadReFragment.this.U0(this.f53348b.getUserId(), this.f53349c, this.f53350d);
                return;
            }
            ShortTVDownloadReFragment.this.g0().R0(1);
            ShortTVDownloadReFragment.this.g0().S0();
            ShortTVDownloadReFragment.this.U1();
            ShortTVDownloadReFragment shortTVDownloadReFragment = ShortTVDownloadReFragment.this;
            ShortTvDownloadViewModel shortTvDownloadViewModelH3 = shortTVDownloadReFragment.getViewModel();
            shortTVDownloadReFragment.A1((shortTvDownloadViewModelH3 == null || (b0VarR = shortTvDownloadViewModelH3.r()) == null || (l11 = (Long) b0VarR.f()) == null) ? 0L : l11.longValue());
        }
    }

    public static final class d implements com.transsion.shorttv.order.b {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Subject f53352b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f53353c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ Context f53354d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f53355e;

        d(Subject subject, int i11, Context context, String str) {
            this.f53352b = subject;
            this.f53353c = i11;
            this.f53354d = context;
            this.f53355e = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit d(ShortTVDownloadReFragment shortTVDownloadReFragment, String str, Subject subject, int i11) {
            shortTVDownloadReFragment.U0(str, subject, i11);
            return Unit.f67061a;
        }

        @Override // com.transsion.shorttv.order.b
        public void a(String errorCode, String errorMsg) {
            Intrinsics.h(errorCode, "errorCode");
            Intrinsics.h(errorMsg, "errorMsg");
            com.transsion.shorttv.order.b.a.a(this, errorCode, errorMsg);
            lg.a.C0828a c0828a = lg.a.f68839a;
            String tag = ShortTVDownloadReFragment.this.getTAG();
            Intrinsics.g(tag, "<get-TAG>(...)");
            lg.a.C0828a.l(c0828a, tag, "callPayMethod onPayFail, errorCode=" + errorCode + ", errorMsg=" + errorMsg, false, 4, null);
            ss.b.f75858a.j(this.f53352b, this.f53353c, "fail", errorMsg, errorCode, "download");
            ShortTvAlertDialog.Companion companion = ShortTvAlertDialog.INSTANCE;
            String string = this.f53354d.getString(R$string.short_tv_pay_failed_title);
            Intrinsics.g(string, "getString(...)");
            String string2 = this.f53354d.getString(R$string.short_tv_pay_failed_message);
            Intrinsics.g(string2, "getString(...)");
            String string3 = this.f53354d.getString(R$string.short_tv_payment_retry);
            Intrinsics.g(string3, "getString(...)");
            final ShortTVDownloadReFragment shortTVDownloadReFragment = ShortTVDownloadReFragment.this;
            final String str = this.f53355e;
            final Subject subject = this.f53352b;
            final int i11 = this.f53353c;
            companion.a(string, string2, string3, (32 & 8) != 0 ? null : new Function0() { // from class: com.transsion.shorttv.ui.fragment.download.y
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return ShortTVDownloadReFragment.d.d(shortTVDownloadReFragment, str, subject, i11);
                }
            }, (32 & 16) != 0 ? null : this.f53354d.getString(R$string.short_tv_payment_cancel), (32 & 32) != 0 ? null : null).i0(this.f53354d, "ShortTvAlertDialog");
        }

        @Override // com.transsion.shorttv.order.b
        public void b(GetPaynicornOrderStatusRespEntity getPaynicornOrderStatusRespEntity) {
            String description;
            String string;
            b0 b0VarR;
            Long l11;
            String orderStatus;
            com.transsion.shorttv.order.b.a.b(this, getPaynicornOrderStatusRespEntity);
            Integer numV = (getPaynicornOrderStatusRespEntity == null || (orderStatus = getPaynicornOrderStatusRespEntity.getOrderStatus()) == null) ? null : StringsKt.v(orderStatus);
            if (numV != null && numV.intValue() == 2) {
                ss.b.f75858a.j(this.f53352b, this.f53353c, NativeComponentConstants.KEY_COMPONENT_RESULT_SUCCESS, "", "0", "download");
                ShortTvDownloadViewModel shortTvDownloadViewModelH0 = ShortTVDownloadReFragment.this.getViewModel();
                if (shortTvDownloadViewModelH0 != null) {
                    shortTvDownloadViewModelH0.s(1);
                }
                ShortTVDownloadReFragment.this.g0().R0(1);
                ShortTVDownloadReFragment.this.g0().S0();
                ShortTVDownloadReFragment.this.U1();
                ShortTVDownloadReFragment shortTVDownloadReFragment = ShortTVDownloadReFragment.this;
                ShortTvDownloadViewModel shortTvDownloadViewModelH1 = shortTVDownloadReFragment.getViewModel();
                shortTVDownloadReFragment.A1((shortTvDownloadViewModelH1 == null || (b0VarR = shortTvDownloadViewModelH1.r()) == null || (l11 = (Long) b0VarR.f()) == null) ? 0L : l11.longValue());
                return;
            }
            if (numV != null && numV.intValue() == 3) {
                ss.b.f75858a.j(this.f53352b, this.f53353c, "cancel", "", "0", "download");
                return;
            }
            ss.b bVar = ss.b.f75858a;
            Subject subject = this.f53352b;
            int i11 = this.f53353c;
            if (getPaynicornOrderStatusRespEntity == null || (description = getPaynicornOrderStatusRespEntity.getDescription()) == null) {
                description = "";
            }
            String str = description;
            if (numV == null || (string = numV.toString()) == null) {
                string = TmcConstants.COLD_OPEN_TYPE;
            }
            bVar.j(subject, i11, "fail", str, string, "download");
        }
    }

    public static final class e extends RecyclerView.r {
        e() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.r
        public void onScrolled(RecyclerView recyclerView, int i11, int i12) {
            z zVar;
            TabLayout tabLayout;
            TabLayout.Tab tabAt;
            Intrinsics.h(recyclerView, "recyclerView");
            super.onScrolled(recyclerView, i11, i12);
            RecyclerView.m layoutManager = recyclerView.getLayoutManager();
            GridLayoutManager gridLayoutManager = layoutManager instanceof GridLayoutManager ? (GridLayoutManager) layoutManager : null;
            int iFindFirstVisibleItemPosition = ((gridLayoutManager != null ? gridLayoutManager.findFirstVisibleItemPosition() : 0) + 24) / 25;
            if (iFindFirstVisibleItemPosition == ShortTVDownloadReFragment.this.curDownloadTabPosition || (zVar = (z) ShortTVDownloadReFragment.this.getMViewBinding()) == null || (tabLayout = zVar.f69981u) == null || (tabAt = tabLayout.getTabAt(iFindFirstVisibleItemPosition)) == null) {
                return;
            }
            tabAt.select();
        }
    }

    static final class f implements c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f53357a;

        f(Function1 function) {
            Intrinsics.h(function, "function");
            this.f53357a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f53357a;
        }

        public final boolean equals(Object obj) {
            if ((obj instanceof c0) && (obj instanceof FunctionAdapter)) {
                return Intrinsics.c(a(), ((FunctionAdapter) obj).a());
            }
            return false;
        }

        public final int hashCode() {
            return a().hashCode();
        }

        @Override // androidx.p009lifecycle.c0
        public final /* synthetic */ void onChanged(Object obj) {
            this.f53357a.invoke(obj);
        }
    }

    /* JADX INFO: renamed from: com.transsion.shorttv.ui.fragment.download.ShortTVDownloadReFragment$initHistory$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.shorttv.ui.fragment.download.ShortTVDownloadReFragment$initHistory$1", f = "ShortTVDownloadReFragment.kt", l = {231, 233}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        Object L$0;
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return ShortTVDownloadReFragment.this.new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
        }

        /* JADX WARN: Code duplicated, block: B:21:0x005c A[RETURN] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            ShortTVDownloadReFragment shortTVDownloadReFragment;
            ShortTvInnerPlayBean shortTvInnerPlayBean;
            a2 a2VarC;
            ShortTVDownloadReFragment$initHistory$1$1$1 shortTVDownloadReFragment$initHistory$1$1$1;
            Object objF = IntrinsicsKt.f();
            int i11 = this.label;
            if (i11 == 0) {
                ResultKt.b(obj);
                String str = ShortTVDownloadReFragment.this.subjectId;
                if (str != null) {
                    shortTVDownloadReFragment = ShortTVDownloadReFragment.this;
                    qs.h hVarA0 = shortTVDownloadReFragment.g0().A0();
                    if (hVarA0 != null) {
                        this.L$0 = shortTVDownloadReFragment;
                        this.label = 1;
                        obj = hVarA0.c(str, this);
                        if (obj == objF) {
                            return objF;
                        }
                        shortTvInnerPlayBean = (ShortTvInnerPlayBean) obj;
                    } else {
                        shortTvInnerPlayBean = null;
                    }
                    a2VarC = y0.c();
                    shortTVDownloadReFragment$initHistory$1$1$1 = new ShortTVDownloadReFragment$initHistory$1$1$1(shortTVDownloadReFragment, shortTvInnerPlayBean, null);
                    this.L$0 = null;
                    this.label = 2;
                    if (kotlinx.coroutines.i.g(a2VarC, shortTVDownloadReFragment$initHistory$1$1$1, this) == objF) {
                        return objF;
                    }
                }
            } else if (i11 == 1) {
                shortTVDownloadReFragment = (ShortTVDownloadReFragment) this.L$0;
                ResultKt.b(obj);
                shortTvInnerPlayBean = (ShortTvInnerPlayBean) obj;
                a2VarC = y0.c();
                shortTVDownloadReFragment$initHistory$1$1$1 = new ShortTVDownloadReFragment$initHistory$1$1$1(shortTVDownloadReFragment, shortTvInnerPlayBean, null);
                this.L$0 = null;
                this.label = 2;
                if (kotlinx.coroutines.i.g(a2VarC, shortTVDownloadReFragment$initHistory$1$1$1, this) == objF) {
                    return objF;
                }
            } else {
                if (i11 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            return Unit.f67061a;
        }
    }

    /* JADX WARN: Code duplicated, block: B:35:0x00d4  */
    /* JADX WARN: Code duplicated, block: B:38:0x00d9  */
    /* JADX WARN: Code duplicated, block: B:39:0x00de  */
    public ShortTVDownloadReFragment() {
        Object objM454constructorimpl;
        Integer num;
        int iIntValue;
        Integer numValueOf;
        androidx.activity.result.b bVarRegisterForActivityResult = registerForActivityResult(new f.j(), new androidx.activity.result.a() { // from class: com.transsion.shorttv.ui.fragment.download.e
            @Override // androidx.activity.result.a
            public final void a(Object obj) {
                ShortTVDownloadReFragment.z1(this.f53366a, (ActivityResult) obj);
            }
        });
        Intrinsics.g(bVarRegisterForActivityResult, "registerForActivityResult(...)");
        this.loginLauncher = bVarRegisterForActivityResult;
        this.padding = a0.a(12.0f);
        this.shortTVReporter = LazyKt.b(new Function0() { // from class: com.transsion.shorttv.ui.fragment.download.f
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ShortTVDownloadReFragment.R1();
            }
        });
        this.episodeResourceMap = new LinkedHashMap();
        this.inDownloadStatusMap = new LinkedHashMap();
        this.startPosition = 1;
        this.endPosition = 20;
        this.pageFrom = "";
        this.lastPageFrom = "";
        this.formatSize = "";
        this.downloadBtnState = Companion.AbstractC0666a.c.f53344a;
        ur.a aVar = ur.a.f76889a;
        try {
            Result.Companion companion = Result.INSTANCE;
            JsonObject jsonObjectB = com.transsion.ad.scene.d.f42204a.b("ShortTvPlayerUnlockDownloadScene");
            JsonElement jsonElement = jsonObjectB != null ? jsonObjectB.get("adUnlockEpLimitForDownload") : null;
            KClass kClassB = Reflection.b(Integer.class);
            if (Intrinsics.c(kClassB, Reflection.b(String.class))) {
                if (jsonElement != null) {
                    jsonElement.getAsString();
                }
            } else {
                if (Intrinsics.c(kClassB, Reflection.b(Integer.TYPE))) {
                    numValueOf = jsonElement != null ? Integer.valueOf(jsonElement.getAsInt()) : null;
                    if (!(numValueOf instanceof Integer)) {
                    }
                    objM454constructorimpl = Result.m454constructorimpl(numValueOf);
                    num = (Integer) (Result.m457exceptionOrNullimpl(objM454constructorimpl) == null ? objM454constructorimpl : null);
                    if (num != null) {
                        iIntValue = num.intValue();
                    } else {
                        iIntValue = 10;
                    }
                    this.adUnlockEpLimitForDownload = iIntValue;
                }
                if (Intrinsics.c(kClassB, Reflection.b(Long.TYPE))) {
                    if (jsonElement != null) {
                        jsonElement.getAsLong();
                    }
                } else if (Intrinsics.c(kClassB, Reflection.b(Boolean.TYPE)) && jsonElement != null) {
                    jsonElement.getAsBoolean();
                }
            }
            numValueOf = null;
            objM454constructorimpl = Result.m454constructorimpl(numValueOf);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        num = (Integer) (Result.m457exceptionOrNullimpl(objM454constructorimpl) == null ? objM454constructorimpl : null);
        if (num != null) {
            iIntValue = num.intValue();
        } else {
            iIntValue = 10;
        }
        this.adUnlockEpLimitForDownload = iIntValue;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void A1(long totalSize) {
        final ArrayList arrayList;
        ProgressBar progressBar;
        BLFrameLayout bLFrameLayout;
        ProgressBar progressBar2;
        AppCompatTextView appCompatTextView;
        AppCompatImageView appCompatImageView;
        View view;
        b0 b0VarQ;
        Map map;
        DownloadItem downloadItem;
        b0 b0VarP;
        b0 b0VarP2;
        Companion.AbstractC0666a abstractC0666a = this.downloadBtnState;
        int i11 = 0;
        Subject subject = null;
        if (abstractC0666a instanceof Companion.AbstractC0666a.d) {
            ShortTvDownloadViewModel shortTvDownloadViewModelH0 = getViewModel();
            if (shortTvDownloadViewModelH0 != null && (b0VarP2 = shortTvDownloadViewModelH0.p()) != null) {
                subject = (Subject) b0VarP2.f();
            }
            Integer num = (Integer) g0().j0().f();
            ss.b.f75858a.d(subject, num != null ? num.intValue() : 0, "minitv_ad");
            X1();
            return;
        }
        if (abstractC0666a instanceof Companion.AbstractC0666a.C0667a) {
            ShortTvDownloadViewModel shortTvDownloadViewModelH1 = getViewModel();
            if (shortTvDownloadViewModelH1 != null && (b0VarP = shortTvDownloadViewModelH1.p()) != null) {
                subject = (Subject) b0VarP.f();
            }
            Integer num2 = (Integer) g0().j0().f();
            ss.b.f75858a.d(subject, num2 != null ? num2.intValue() : 0, "minitv_pay");
            S0();
            return;
        }
        if (abstractC0666a instanceof Companion.AbstractC0666a.b) {
            fs.b.f62459a.e(getString(R$string.short_tv_no_unlock_method_available));
            return;
        }
        if (!(abstractC0666a instanceof Companion.AbstractC0666a.c)) {
            throw new NoWhenBranchMatchedException();
        }
        qs.d dVarS0 = g0().s0();
        if (dVarS0 == null || !dVarS0.e(totalSize)) {
            ArrayList arrayList2 = new ArrayList();
            ShortTvDownloadViewModel shortTvDownloadViewModelH2 = getViewModel();
            if (shortTvDownloadViewModelH2 != null && (b0VarQ = shortTvDownloadViewModelH2.q()) != null && (map = (Map) b0VarQ.f()) != null) {
                for (Map.Entry entry : map.entrySet()) {
                    if (this.episodeResourceMap.containsKey(entry.getKey()) && (downloadItem = (DownloadItem) this.episodeResourceMap.get(entry.getKey())) != null) {
                        arrayList2.add(downloadItem);
                    }
                }
            }
            lg.a.C0828a c0828a = lg.a.f68839a;
            String tag = getTAG();
            Intrinsics.g(tag, "<get-TAG>(...)");
            lg.a.C0828a.f(c0828a, tag, "onDownload ", false, 4, null);
            z zVar = (z) getMViewBinding();
            if (zVar != null && (view = zVar.G) != null) {
                yr.b.e(view);
            }
            z zVar2 = (z) getMViewBinding();
            if (zVar2 != null && (appCompatImageView = zVar2.f69971k) != null) {
                yr.b.b(appCompatImageView);
            }
            z zVar3 = (z) getMViewBinding();
            if (zVar3 != null && (appCompatTextView = zVar3.f69983w) != null) {
                yr.b.b(appCompatTextView);
            }
            z zVar4 = (z) getMViewBinding();
            if (zVar4 != null && (progressBar2 = zVar4.f69977q) != null) {
                yr.b.e(progressBar2);
            }
            z zVar5 = (z) getMViewBinding();
            if (zVar5 != null && (bLFrameLayout = zVar5.f69967g) != null) {
                yr.b.e(bLFrameLayout);
            }
            DownloadItem downloadItem2 = null;
            for (Object obj : arrayList2) {
                int i12 = i11 + 1;
                if (i11 < 0) {
                    CollectionsKt.u();
                }
                DownloadItem downloadItem3 = (DownloadItem) obj;
                String string = UUID.randomUUID().toString();
                Intrinsics.g(string, "toString(...)");
                downloadItem3.setTaskId(string);
                DownloadItem downloadItem4 = (downloadItem2 == null || downloadItem3.getEp() < downloadItem2.getEp()) ? downloadItem3 : downloadItem2;
                Z0(this.pageFrom, this.lastPageFrom, this.subjectId, downloadItem3.getResourceId(), this.ops, downloadItem3.getResourceId(), string);
                lg.a.f68839a.p("Download", new String[]{"剧集多资源，下载点击，开始下载: subjectId = " + this.subjectId + ",resourceId = " + downloadItem3.getResourceId()}, true);
                i11 = i12;
                downloadItem2 = downloadItem4;
            }
            qs.d dVarS1 = g0().s0();
            if (dVarS1 != null) {
                arrayList = arrayList2;
                dVarS1.h(this.listBean, this.subject, this.ops, this.pageFrom, this.lastPageFrom, arrayList);
            } else {
                arrayList = arrayList2;
            }
            ShortTvDownloadViewModel shortTvDownloadViewModelH3 = getViewModel();
            if (shortTvDownloadViewModelH3 != null) {
                shortTvDownloadViewModelH3.w(this.subjectId, arrayList);
            }
            kotlinx.coroutines.k.d(androidx.p009lifecycle.v.a(this), null, null, new ShortTVDownloadReFragment$onDownload$3(this, null), 3, null);
            long size = ((long) ((arrayList.size() / 20) * 100)) + 300;
            z zVar6 = (z) getMViewBinding();
            if (zVar6 == null || (progressBar = zVar6.f69977q) == null) {
                return;
            }
            progressBar.postDelayed(new Runnable() { // from class: com.transsion.shorttv.ui.fragment.download.h
                @Override // java.lang.Runnable
                public final void run() {
                    ShortTVDownloadReFragment.B1(this.f53368a, arrayList);
                }
            }, size);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void B1(ShortTVDownloadReFragment shortTVDownloadReFragment, List list) {
        FragmentActivity activity = shortTVDownloadReFragment.getActivity();
        if (activity == null || activity.isFinishing() || activity.isDestroyed() || list.isEmpty()) {
            return;
        }
        qs.d dVarS0 = shortTVDownloadReFragment.g0().s0();
        if (dVarS0 != null) {
            dVarS0.i(activity, (DownloadItem) CollectionsKt.i0(list), list.size(), shortTVDownloadReFragment.formatSize);
        }
        shortTVDownloadReFragment.f0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void C1(TabLayout.Tab tab) {
        RecyclerView recyclerView;
        if (tab == null || !tab.isSelected()) {
            return;
        }
        this.curDownloadTabPosition = tab.getPosition();
        int position = tab.getPosition() * 25;
        z zVar = (z) getMViewBinding();
        RecyclerView.m layoutManager = (zVar == null || (recyclerView = zVar.f69979s) == null) ? null : recyclerView.getLayoutManager();
        GridLayoutManager gridLayoutManager = layoutManager instanceof GridLayoutManager ? (GridLayoutManager) layoutManager : null;
        if (gridLayoutManager != null) {
            gridLayoutManager.scrollToPositionWithOffset(position, 0);
        }
    }

    private final void D1(View view) {
        ShortTVFavInfo shortTVFavInfo;
        if (ds.d.f61428a.a(view.getId(), 500L)) {
            return;
        }
        if (!nh.m.f70474a.e()) {
            fs.b.f62459a.d(R$string.short_tv_no_network_toast);
            return;
        }
        com.transsion.shorttv.utils.b bVarG1 = g1();
        String str = this.subjectId;
        Subject subject = this.subject;
        bVarG1.c(str, "", (subject == null || (shortTVFavInfo = subject.getShortTVFavInfo()) == null) ? false : shortTVFavInfo.getHasFavorite(), "minitv_download");
        ShortTvDownloadViewModel shortTvDownloadViewModelH0 = getViewModel();
        if (shortTvDownloadViewModelH0 != null) {
            shortTvDownloadViewModelH0.g(this.subject);
        }
    }

    private final void E1(int position) {
        b0 b0VarR;
        b0 b0VarR2;
        b0 b0VarR3;
        Long l11;
        Long size;
        ShortTvDownloadEpListAdapter shortTvDownloadEpListAdapter = this.shortTVEpAdapter;
        Intrinsics.e(shortTvDownloadEpListAdapter);
        List data = shortTvDownloadEpListAdapter.getData();
        if (position >= data.size()) {
            return;
        }
        js.d dVar = (js.d) data.get(position);
        if (dVar.c()) {
            return;
        }
        ShortTvDownloadViewModel shortTvDownloadViewModelH0 = getViewModel();
        if (shortTvDownloadViewModelH0 != null) {
            shortTvDownloadViewModelH0.v(dVar);
        }
        DownloadItem downloadItem = (DownloadItem) this.episodeResourceMap.get(Integer.valueOf(position));
        long jLongValue = 0;
        long jLongValue2 = (downloadItem == null || (size = downloadItem.getSize()) == null) ? 0L : size.longValue();
        ShortTvDownloadViewModel shortTvDownloadViewModelH1 = getViewModel();
        if (shortTvDownloadViewModelH1 != null && (b0VarR3 = shortTvDownloadViewModelH1.r()) != null && (l11 = (Long) b0VarR3.f()) != null) {
            jLongValue = l11.longValue();
        }
        if (dVar.d()) {
            dVar.g(false);
            ShortTvDownloadViewModel shortTvDownloadViewModelH2 = getViewModel();
            if (shortTvDownloadViewModelH2 != null && (b0VarR2 = shortTvDownloadViewModelH2.r()) != null) {
                b0VarR2.q(Long.valueOf(jLongValue - jLongValue2));
            }
        } else {
            dVar.g(true);
            ShortTvDownloadViewModel shortTvDownloadViewModelH3 = getViewModel();
            if (shortTvDownloadViewModelH3 != null && (b0VarR = shortTvDownloadViewModelH3.r()) != null) {
                b0VarR.q(Long.valueOf(jLongValue + jLongValue2));
            }
        }
        ShortTvDownloadEpListAdapter shortTvDownloadEpListAdapter2 = this.shortTVEpAdapter;
        if (shortTvDownloadEpListAdapter2 != null) {
            shortTvDownloadEpListAdapter2.notifyItemChanged(position, dVar);
        }
    }

    private final void F1(View view) {
        if (ds.d.f61428a.a(view.getId(), 500L)) {
            return;
        }
        Navigator navigatorC = TheRouter.c(ls.a.f69034a.b());
        Subject subject = this.subject;
        Navigator.x(navigatorC.K("id", subject != null ? subject.getSubjectId() : null), getContext(), null, 2, null);
        f0();
    }

    private final void G1() {
        AppCompatImageView appCompatImageView;
        if (ds.d.f61428a.a(-912345, 1000L)) {
            return;
        }
        if (!w1()) {
            fs.b.f62459a.d(R$string.short_tv_download_no_options_toast);
            return;
        }
        z zVar = (z) getMViewBinding();
        if (zVar == null || (appCompatImageView = zVar.f69972l) == null) {
            return;
        }
        boolean z10 = !appCompatImageView.isSelected();
        this.isSelectAll = z10;
        M1(z10);
    }

    private final void H1(long totalSize) {
        String strB;
        if (totalSize > 0) {
            lg.a.C0828a c0828a = lg.a.f68839a;
            String tag = getTAG();
            Intrinsics.g(tag, "<get-TAG>(...)");
            lg.a.C0828a.v(c0828a, tag, "observe totalSize:" + totalSize, false, 4, null);
            strB = com.blankj.utilcode.util.i.b(totalSize, 1);
            Intrinsics.e(strB);
        } else {
            strB = "";
        }
        this.formatSize = strB;
        U1();
    }

    private final void I1(View view) {
        if (ds.d.f61428a.a(view.getId(), 500L)) {
            return;
        }
        com.transsion.shorttv.utils.b.e(g1(), this.subjectId, null, 2, null);
        qs.k kVarC0 = g0().C0();
        if (kVarC0 != null) {
            String str = this.subjectId;
            Subject subject = this.subject;
            kVarC0.a(this, str, subject != null ? subject.getTitle() : null, this.pageFrom);
        }
    }

    private final void J1() {
        BiddingVideoManager.Companion.b(BiddingVideoManager.f42049w, "ShortTvPlayerUnlockDownloadScene", null, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void K1() {
        FrameLayout frameLayout;
        z zVar = (z) getMViewBinding();
        if (zVar == null || (frameLayout = zVar.f69969i) == null) {
            return;
        }
        frameLayout.removeAllViews();
        frameLayout.setVisibility(8);
    }

    private final Companion.AbstractC0666a L1() {
        b0 b0VarP;
        ShortTvDownloadViewModel shortTvDownloadViewModelH0 = getViewModel();
        Subject subject = (shortTvDownloadViewModelH0 == null || (b0VarP = shortTvDownloadViewModelH0.p()) == null) ? null : (Subject) b0VarP.f();
        int iY0 = Y0();
        if (iY0 == 0) {
            return Companion.AbstractC0666a.c.f53344a;
        }
        List unlockType = subject != null ? subject.getUnlockType() : null;
        boolean z10 = unlockType != null && unlockType.contains(1);
        boolean z11 = unlockType != null && unlockType.contains(2);
        if (subject != null && subject.getMiniTvType() == 2) {
            if (z10 || z11) {
                return z10 ? Companion.AbstractC0666a.C0667a.f53342a : new Companion.AbstractC0666a.d(true);
            }
            return Companion.AbstractC0666a.b.f53343a;
        }
        if (!z10 && !z11) {
            return Companion.AbstractC0666a.b.f53343a;
        }
        if (iY0 <= this.adUnlockEpLimitForDownload) {
            if (z11) {
                return new Companion.AbstractC0666a.d(false);
            }
            return z10 ? Companion.AbstractC0666a.C0667a.f53342a : Companion.AbstractC0666a.b.f53343a;
        }
        if (z10) {
            return Companion.AbstractC0666a.C0667a.f53342a;
        }
        return z11 ? new Companion.AbstractC0666a.d(false) : Companion.AbstractC0666a.b.f53343a;
    }

    private final void M1(final boolean selectAll) {
        FrameLayout frameLayout;
        lg.a.C0828a c0828a = lg.a.f68839a;
        String tag = getTAG();
        Intrinsics.g(tag, "<get-TAG>(...)");
        lg.a.C0828a.f(c0828a, tag, "selectAll click, selectAll = " + selectAll + " ", false, 4, null);
        this.isSelectAll = selectAll;
        if (!this.isRequestingData) {
            O1(selectAll);
            return;
        }
        z zVar = (z) getMViewBinding();
        if (zVar != null && (frameLayout = zVar.f69968h) != null) {
            yr.b.e(frameLayout);
        }
        this.selectAllCallback = new Function0() { // from class: com.transsion.shorttv.ui.fragment.download.i
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ShortTVDownloadReFragment.N1(this.f53370a, selectAll);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit N1(ShortTVDownloadReFragment shortTVDownloadReFragment, boolean z10) {
        shortTVDownloadReFragment.O1(z10);
        shortTVDownloadReFragment.selectAllCallback = null;
        return Unit.f67061a;
    }

    private final void O1(boolean selectAll) {
        List data;
        ShortTvDownloadEpListAdapter shortTvDownloadEpListAdapter = this.shortTVEpAdapter;
        if (((shortTvDownloadEpListAdapter == null || (data = shortTvDownloadEpListAdapter.getData()) == null) ? 0 : data.size()) > 30) {
            Q1(selectAll);
        } else {
            P1(selectAll);
        }
    }

    private final void P1(boolean isSelected) {
        b0 b0VarR;
        b0 b0VarQ;
        List data;
        js.d dVar;
        Long size;
        List data2;
        b0 b0VarQ2;
        ShortTvDownloadViewModel shortTvDownloadViewModelH0 = getViewModel();
        Map linkedHashMap = (shortTvDownloadViewModelH0 == null || (b0VarQ2 = shortTvDownloadViewModelH0.q()) == null) ? null : (Map) b0VarQ2.f();
        if (linkedHashMap == null) {
            linkedHashMap = new LinkedHashMap();
        }
        linkedHashMap.clear();
        ShortTvDownloadEpListAdapter shortTvDownloadEpListAdapter = this.shortTVEpAdapter;
        int size2 = (shortTvDownloadEpListAdapter == null || (data2 = shortTvDownloadEpListAdapter.getData()) == null) ? 0 : data2.size();
        long jLongValue = 0;
        for (int i11 = 0; i11 < size2; i11++) {
            ShortTvDownloadEpListAdapter shortTvDownloadEpListAdapter2 = this.shortTVEpAdapter;
            if (shortTvDownloadEpListAdapter2 != null && (data = shortTvDownloadEpListAdapter2.getData()) != null && (dVar = (js.d) CollectionsKt.l0(data, i11)) != null && !dVar.c()) {
                dVar.g(isSelected);
                if (isSelected) {
                    DownloadItem downloadItem = (DownloadItem) this.episodeResourceMap.get(Integer.valueOf(i11));
                    jLongValue += (downloadItem == null || (size = downloadItem.getSize()) == null) ? 0L : size.longValue();
                    linkedHashMap.put(Integer.valueOf(i11), dVar);
                } else {
                    linkedHashMap.remove(Integer.valueOf(i11));
                }
            }
        }
        ShortTvDownloadViewModel shortTvDownloadViewModelH1 = getViewModel();
        if (shortTvDownloadViewModelH1 != null && (b0VarQ = shortTvDownloadViewModelH1.q()) != null) {
            b0VarQ.q(linkedHashMap);
        }
        ShortTvDownloadViewModel shortTvDownloadViewModelH2 = getViewModel();
        if (shortTvDownloadViewModelH2 != null && (b0VarR = shortTvDownloadViewModelH2.r()) != null) {
            b0VarR.q(Long.valueOf(jLongValue));
        }
        ShortTvDownloadEpListAdapter shortTvDownloadEpListAdapter3 = this.shortTVEpAdapter;
        if (shortTvDownloadEpListAdapter3 != null) {
            shortTvDownloadEpListAdapter3.notifyItemRangeChanged(0, size2);
        }
    }

    private final void Q0(int totalEpisode) {
        TabLayout tabLayout;
        TabLayout tabLayout2;
        TabLayout tabLayout3;
        int i11 = (totalEpisode + 24) / 25;
        if (i11 <= 1) {
            z zVar = (z) getMViewBinding();
            if (zVar == null || (tabLayout3 = zVar.f69981u) == null) {
                return;
            }
            yr.b.b(tabLayout3);
            return;
        }
        z zVar2 = (z) getMViewBinding();
        if (zVar2 != null && (tabLayout2 = zVar2.f69981u) != null) {
            tabLayout2.removeAllTabs();
            tabLayout2.addOnTabSelectedListener((TabLayout.OnTabSelectedListener) new b());
        }
        for (int i12 = 0; i12 < i11; i12++) {
            int i13 = i12 * 25;
            int i14 = i13 + 1;
            int i15 = RangesKt.i(i13 + 25, totalEpisode);
            z zVar3 = (z) getMViewBinding();
            if (zVar3 != null && (tabLayout = zVar3.f69981u) != null) {
                tabLayout.addTab(tabLayout.newTab().setText(i14 + "-" + i15));
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v5, types: [T, java.util.LinkedHashMap] */
    private final void Q1(boolean isSelected) {
        b0 b0VarQ;
        FrameLayout frameLayout;
        z zVar = (z) getMViewBinding();
        if (zVar != null && (frameLayout = zVar.f69968h) != null) {
            yr.b.e(frameLayout);
        }
        Ref.ObjectRef objectRef = new Ref.ObjectRef();
        ShortTvDownloadViewModel shortTvDownloadViewModelH0 = getViewModel();
        T t11 = (shortTvDownloadViewModelH0 == null || (b0VarQ = shortTvDownloadViewModelH0.q()) == null) ? 0 : (Map) b0VarQ.f();
        objectRef.element = t11;
        if (t11 == 0) {
            objectRef.element = new LinkedHashMap();
        }
        ((Map) objectRef.element).clear();
        kotlinx.coroutines.k.d(androidx.p009lifecycle.v.a(this), null, null, new ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1(this, isSelected, objectRef, null), 3, null);
    }

    private final void R0(DownloadListBean listBean) {
        RecyclerView recyclerView;
        RecyclerView recyclerView2;
        List<String> tags = listBean.getTags();
        if (tags == null || tags.isEmpty()) {
            z zVar = (z) getMViewBinding();
            if (zVar == null || (recyclerView = zVar.f69980t) == null) {
                return;
            }
            yr.b.b(recyclerView);
            return;
        }
        List<String> tags2 = listBean.getTags();
        Intrinsics.e(tags2);
        com.transsion.shorttv.ui.adapter.s sVar = new com.transsion.shorttv.ui.adapter.s(tags2);
        z zVar2 = (z) getMViewBinding();
        if (zVar2 == null || (recyclerView2 = zVar2.f69980t) == null) {
            return;
        }
        FlexboxLayoutManager flexboxLayoutManager = new FlexboxLayoutManager(recyclerView2.getContext());
        flexboxLayoutManager.c0(0);
        flexboxLayoutManager.d0(1);
        flexboxLayoutManager.e0(0);
        recyclerView2.setLayoutManager(flexboxLayoutManager);
        com.google.android.flexbox.d dVar = new com.google.android.flexbox.d(recyclerView2.getContext());
        dVar.l(3);
        dVar.i(androidx.core.content.b.getDrawable(Utils.a(), R$drawable.short_tv_space_tag_decoration));
        recyclerView2.addItemDecoration(dVar);
        recyclerView2.setAdapter(sVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final com.transsion.shorttv.utils.b R1() {
        return new com.transsion.shorttv.utils.b();
    }

    private final void S0() {
        b0 b0VarP;
        final qs.i iVarB0 = g0().B0();
        if (iVarB0 == null) {
            return;
        }
        ShortTvDownloadViewModel shortTvDownloadViewModelH0 = getViewModel();
        final Subject subject = (shortTvDownloadViewModelH0 == null || (b0VarP = shortTvDownloadViewModelH0.p()) == null) ? null : (Subject) b0VarP.f();
        Integer num = (Integer) g0().j0().f();
        final int iIntValue = num != null ? num.intValue() : 0;
        if (iVarB0.a()) {
            U0(iVarB0.getUserId(), subject, iIntValue);
        } else {
            x1(iVarB0, new Function0() { // from class: com.transsion.shorttv.ui.fragment.download.m
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return ShortTVDownloadReFragment.T0(this.f53375a, iVarB0, subject, iIntValue);
                }
            });
        }
    }

    private final void S1() {
        FrameLayout frameLayout;
        z zVar = (z) getMViewBinding();
        if (zVar == null || (frameLayout = zVar.f69969i) == null) {
            return;
        }
        frameLayout.removeAllViews();
        frameLayout.setVisibility(0);
        frameLayout.addView(e1());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit T0(ShortTVDownloadReFragment shortTVDownloadReFragment, qs.i iVar, Subject subject, int i11) {
        b0 b0VarJ;
        shortTVDownloadReFragment.isContentDataRequested = false;
        ShortTvViewModel shortTvViewModelG0 = shortTVDownloadReFragment.g0();
        String str = shortTVDownloadReFragment.subjectId;
        if (str == null) {
            str = "";
        }
        shortTvViewModelG0.M(str);
        shortTVDownloadReFragment.startPosition = 1;
        shortTVDownloadReFragment.endPosition = 20;
        c cVar = shortTVDownloadReFragment.new c(iVar, subject, i11);
        ShortTvDownloadViewModel shortTvDownloadViewModelH0 = shortTVDownloadReFragment.getViewModel();
        if (shortTvDownloadViewModelH0 != null && (b0VarJ = shortTvDownloadViewModelH0.j()) != null) {
            b0VarJ.j(shortTVDownloadReFragment.getViewLifecycleOwner(), cVar);
        }
        shortTVDownloadReFragment.showLoading();
        ShortTvDownloadViewModel shortTvDownloadViewModelH1 = shortTVDownloadReFragment.getViewModel();
        if (shortTvDownloadViewModelH1 != null) {
            String str2 = shortTVDownloadReFragment.subjectId;
            if (str2 == null) {
                str2 = "";
            }
            shortTvDownloadViewModelH1.n(str2, true);
        }
        ShortTvDownloadViewModel shortTvDownloadViewModelH2 = shortTVDownloadReFragment.getViewModel();
        if (shortTvDownloadViewModelH2 != null) {
            String str3 = shortTVDownloadReFragment.subjectId;
            shortTvDownloadViewModelH2.i(str3 != null ? str3 : "", shortTVDownloadReFragment.startPosition, shortTVDownloadReFragment.endPosition);
        }
        return Unit.f67061a;
    }

    private final void T1(DownloadListBean listBean) {
        List data;
        String subjectId;
        ShortTvDownloadInfoExtendView shortTvDownloadInfoExtendView;
        BLImageView bLImageView;
        AppCompatTextView appCompatTextView;
        ShapeableImageView shapeableImageView;
        String thumbnail;
        String url;
        AppCompatTextView appCompatTextView2;
        AppCompatTextView appCompatTextView3;
        this.listBean = listBean;
        if (this.isContentDataRequested) {
            return;
        }
        Integer totalEpisode = listBean.getTotalEpisode();
        if (totalEpisode != null && totalEpisode.intValue() == 0) {
            return;
        }
        this.isContentDataRequested = true;
        z zVar = (z) getMViewBinding();
        if (zVar != null && (appCompatTextView3 = zVar.E) != null) {
            appCompatTextView3.setText(listBean.getSubjectTitle());
        }
        z zVar2 = (z) getMViewBinding();
        if (zVar2 != null && (appCompatTextView2 = zVar2.D) != null) {
            appCompatTextView2.setText(listBean.getSubjectTitle());
        }
        z zVar3 = (z) getMViewBinding();
        if (zVar3 != null && (shapeableImageView = zVar3.f69974n) != null) {
            as.b.a aVar = as.b.f16104a;
            Context contextRequireContext = requireContext();
            Intrinsics.g(contextRequireContext, "requireContext(...)");
            Cover cover = listBean.getCover();
            String str = (cover == null || (url = cover.getUrl()) == null) ? "" : url;
            int i11 = R$color.short_tv_module_04;
            int width = shapeableImageView.getWidth();
            int height = shapeableImageView.getHeight();
            Cover cover2 = listBean.getCover();
            aVar.i(contextRequireContext, shapeableImageView, str, (32448 & 8) != 0 ? R$color.image_skeleton : i11, (32448 & 16) != 0 ? aVar.c() : width, (32448 & 32) != 0 ? aVar.b() : height, (32448 & 64) != 0 ? 0 : 0, (32448 & 128) != 0, (32448 & 256) != 0 ? "" : (cover2 == null || (thumbnail = cover2.getThumbnail()) == null) ? "" : thumbnail, (32448 & 512) != 0, (32448 & 1024) != 0, (32448 & 2048) != 0 ? false : false, (32448 & 4096) != 0 ? false : false, (32448 & 8192) != 0 ? false : false, (32448 & 16384) != 0 ? 25 : 0);
        }
        R0(listBean);
        String genre = listBean.getGenre();
        if (genre != null && genre.length() != 0) {
            StringBuffer stringBuffer = new StringBuffer();
            String releaseDate = listBean.getReleaseDate();
            if (releaseDate != null && releaseDate.length() > 0) {
                Date dateL = com.blankj.utilcode.util.c0.l(listBean.getReleaseDate(), "yyyy-MM-dd");
                Calendar calendar = Calendar.getInstance();
                calendar.setTime(dateL);
                stringBuffer.append(String.valueOf(calendar.get(1)));
            }
            String genre2 = listBean.getGenre();
            if (genre2 != null && genre2.length() > 0) {
                if (stringBuffer.length() > 0) {
                    stringBuffer.append(" • ");
                }
                String genre3 = listBean.getGenre();
                stringBuffer.append(genre3 != null ? StringsKt.Q(genre3, "，", " • ", false, 4, null) : null);
            }
            String countryName = listBean.getCountryName();
            if (countryName != null && countryName.length() > 0) {
                if (stringBuffer.length() > 0) {
                    stringBuffer.append(" • ");
                }
                stringBuffer.append(listBean.getCountryName());
            }
            z zVar4 = (z) getMViewBinding();
            if (zVar4 != null && (appCompatTextView = zVar4.f69986z) != null) {
                appCompatTextView.setText(stringBuffer);
            }
        }
        z zVar5 = (z) getMViewBinding();
        if (zVar5 != null && (bLImageView = zVar5.f69975o) != null) {
            ShortTVFavInfo shortTVFavInfo = listBean.getShortTVFavInfo();
            bLImageView.setSelected(shortTVFavInfo != null ? shortTVFavInfo.getHasFavorite() : false);
        }
        z zVar6 = (z) getMViewBinding();
        if (zVar6 != null && (shortTvDownloadInfoExtendView = zVar6.f69970j) != null) {
            String description = listBean.getDescription();
            if (description == null) {
                description = "";
            }
            shortTvDownloadInfoExtendView.showData(description);
        }
        Subject subject = this.subject;
        int totalEpisode2 = subject != null ? subject.getTotalEpisode() : 0;
        Integer totalEpisode3 = listBean.getTotalEpisode();
        int iMax = Math.max(totalEpisode2, totalEpisode3 != null ? totalEpisode3.intValue() : 0);
        this.totalEpisode = iMax;
        if (iMax > 0) {
            Q0(iMax);
            int i12 = this.totalEpisode;
            for (int i13 = 0; i13 < i12; i13++) {
                ShortTvDownloadEpListAdapter shortTvDownloadEpListAdapter = this.shortTVEpAdapter;
                if (shortTvDownloadEpListAdapter != null && (data = shortTvDownloadEpListAdapter.getData()) != null) {
                    Subject subject2 = this.subject;
                    data.add(new js.d((subject2 == null || (subjectId = subject2.getSubjectId()) == null) ? "" : subjectId, i13, false, this.inDownloadStatusMap.containsKey(Integer.valueOf(i13)), null, 20, null));
                }
            }
            ShortTvDownloadEpListAdapter shortTvDownloadEpListAdapter2 = this.shortTVEpAdapter;
            if (shortTvDownloadEpListAdapter2 != null) {
                shortTvDownloadEpListAdapter2.notifyItemRangeChanged(0, this.totalEpisode);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void U0(String userId, Subject dotSubject, int dotEp) {
        b0 b0VarP;
        Subject subject;
        Context context;
        if (!nh.m.f70474a.e()) {
            fs.b.f62459a.e(Utils.a().getString(R$string.short_tv_no_network_toast));
            return;
        }
        if (userId != null) {
            String str = userId.length() > 0 ? userId : null;
            if (str != null) {
                ShortTvDownloadViewModel shortTvDownloadViewModelH0 = getViewModel();
                if (shortTvDownloadViewModelH0 == null || (b0VarP = shortTvDownloadViewModelH0.p()) == null || (subject = (Subject) b0VarP.f()) == null) {
                    return;
                }
                SkuInfo skuInfo = subject.getSkuInfo();
                if (skuInfo == null) {
                    lg.a.C0828a c0828a = lg.a.f68839a;
                    String tag = getTAG();
                    Intrinsics.g(tag, "<get-TAG>(...)");
                    lg.a.C0828a.l(c0828a, tag, "callPayMethod failed, no sku info.", false, 4, null);
                    return;
                }
                String skuId = skuInfo.getSkuId();
                if (skuId != null) {
                    String str2 = skuId.length() > 0 ? skuId : null;
                    if (str2 != null) {
                        String subjectId = subject.getSubjectId();
                        if (subjectId != null) {
                            String str3 = subjectId.length() > 0 ? subjectId : null;
                            if (str3 == null || (context = getContext()) == null) {
                                return;
                            }
                            com.transsion.shorttv.order.d.f53046a.d(context, new CreatePaynicornOrderReqBean("MovieBox", str2, str, null, null, null, MapsKt.f(TuplesKt.a("subject_id", str3)), false, null, Sdk$SDKError.Reason.DEEPLINK_OPEN_FAILED_VALUE, null), new d(dotSubject, dotEp, context, str));
                            return;
                        }
                        return;
                    }
                }
                lg.a.C0828a c0828a2 = lg.a.f68839a;
                String tag2 = getTAG();
                Intrinsics.g(tag2, "<get-TAG>(...)");
                lg.a.C0828a.l(c0828a2, tag2, "callPayMethod failed, skuId is empty.", false, 4, null);
                return;
            }
        }
        lg.a.C0828a c0828a3 = lg.a.f68839a;
        String tag3 = getTAG();
        Intrinsics.g(tag3, "<get-TAG>(...)");
        lg.a.C0828a.l(c0828a3, tag3, "callPayMethod failed, userId is empty.", false, 4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void U1() {
        Companion.AbstractC0666a abstractC0666aL1 = L1();
        this.downloadBtnState = abstractC0666aL1;
        V1(abstractC0666aL1);
    }

    private final void V0() {
        b0 b0VarP;
        Subject subject;
        ShortTvDownloadViewModel shortTvDownloadViewModelH0 = getViewModel();
        if (shortTvDownloadViewModelH0 == null || (b0VarP = shortTvDownloadViewModelH0.p()) == null || (subject = (Subject) b0VarP.f()) == null) {
            return;
        }
        if (!subject.getUnlockType().contains(1)) {
            this.prevSelectedLockedCount = Y0();
            return;
        }
        int iY0 = Y0();
        if (iY0 > this.adUnlockEpLimitForDownload && iY0 > this.prevSelectedLockedCount) {
            fs.b.f62459a.e(getString(R$string.short_tv_download_ad_unlock_limit_reached));
        }
        this.prevSelectedLockedCount = iY0;
    }

    private final void V1(Companion.AbstractC0666a state) {
        LinearLayoutCompat linearLayoutCompat;
        AppCompatTextView appCompatTextView;
        AppCompatImageView appCompatImageView;
        AppCompatTextView appCompatTextView2;
        AppCompatImageView appCompatImageView2;
        AppCompatTextView appCompatTextView3;
        AppCompatImageView appCompatImageView3;
        String string;
        AppCompatTextView appCompatTextView4;
        AppCompatImageView appCompatImageView4;
        z zVar = (z) getMViewBinding();
        if (zVar == null || (linearLayoutCompat = zVar.f69964d) == null) {
            return;
        }
        if (state instanceof Companion.AbstractC0666a.c) {
            linearLayoutCompat.setBackgroundResource(R$drawable.short_tv_btn_normal);
            z zVar2 = (z) getMViewBinding();
            if (zVar2 != null && (appCompatImageView4 = zVar2.f69971k) != null) {
                appCompatImageView4.setVisibility(8);
            }
            if (this.formatSize.length() > 0) {
                string = getString(R$string.short_tv_download) + " · " + this.formatSize;
            } else {
                string = getString(R$string.short_tv_download);
                Intrinsics.e(string);
            }
            z zVar3 = (z) getMViewBinding();
            if (zVar3 == null || (appCompatTextView4 = zVar3.f69983w) == null) {
                return;
            }
            appCompatTextView4.setText(string);
            return;
        }
        if (state instanceof Companion.AbstractC0666a.b) {
            linearLayoutCompat.setBackgroundResource(R$drawable.short_tv_locked_btn_buy_bg);
            z zVar4 = (z) getMViewBinding();
            if (zVar4 != null && (appCompatImageView3 = zVar4.f69971k) != null) {
                appCompatImageView3.setVisibility(8);
            }
            z zVar5 = (z) getMViewBinding();
            if (zVar5 == null || (appCompatTextView3 = zVar5.f69983w) == null) {
                return;
            }
            appCompatTextView3.setText(getString(R$string.short_tv_download));
            return;
        }
        if (state instanceof Companion.AbstractC0666a.d) {
            linearLayoutCompat.setBackgroundResource(R$drawable.short_tv_locked_btn_buy_bg);
            z zVar6 = (z) getMViewBinding();
            if (zVar6 != null && (appCompatImageView2 = zVar6.f69971k) != null) {
                appCompatImageView2.setImageResource(R$mipmap.short_tv_ic_lock_watch_ad);
                appCompatImageView2.setVisibility(0);
            }
            z zVar7 = (z) getMViewBinding();
            if (zVar7 == null || (appCompatTextView2 = zVar7.f69983w) == null) {
                return;
            }
            appCompatTextView2.setText(getString(R$string.short_tv_download_watch_ad_to_download));
            return;
        }
        if (!(state instanceof Companion.AbstractC0666a.C0667a)) {
            throw new NoWhenBranchMatchedException();
        }
        linearLayoutCompat.setBackgroundResource(R$drawable.short_tv_locked_btn_buy_bg);
        z zVar8 = (z) getMViewBinding();
        if (zVar8 != null && (appCompatImageView = zVar8.f69971k) != null) {
            appCompatImageView.setVisibility(8);
        }
        z zVar9 = (z) getMViewBinding();
        if (zVar9 == null || (appCompatTextView = zVar9.f69983w) == null) {
            return;
        }
        appCompatTextView.setText(getString(R$string.short_tv_download_buy_full_series_to_download));
    }

    private final void W0(int end) {
        int i11 = this.totalEpisode;
        if (end >= i11) {
            this.isRequestingData = false;
            Function0 function0 = this.selectAllCallback;
            if (function0 != null) {
                function0.invoke();
                return;
            }
            return;
        }
        int i12 = i11 - end;
        if (i12 > 20) {
            this.startPosition = end + 1;
            this.endPosition = end + 20;
        } else {
            int i13 = end + 1;
            this.startPosition = i13;
            this.endPosition = (i13 + i12) - 1;
        }
        y1(true);
    }

    private final void W1(List list, int start, int end) {
        HashMap mapG;
        b0 b0VarR;
        DownloadItem downloadItemG;
        List data;
        List data2;
        List data3;
        js.d dVar;
        b0 b0VarR2;
        Long l11;
        lg.a.C0828a c0828a = lg.a.f68839a;
        String tag = getTAG();
        Intrinsics.g(tag, "<get-TAG>(...)");
        lg.a.C0828a.f(c0828a, tag, "updateList ,  size = " + (list != null ? Integer.valueOf(list.size()) : null), false, 4, null);
        List list2 = list;
        if (list2 == null || list2.isEmpty()) {
            this.isRequestingData = false;
            Function0 function0 = this.selectAllCallback;
            if (function0 != null) {
                function0.invoke();
                return;
            }
            return;
        }
        ShortTvDownloadViewModel shortTvDownloadViewModelH0 = getViewModel();
        long jLongValue = (shortTvDownloadViewModelH0 == null || (b0VarR2 = shortTvDownloadViewModelH0.r()) == null || (l11 = (Long) b0VarR2.f()) == null) ? 0L : l11.longValue();
        String tag2 = getTAG();
        Intrinsics.g(tag2, "<get-TAG>(...)");
        lg.a.C0828a.f(c0828a, tag2, "before curTotalSize:" + jLongValue, false, 4, null);
        int size = list2.size();
        long jLongValue2 = jLongValue;
        int i11 = 0;
        for (int i12 = 0; i12 < size; i12++) {
            int i13 = (start + i12) - 1;
            DownloadItem downloadItem = (DownloadItem) list.get(i12);
            qs.d dVarS0 = g0().s0();
            if (dVarS0 != null) {
                String resourceId = downloadItem.getResourceId();
                if (resourceId == null) {
                    resourceId = downloadItem.getUrl();
                }
                downloadItemG = dVarS0.g(resourceId);
            } else {
                downloadItemG = null;
            }
            if (this.isSelectAll) {
                if (downloadItemG != null) {
                    downloadItemG.setCheck(true);
                }
                downloadItem.setCheck(true);
                Long size2 = downloadItem.getSize();
                jLongValue2 += size2 != null ? size2.longValue() : 0L;
            }
            if (downloadItemG != null) {
                downloadItemG.setUploadBy(downloadItem.getUploadBy());
                i11++;
                downloadItemG.setPosition(i13);
                this.episodeResourceMap.put(Integer.valueOf(i13), downloadItemG);
                lg.a.C0828a c0828a2 = lg.a.f68839a;
                String tag3 = getTAG();
                Intrinsics.g(tag3, "<get-TAG>(...)");
                lg.a.C0828a.f(c0828a2, tag3, "in download ep:" + downloadItemG.getEp() + ", status:" + downloadItemG.getStatus(), false, 4, null);
            } else {
                downloadItem.setPosition(i13);
                i11++;
                this.episodeResourceMap.put(Integer.valueOf(i13), downloadItem);
            }
            ShortTvDownloadEpListAdapter shortTvDownloadEpListAdapter = this.shortTVEpAdapter;
            if (shortTvDownloadEpListAdapter != null && (data3 = shortTvDownloadEpListAdapter.getData()) != null && (dVar = (js.d) CollectionsKt.l0(data3, i13)) != null) {
                dVar.f(downloadItem.getEpisodeItem());
            }
            if (downloadItemG != null && downloadItemG.isAvailable()) {
                this.inDownloadStatusMap.put(Integer.valueOf(i13), downloadItemG);
                lg.a.C0828a c0828a3 = lg.a.f68839a;
                String tag4 = getTAG();
                Intrinsics.g(tag4, "<get-TAG>(...)");
                lg.a.C0828a.v(c0828a3, tag4, "unable index:" + i13, false, 4, null);
                ShortTvDownloadEpListAdapter shortTvDownloadEpListAdapter2 = this.shortTVEpAdapter;
                if (i13 < ((shortTvDownloadEpListAdapter2 == null || (data2 = shortTvDownloadEpListAdapter2.getData()) == null) ? 0 : data2.size())) {
                    ShortTvDownloadEpListAdapter shortTvDownloadEpListAdapter3 = this.shortTVEpAdapter;
                    js.d dVar2 = (shortTvDownloadEpListAdapter3 == null || (data = shortTvDownloadEpListAdapter3.getData()) == null) ? null : (js.d) CollectionsKt.l0(data, i13);
                    if (dVar2 != null) {
                        dVar2.e(true);
                    }
                }
            }
        }
        ShortTvDownloadEpListAdapter shortTvDownloadEpListAdapter4 = this.shortTVEpAdapter;
        if (shortTvDownloadEpListAdapter4 != null) {
            shortTvDownloadEpListAdapter4.notifyItemRangeChanged(start - 1, list.size());
        }
        lg.a.C0828a c0828a4 = lg.a.f68839a;
        String tag5 = getTAG();
        Intrinsics.g(tag5, "<get-TAG>(...)");
        lg.a.C0828a.v(c0828a4, tag5, "update data curTotalSize:" + jLongValue2, false, 4, null);
        ShortTvDownloadViewModel shortTvDownloadViewModelH1 = getViewModel();
        if (shortTvDownloadViewModelH1 != null && (b0VarR = shortTvDownloadViewModelH1.r()) != null) {
            b0VarR.q(Long.valueOf(jLongValue2));
        }
        hj.b logViewConfig = getLogViewConfig();
        if (logViewConfig != null) {
            logViewConfig.k(true);
        }
        hj.b logViewConfig2 = getLogViewConfig();
        if (logViewConfig2 != null && (mapG = logViewConfig2.g()) != null) {
            mapG.put("size", String.valueOf(i11));
        }
        W0(end);
    }

    private final void X0() {
        AppCompatTextView appCompatTextView;
        AppCompatImageView appCompatImageView;
        List data;
        b0 b0VarQ;
        Map map;
        ShortTvDownloadViewModel shortTvDownloadViewModelH0 = getViewModel();
        int size = (shortTvDownloadViewModelH0 == null || (b0VarQ = shortTvDownloadViewModelH0.q()) == null || (map = (Map) b0VarQ.f()) == null) ? 0 : map.size();
        ShortTvDownloadEpListAdapter shortTvDownloadEpListAdapter = this.shortTVEpAdapter;
        int size2 = ((shortTvDownloadEpListAdapter == null || (data = shortTvDownloadEpListAdapter.getData()) == null) ? 0 : data.size()) - this.inDownloadStatusMap.size();
        lg.a.C0828a c0828a = lg.a.f68839a;
        String tag = getTAG();
        Intrinsics.g(tag, "<get-TAG>(...)");
        lg.a.C0828a.f(c0828a, tag, "checkSelectAll, selectedCount: " + size + ", totalSelectable:" + size2, false, 4, null);
        this.isSelectAll = size == size2;
        z zVar = (z) getMViewBinding();
        if (zVar != null && (appCompatImageView = zVar.f69972l) != null) {
            appCompatImageView.setSelected(this.isSelectAll);
        }
        z zVar2 = (z) getMViewBinding();
        if (zVar2 == null || (appCompatTextView = zVar2.f69984x) == null) {
            return;
        }
        appCompatTextView.setVisibility(size > 0 ? 0 : 8);
        appCompatTextView.setText(Utils.a().getString(R$string.short_tv_download_ep_selected_count, String.valueOf(size)));
    }

    private final void X1() {
        b0 b0VarP;
        if (!nh.m.f70474a.e()) {
            fs.b.f62459a.e(Utils.a().getString(R$string.short_tv_no_network_toast));
            return;
        }
        final FragmentActivity activity = getActivity();
        if (activity == null) {
            return;
        }
        z zVar = (z) getMViewBinding();
        Subject subject = null;
        final LinearLayoutCompat linearLayoutCompat = zVar != null ? zVar.f69964d : null;
        if (linearLayoutCompat != null) {
            linearLayoutCompat.setEnabled(false);
        }
        STCommonVideoAdHelper sTCommonVideoAdHelper = this.downloadVideoAdHelper;
        if (sTCommonVideoAdHelper != null) {
            STCommonVideoAdHelper.q(sTCommonVideoAdHelper, 0, 1, null);
        }
        this.downloadVideoAdHelper = new STCommonVideoAdHelper("ShortTvPlayerUnlockDownloadScene", androidx.p009lifecycle.v.a(this));
        ShortTvDownloadViewModel shortTvDownloadViewModelH0 = getViewModel();
        if (shortTvDownloadViewModelH0 != null && (b0VarP = shortTvDownloadViewModelH0.p()) != null) {
            subject = (Subject) b0VarP.f();
        }
        final Subject subject2 = subject;
        Integer num = (Integer) g0().j0().f();
        final int iIntValue = num != null ? num.intValue() : 0;
        STCommonVideoAdHelper sTCommonVideoAdHelper2 = this.downloadVideoAdHelper;
        if (sTCommonVideoAdHelper2 != null) {
            sTCommonVideoAdHelper2.t(new Function3() { // from class: com.transsion.shorttv.ui.fragment.download.n
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    return ShortTVDownloadReFragment.Y1(this.f53379a, activity, subject2, iIntValue, linearLayoutCompat, ((Boolean) obj).booleanValue(), (String) obj2, (String) obj3);
                }
            });
        }
    }

    private final int Y0() {
        b0 b0VarQ;
        Map map;
        b0 b0VarP;
        ShortTvDownloadViewModel shortTvDownloadViewModelH0 = getViewModel();
        Subject subject = (shortTvDownloadViewModelH0 == null || (b0VarP = shortTvDownloadViewModelH0.p()) == null) ? null : (Subject) b0VarP.f();
        ShortTvDownloadViewModel shortTvDownloadViewModelH1 = getViewModel();
        int i11 = 0;
        if (shortTvDownloadViewModelH1 != null && (b0VarQ = shortTvDownloadViewModelH1.q()) != null && (map = (Map) b0VarQ.f()) != null) {
            Iterator it = map.entrySet().iterator();
            while (it.hasNext()) {
                if (zr.b.f79451a.c(subject, ((js.d) ((Map.Entry) it.next()).getValue()).a())) {
                    i11++;
                }
            }
        }
        return i11;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit Y1(final ShortTVDownloadReFragment shortTVDownloadReFragment, FragmentActivity fragmentActivity, final Subject subject, final int i11, final LinearLayoutCompat linearLayoutCompat, boolean z10, String errorCode, String errorMessage) {
        Intrinsics.h(errorCode, "errorCode");
        Intrinsics.h(errorMessage, "errorMessage");
        if (z10) {
            STCommonVideoAdHelper sTCommonVideoAdHelper = shortTVDownloadReFragment.downloadVideoAdHelper;
            if (sTCommonVideoAdHelper != null) {
                sTCommonVideoAdHelper.u(fragmentActivity, new Function0() { // from class: com.transsion.shorttv.ui.fragment.download.o
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return ShortTVDownloadReFragment.Z1(this.f53384a);
                    }
                }, new Function1() { // from class: com.transsion.shorttv.ui.fragment.download.p
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return ShortTVDownloadReFragment.a2(this.f53385a, linearLayoutCompat, subject, i11, ((Boolean) obj).booleanValue());
                    }
                });
            }
        } else {
            ss.b.f75858a.l(subject, i11, "fail", errorMessage, errorCode, "download");
            fs.b.f62459a.d(R$string.short_tv_ad_unlocked_get_ad_failed);
            shortTVDownloadReFragment.downloadVideoAdHelper = null;
            if (linearLayoutCompat != null) {
                linearLayoutCompat.setEnabled(true);
            }
        }
        return Unit.f67061a;
    }

    private final void Z0(String pageName, String pageFrom, String subjectId, String miniId, String ops, String resourceId, String taskId) {
        HashMap map = new HashMap();
        map.put(WebConstants.PAGE_FROM, pageFrom);
        map.put("subject_id", subjectId);
        map.put("mini_id", miniId);
        map.put("ops", ops);
        map.put("resource_id", resourceId);
        map.put("task_id", taskId);
        map.put("module_name", this.moduleName);
        map.put("is_select_all", this.isSelectAll ? "1" : "0");
        hj.i iVar = hj.i.f64505a;
        if (pageName == null) {
            pageName = "download_click";
        }
        iVar.s(pageName, "download_click", map);
        Bundle bundle = new Bundle();
        bundle.putString("resource_id", resourceId);
        bundle.putString("subject_id", subjectId);
        qs.f fVarY0 = g0().y0();
        if (fVarY0 != null) {
            fVarY0.b("download_click", bundle, getContext());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit Z1(ShortTVDownloadReFragment shortTVDownloadReFragment) {
        b0 b0VarP;
        Subject subject;
        b0 b0VarQ;
        Map map;
        Collection collectionValues;
        ShortTvDownloadViewModel shortTvDownloadViewModelH0;
        ShortTvDownloadViewModel shortTvDownloadViewModelH1 = shortTVDownloadReFragment.getViewModel();
        if (shortTvDownloadViewModelH1 == null || (b0VarP = shortTvDownloadViewModelH1.p()) == null || (subject = (Subject) b0VarP.f()) == null) {
            return Unit.f67061a;
        }
        Companion.AbstractC0666a abstractC0666a = shortTVDownloadReFragment.downloadBtnState;
        Companion.AbstractC0666a.d dVar = abstractC0666a instanceof Companion.AbstractC0666a.d ? (Companion.AbstractC0666a.d) abstractC0666a : null;
        if (dVar != null ? dVar.a() : false) {
            zr.b.f79451a.f(subject);
        } else {
            ShortTvDownloadViewModel shortTvDownloadViewModelH2 = shortTVDownloadReFragment.getViewModel();
            if (shortTvDownloadViewModelH2 != null && (b0VarQ = shortTvDownloadViewModelH2.q()) != null && (map = (Map) b0VarQ.f()) != null && (collectionValues = map.values()) != null) {
                ArrayList arrayList = new ArrayList();
                for (Object obj : collectionValues) {
                    if (zr.b.f79451a.c(subject, ((js.d) obj).a())) {
                        arrayList.add(obj);
                    }
                }
                ArrayList arrayList2 = new ArrayList();
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    ShortTVItem shortTVItemA = ((js.d) it.next()).a();
                    if (shortTVItemA != null) {
                        arrayList2.add(shortTVItemA);
                    }
                }
                Iterator it2 = arrayList2.iterator();
                while (it2.hasNext()) {
                    zr.b.f79451a.g(subject, (ShortTVItem) it2.next(), 1);
                }
            }
        }
        shortTVDownloadReFragment.g0().Q0(subject.getAdUnlockedEps());
        String subjectId = subject.getSubjectId();
        if (subjectId != null && (shortTvDownloadViewModelH0 = shortTVDownloadReFragment.getViewModel()) != null) {
            shortTvDownloadViewModelH0.t(subjectId);
        }
        return Unit.f67061a;
    }

    private final View a1() {
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(requireContext());
        int i11 = R$layout.short_tv_layout_download_loading;
        z zVar = (z) getMViewBinding();
        return layoutInflaterFrom.inflate(i11, (ViewGroup) (zVar != null ? zVar.f69969i : null), false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit a2(ShortTVDownloadReFragment shortTVDownloadReFragment, LinearLayoutCompat linearLayoutCompat, Subject subject, int i11, boolean z10) {
        b0 b0VarR;
        Long l11;
        shortTVDownloadReFragment.downloadVideoAdHelper = null;
        if (linearLayoutCompat != null) {
            linearLayoutCompat.setEnabled(true);
        }
        if (z10) {
            ss.b.f75858a.l(subject, i11, NativeComponentConstants.KEY_COMPONENT_RESULT_SUCCESS, "", "0", "download");
            shortTVDownloadReFragment.g0().S0();
            shortTVDownloadReFragment.U1();
            ShortTvDownloadViewModel shortTvDownloadViewModelH0 = shortTVDownloadReFragment.getViewModel();
            shortTVDownloadReFragment.A1((shortTvDownloadViewModelH0 == null || (b0VarR = shortTvDownloadViewModelH0.r()) == null || (l11 = (Long) b0VarR.f()) == null) ? 0L : l11.longValue());
            fs.b.f62459a.d(R$string.short_tv_locked_episode_unlocked);
        } else {
            ss.b.f75858a.l(subject, i11, "cancel", "", "0", "download");
        }
        return Unit.f67061a;
    }

    private final View b1(Context context, String desText, boolean showRightBtn) {
        final DefaultView defaultView = new DefaultView(context, DefaultView.ModelStyle.MODEL_STYLE_NIGHT);
        defaultView.setStyle(DefaultView.DefaultViewStyle.STYLE_DES_BTN);
        defaultView.setDescText(desText);
        defaultView.setDescTextColor(-1);
        defaultView.setStyle(DefaultView.DefaultViewStyle.STYLE_NO_IMAGE);
        defaultView.setBtnVisibility(showRightBtn ? 0 : 8);
        String string = context.getString(R$string.short_tv_go_to_setting);
        Intrinsics.g(string, "getString(...)");
        defaultView.setBtnText(string);
        defaultView.setTipOperationVisibility(8);
        defaultView.setBtnBg(androidx.core.content.b.getDrawable(Utils.a(), R$drawable.short_tv_download_empty_btn_bg));
        defaultView.setBtnTextColor(-1);
        defaultView.setBackgroundColor(0);
        defaultView.setBtnClickListener(new View.OnClickListener() { // from class: com.transsion.shorttv.ui.fragment.download.j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ShortTVDownloadReFragment.c1(view);
            }
        });
        defaultView.setLeftBtnVisibility(0);
        String string2 = context.getString(R$string.short_tv_Retry);
        Intrinsics.g(string2, "getString(...)");
        defaultView.setLeftBtnText(string2);
        defaultView.setLeftBtnBg(androidx.core.content.b.getDrawable(Utils.a(), R$drawable.short_tv_download_empty_btn_bg));
        defaultView.setLeftBtnTextColor(-1);
        defaultView.setLeftBtnClickListener(new View.OnClickListener() { // from class: com.transsion.shorttv.ui.fragment.download.k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ShortTVDownloadReFragment.d1(this.f53372a, defaultView, view);
            }
        });
        defaultView.setTitleViewVisibility(8);
        int iA = a0.a(16.0f);
        defaultView.setPadding(iA, a0.a(110.0f), iA, 0);
        defaultView.setVisibility(0);
        return defaultView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c1(View view) {
        NetworkUtils.v();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d1(ShortTVDownloadReFragment shortTVDownloadReFragment, DefaultView defaultView, View view) {
        shortTVDownloadReFragment.showLoading();
        if (shortTVDownloadReFragment.startPosition == 1) {
            shortTVDownloadReFragment.y1(false);
        } else {
            shortTVDownloadReFragment.y1(true);
        }
        defaultView.setVisibility(8);
    }

    private final View e1() {
        Context contextRequireContext = requireContext();
        Intrinsics.g(contextRequireContext, "requireContext(...)");
        String string = Utils.a().getString(R$string.short_tv_error_load_failed);
        Intrinsics.g(string, "getString(...)");
        return b1(contextRequireContext, string, false);
    }

    private final View f1() {
        Context contextRequireContext = requireContext();
        Intrinsics.g(contextRequireContext, "requireContext(...)");
        String string = Utils.a().getString(R$string.short_tv_no_network_title);
        Intrinsics.g(string, "getString(...)");
        return b1(contextRequireContext, string, true);
    }

    private final com.transsion.shorttv.utils.b g1() {
        return (com.transsion.shorttv.utils.b) this.shortTVReporter.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i1(ShortTVDownloadReFragment shortTVDownloadReFragment, View view) {
        shortTVDownloadReFragment.f0();
    }

    private final void initHistory() {
        kotlinx.coroutines.k.d(androidx.p009lifecycle.v.a(this), null, null, new AnonymousClass1(null), 3, null);
    }

    private final void initView() {
        z zVar;
        Group group;
        RecyclerView recyclerView;
        RecyclerView recyclerView2;
        AppBarLayout appBarLayout;
        AppBarLayout appBarLayout2;
        AppCompatTextView appCompatTextView;
        z zVar2 = (z) getMViewBinding();
        if (zVar2 != null && (appCompatTextView = zVar2.D) != null) {
            Subject subject = this.subject;
            appCompatTextView.setText(subject != null ? subject.getTitle() : null);
        }
        z zVar3 = (z) getMViewBinding();
        if (zVar3 != null && (appBarLayout2 = zVar3.f69962b) != null) {
            appBarLayout2.setExpanded(!this.scroll2Download);
        }
        z zVar4 = (z) getMViewBinding();
        ViewGroup.LayoutParams layoutParams = (zVar4 == null || (appBarLayout = zVar4.f69962b) == null) ? null : appBarLayout.getLayoutParams();
        CoordinatorLayout.f fVar = layoutParams instanceof CoordinatorLayout.f ? (CoordinatorLayout.f) layoutParams : null;
        AppBarLayout.Behavior behavior = new AppBarLayout.Behavior() { // from class: com.transsion.shorttv.ui.fragment.download.ShortTVDownloadReFragment$initView$behavior$1

            public static final class a extends AppBarLayout.Behavior.a {
                a() {
                }

                @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior.c
                public boolean a(AppBarLayout appBarLayout) {
                    Intrinsics.h(appBarLayout, "appBarLayout");
                    return true;
                }
            }

            {
                u0(new a());
            }

            @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.c
            /* JADX INFO: renamed from: m0 */
            public void q(CoordinatorLayout coordinatorLayout, AppBarLayout child, View target, int dx2, int dy2, int[] consumed, int type) {
                Intrinsics.h(coordinatorLayout, "coordinatorLayout");
                Intrinsics.h(child, "child");
                Intrinsics.h(target, "target");
                Intrinsics.h(consumed, "consumed");
                if (target instanceof RecyclerView) {
                    if (dy2 > 0 && target.canScrollVertically(1)) {
                        return;
                    }
                    if (dy2 < 0 && target.canScrollVertically(-1)) {
                        return;
                    }
                }
                super.q(coordinatorLayout, child, target, dx2, dy2, consumed, type);
            }
        };
        if (fVar != null) {
            fVar.o(behavior);
        }
        z zVar5 = (z) getMViewBinding();
        if (zVar5 != null && (recyclerView2 = zVar5.f69979s) != null) {
            int i11 = this.padding;
            recyclerView2.setPadding(i11, 0, i11, 0);
            recyclerView2.setLayoutManager(new GridLayoutManager(recyclerView2.getContext(), 5, 1, false));
            recyclerView2.addOnScrollListener(new e());
        }
        ShortTvDownloadEpListAdapter shortTvDownloadEpListAdapter = new ShortTvDownloadEpListAdapter();
        shortTvDownloadEpListAdapter.l(new Function1() { // from class: com.transsion.shorttv.ui.fragment.download.g
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ShortTVDownloadReFragment.p1(this.f53367a, ((Integer) obj).intValue());
            }
        });
        this.shortTVEpAdapter = shortTvDownloadEpListAdapter;
        z zVar6 = (z) getMViewBinding();
        if (zVar6 != null && (recyclerView = zVar6.f69979s) != null) {
            recyclerView.setAdapter(this.shortTVEpAdapter);
        }
        if (!lr.c.f69031a.b().d().b() || (zVar = (z) getMViewBinding()) == null || (group = zVar.f69965e) == null) {
            return;
        }
        yr.b.b(group);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j1(ShortTVDownloadReFragment shortTVDownloadReFragment, View view) {
        Intrinsics.e(view);
        shortTVDownloadReFragment.F1(view);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k1(ShortTVDownloadReFragment shortTVDownloadReFragment, View view) {
        Intrinsics.e(view);
        shortTVDownloadReFragment.D1(view);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l1(ShortTVDownloadReFragment shortTVDownloadReFragment, View view) {
        Intrinsics.e(view);
        shortTVDownloadReFragment.I1(view);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m1(ShortTVDownloadReFragment shortTVDownloadReFragment, View view) {
        shortTVDownloadReFragment.G1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n1(ShortTVDownloadReFragment shortTVDownloadReFragment, View view) {
        shortTVDownloadReFragment.G1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o1(ShortTVDownloadReFragment shortTVDownloadReFragment, View view) {
        b0 b0VarR;
        Long l11;
        b0 b0VarQ;
        FrameLayout frameLayout;
        if (ds.d.f61428a.a(view.getId(), 500L)) {
            return;
        }
        if (!nh.m.f70474a.e()) {
            fs.b.f62459a.d(R$string.short_tv_no_network_toast);
            return;
        }
        z zVar = (z) shortTVDownloadReFragment.getMViewBinding();
        if (zVar != null && (frameLayout = zVar.f69968h) != null && frameLayout.getVisibility() == 0) {
            lg.a.f68839a.p("Download", new String[]{"DownloadReDetectorGroupMainFragment --> onDownload() --> 当前正在全选中"}, true);
            return;
        }
        ShortTvDownloadViewModel shortTvDownloadViewModelH0 = shortTVDownloadReFragment.getViewModel();
        Map map = (shortTvDownloadViewModelH0 == null || (b0VarQ = shortTvDownloadViewModelH0.q()) == null) ? null : (Map) b0VarQ.f();
        if (map == null || map.isEmpty()) {
            fs.b.f62459a.e(Utils.a().getString(R$string.download_short_tv_unselected_toast));
        } else {
            ShortTvDownloadViewModel shortTvDownloadViewModelH1 = shortTVDownloadReFragment.getViewModel();
            shortTVDownloadReFragment.A1((shortTvDownloadViewModelH1 == null || (b0VarR = shortTvDownloadViewModelH1.r()) == null || (l11 = (Long) b0VarR.f()) == null) ? 0L : l11.longValue());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit p1(ShortTVDownloadReFragment shortTVDownloadReFragment, int i11) {
        shortTVDownloadReFragment.E1(i11);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit q1(ShortTVDownloadReFragment shortTVDownloadReFragment, DownloadListBean downloadListBean) {
        List data;
        shortTVDownloadReFragment.K1();
        if (downloadListBean == null) {
            ShortTvDownloadEpListAdapter shortTvDownloadEpListAdapter = shortTVDownloadReFragment.shortTVEpAdapter;
            if (shortTvDownloadEpListAdapter != null && (data = shortTvDownloadEpListAdapter.getData()) != null && data.size() == 0) {
                shortTVDownloadReFragment.S1();
            }
            return Unit.f67061a;
        }
        lg.a.C0828a c0828a = lg.a.f68839a;
        String tag = shortTVDownloadReFragment.getTAG();
        Intrinsics.g(tag, "<get-TAG>(...)");
        List<DownloadItem> items = downloadListBean.getItems();
        lg.a.C0828a.f(c0828a, tag, "get data from  net, size = " + (items != null ? Integer.valueOf(items.size()) : null), false, 4, null);
        Integer totalEpisode = downloadListBean.getTotalEpisode();
        if (totalEpisode != null && totalEpisode.intValue() == 0) {
            Subject subject = shortTVDownloadReFragment.subject;
            downloadListBean.setTotalEpisode(Integer.valueOf(subject != null ? subject.getTotalEpisode() : 0));
        }
        shortTVDownloadReFragment.T1(downloadListBean);
        shortTVDownloadReFragment.W1(downloadListBean.getItems(), downloadListBean.getStartPosition(), downloadListBean.getEndPosition());
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit r1(ShortTVDownloadReFragment shortTVDownloadReFragment, Subject subject) {
        if (subject != null) {
            shortTVDownloadReFragment.subject = subject;
            ShortTvDownloadEpListAdapter shortTvDownloadEpListAdapter = shortTVDownloadReFragment.shortTVEpAdapter;
            if (shortTvDownloadEpListAdapter != null) {
                shortTvDownloadEpListAdapter.m(subject);
            }
            shortTVDownloadReFragment.U1();
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit s1(ShortTVDownloadReFragment shortTVDownloadReFragment, Map map) {
        shortTVDownloadReFragment.X0();
        shortTVDownloadReFragment.V0();
        return Unit.f67061a;
    }

    private final void showLoading() {
        FrameLayout frameLayout;
        z zVar = (z) getMViewBinding();
        if (zVar == null || (frameLayout = zVar.f69969i) == null) {
            return;
        }
        frameLayout.removeAllViews();
        frameLayout.setVisibility(0);
        frameLayout.addView(a1());
    }

    private final void showNotNetError() {
        FrameLayout frameLayout;
        z zVar = (z) getMViewBinding();
        if (zVar == null || (frameLayout = zVar.f69969i) == null) {
            return;
        }
        frameLayout.removeAllViews();
        frameLayout.setVisibility(0);
        frameLayout.addView(f1());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit t1(ShortTVDownloadReFragment shortTVDownloadReFragment, Long l11) {
        Intrinsics.e(l11);
        shortTVDownloadReFragment.H1(l11.longValue());
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit u1(Integer num) {
        int i11;
        if (num != null && num.intValue() == 0) {
            i11 = R$string.short_tv_error_load_failed;
        } else {
            i11 = (num != null && num.intValue() == 2) ? R$string.short_tv_favorite_remove_toast : R$string.short_tv_favorite_toast;
        }
        fs.b.f62459a.d(i11);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit v1(ShortTVDownloadReFragment shortTVDownloadReFragment, uy.c value) {
        BLImageView bLImageView;
        ShortTVFavInfo shortTVFavInfo;
        Intrinsics.h(value, "value");
        try {
            if (!TextUtils.equals(value.c(), shortTVDownloadReFragment.subjectId)) {
                return Unit.f67061a;
            }
            Subject subject = shortTVDownloadReFragment.subject;
            if (subject != null && (shortTVFavInfo = subject.getShortTVFavInfo()) != null) {
                shortTVFavInfo.setFavoriteNum(value.b());
                shortTVFavInfo.setHasFavorite(value.a());
            }
            z zVar = (z) shortTVDownloadReFragment.getMViewBinding();
            if (zVar != null && (bLImageView = zVar.f69975o) != null) {
                bLImageView.setSelected(value.a());
            }
            return Unit.f67061a;
        } catch (Exception unused) {
            lg.a.C0828a.g(lg.a.f68839a, " callback change data fail", false, 2, null);
        }
    }

    private final boolean w1() {
        List data;
        int size = this.inDownloadStatusMap.size();
        ShortTvDownloadEpListAdapter shortTvDownloadEpListAdapter = this.shortTVEpAdapter;
        return size < ((shortTvDownloadEpListAdapter == null || (data = shortTvDownloadEpListAdapter.getData()) == null) ? 0 : data.size());
    }

    private final void x1(qs.i loginProvider, Function0 onSuccess) {
        Context contextRequireContext = requireContext();
        Intrinsics.g(contextRequireContext, "requireContext(...)");
        Intent intentB = loginProvider.b(contextRequireContext);
        if (intentB == null) {
            return;
        }
        this.loginSuccessCallback = onSuccess;
        this.loginLauncher.a(intentB);
    }

    private final void y1(boolean onlyEpisodeList) {
        if (!nh.m.f70474a.e()) {
            showNotNetError();
            return;
        }
        lg.a.C0828a c0828a = lg.a.f68839a;
        String tag = getTAG();
        Intrinsics.g(tag, "<get-TAG>(...)");
        lg.a.C0828a.f(c0828a, tag, "loadData ,  startPosition:" + this.startPosition + ", endPosition:" + this.endPosition, false, 4, null);
        this.isRequestingData = true;
        if (onlyEpisodeList) {
            ShortTvDownloadViewModel shortTvDownloadViewModelH0 = getViewModel();
            if (shortTvDownloadViewModelH0 != null) {
                String str = this.subjectId;
                shortTvDownloadViewModelH0.i(str != null ? str : "", this.startPosition, this.endPosition);
                return;
            }
            return;
        }
        ShortTvDownloadViewModel shortTvDownloadViewModelH1 = getViewModel();
        if (shortTvDownloadViewModelH1 != null) {
            String str2 = this.subjectId;
            if (str2 == null) {
                str2 = "";
            }
            ShortTvDownloadViewModel.o(shortTvDownloadViewModelH1, str2, false, 2, null);
        }
        ShortTvDownloadViewModel shortTvDownloadViewModelH2 = getViewModel();
        if (shortTvDownloadViewModelH2 != null) {
            String str3 = this.subjectId;
            shortTvDownloadViewModelH2.i(str3 != null ? str3 : "", this.startPosition, this.endPosition);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void z1(ShortTVDownloadReFragment shortTVDownloadReFragment, ActivityResult activityResult) {
        Function0 function0;
        if (activityResult.getResultCode() == -1 && (function0 = shortTVDownloadReFragment.loginSuccessCallback) != null) {
            function0.invoke();
        }
        shortTVDownloadReFragment.loginSuccessCallback = null;
    }

    @Override // com.transsion.shorttv.base.fragment.PageStatusFragment
    public String getPageStateLayoutTitle() {
        return "";
    }

    @Override // com.transsion.shorttv.base.fragment.PageStatusFragment
    /* JADX INFO: renamed from: h1, reason: merged with bridge method [inline-methods] */
    public z getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        z zVarC = z.c(inflater);
        Intrinsics.g(zVarC, "inflate(...)");
        return zVarC;
    }

    @Override // com.transsion.shorttv.base.fragment.PageStatusFragment
    public void initListener() {
        LinearLayoutCompat linearLayoutCompat;
        AppCompatImageView appCompatImageView;
        AppCompatTextView appCompatTextView;
        BLImageView bLImageView;
        BLImageView bLImageView2;
        BLView bLView;
        ImageView imageView;
        z zVar = (z) getMViewBinding();
        if (zVar != null && (imageView = zVar.f69973m) != null) {
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.shorttv.ui.fragment.download.a
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ShortTVDownloadReFragment.i1(this.f53362a, view);
                }
            });
        }
        z zVar2 = (z) getMViewBinding();
        if (zVar2 != null && (bLView = zVar2.H) != null) {
            bLView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.shorttv.ui.fragment.download.l
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ShortTVDownloadReFragment.j1(this.f53374a, view);
                }
            });
        }
        z zVar3 = (z) getMViewBinding();
        if (zVar3 != null && (bLImageView2 = zVar3.f69975o) != null) {
            bLImageView2.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.shorttv.ui.fragment.download.q
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ShortTVDownloadReFragment.k1(this.f53389a, view);
                }
            });
        }
        z zVar4 = (z) getMViewBinding();
        if (zVar4 != null && (bLImageView = zVar4.f69976p) != null) {
            bLImageView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.shorttv.ui.fragment.download.r
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ShortTVDownloadReFragment.l1(this.f53390a, view);
                }
            });
        }
        z zVar5 = (z) getMViewBinding();
        if (zVar5 != null && (appCompatTextView = zVar5.B) != null) {
            appCompatTextView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.shorttv.ui.fragment.download.s
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ShortTVDownloadReFragment.m1(this.f53391a, view);
                }
            });
        }
        z zVar6 = (z) getMViewBinding();
        if (zVar6 != null && (appCompatImageView = zVar6.f69972l) != null) {
            appCompatImageView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.shorttv.ui.fragment.download.t
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ShortTVDownloadReFragment.n1(this.f53392a, view);
                }
            });
        }
        z zVar7 = (z) getMViewBinding();
        if (zVar7 == null || (linearLayoutCompat = zVar7.f69964d) == null) {
            return;
        }
        linearLayoutCompat.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.shorttv.ui.fragment.download.u
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ShortTVDownloadReFragment.o1(this.f53393a, view);
            }
        });
    }

    @Override // com.transsion.shorttv.base.fragment.PageStatusFragment
    public void initViewData() {
        initView();
        J1();
    }

    @Override // com.transsion.shorttv.base.fragment.PageStatusFragment
    public void initViewModel() {
        b0 b0VarP;
        b0 b0VarL;
        b0 b0VarM;
        b0 b0VarR;
        b0 b0VarQ;
        String str = this.subjectId;
        if (str == null || str.length() == 0) {
            lg.a.C0828a c0828a = lg.a.f68839a;
            String tag = getTAG();
            Intrinsics.g(tag, "<get-TAG>(...)");
            lg.a.C0828a.l(c0828a, tag, "subjectId is null", false, 4, null);
            return;
        }
        Fragment parentFragment = getParentFragment();
        if (parentFragment != null) {
            ShortTvDownloadViewModel shortTvDownloadViewModelH0 = getViewModel();
            if (shortTvDownloadViewModelH0 != null && (b0VarQ = shortTvDownloadViewModelH0.q()) != null) {
                b0VarQ.j(parentFragment, new f(new Function1() { // from class: com.transsion.shorttv.ui.fragment.download.v
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return ShortTVDownloadReFragment.s1(this.f53394a, (Map) obj);
                    }
                }));
            }
            ShortTvDownloadViewModel shortTvDownloadViewModelH1 = getViewModel();
            if (shortTvDownloadViewModelH1 != null && (b0VarR = shortTvDownloadViewModelH1.r()) != null) {
                b0VarR.j(parentFragment, new f(new Function1() { // from class: com.transsion.shorttv.ui.fragment.download.w
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return ShortTVDownloadReFragment.t1(this.f53395a, (Long) obj);
                    }
                }));
            }
            ShortTvDownloadViewModel shortTvDownloadViewModelH2 = getViewModel();
            if (shortTvDownloadViewModelH2 != null && (b0VarM = shortTvDownloadViewModelH2.m()) != null) {
                b0VarM.j(parentFragment, new f(new Function1() { // from class: com.transsion.shorttv.ui.fragment.download.x
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return ShortTVDownloadReFragment.u1((Integer) obj);
                    }
                }));
            }
        }
        androidx.p009lifecycle.u viewLifecycleOwner = getViewLifecycleOwner();
        Intrinsics.g(viewLifecycleOwner, "getViewLifecycleOwner(...)");
        Function1 function1 = new Function1() { // from class: com.transsion.shorttv.ui.fragment.download.b
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ShortTVDownloadReFragment.v1(this.f53363a, (uy.c) obj);
            }
        };
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = uy.c.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.observeEvent(viewLifecycleOwner, name, Lifecycle.State.CREATED, y0.c().q(), false, function1);
        Fragment parentFragment2 = getParentFragment();
        if (parentFragment2 != null && getViewModel() != null) {
            ShortTvDownloadViewModel shortTvDownloadViewModelH3 = getViewModel();
            if (shortTvDownloadViewModelH3 != null && (b0VarL = shortTvDownloadViewModelH3.l()) != null) {
                b0VarL.j(parentFragment2, new f(new Function1() { // from class: com.transsion.shorttv.ui.fragment.download.c
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return ShortTVDownloadReFragment.q1(this.f53364a, (DownloadListBean) obj);
                    }
                }));
            }
            ShortTvDownloadViewModel shortTvDownloadViewModelH4 = getViewModel();
            if (shortTvDownloadViewModelH4 != null && (b0VarP = shortTvDownloadViewModelH4.p()) != null) {
                b0VarP.j(parentFragment2, new f(new Function1() { // from class: com.transsion.shorttv.ui.fragment.download.d
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return ShortTVDownloadReFragment.r1(this.f53365a, (Subject) obj);
                    }
                }));
            }
        }
        lg.a.C0828a c0828a2 = lg.a.f68839a;
        String tag2 = getTAG();
        Intrinsics.g(tag2, "<get-TAG>(...)");
        lg.a.C0828a.f(c0828a2, tag2, "initViewModel ,loadData", false, 4, null);
        showLoading();
        y1(false);
    }

    @Override // com.transsion.shorttv.base.fragment.PageStatusFragment
    public boolean isAudioShowNoNetworkLayout() {
        return false;
    }

    @Override // com.transsion.shorttv.base.fragment.PageStatusFragment
    public boolean isMonitorNetworkState() {
        return true;
    }

    @Override // com.transsion.shorttv.base.fragment.PageStatusFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        String string;
        String string2;
        String string3;
        HashMap mapG;
        HashMap mapG2;
        HashMap mapG3;
        HashMap mapG4;
        HashMap mapG5;
        String string4;
        super.onCreate(savedInstanceState);
        Bundle arguments = getArguments();
        String str = "";
        if (arguments == null || (string = arguments.getString(WebConstants.PAGE_FROM)) == null) {
            string = "";
        }
        this.pageFrom = string;
        Bundle arguments2 = getArguments();
        if (arguments2 == null || (string2 = arguments2.getString("last_page_from")) == null) {
            string2 = "";
        }
        this.lastPageFrom = string2;
        Bundle arguments3 = getArguments();
        this.subject = (Subject) (arguments3 != null ? arguments3.getSerializable("subject") : null);
        Bundle arguments4 = getArguments();
        if (arguments4 == null || (string3 = arguments4.getString("ops")) == null) {
            string3 = "";
        }
        this.ops = string3;
        Bundle arguments5 = getArguments();
        if (arguments5 != null && (string4 = arguments5.getString("module_name")) != null) {
            str = string4;
        }
        this.moduleName = str;
        Bundle arguments6 = getArguments();
        this.scroll2Download = arguments6 != null ? arguments6.getBoolean("download_scroll_to_download") : false;
        Subject subject = this.subject;
        this.subjectId = subject != null ? subject.getSubjectId() : null;
        lg.a.C0828a c0828a = lg.a.f68839a;
        String tag = getTAG();
        Intrinsics.g(tag, "<get-TAG>(...)");
        lg.a.C0828a.f(c0828a, tag, "ShortTv download init subjectId:" + this.subjectId, false, 4, null);
        hj.b logViewConfig = getLogViewConfig();
        if (logViewConfig != null && (mapG5 = logViewConfig.g()) != null) {
            mapG5.put(WebConstants.PAGE_FROM, this.pageFrom);
        }
        hj.b logViewConfig2 = getLogViewConfig();
        if (logViewConfig2 != null && (mapG4 = logViewConfig2.g()) != null) {
            mapG4.put("last_page_from", this.lastPageFrom);
        }
        hj.b logViewConfig3 = getLogViewConfig();
        if (logViewConfig3 != null && (mapG3 = logViewConfig3.g()) != null) {
            Subject subject2 = this.subject;
            mapG3.put("subject_id", subject2 != null ? subject2.getSubjectId() : null);
        }
        hj.b logViewConfig4 = getLogViewConfig();
        if (logViewConfig4 != null && (mapG2 = logViewConfig4.g()) != null) {
            mapG2.put("ops", this.ops);
        }
        hj.b logViewConfig5 = getLogViewConfig();
        if (logViewConfig5 != null && (mapG = logViewConfig5.g()) != null) {
            mapG.put(NativeComponentConstants.KEY_COMPONENT_TYPE, "2");
        }
        com.transsion.shorttv.utils.b.b(g1(), this.subjectId, "dialog_minitv_download", null, 4, null);
    }

    @Override // com.transsion.shorttv.base.fragment.PageStatusFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        STCommonVideoAdHelper sTCommonVideoAdHelper = this.downloadVideoAdHelper;
        if (sTCommonVideoAdHelper != null) {
            STCommonVideoAdHelper.q(sTCommonVideoAdHelper, 0, 1, null);
        }
        this.downloadVideoAdHelper = null;
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        initHistory();
    }

    @Override // com.transsion.shorttv.base.fragment.PageStatusFragment
    public void retryLoadData() {
        List data;
        ShortTvDownloadEpListAdapter shortTvDownloadEpListAdapter = this.shortTVEpAdapter;
        if (shortTvDownloadEpListAdapter == null || (data = shortTvDownloadEpListAdapter.getData()) == null || data.size() != 0) {
            return;
        }
        showLoading();
        y1(false);
    }
}
