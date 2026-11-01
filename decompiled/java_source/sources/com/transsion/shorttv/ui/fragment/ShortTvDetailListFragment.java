package com.transsion.shorttv.ui.fragment;

import android.content.Context;
import android.content.Intent;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import androidx.activity.result.ActivityResult;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.p009lifecycle.v0;
import androidx.p009lifecycle.x0;
import androidx.recyclerview.widget.RecyclerView;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.cloud.tmc.miniapp.utils.toast.ToastStrategy;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.transsion.ad.bidding.nativead.BiddingListManager;
import com.transsion.ad.bidding.nativead.BiddingNativeManager;
import com.transsion.player.config.RenderType;
import com.transsion.player.orplayer.PlayError;
import com.transsion.player.ui.ORPlayerView;
import com.transsion.shorttv.R$mipmap;
import com.transsion.shorttv.R$string;
import com.transsion.shorttv.base.fragment.PageStatusFragment;
import com.transsion.shorttv.base.pager.PagerLayoutManager;
import com.transsion.shorttv.base.util.DeviceKeyMonitor;
import com.transsion.shorttv.base.widget.DefaultView;
import com.transsion.shorttv.base.widget.NoNetworkBigView;
import com.transsion.shorttv.bean.DubsInfo;
import com.transsion.shorttv.bean.DubsInfoData;
import com.transsion.shorttv.bean.Media;
import com.transsion.shorttv.bean.ShortTVItem;
import com.transsion.shorttv.bean.ShortTvInfoEpisodeList;
import com.transsion.shorttv.bean.ShortTvInnerPlayBean;
import com.transsion.shorttv.bean.Subject;
import com.transsion.shorttv.ui.activity.ShortTvListActivity;
import com.transsion.shorttv.ui.dialog.ShortTvEpisodeListDialog;
import com.transsion.shorttv.ui.widget.ShortTvLoadMoreView;
import com.transsion.shorttv.ui.widget.ShortTvPagerChangeControl;
import com.transsion.shorttv.ui.widget.ShortTvVideoItemView;
import com.transsion.shorttv.viewmodel.ShortTvViewModel;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0094\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006*\u0002Ì\u0001\u0018\u0000 Þ\u00012\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0002ß\u0001B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0007\u0010\u0005J\u000f\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0006H\u0003¢\u0006\u0004\b\u000b\u0010\u0005J\u000f\u0010\f\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\f\u0010\u0005J\u0019\u0010\u000f\u001a\u00020\u00062\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u001d\u0010\u0014\u001a\u00020\u00062\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00120\u0011H\u0002¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0016\u0010\u0005J\u001d\u0010\u0018\u001a\u00020\u00172\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00120\u0011H\u0002¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u001a\u0010\u0005J\u000f\u0010\u001b\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u001b\u0010\u0005J\u0019\u0010\u001f\u001a\u0004\u0018\u00010\u001e2\u0006\u0010\u001d\u001a\u00020\u001cH\u0002¢\u0006\u0004\b\u001f\u0010 J\u0019\u0010!\u001a\u0004\u0018\u00010\u001e2\u0006\u0010\u001d\u001a\u00020\u001cH\u0002¢\u0006\u0004\b!\u0010 J\u000f\u0010\"\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\"\u0010\u0005J\u0017\u0010$\u001a\u00020\u00062\u0006\u0010#\u001a\u00020\u0017H\u0002¢\u0006\u0004\b$\u0010%J\u000f\u0010&\u001a\u00020\u0006H\u0002¢\u0006\u0004\b&\u0010\u0005J\u000f\u0010'\u001a\u00020\u0006H\u0002¢\u0006\u0004\b'\u0010\u0005J\u0017\u0010)\u001a\u00020\u00172\u0006\u0010(\u001a\u00020\u0017H\u0002¢\u0006\u0004\b)\u0010*J\u000f\u0010+\u001a\u00020\u0017H\u0002¢\u0006\u0004\b+\u0010,J\u000f\u0010-\u001a\u00020\u0017H\u0002¢\u0006\u0004\b-\u0010,J\u000f\u0010.\u001a\u00020\u0006H\u0002¢\u0006\u0004\b.\u0010\u0005J\u0017\u00100\u001a\u00020\u00062\u0006\u0010/\u001a\u00020\u0017H\u0002¢\u0006\u0004\b0\u0010%J\u000f\u00101\u001a\u00020\u0006H\u0002¢\u0006\u0004\b1\u0010\u0005J\u000f\u00102\u001a\u00020\u0006H\u0002¢\u0006\u0004\b2\u0010\u0005J\u0011\u00104\u001a\u0004\u0018\u000103H\u0002¢\u0006\u0004\b4\u00105J\u000f\u00106\u001a\u00020\u0006H\u0002¢\u0006\u0004\b6\u0010\u0005J#\u0010;\u001a\u00020\u00062\u0006\u00108\u001a\u0002072\f\u0010:\u001a\b\u0012\u0004\u0012\u00020\u000609¢\u0006\u0004\b;\u0010<J\r\u0010=\u001a\u00020\u0006¢\u0006\u0004\b=\u0010\u0005J\r\u0010>\u001a\u00020\u0006¢\u0006\u0004\b>\u0010\u0005J\u0017\u0010A\u001a\u00020\u00022\u0006\u0010@\u001a\u00020?H\u0016¢\u0006\u0004\bA\u0010BJ\u000f\u0010D\u001a\u00020CH\u0016¢\u0006\u0004\bD\u0010EJ\u000f\u0010F\u001a\u00020\bH\u0016¢\u0006\u0004\bF\u0010\nJ\u0019\u0010I\u001a\u00020\u00062\b\u0010H\u001a\u0004\u0018\u00010GH\u0016¢\u0006\u0004\bI\u0010JJ\u000f\u0010L\u001a\u00020KH\u0016¢\u0006\u0004\bL\u0010MJ\u000f\u0010N\u001a\u00020\u0006H\u0016¢\u0006\u0004\bN\u0010\u0005J\u001f\u0010S\u001a\u00020\u00062\u0006\u0010P\u001a\u00020O2\u0006\u0010R\u001a\u00020QH\u0016¢\u0006\u0004\bS\u0010TJ\u000f\u0010U\u001a\u00020\u0006H\u0016¢\u0006\u0004\bU\u0010\u0005J\u000f\u0010V\u001a\u00020\u0006H\u0016¢\u0006\u0004\bV\u0010\u0005J\u000f\u0010W\u001a\u00020\u0006H\u0016¢\u0006\u0004\bW\u0010\u0005J\u0015\u0010X\u001a\u00020\u00062\u0006\u0010(\u001a\u00020\u0017¢\u0006\u0004\bX\u0010%J\r\u0010Y\u001a\u00020\u0006¢\u0006\u0004\bY\u0010\u0005J\r\u0010Z\u001a\u00020\u0006¢\u0006\u0004\bZ\u0010\u0005J\u000f\u0010[\u001a\u00020\u0006H\u0016¢\u0006\u0004\b[\u0010\u0005J\r\u0010\\\u001a\u00020\u0006¢\u0006\u0004\b\\\u0010\u0005J\r\u0010]\u001a\u00020\u0006¢\u0006\u0004\b]\u0010\u0005J\u000f\u0010^\u001a\u00020\u0006H\u0016¢\u0006\u0004\b^\u0010\u0005J\u0017\u0010`\u001a\u00020\u00062\u0006\u0010_\u001a\u00020\bH\u0016¢\u0006\u0004\b`\u0010aJ\u000f\u0010b\u001a\u00020\u0006H\u0016¢\u0006\u0004\bb\u0010\u0005J\u000f\u0010c\u001a\u00020\u0006H\u0016¢\u0006\u0004\bc\u0010\u0005J\r\u0010d\u001a\u00020\u0006¢\u0006\u0004\bd\u0010\u0005J\u0019\u0010g\u001a\u00020\u00062\b\u0010f\u001a\u0004\u0018\u00010eH\u0016¢\u0006\u0004\bg\u0010hJ\u0019\u0010j\u001a\u00020\u00062\b\u0010i\u001a\u0004\u0018\u00010CH\u0016¢\u0006\u0004\bj\u0010kJ!\u0010n\u001a\u00020\u00062\u0006\u0010m\u001a\u00020l2\b\u0010f\u001a\u0004\u0018\u00010eH\u0016¢\u0006\u0004\bn\u0010oJ\u0019\u0010p\u001a\u00020\u00062\b\u0010f\u001a\u0004\u0018\u00010eH\u0016¢\u0006\u0004\bp\u0010hJ\u000f\u0010q\u001a\u00020\u0006H\u0016¢\u0006\u0004\bq\u0010\u0005J\u000f\u0010r\u001a\u00020\u0006H\u0016¢\u0006\u0004\br\u0010\u0005J\r\u0010s\u001a\u00020C¢\u0006\u0004\bs\u0010EJ\u0019\u0010t\u001a\u00020\u00062\b\u0010f\u001a\u0004\u0018\u00010eH\u0016¢\u0006\u0004\bt\u0010hJ\u0019\u0010u\u001a\u00020\u00062\b\u0010f\u001a\u0004\u0018\u00010eH\u0016¢\u0006\u0004\bu\u0010hJ\u0017\u0010w\u001a\u00020\u00062\u0006\u0010v\u001a\u00020\bH\u0016¢\u0006\u0004\bw\u0010aJ\u000f\u0010x\u001a\u00020\u0006H\u0016¢\u0006\u0004\bx\u0010\u0005J\u0017\u0010z\u001a\u00020\u00062\u0006\u0010y\u001a\u00020\bH\u0016¢\u0006\u0004\bz\u0010aR\u0018\u0010~\u001a\u0004\u0018\u00010{8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b|\u0010}R\u0018\u0010\u0081\u0001\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u007f\u0010\u0080\u0001R!\u0010\u0084\u0001\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u0001098\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0082\u0001\u0010\u0083\u0001R)\u0010\u008a\u0001\u001a\u0014\u0012\u000f\u0012\r \u0087\u0001*\u0005\u0018\u00010\u0086\u00010\u0086\u00010\u0085\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u0088\u0001\u0010\u0089\u0001R\u001a\u0010\u008e\u0001\u001a\u00030\u008b\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008c\u0001\u0010\u008d\u0001R\u0019\u0010\u0091\u0001\u001a\u00020C8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008f\u0001\u0010\u0090\u0001R\u001b\u0010\u0093\u0001\u001a\u0004\u0018\u00010C8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0092\u0001\u0010\u0090\u0001R\u001c\u0010\u0097\u0001\u001a\u0005\u0018\u00010\u0094\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0095\u0001\u0010\u0096\u0001R\u0019\u0010\u0099\u0001\u001a\u00020C8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0098\u0001\u0010\u0090\u0001R\u0019\u0010\u009b\u0001\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009a\u0001\u0010\u0080\u0001R!\u0010¡\u0001\u001a\u00030\u009c\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b\u009d\u0001\u0010\u009e\u0001\u001a\u0006\b\u009f\u0001\u0010 \u0001R\u001c\u0010¥\u0001\u001a\u0005\u0018\u00010¢\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b£\u0001\u0010¤\u0001R\u001c\u0010©\u0001\u001a\u0005\u0018\u00010¦\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b§\u0001\u0010¨\u0001R\u001c\u0010\u00ad\u0001\u001a\u0005\u0018\u00010ª\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b«\u0001\u0010¬\u0001R\u001c\u0010±\u0001\u001a\u0005\u0018\u00010®\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¯\u0001\u0010°\u0001R\u001c\u0010µ\u0001\u001a\u0005\u0018\u00010²\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b³\u0001\u0010´\u0001R\u0018\u0010(\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¶\u0001\u0010·\u0001R\u001a\u0010¹\u0001\u001a\u00030\u008b\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¸\u0001\u0010\u008d\u0001R\u0019\u0010»\u0001\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bº\u0001\u0010\u0080\u0001R\u0019\u0010½\u0001\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¼\u0001\u0010\u0080\u0001R\u0017\u0010¿\u0001\u001a\u00020C8\u0002X\u0082D¢\u0006\b\n\u0006\b¾\u0001\u0010\u0090\u0001R\u0019\u0010Á\u0001\u001a\u00020C8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÀ\u0001\u0010\u0090\u0001R\u0019\u0010Ã\u0001\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÂ\u0001\u0010\u0080\u0001R'\u0010Ç\u0001\u001a\u00020\b8\u0000@\u0000X\u0080\u000e¢\u0006\u0016\n\u0006\bÄ\u0001\u0010\u0080\u0001\u001a\u0005\bÅ\u0001\u0010\n\"\u0005\bÆ\u0001\u0010aR\u001c\u0010Ë\u0001\u001a\u0005\u0018\u00010È\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÉ\u0001\u0010Ê\u0001R\u0018\u0010Ï\u0001\u001a\u00030Ì\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\bÍ\u0001\u0010Î\u0001R*\u0010Ô\u0001\u001a\u00030\u008b\u00018\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\b·\u0001\u0010\u008d\u0001\u001a\u0006\bÐ\u0001\u0010Ñ\u0001\"\u0006\bÒ\u0001\u0010Ó\u0001R\u001a\u0010m\u001a\u0004\u0018\u00010l8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008d\u0001\u0010Õ\u0001R\u0018\u0010Ù\u0001\u001a\u00030Ö\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b×\u0001\u0010Ø\u0001R\u001c\u0010Ý\u0001\u001a\u0005\u0018\u00010Ú\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÛ\u0001\u0010Ü\u0001¨\u0006à\u0001"}, d2 = {"Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;", "Lcom/transsion/shorttv/base/fragment/PageStatusFragment;", "Lms/c0;", "Lcom/transsion/player/orplayer/f;", "<init>", "()V", "", "initView", "", "D0", "()Z", "U0", "initAdapter", "Lcom/transsion/shorttv/bean/ShortTvInfoEpisodeList;", "subjectBean", "s1", "(Lcom/transsion/shorttv/bean/ShortTvInfoEpisodeList;)V", "", "Ljs/k;", "shortTVItems", "q1", "(Ljava/util/List;)V", "C0", "", "G0", "(Ljava/util/List;)I", "showNotNetError", "showEmpty", "Landroid/content/Context;", "context", "Landroid/view/View;", "getEmptyView", "(Landroid/content/Context;)Landroid/view/View;", "getNotNetErrorView", "loadData", "selectEp", "F0", "(I)V", "j1", "B0", "ep", "N0", "(I)I", "O0", "()I", "H0", "E0", "toPosition", "scrollToPosition", "S0", "o1", "Ljs/j;", "J0", "()Ljs/j;", "initAd", "Lqs/i;", "loginProvider", "Lkotlin/Function0;", "onSuccess", "e1", "(Lqs/i;Lkotlin/jvm/functions/Function0;)V", "n1", "p1", "Landroid/view/LayoutInflater;", "inflater", "P0", "(Landroid/view/LayoutInflater;)Lms/c0;", "", "getPageStateLayoutTitle", "()Ljava/lang/String;", "isAudioShowNoNetworkLayout", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Lhj/b;", "newLogViewConfig", "()Lhj/b;", "initViewData", "Landroid/net/Network;", "network", "Landroid/net/NetworkCapabilities;", "networkCapabilities", "onConnected", "(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V", "initViewModel", "initListener", "retryLoadData", "k1", "hideLoading", "startLoading", "onResume", "g1", "h1", "onPause", "hidden", "onHiddenChanged", "(Z)V", "logPause", "logResume", "i1", "Lao/e;", "mediaSource", "onCompletion", "(Lao/e;)V", "uuid", "onMediaItemTransition", "(Ljava/lang/String;)V", "Lcom/transsion/player/orplayer/PlayError;", "errorInfo", "onPlayError", "(Lcom/transsion/player/orplayer/PlayError;Lao/e;)V", "onPrepare", "onDestroyView", "onDestroy", "getPageName", "onVideoPause", "onVideoStart", "videoPlaying", "r1", "onStop", "isInPictureInPictureMode", "onPictureInPictureModeChanged", "Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;", "i", "Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;", "shortListDialog", "j", "Z", "isNewPlayer", CampaignEx.JSON_KEY_AD_K, "Lkotlin/jvm/functions/Function0;", "loginSuccessCallback", "Landroidx/activity/result/b;", "Landroid/content/Intent;", "kotlin.jvm.PlatformType", "l", "Landroidx/activity/result/b;", "loginLauncher", "", "m", "J", "lastShowNetWorkErrToastTime", "n", "Ljava/lang/String;", "mSubjectId", "o", "mOps", "Lcom/transsion/shorttv/bean/Subject;", TtmlNode.TAG_P, "Lcom/transsion/shorttv/bean/Subject;", "mSubject", CampaignEx.JSON_KEY_AD_Q, "mItemType", CampaignEx.JSON_KEY_AD_R, "fromTrending", "Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;", "s", "Lkotlin/Lazy;", "K0", "()Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;", "mShortTvViewModel", "Lcom/transsion/shorttv/base/pager/PagerLayoutManager;", "t", "Lcom/transsion/shorttv/base/pager/PagerLayoutManager;", "mPagerLayoutManager", "Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;", TmcStartParams.KEY_URL_SHORT, "Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;", "mPagerChangeControl", "Lcom/transsion/shorttv/ui/adapter/g;", "v", "Lcom/transsion/shorttv/ui/adapter/g;", "mAdapter", "Llo/f;", "w", "Llo/f;", "mOrPlayer", "Lcom/transsion/player/ui/ORPlayerView;", "x", "Lcom/transsion/player/ui/ORPlayerView;", "mOrPlayerView", "y", "I", "z", "ms", "A", "openDownload", "B", "hasTrailer", "C", "loggerTag", "D", "lastPageFrom", "E", "isHistoryFirst", "F", "isClickPause$shortTvLib_release", "m1", "isClickPause", "Lcom/transsion/shorttv/base/util/DeviceKeyMonitor;", "G", "Lcom/transsion/shorttv/base/util/DeviceKeyMonitor;", "deviceKeyMonitor", "com/transsion/shorttv/ui/fragment/ShortTvDetailListFragment$b", "H", "Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment$b;", "loadingHandler", "getResumeTimeStamp", "()J", "setResumeTimeStamp", "(J)V", "resumeTimeStamp", "Lcom/transsion/player/orplayer/PlayError;", "Lqs/m;", "K", "Lqs/m;", "downloadListener", "Lcom/transsion/ad/bidding/nativead/BiddingListManager;", "L", "Lcom/transsion/ad/bidding/nativead/BiddingListManager;", "middleListManager", "M", "a", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class ShortTvDetailListFragment extends PageStatusFragment<ms.c0> implements com.transsion.player.orplayer.f {

    /* JADX INFO: renamed from: A, reason: from kotlin metadata */
    private boolean openDownload;

    /* JADX INFO: renamed from: B, reason: from kotlin metadata */
    private boolean hasTrailer;

    /* JADX INFO: renamed from: C, reason: from kotlin metadata */
    private final String loggerTag;

    /* JADX INFO: renamed from: D, reason: from kotlin metadata */
    private String lastPageFrom;

    /* JADX INFO: renamed from: E, reason: from kotlin metadata */
    private boolean isHistoryFirst;

    /* JADX INFO: renamed from: F, reason: from kotlin metadata */
    private boolean isClickPause;

    /* JADX INFO: renamed from: G, reason: from kotlin metadata */
    private DeviceKeyMonitor deviceKeyMonitor;

    /* JADX INFO: renamed from: H, reason: from kotlin metadata */
    private final b loadingHandler;

    /* JADX INFO: renamed from: I, reason: from kotlin metadata */
    private long resumeTimeStamp;

    /* JADX INFO: renamed from: J, reason: from kotlin metadata */
    private PlayError errorInfo;

    /* JADX INFO: renamed from: K, reason: from kotlin metadata */
    private final qs.m downloadListener;

    /* JADX INFO: renamed from: L, reason: from kotlin metadata */
    private BiddingListManager middleListManager;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private ShortTvEpisodeListDialog shortListDialog;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private boolean isNewPlayer = true;

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    private Function0 loginSuccessCallback;

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    private final androidx.activity.result.b loginLauncher;

    /* JADX INFO: renamed from: m, reason: collision with root package name and from kotlin metadata */
    private long lastShowNetWorkErrToastTime;

    /* JADX INFO: renamed from: n, reason: collision with root package name and from kotlin metadata */
    private String mSubjectId;

    /* JADX INFO: renamed from: o, reason: collision with root package name and from kotlin metadata */
    private String mOps;

    /* JADX INFO: renamed from: p, reason: collision with root package name and from kotlin metadata */
    private Subject mSubject;

    /* JADX INFO: renamed from: q, reason: collision with root package name and from kotlin metadata */
    private String mItemType;

    /* JADX INFO: renamed from: r, reason: collision with root package name and from kotlin metadata */
    private boolean fromTrending;

    /* JADX INFO: renamed from: s, reason: collision with root package name and from kotlin metadata */
    private final Lazy mShortTvViewModel;

    /* JADX INFO: renamed from: t, reason: collision with root package name and from kotlin metadata */
    private PagerLayoutManager mPagerLayoutManager;

    /* JADX INFO: renamed from: u, reason: collision with root package name and from kotlin metadata */
    private ShortTvPagerChangeControl mPagerChangeControl;

    /* JADX INFO: renamed from: v, reason: collision with root package name and from kotlin metadata */
    private com.transsion.shorttv.ui.adapter.g mAdapter;

    /* JADX INFO: renamed from: w, reason: collision with root package name and from kotlin metadata */
    private lo.f mOrPlayer;

    /* JADX INFO: renamed from: x, reason: collision with root package name and from kotlin metadata */
    private ORPlayerView mOrPlayerView;

    /* JADX INFO: renamed from: y, reason: collision with root package name and from kotlin metadata */
    private int ep;

    /* JADX INFO: renamed from: z, reason: collision with root package name and from kotlin metadata */
    private long ms;

    public static final class b extends Handler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f53313a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final long f53314b;

        b(Looper looper) {
            super(looper);
            this.f53313a = 1;
            this.f53314b = 300L;
        }

        public final long a() {
            return this.f53314b;
        }

        public final int b() {
            return this.f53313a;
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            ms.c0 c0Var;
            ProgressBar progressBar;
            Intrinsics.h(msg, "msg");
            super.handleMessage(msg);
            if (msg.what != this.f53313a || (c0Var = (ms.c0) ShortTvDetailListFragment.this.getMViewBinding()) == null || (progressBar = c0Var.f69727b) == null) {
                return;
            }
            yr.b.e(progressBar);
        }
    }

    public static final class c implements DeviceKeyMonitor.b {
        c() {
        }

        @Override // com.transsion.shorttv.base.util.DeviceKeyMonitor.b
        public void onHomeClick() {
            ShortTvDetailListFragment.this.o1();
        }

        @Override // com.transsion.shorttv.base.util.DeviceKeyMonitor.b
        public void onRecentClick() {
            ShortTvDetailListFragment.this.o1();
        }
    }

    static final class d implements androidx.p009lifecycle.c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f53317a;

        d(Function1 function) {
            Intrinsics.h(function, "function");
            this.f53317a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f53317a;
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
            this.f53317a.invoke(obj);
        }
    }

    public ShortTvDetailListFragment() {
        androidx.activity.result.b bVarRegisterForActivityResult = registerForActivityResult(new f.j(), new androidx.activity.result.a() { // from class: com.transsion.shorttv.ui.fragment.g0
            @Override // androidx.activity.result.a
            public final void a(Object obj) {
                ShortTvDetailListFragment.f1(this.f53407a, (ActivityResult) obj);
            }
        });
        Intrinsics.g(bVarRegisterForActivityResult, "registerForActivityResult(...)");
        this.loginLauncher = bVarRegisterForActivityResult;
        this.mSubjectId = "";
        this.mItemType = "";
        this.mShortTvViewModel = FragmentViewModelLazyKt.a(this, Reflection.b(ShortTvViewModel.class), new Function0<x0>() { // from class: com.transsion.shorttv.ui.fragment.ShortTvDetailListFragment$special$$inlined$activityViewModels$default$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final x0 invoke() {
                x0 viewModelStore = this.requireActivity().getViewModelStore();
                Intrinsics.g(viewModelStore, "requireActivity().viewModelStore");
                return viewModelStore;
            }
        }, new Function0<v0.c>() { // from class: com.transsion.shorttv.ui.fragment.ShortTvDetailListFragment$special$$inlined$activityViewModels$default$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final v0.c invoke() {
                v0.c defaultViewModelProviderFactory = this.requireActivity().getDefaultViewModelProviderFactory();
                Intrinsics.g(defaultViewModelProviderFactory, "requireActivity().defaultViewModelProviderFactory");
                return defaultViewModelProviderFactory;
            }
        });
        this.ep = -1;
        this.loggerTag = "ShortTvListFragment";
        this.lastPageFrom = "";
        Looper looperMyLooper = Looper.myLooper();
        Intrinsics.e(looperMyLooper);
        this.loadingHandler = new b(looperMyLooper);
        this.downloadListener = new qs.m() { // from class: com.transsion.shorttv.ui.fragment.ShortTvDetailListFragment$downloadListener$1
            @Override // qs.m
            public void a(String str, int i11) {
                js.k kVar;
                List<Object> data;
                Object next;
                if (Intrinsics.c(str, this.f53318a.mSubjectId)) {
                    qs.d dVarS0 = this.f53318a.K0().s0();
                    if (dVarS0 != null) {
                        dVarS0.l(this.f53318a.getActivity(), str, i11);
                    }
                    com.transsion.shorttv.ui.adapter.g gVar = this.f53318a.mAdapter;
                    if (gVar == null || (data = gVar.getData()) == null) {
                        kVar = null;
                    } else {
                        Iterator<T> it = data.iterator();
                        while (true) {
                            if (!it.hasNext()) {
                                next = null;
                                break;
                            }
                            next = it.next();
                            js.k kVar2 = (js.k) next;
                            if ((kVar2 instanceof js.e) && ((js.e) kVar2).c() == i11) {
                                break;
                            }
                        }
                        kVar = (js.k) next;
                    }
                    js.e eVar = (js.e) kVar;
                    if (eVar != null) {
                        ShortTvDetailListFragment shortTvDetailListFragment = this.f53318a;
                        if (js.l.a(eVar)) {
                            Integer num = (Integer) shortTvDetailListFragment.K0().j0().f();
                            int iC = eVar.c();
                            if (num != null && num.intValue() == iC) {
                                return;
                            }
                            kotlinx.coroutines.k.d(androidx.p009lifecycle.v.a(shortTvDetailListFragment), null, null, new ShortTvDetailListFragment$downloadListener$1$onDownloadSuccess$2$1(eVar, shortTvDetailListFragment, null), 3, null);
                        }
                    }
                }
            }
        };
    }

    private final void B0() {
        List<Object> data;
        com.transsion.shorttv.ui.adapter.g gVar = this.mAdapter;
        if (gVar == null || (data = gVar.getData()) == null) {
            return;
        }
        Integer num = (Integer) K0().j0().f();
        if (num != null) {
            int iIntValue = num.intValue();
            int i11 = iIntValue + 1;
            com.transsion.shorttv.ui.adapter.g gVar2 = this.mAdapter;
            if ((gVar2 != null ? gVar2.Q1(i11, this.hasTrailer) : null) != null) {
                K0().d1(i11);
                lg.a.C0828a.f(lg.a.f68839a, this.loggerTag, "autoPlayNext  currentEp:" + iIntValue + "  nextEp:" + i11, false, 4, null);
                return;
            }
        }
        ShortTvPagerChangeControl shortTvPagerChangeControl = this.mPagerChangeControl;
        int iK = shortTvPagerChangeControl != null ? shortTvPagerChangeControl.k() : 0;
        int size = data.size();
        for (int i12 = iK + 1; i12 < size; i12++) {
            js.k kVar = (js.k) CollectionsKt.l0(data, i12);
            if (kVar instanceof js.e) {
                int iC = ((js.e) kVar).c();
                K0().d1(iC);
                lg.a.C0828a.f(lg.a.f68839a, this.loggerTag, "autoPlayNext  currentPosition:" + iK + "  nextEp:" + iC, false, 4, null);
                return;
            }
        }
    }

    private final void C0() {
        if (this.openDownload) {
            this.openDownload = false;
        }
    }

    private final boolean D0() {
        Integer num = (Integer) K0().j0().f();
        if (num == null) {
            return false;
        }
        int iIntValue = num.intValue();
        com.transsion.shorttv.ui.adapter.g gVar = this.mAdapter;
        js.e eVarQ1 = gVar != null ? gVar.Q1(iIntValue, this.hasTrailer) : null;
        if (!js.l.b(eVarQ1)) {
            return true;
        }
        if (!zr.b.f79451a.c((Subject) K0().H0().f(), eVarQ1 != null ? eVarQ1.d() : null)) {
            startLoading();
        }
        F0(iIntValue);
        return false;
    }

    private final void E0() {
        if (isAdded()) {
            FragmentManager childFragmentManager = getChildFragmentManager();
            Intrinsics.g(childFragmentManager, "getChildFragmentManager(...)");
            String[] strArr = {"ShortTvLanguageSelectDialog", "ShortTvLanguageSelectDialog_Audio", "ShortTvLanguageSelectDialog_Subtitle"};
            for (int i11 = 0; i11 < 3; i11++) {
                Fragment fragmentK0 = childFragmentManager.k0(strArr[i11]);
                DialogFragment dialogFragment = fragmentK0 instanceof DialogFragment ? (DialogFragment) fragmentK0 : null;
                if (dialogFragment != null) {
                    dialogFragment.dismissAllowingStateLoss();
                }
            }
        }
    }

    private final void F0(int selectEp) {
        if (K0().F0().f() != null) {
            K0().w0(this.mSubjectId, selectEp);
        }
    }

    private final int G0(List shortTVItems) {
        int ep2;
        ShortTvInnerPlayBean shortTvInnerPlayBean = (ShortTvInnerPlayBean) K0().f0().f();
        Integer num = (Integer) K0().j0().f();
        int iIntValue = num != null ? num.intValue() : -1;
        boolean zB = lr.c.f69031a.b().b();
        lg.a.C0828a.f(lg.a.f68839a, this.loggerTag, "lastEp: " + iIntValue + ", historyItem: " + shortTvInnerPlayBean + ", size: " + shortTVItems.size(), false, 4, null);
        if (iIntValue >= 0 && iIntValue < shortTVItems.size()) {
            if (iIntValue != 0 || zB) {
                return iIntValue;
            }
            return 1;
        }
        Object obj = null;
        Integer numValueOf = (shortTvInnerPlayBean == null || ((ep2 = shortTvInnerPlayBean.getEp()) == 0 && !zB)) ? null : Integer.valueOf(ep2);
        int iIntValue2 = numValueOf != null ? numValueOf.intValue() : H0();
        int i11 = this.ep;
        if (i11 <= 0 || !(!this.isHistoryFirst || numValueOf == null || numValueOf.intValue() == i11)) {
            return iIntValue2;
        }
        int i12 = this.ep;
        for (Object obj2 : shortTVItems) {
            js.k kVar = (js.k) obj2;
            if ((kVar instanceof js.e) && ((js.e) kVar).c() == this.ep) {
                obj = obj2;
                break;
            }
        }
        js.e eVar = (js.e) obj;
        Subject subject = this.mSubject;
        if (eVar == null || subject == null) {
            K0().O();
        } else {
            K0().s1(subject, eVar, this.ms);
        }
        return i12;
    }

    private final int H0() {
        return (this.hasTrailer && lr.c.f69031a.b().b()) ? 0 : 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void I0(ShortTvDetailListFragment shortTvDetailListFragment, DefaultView defaultView, View view) {
        shortTvDetailListFragment.loadData();
        defaultView.setVisibility(8);
    }

    private final js.j J0() {
        String strE;
        ShortTVItem shortTVItemD;
        Integer num = (Integer) K0().j0().f();
        if (num != null) {
            int iIntValue = num.intValue();
            List<js.k> list = (List) K0().F0().f();
            if (list != null && this.mOrPlayer != null && this.mOrPlayerView != null) {
                ArrayList arrayList = new ArrayList();
                js.k kVar = null;
                for (js.k kVar2 : list) {
                    if ((kVar2 instanceof js.e) && ((js.e) kVar2).c() == iIntValue) {
                        kVar = kVar2;
                    }
                    arrayList.add(kVar2);
                }
                ORPlayerView oRPlayerView = this.mOrPlayerView;
                Intrinsics.e(oRPlayerView);
                lo.f fVar = this.mOrPlayer;
                Intrinsics.e(fVar);
                js.e eVar = (js.e) kVar;
                if (eVar == null || (strE = eVar.e()) == null) {
                    strE = "";
                }
                String str = strE;
                int se2 = (eVar == null || (shortTVItemD = eVar.d()) == null) ? 0 : shortTVItemD.getSe();
                int iC = eVar != null ? eVar.c() : 1;
                String pageName = getPageName();
                Subject subject = this.mSubject;
                return new js.j(oRPlayerView, fVar, str, se2, iC, pageName, subject != null ? subject.getOps() : null, this.lastPageFrom, arrayList);
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ShortTvViewModel K0() {
        return (ShortTvViewModel) this.mShortTvViewModel.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit L0(Context context, NoNetworkBigView noNetworkBigView, ShortTvDetailListFragment shortTvDetailListFragment) {
        if (nh.m.f70474a.j(context)) {
            yr.b.b(noNetworkBigView);
            shortTvDetailListFragment.hideLoading();
            shortTvDetailListFragment.loadData();
        } else {
            fs.b.f62459a.d(R$string.short_tv_no_network_toast);
        }
        com.transsion.shorttv.base.widget.k.b(shortTvDetailListFragment.getPageName());
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit M0(ShortTvDetailListFragment shortTvDetailListFragment) {
        com.transsion.shorttv.base.widget.k.c(shortTvDetailListFragment.getPageName());
        return Unit.f67061a;
    }

    private final int N0(int ep2) {
        return (this.hasTrailer || ep2 == 0) ? ep2 : ep2 - 1;
    }

    private final int O0() {
        if (this.hasTrailer) {
            Subject subject = this.mSubject;
            return (subject != null ? subject.getTotalEpisode() : 0) + 1;
        }
        Subject subject2 = this.mSubject;
        if (subject2 != null) {
            return subject2.getTotalEpisode();
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit Q0(ShortTvDetailListFragment shortTvDetailListFragment, int i11, BiddingNativeManager current) {
        List<Object> data;
        Intrinsics.h(current, "current");
        if (current != null) {
            js.c cVar = new js.c(current);
            com.transsion.shorttv.ui.adapter.g gVar = shortTvDetailListFragment.mAdapter;
            if (i11 <= ((gVar == null || (data = gVar.getData()) == null) ? 0 : data.size())) {
                com.transsion.shorttv.ui.adapter.g gVar2 = shortTvDetailListFragment.mAdapter;
                if (gVar2 != null) {
                    gVar2.n(i11, cVar);
                }
            } else {
                com.transsion.shorttv.ui.adapter.g gVar3 = shortTvDetailListFragment.mAdapter;
                if (gVar3 != null) {
                    gVar3.p(cVar);
                }
            }
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void R0(ShortTvDetailListFragment shortTvDetailListFragment) {
        shortTvDetailListFragment.loadData();
    }

    private final void S0() {
        FrameLayout root;
        ms.c0 c0Var = (ms.c0) getMViewBinding();
        if (c0Var == null || (root = c0Var.getRoot()) == null) {
            return;
        }
        root.post(new Runnable() { // from class: com.transsion.shorttv.ui.fragment.h0
            @Override // java.lang.Runnable
            public final void run() {
                ShortTvDetailListFragment.T0(this.f53409a);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void T0(ShortTvDetailListFragment shortTvDetailListFragment) {
        qs.g gVarZ0;
        String ops;
        FragmentActivity activity = shortTvDetailListFragment.getActivity();
        if (activity == null || (gVarZ0 = shortTvDetailListFragment.K0().z0()) == null) {
            return;
        }
        String str = shortTvDetailListFragment.mSubjectId;
        String pageName = shortTvDetailListFragment.getPageName();
        Subject subject = shortTvDetailListFragment.mSubject;
        if (subject == null || (ops = subject.getOps()) == null) {
            ops = shortTvDetailListFragment.mOps;
        }
        gVarZ0.b(activity, str, pageName, ops);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void U0() {
        com.transsion.player.orplayer.g gVarD;
        String subjectId;
        lo.e eVar;
        ShortTVItem shortTVFirstEp;
        ao.e mediaSource;
        String subjectId2;
        FragmentActivity fragmentActivityRequireActivity = requireActivity();
        Intrinsics.g(fragmentActivityRequireActivity, "requireActivity(...)");
        this.mOrPlayerView = new ORPlayerView(fragmentActivityRequireActivity, RenderType.SURFACE_VIEW);
        qs.g gVarZ0 = K0().z0();
        Object[] objArr = 0;
        Object[] objArr2 = 0;
        if (gVarZ0 != null) {
            Subject subject = this.mSubject;
            if (subject == null || (subjectId2 = subject.getSubjectId()) == null) {
                subjectId2 = this.mSubjectId;
            }
            gVarD = gVarZ0.d(subjectId2);
        } else {
            gVarD = null;
        }
        int i11 = 1;
        boolean z10 = gVarD == null;
        this.isNewPlayer = z10;
        lg.a.C0828a c0828a = lg.a.f68839a;
        String str = this.loggerTag;
        Subject subject2 = this.mSubject;
        if (subject2 == null || (subjectId = subject2.getSubjectId()) == null) {
            subjectId = this.mSubjectId;
        }
        lg.a.C0828a.f(c0828a, str, "initOrPlayer isNewPlayer:" + z10 + ", mSubjectId:" + subjectId, false, 4, null);
        if (gVarD != null) {
            eVar = gVarD instanceof lo.e ? (lo.e) gVarD : null;
            if (eVar != null) {
                ORPlayerView oRPlayerView = this.mOrPlayerView;
                eVar.setSurfaceView(oRPlayerView != null ? oRPlayerView.getSurface() : null);
            } else {
                eVar = null;
            }
        } else {
            eVar = new lo.e(objArr2 == true ? 1 : 0, i11, objArr == true ? 1 : 0);
            ORPlayerView oRPlayerView2 = this.mOrPlayerView;
            eVar.setSurfaceView(oRPlayerView2 != null ? oRPlayerView2.getSurface() : null);
        }
        this.mOrPlayer = eVar;
        qs.g gVarZ1 = K0().z0();
        if (gVarZ1 != null) {
            gVarZ1.c();
        }
        lo.f fVar = this.mOrPlayer;
        if (fVar != null) {
            fVar.addPlayerListener(this);
        }
        Subject subject3 = this.mSubject;
        if (subject3 == null || (shortTVFirstEp = subject3.getShortTVFirstEp()) == null || (mediaSource = shortTVFirstEp.toMediaSource()) == null || !this.isNewPlayer) {
            return;
        }
        lo.f fVar2 = this.mOrPlayer;
        if (fVar2 != null) {
            fVar2.addDataSource(mediaSource);
        }
        lo.f fVar3 = this.mOrPlayer;
        if (fVar3 != null) {
            fVar3.prepare();
        }
        FragmentActivity activity = getActivity();
        ShortTvListActivity shortTvListActivity = activity instanceof ShortTvListActivity ? (ShortTvListActivity) activity : null;
        if (shortTvListActivity == null || !shortTvListActivity.getIsActivityPaused()) {
            return;
        }
        lg.a.C0828a.f(c0828a, this.loggerTag, "initOrPlayer prepare, but isActivityPaused is true, pause", false, 4, null);
        lo.f fVar4 = this.mOrPlayer;
        if (fVar4 != null) {
            fVar4.pause();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit V0(ShortTvDetailListFragment shortTvDetailListFragment, List list) {
        r6.f fVarH0;
        com.transsion.shorttv.ui.adapter.g gVar;
        r6.f fVarH1;
        List<Object> data;
        Object next;
        List list2;
        com.transsion.shorttv.ui.adapter.g gVar2;
        List<Object> data2;
        if (shortTvDetailListFragment.K0().O0() && (((list2 = list) == null || list2.isEmpty()) && ((gVar2 = shortTvDetailListFragment.mAdapter) == null || (data2 = gVar2.getData()) == null || data2.isEmpty()))) {
            return Unit.f67061a;
        }
        List list3 = list;
        if (list3 == null || list3.isEmpty()) {
            shortTvDetailListFragment.hideLoading();
            com.transsion.shorttv.ui.adapter.g gVar3 = shortTvDetailListFragment.mAdapter;
            if (gVar3 == null || (data = gVar3.getData()) == null || data.size() != 0) {
                com.transsion.shorttv.ui.adapter.g gVar4 = shortTvDetailListFragment.mAdapter;
                if (gVar4 != null && (fVarH0 = gVar4.h0()) != null && fVarH0.r() && (gVar = shortTvDetailListFragment.mAdapter) != null && (fVarH1 = gVar.h0()) != null) {
                    fVarH1.v();
                }
            } else if (nh.m.f70474a.e()) {
                shortTvDetailListFragment.showEmpty();
            } else {
                shortTvDetailListFragment.showNotNetError();
            }
        } else {
            if (!nh.m.f70474a.e()) {
                shortTvDetailListFragment.p1();
            }
            ShortTvInfoEpisodeList shortTvInfoEpisodeList = (ShortTvInfoEpisodeList) shortTvDetailListFragment.K0().t0().f();
            List<ShortTVItem> items = shortTvInfoEpisodeList != null ? shortTvInfoEpisodeList.getItems() : null;
            List<ShortTVItem> list4 = items;
            if (list4 != null && !list4.isEmpty() && items != null) {
                for (ShortTVItem shortTVItem : items) {
                    Iterator it = list.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            next = null;
                            break;
                        }
                        next = it.next();
                        js.k kVar = (js.k) next;
                        if ((kVar instanceof js.e) && ((js.e) kVar).c() == shortTVItem.getEp()) {
                            break;
                        }
                    }
                    js.e eVar = (js.e) next;
                    if (eVar != null) {
                        eVar.h(shortTVItem);
                    }
                }
            }
            shortTvDetailListFragment.q1(list);
            shortTvDetailListFragment.D0();
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit W0(ShortTvDetailListFragment shortTvDetailListFragment, ShortTvInfoEpisodeList shortTvInfoEpisodeList) {
        shortTvDetailListFragment.hideLoading();
        shortTvDetailListFragment.s1(shortTvInfoEpisodeList);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit X0(ShortTvDetailListFragment shortTvDetailListFragment, Subject subject) {
        BiddingListManager biddingListManager;
        Subject subject2;
        String subjectId;
        shortTvDetailListFragment.hideLoading();
        if (shortTvDetailListFragment.mSubject == null && subject == null && !nh.m.f70474a.e()) {
            lg.a.C0828a.f(lg.a.f68839a, com.transsion.baseui.fragment.PageStatusFragment.TAG, "无subject，显示无网页面----", false, 4, null);
            shortTvDetailListFragment.showNotNetError();
        } else {
            shortTvDetailListFragment.mSubject = subject;
            if (subject != null && (subjectId = subject.getSubjectId()) != null) {
                shortTvDetailListFragment.mSubjectId = subjectId;
            }
            String str = shortTvDetailListFragment.mOps;
            if (str != null && str.length() != 0 && (subject2 = shortTvDetailListFragment.mSubject) != null) {
                subject2.setOps(shortTvDetailListFragment.mOps);
            }
            if (subject != null && subject.getNeedPaid() == 0 && (biddingListManager = shortTvDetailListFragment.middleListManager) != null) {
                biddingListManager.C(true);
            }
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit Y0(ShortTvDetailListFragment shortTvDetailListFragment, Integer num) {
        Intrinsics.e(num);
        shortTvDetailListFragment.k1(num.intValue());
        com.transsion.shorttv.ui.adapter.g gVar = shortTvDetailListFragment.mAdapter;
        js.e eVarQ1 = gVar != null ? gVar.Q1(num.intValue(), shortTvDetailListFragment.hasTrailer) : null;
        boolean zE = nh.m.f70474a.e();
        if (!js.l.b(eVarQ1)) {
            int iN0 = shortTvDetailListFragment.N0(num.intValue());
            com.transsion.shorttv.ui.adapter.g gVar2 = shortTvDetailListFragment.mAdapter;
            js.k kVar = gVar2 != null ? (js.k) gVar2.f0(iN0 + 5) : null;
            if (kVar instanceof js.e) {
                js.e eVar = (js.e) kVar;
                if (js.l.b(eVar)) {
                    shortTvDetailListFragment.F0(eVar.c());
                }
            }
        } else if (zE) {
            shortTvDetailListFragment.D0();
        } else {
            shortTvDetailListFragment.hideLoading();
            shortTvDetailListFragment.p1();
        }
        Integer num2 = (Integer) shortTvDetailListFragment.K0().g0().f();
        if (num2 != null) {
            int iIntValue = num2.intValue();
            com.transsion.shorttv.ui.adapter.g gVar3 = shortTvDetailListFragment.mAdapter;
            js.e eVarQ2 = gVar3 != null ? gVar3.Q1(iIntValue, shortTvDetailListFragment.hasTrailer) : null;
            if (eVarQ2 != null) {
                if (zE) {
                    if (!zr.b.f79451a.c((Subject) shortTvDetailListFragment.K0().H0().f(), eVarQ1 != null ? eVarQ1.d() : null) && eVarQ2.b() != 0 && eVarQ1 != null && eVarQ1.b() == 0) {
                        com.transsion.shorttv.base.widget.toast.core.h.f52989a.h(R$string.short_tv_watching_online);
                    }
                }
                return Unit.f67061a;
            }
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit Z0(ShortTvDetailListFragment shortTvDetailListFragment, Boolean bool) {
        Intrinsics.e(bool);
        shortTvDetailListFragment.hasTrailer = bool.booleanValue();
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit a1(final ShortTvDetailListFragment shortTvDetailListFragment, ShortTVItem shortTVItem) {
        Map mapA;
        shortTvDetailListFragment.K0().e1(true);
        ShortTvPagerChangeControl shortTvPagerChangeControl = shortTvDetailListFragment.mPagerChangeControl;
        if (shortTvPagerChangeControl != null) {
            shortTvPagerChangeControl.m();
        }
        ao.e mediaSource = shortTVItem.toMediaSource();
        if (mediaSource != null) {
            lo.f fVar = shortTvDetailListFragment.mOrPlayer;
            boolean zContainsKey = (fVar == null || (mapA = fVar.a()) == null) ? false : mapA.containsKey(mediaSource.e());
            lg.a.C0828a c0828a = lg.a.f68839a;
            lg.a.C0828a.r(c0828a, shortTvDetailListFragment.loggerTag, new String[]{"----------addDataSource----updateShortTvInfoList  ep:" + shortTVItem.getEp() + ",inPlayerList:" + zContainsKey}, false, 4, null);
            lo.f fVar2 = shortTvDetailListFragment.mOrPlayer;
            long currentPosition = fVar2 != null ? fVar2.getCurrentPosition() : 0L;
            if (!zContainsKey) {
                lg.a.C0828a.r(c0828a, shortTvDetailListFragment.loggerTag, new String[]{"-------AudioTrack change----play  ep:" + shortTVItem.getEp()}, false, 4, null);
                lo.f fVar3 = shortTvDetailListFragment.mOrPlayer;
                if (fVar3 != null) {
                    fVar3.addDataSource(mediaSource);
                }
                lo.f fVar4 = shortTvDetailListFragment.mOrPlayer;
                if (fVar4 != null) {
                    fVar4.prepare();
                }
            }
            lo.f fVar5 = shortTvDetailListFragment.mOrPlayer;
            if (fVar5 != null) {
                String strE = mediaSource.e();
                Intrinsics.e(strE);
                fVar5.seekTo(strE, currentPosition);
            }
        }
        View view = shortTvDetailListFragment.getView();
        if (view != null) {
            view.post(new Runnable() { // from class: com.transsion.shorttv.ui.fragment.d0
                @Override // java.lang.Runnable
                public final void run() {
                    ShortTvDetailListFragment.b1(this.f53327a);
                }
            });
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b1(ShortTvDetailListFragment shortTvDetailListFragment) {
        shortTvDetailListFragment.K0().e1(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit c1(ShortTvDetailListFragment shortTvDetailListFragment, DubsInfoData dubsInfoData) {
        List<DubsInfo> dubs;
        DubsInfo dubsInfo;
        Object next;
        ShortTvPagerChangeControl shortTvPagerChangeControl = shortTvDetailListFragment.mPagerChangeControl;
        if (shortTvPagerChangeControl != null) {
            shortTvPagerChangeControl.n();
        }
        if (dubsInfoData != null && (dubs = dubsInfoData.getDubs()) != null && !dubs.isEmpty() && shortTvDetailListFragment.K0().Y() == null) {
            String string = com.transsion.shorttv.utils.h.f53653a.d().getString("k_audio_subject_" + shortTvDetailListFragment.mSubjectId, null);
            if (string != null && !Intrinsics.c(string, shortTvDetailListFragment.mSubjectId)) {
                List<DubsInfo> dubs2 = dubsInfoData.getDubs();
                if (dubs2 != null) {
                    Iterator<T> it = dubs2.iterator();
                    do {
                        if (!it.hasNext()) {
                            next = null;
                            break;
                        }
                        next = it.next();
                    } while (!Intrinsics.c(((DubsInfo) next).getSubjectId(), string));
                    dubsInfo = (DubsInfo) next;
                } else {
                    dubsInfo = null;
                }
                if (dubsInfo != null) {
                    lg.a.C0828a.f(lg.a.f68839a, shortTvDetailListFragment.loggerTag, "restoring saved audio: " + dubsInfo.getLanName() + ", subjectId=" + string, false, 4, null);
                    shortTvDetailListFragment.K0().f1(string);
                    shortTvDetailListFragment.K0().X().q(Boolean.TRUE);
                    ShortTvViewModel shortTvViewModelK0 = shortTvDetailListFragment.K0();
                    Integer num = (Integer) shortTvDetailListFragment.K0().j0().f();
                    shortTvViewModelK0.v0(string, null, num != null ? num.intValue() : 1, false);
                    ShortTvViewModel shortTvViewModelK1 = shortTvDetailListFragment.K0();
                    Integer num2 = (Integer) shortTvDetailListFragment.K0().j0().f();
                    shortTvViewModelK1.w0(string, num2 != null ? num2.intValue() : 1);
                }
            }
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit d1(ShortTvDetailListFragment shortTvDetailListFragment, Unit unit) {
        View viewJ;
        ShortTvPagerChangeControl shortTvPagerChangeControl = shortTvDetailListFragment.mPagerChangeControl;
        if (shortTvPagerChangeControl == null || (viewJ = shortTvPagerChangeControl.j()) == null) {
            return Unit.f67061a;
        }
        if (viewJ instanceof ShortTvVideoItemView) {
            ShortTvPagerChangeControl shortTvPagerChangeControl2 = shortTvDetailListFragment.mPagerChangeControl;
            if (shortTvPagerChangeControl2 == null) {
                return Unit.f67061a;
            }
            int iK = shortTvPagerChangeControl2.k();
            com.transsion.shorttv.ui.adapter.g gVar = shortTvDetailListFragment.mAdapter;
            js.k kVar = gVar != null ? (js.k) gVar.f0(iK) : null;
            js.e eVar = kVar instanceof js.e ? (js.e) kVar : null;
            if (eVar == null) {
                return Unit.f67061a;
            }
            ShortTvPagerChangeControl shortTvPagerChangeControl3 = shortTvDetailListFragment.mPagerChangeControl;
            if (shortTvPagerChangeControl3 != null) {
                shortTvPagerChangeControl3.t((ShortTvVideoItemView) viewJ, iK, eVar);
            }
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f1(ShortTvDetailListFragment shortTvDetailListFragment, ActivityResult activityResult) {
        Function0 function0;
        if (activityResult.getResultCode() == -1 && (function0 = shortTvDetailListFragment.loginSuccessCallback) != null) {
            function0.invoke();
        }
        shortTvDetailListFragment.loginSuccessCallback = null;
    }

    private final View getEmptyView(Context context) {
        final DefaultView defaultView = new DefaultView(context, DefaultView.ModelStyle.MODEL_STYLE_NIGHT);
        defaultView.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        defaultView.setGravity(17);
        defaultView.setDefaultImageViewVisibility(0);
        defaultView.setDefaultImage(R$mipmap.short_tv_ic_no_content);
        String string = context.getString(R$string.short_tv_no_content);
        Intrinsics.g(string, "getString(...)");
        defaultView.setDescText(string);
        defaultView.setStyle(DefaultView.DefaultViewStyle.STYLE_IMAGE_DESC_BTN);
        defaultView.setBtnVisibility(0);
        String string2 = context.getString(R$string.short_tv_Retry);
        Intrinsics.g(string2, "getString(...)");
        defaultView.setBtnText(string2);
        defaultView.setBtnClickListener(new View.OnClickListener() { // from class: com.transsion.shorttv.ui.fragment.e0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ShortTvDetailListFragment.I0(this.f53401a, defaultView, view);
            }
        });
        defaultView.setVisibility(0);
        return defaultView;
    }

    private final View getNotNetErrorView(final Context context) {
        String title;
        final NoNetworkBigView noNetworkBigView = new NoNetworkBigView(context, true);
        yr.b.a(noNetworkBigView);
        Subject subject = (Subject) K0().H0().f();
        if (subject == null || (title = subject.getTitle()) == null) {
            title = "";
        }
        noNetworkBigView.showTitle(true, title);
        noNetworkBigView.retry(new Function0() { // from class: com.transsion.shorttv.ui.fragment.b0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ShortTvDetailListFragment.L0(context, noNetworkBigView, this);
            }
        });
        noNetworkBigView.goToSetting(new Function0() { // from class: com.transsion.shorttv.ui.fragment.c0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ShortTvDetailListFragment.M0(this.f53325a);
            }
        });
        com.transsion.shorttv.base.widget.k.a(getPageName());
        return noNetworkBigView;
    }

    private final void initAd() {
        BiddingListManager biddingListManager = new BiddingListManager();
        ms.c0 c0Var = (ms.c0) getMViewBinding();
        biddingListManager.F(c0Var != null ? c0Var.f69728c : null);
        biddingListManager.A(androidx.p009lifecycle.v.a(this));
        biddingListManager.G("ShortTvListScene");
        biddingListManager.C(false);
        biddingListManager.z(new Function2() { // from class: com.transsion.shorttv.ui.fragment.i0
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return ShortTvDetailListFragment.Q0(this.f53411a, ((Integer) obj).intValue(), (BiddingNativeManager) obj2);
            }
        });
        this.middleListManager = biddingListManager;
    }

    private final void initAdapter() {
        com.transsion.shorttv.ui.adapter.g gVar = new com.transsion.shorttv.ui.adapter.g(new ArrayList(), this, false, this.mSubjectId, this.mItemType, this.fromTrending);
        gVar.h0().C(new ShortTvLoadMoreView());
        gVar.h0().z(false);
        gVar.h0().y(false);
        gVar.h0().D(new p6.f() { // from class: com.transsion.shorttv.ui.fragment.y
            @Override // p6.f
            public final void a() {
                ShortTvDetailListFragment.R0(this.f53434a);
            }
        });
        this.mAdapter = gVar;
    }

    private final void initView() {
        RecyclerView recyclerView;
        RecyclerView recyclerView2;
        initAdapter();
        U0();
        S0();
        FragmentActivity fragmentActivityRequireActivity = requireActivity();
        Intrinsics.g(fragmentActivityRequireActivity, "requireActivity(...)");
        this.mPagerLayoutManager = new PagerLayoutManager(fragmentActivityRequireActivity);
        ShortTvPagerChangeControl shortTvPagerChangeControl = new ShortTvPagerChangeControl(this, this.mAdapter, this.mOrPlayer, this.mOrPlayerView, this.mPagerLayoutManager);
        this.mPagerChangeControl = shortTvPagerChangeControl;
        PagerLayoutManager pagerLayoutManager = this.mPagerLayoutManager;
        if (pagerLayoutManager != null) {
            pagerLayoutManager.X(shortTvPagerChangeControl);
        }
        ms.c0 c0Var = (ms.c0) getMViewBinding();
        if (c0Var != null && (recyclerView2 = c0Var.f69728c) != null) {
            recyclerView2.setLayoutManager(this.mPagerLayoutManager);
        }
        ms.c0 c0Var2 = (ms.c0) getMViewBinding();
        if (c0Var2 != null && (recyclerView = c0Var2.f69728c) != null) {
            recyclerView.setAdapter(this.mAdapter);
        }
        com.transsion.shorttv.utils.e eVarA = com.transsion.shorttv.utils.e.f53649c.a();
        FragmentActivity fragmentActivityRequireActivity2 = requireActivity();
        Intrinsics.g(fragmentActivityRequireActivity2, "requireActivity(...)");
        eVarA.e(fragmentActivityRequireActivity2);
    }

    private final void j1() {
        js.e eVarQ1;
        Integer num = (Integer) K0().j0().f();
        if (num != null) {
            int iIntValue = num.intValue();
            ShortTvPagerChangeControl shortTvPagerChangeControl = this.mPagerChangeControl;
            long jL = shortTvPagerChangeControl != null ? shortTvPagerChangeControl.l() : 0L;
            com.transsion.shorttv.ui.adapter.g gVar = this.mAdapter;
            if (gVar == null || (eVarQ1 = gVar.Q1(iIntValue, this.hasTrailer)) == null) {
                return;
            }
            K0().b1((Subject) K0().H0().f(), eVarQ1.d(), jL);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l1(ShortTvDetailListFragment shortTvDetailListFragment, int i11) {
        RecyclerView recyclerView;
        RecyclerView recyclerView2;
        PagerLayoutManager pagerLayoutManager = shortTvDetailListFragment.mPagerLayoutManager;
        if (pagerLayoutManager != null) {
            View viewT = pagerLayoutManager.T();
            Log.e(shortTvDetailListFragment.loggerTag, "post   itemView:" + viewT);
            if (viewT != null) {
                Log.e(shortTvDetailListFragment.loggerTag, "post   itemView: 22222");
                ShortTvPagerChangeControl shortTvPagerChangeControl = shortTvDetailListFragment.mPagerChangeControl;
                if (shortTvPagerChangeControl != null) {
                    shortTvPagerChangeControl.f(i11, true, viewT);
                }
                ms.c0 c0Var = (ms.c0) shortTvDetailListFragment.getMViewBinding();
                if (c0Var == null || (recyclerView = c0Var.f69728c) == null) {
                    return;
                }
                recyclerView.requestLayout();
                return;
            }
            int childCount = pagerLayoutManager.getChildCount();
            for (int i12 = 0; i12 < childCount; i12++) {
                View childAt = pagerLayoutManager.getChildAt(i12);
                if (childAt != null && pagerLayoutManager.getPosition(childAt) == i11) {
                    ShortTvPagerChangeControl shortTvPagerChangeControl2 = shortTvDetailListFragment.mPagerChangeControl;
                    if (shortTvPagerChangeControl2 != null) {
                        shortTvPagerChangeControl2.f(i11, true, childAt);
                    }
                    ms.c0 c0Var2 = (ms.c0) shortTvDetailListFragment.getMViewBinding();
                    if (c0Var2 != null && (recyclerView2 = c0Var2.f69728c) != null) {
                        recyclerView2.requestLayout();
                    }
                    Log.e(shortTvDetailListFragment.loggerTag, "post   itemView: 11111");
                    return;
                }
            }
        }
    }

    private final void loadData() {
        K0().v0(this.mSubjectId, this.mSubject, this.ep, this.isHistoryFirst);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void o1() {
        js.j jVarJ0;
        qs.g gVarZ0;
        FragmentActivity activity = getActivity();
        if (activity == null || activity.isDestroyed() || activity.isFinishing()) {
            return;
        }
        if (this.isClickPause) {
            lg.a.f68839a.c("video_float", "shottv 视频暂停，无需触发画中画", true);
        } else {
            if (this.mOrPlayer == null || this.mOrPlayerView == null || (jVarJ0 = J0()) == null || (gVarZ0 = K0().z0()) == null) {
                return;
            }
            gVarZ0.g(activity, jVarJ0);
        }
    }

    private final void q1(List shortTVItems) {
        int i11;
        RecyclerView recyclerView;
        r6.f fVarH0;
        com.transsion.shorttv.ui.adapter.g gVar;
        r6.f fVarH1;
        r6.f fVarH2;
        r6.f fVarH3;
        r6.f fVarH4;
        r6.f fVarH5;
        ShortTVItem shortTVItemD;
        ao.e mediaSource;
        lo.f fVar;
        Map mapA;
        com.transsion.shorttv.ui.adapter.g gVar2 = this.mAdapter;
        if (gVar2 == null) {
            return;
        }
        List<Object> data = gVar2.getData();
        ArrayList<js.k> arrayList = new ArrayList();
        Subject subject = (Subject) K0().H0().f();
        js.k kVar = (js.k) CollectionsKt.v0(data);
        if (kVar != null && (kVar instanceof js.e) && zr.b.f79451a.c(subject, ((js.e) kVar).d())) {
            return;
        }
        Iterator it = shortTVItems.iterator();
        while (it.hasNext()) {
            js.k kVar2 = (js.k) it.next();
            arrayList.add(kVar2);
            if ((kVar2 instanceof js.e) && zr.b.f79451a.c(subject, ((js.e) kVar2).d())) {
                break;
            }
        }
        if (gVar2.getData().isEmpty()) {
            gVar2.q1(arrayList);
            int iG0 = G0(arrayList);
            ShortTvPagerChangeControl shortTvPagerChangeControl = this.mPagerChangeControl;
            Integer numValueOf = shortTvPagerChangeControl != null ? Integer.valueOf(shortTvPagerChangeControl.k()) : null;
            Integer num = (Integer) K0().j0().f();
            if (num == null || iG0 != num.intValue()) {
                K0().d1(iG0);
            } else if (iG0 >= 0) {
                int iS1 = gVar2.S1(iG0, this.hasTrailer);
                if (numValueOf == null || numValueOf.intValue() != iS1) {
                    Integer num2 = (Integer) K0().j0().f();
                    k1(num2 != null ? num2.intValue() : H0());
                }
            }
            C0();
        } else {
            Integer num3 = (Integer) K0().j0().f();
            int iIntValue = num3 != null ? num3.intValue() : H0();
            ShortTvPagerChangeControl shortTvPagerChangeControl2 = this.mPagerChangeControl;
            int iK = shortTvPagerChangeControl2 != null ? shortTvPagerChangeControl2.k() : 0;
            Iterator<Object> it2 = arrayList.iterator();
            int i12 = 0;
            while (true) {
                if (!it2.hasNext()) {
                    i12 = -1;
                    break;
                }
                js.k kVar3 = (js.k) it2.next();
                if ((kVar3 instanceof js.e) && ((js.e) kVar3).c() == iIntValue) {
                    break;
                } else {
                    i12++;
                }
            }
            lg.a.C0828a.f(lg.a.f68839a, this.loggerTag, "currentPositionInAddList: " + i12 + ", currentPosition: " + iK + ", currentEpisode: " + iIntValue, false, 4, null);
            if (iK >= 0 && i12 >= 0) {
                data.set(iK, arrayList.get(i12));
            }
            if (iK < data.size() - 1) {
                int i13 = iK + 1;
                List<Object> listSubList = data.subList(i13, data.size());
                int size = listSubList.size();
                data.removeAll(listSubList);
                gVar2.notifyItemRangeRemoved(i13, size);
                i11 = 1;
            } else {
                i11 = 0;
            }
            if (i12 >= 0 && i12 < arrayList.size() - 1) {
                List<Object> listSubList2 = arrayList.subList(i12 + 1, arrayList.size());
                int size2 = listSubList2.size();
                int i14 = iK + 1;
                data.addAll(RangesKt.i(data.size(), i14), listSubList2);
                gVar2.notifyItemRangeInserted(i14, size2);
                i11++;
            }
            if (iK > 0) {
                data.removeAll(data.subList(0, iK));
                gVar2.notifyItemRangeRemoved(0, iK);
                i11++;
            }
            if (i12 > 0) {
                List<Object> listSubList3 = arrayList.subList(0, i12);
                if (listSubList3.size() > 0) {
                    data.addAll(0, listSubList3);
                    gVar2.notifyItemRangeInserted(0, listSubList3.size());
                    i11++;
                }
            }
            if (i11 > 0) {
                ShortTvPagerChangeControl shortTvPagerChangeControl3 = this.mPagerChangeControl;
                if (shortTvPagerChangeControl3 != null) {
                    shortTvPagerChangeControl3.s(i12);
                }
                ms.c0 c0Var = (ms.c0) getMViewBinding();
                if (c0Var != null && (recyclerView = c0Var.f69728c) != null) {
                    recyclerView.requestLayout();
                }
            }
        }
        ShortTvPagerChangeControl shortTvPagerChangeControl4 = this.mPagerChangeControl;
        if (shortTvPagerChangeControl4 != null) {
            shortTvPagerChangeControl4.o();
        }
        boolean z10 = false;
        for (js.k kVar4 : arrayList) {
            if ((kVar4 instanceof js.e) && (shortTVItemD = ((js.e) kVar4).d()) != null && (mediaSource = shortTVItemD.toMediaSource()) != null) {
                lo.f fVar2 = this.mOrPlayer;
                boolean zContainsKey = (fVar2 == null || (mapA = fVar2.a()) == null) ? false : mapA.containsKey(mediaSource.e());
                lg.a.C0828a.f(lg.a.f68839a, this.loggerTag, "addDataSource----updateData  ep:" + shortTVItemD.getEp() + ",inPlayerList:" + zContainsKey, false, 4, null);
                if (((this.isNewPlayer || !zContainsKey) && (fVar = this.mOrPlayer) != null) ? fVar.addDataSource(mediaSource) : false) {
                    z10 = true;
                }
            }
        }
        if (z10) {
            lo.f fVar3 = this.mOrPlayer;
            if (fVar3 != null) {
                fVar3.prepare();
            }
            FragmentActivity activity = getActivity();
            ShortTvListActivity shortTvListActivity = activity instanceof ShortTvListActivity ? (ShortTvListActivity) activity : null;
            if (shortTvListActivity != null && shortTvListActivity.getIsActivityPaused()) {
                lg.a.C0828a.f(lg.a.f68839a, this.loggerTag, "updateData prepare, but isActivityPaused is true, pause", false, 4, null);
                lo.f fVar4 = this.mOrPlayer;
                if (fVar4 != null) {
                    fVar4.pause();
                }
            }
        }
        if (shortTVItems.size() < O0()) {
            com.transsion.shorttv.ui.adapter.g gVar3 = this.mAdapter;
            if (gVar3 != null && (fVarH5 = gVar3.h0()) != null) {
                fVarH5.v();
            }
            com.transsion.shorttv.ui.adapter.g gVar4 = this.mAdapter;
            if (gVar4 == null || (fVarH4 = gVar4.h0()) == null) {
                return;
            }
            fVarH4.z(true);
            return;
        }
        com.transsion.shorttv.ui.adapter.g gVar5 = this.mAdapter;
        if (gVar5 != null && (fVarH3 = gVar5.h0()) != null) {
            fVarH3.z(false);
        }
        com.transsion.shorttv.ui.adapter.g gVar6 = this.mAdapter;
        if (((gVar6 == null || (fVarH2 = gVar6.h0()) == null || !fVarH2.r()) ? false : true) && (gVar = this.mAdapter) != null && (fVarH1 = gVar.h0()) != null) {
            fVarH1.s();
        }
        com.transsion.shorttv.ui.adapter.g gVar7 = this.mAdapter;
        if (gVar7 == null || (fVarH0 = gVar7.h0()) == null) {
            return;
        }
        r6.f.u(fVarH0, false, 1, null);
    }

    private final void s1(ShortTvInfoEpisodeList subjectBean) {
        com.transsion.shorttv.ui.adapter.g gVar;
        js.e eVarQ1;
        View viewJ;
        ShortTvPagerChangeControl shortTvPagerChangeControl;
        Object next;
        Map mapA;
        com.transsion.shorttv.ui.adapter.g gVar2;
        List<Object> data;
        List<Object> data2;
        Media video;
        List<ShortTVItem> items = subjectBean != null ? subjectBean.getItems() : null;
        List<ShortTVItem> list = items;
        if (list == null || list.isEmpty()) {
            return;
        }
        Integer num = (Integer) K0().j0().f();
        int iIntValue = num != null ? num.intValue() : 0;
        List listL = (List) K0().F0().f();
        if (listL == null) {
            listL = CollectionsKt.l();
        }
        boolean z10 = false;
        for (ShortTVItem shortTVItem : items) {
            int iN0 = N0(shortTVItem.getEp());
            js.k kVar = (js.k) CollectionsKt.l0(listL, iN0);
            if (!(kVar instanceof js.e) || ((js.e) kVar).c() != shortTVItem.getEp()) {
                Iterator it = listL.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it.next();
                    js.k kVar2 = (js.k) next;
                    if ((kVar2 instanceof js.e) && ((js.e) kVar2).c() == shortTVItem.getEp()) {
                        break;
                    }
                }
                kVar = (js.k) next;
            }
            if (kVar != null && (kVar instanceof js.e)) {
                js.e eVar = (js.e) kVar;
                boolean z11 = eVar.d() == null;
                if (eVar.c() == iIntValue) {
                    ShortTVItem shortTVItemD = eVar.d();
                    if (((shortTVItemD == null || (video = shortTVItemD.getVideo()) == null) ? null : video.getVideoAddress()) == null) {
                        Media video2 = shortTVItem.getVideo();
                        if ((video2 != null ? video2.getVideoAddress() : null) != null) {
                            z10 = true;
                        }
                    }
                }
                ShortTVItem shortTVItemD2 = eVar.d();
                String id2 = shortTVItemD2 != null ? shortTVItemD2.getId() : null;
                if (id2 != null && id2.length() != 0) {
                    shortTVItem.setId(id2);
                }
                eVar.h(shortTVItem);
                com.transsion.shorttv.ui.adapter.g gVar3 = this.mAdapter;
                if (iN0 < (gVar3 != null ? gVar3.getItemCount() : 0)) {
                    com.transsion.shorttv.ui.adapter.g gVar4 = this.mAdapter;
                    if (iN0 < ((gVar4 == null || (data2 = gVar4.getData()) == null) ? 0 : data2.size())) {
                        com.transsion.shorttv.ui.adapter.g gVar5 = this.mAdapter;
                        if (gVar5 != null && (data = gVar5.getData()) != null) {
                        }
                        if (z11 && (gVar2 = this.mAdapter) != null) {
                            gVar2.notifyItemChanged(iN0, Integer.valueOf(shortTVItem.getEp()));
                        }
                    }
                }
            }
            ao.e mediaSource = shortTVItem.toMediaSource();
            if (mediaSource != null) {
                lo.f fVar = this.mOrPlayer;
                boolean zContainsKey = (fVar == null || (mapA = fVar.a()) == null) ? false : mapA.containsKey(mediaSource.e());
                lg.a.C0828a.f(lg.a.f68839a, this.loggerTag, "addDataSource----updateShortTvInfoList  ep:" + shortTVItem.getEp() + ",inPlayerList:" + zContainsKey, false, 4, null);
                if (this.isNewPlayer || !zContainsKey) {
                    lo.f fVar2 = this.mOrPlayer;
                    if (fVar2 != null) {
                        fVar2.addDataSource(mediaSource);
                    }
                }
            }
        }
        lo.f fVar3 = this.mOrPlayer;
        if (fVar3 != null) {
            fVar3.prepare();
        }
        FragmentActivity activity = getActivity();
        ShortTvListActivity shortTvListActivity = activity instanceof ShortTvListActivity ? (ShortTvListActivity) activity : null;
        if (shortTvListActivity != null && shortTvListActivity.getIsActivityPaused()) {
            lg.a.C0828a.f(lg.a.f68839a, this.loggerTag, "updateShortTvInfoList prepare, but isActivityPaused is true, pause", false, 4, null);
            lo.f fVar4 = this.mOrPlayer;
            if (fVar4 != null) {
                fVar4.pause();
            }
        }
        if (!z10 || (gVar = this.mAdapter) == null || (eVarQ1 = gVar.Q1(iIntValue, this.hasTrailer)) == null) {
            return;
        }
        if (js.l.b(eVarQ1)) {
            D0();
            return;
        }
        ShortTvPagerChangeControl shortTvPagerChangeControl2 = this.mPagerChangeControl;
        if (shortTvPagerChangeControl2 == null || (viewJ = shortTvPagerChangeControl2.j()) == null || !(viewJ instanceof ShortTvVideoItemView) || (shortTvPagerChangeControl = this.mPagerChangeControl) == null) {
            return;
        }
        shortTvPagerChangeControl.t((ShortTvVideoItemView) viewJ, N0(iIntValue), eVarQ1);
    }

    private final void scrollToPosition(final int toPosition) {
        RecyclerView recyclerView;
        RecyclerView recyclerView2;
        this.isNewPlayer = true;
        ms.c0 c0Var = (ms.c0) getMViewBinding();
        if (c0Var != null && (recyclerView2 = c0Var.f69728c) != null) {
            recyclerView2.scrollToPosition(toPosition);
        }
        ms.c0 c0Var2 = (ms.c0) getMViewBinding();
        if (c0Var2 == null || (recyclerView = c0Var2.f69728c) == null) {
            return;
        }
        recyclerView.post(new Runnable() { // from class: com.transsion.shorttv.ui.fragment.f0
            @Override // java.lang.Runnable
            public final void run() {
                ShortTvDetailListFragment.l1(this.f53404a, toPosition);
            }
        });
    }

    private final void showEmpty() {
        com.transsion.shorttv.ui.adapter.g gVar;
        List<Object> data;
        hideLoading();
        com.transsion.shorttv.ui.adapter.g gVar2 = this.mAdapter;
        if (gVar2 == null || (data = gVar2.getData()) == null || !(!data.isEmpty())) {
            Context contextRequireContext = requireContext();
            Intrinsics.g(contextRequireContext, "requireContext(...)");
            View emptyView = getEmptyView(contextRequireContext);
            if (emptyView == null || (gVar = this.mAdapter) == null) {
                return;
            }
            gVar.Y0(emptyView);
        }
    }

    private final void showNotNetError() {
        com.transsion.shorttv.ui.adapter.g gVar;
        List<Object> data;
        hideLoading();
        com.transsion.shorttv.ui.adapter.g gVar2 = this.mAdapter;
        if (gVar2 == null || (data = gVar2.getData()) == null || !(!data.isEmpty())) {
            Context contextRequireContext = requireContext();
            Intrinsics.g(contextRequireContext, "requireContext(...)");
            View notNetErrorView = getNotNetErrorView(contextRequireContext);
            if (notNetErrorView == null || (gVar = this.mAdapter) == null) {
                return;
            }
            gVar.Y0(notNetErrorView);
        }
    }

    @Override // com.transsion.shorttv.base.fragment.PageStatusFragment
    /* JADX INFO: renamed from: P0, reason: merged with bridge method [inline-methods] */
    public ms.c0 getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        ms.c0 c0VarC = ms.c0.c(inflater);
        Intrinsics.g(c0VarC, "inflate(...)");
        return c0VarC;
    }

    @Override // com.transsion.player.orplayer.f
    public void canNonSubscriberPlay(boolean z10, int i11, int i12, mo.d dVar) {
        com.transsion.player.orplayer.f.a.a(this, z10, i11, i12, dVar);
    }

    public final void e1(qs.i loginProvider, Function0 onSuccess) {
        Intrinsics.h(loginProvider, "loginProvider");
        Intrinsics.h(onSuccess, "onSuccess");
        Context contextRequireContext = requireContext();
        Intrinsics.g(contextRequireContext, "requireContext(...)");
        Intent intentB = loginProvider.b(contextRequireContext);
        if (intentB == null) {
            return;
        }
        this.loginSuccessCallback = onSuccess;
        this.loginLauncher.a(intentB);
    }

    public final void g1() {
        lo.f fVar = this.mOrPlayer;
        if (fVar != null) {
            fVar.pause();
        }
    }

    public final String getPageName() {
        return "minitv_play";
    }

    @Override // com.transsion.shorttv.base.fragment.PageStatusFragment
    public String getPageStateLayoutTitle() {
        return "";
    }

    public final void h1() {
        lo.f fVar;
        if (this.isClickPause || isHidden() || (fVar = this.mOrPlayer) == null) {
            return;
        }
        fVar.play();
    }

    public final void hideLoading() {
        ProgressBar progressBar;
        ms.c0 c0Var = (ms.c0) getMViewBinding();
        if (c0Var != null && (progressBar = c0Var.f69727b) != null) {
            yr.b.b(progressBar);
        }
        b bVar = this.loadingHandler;
        bVar.removeMessages(bVar.b());
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0032  */
    /* JADX WARN: Code duplicated, block: B:14:0x0036  */
    /* JADX WARN: Code duplicated, block: B:17:0x003d  */
    public final void i1() {
        lo.f fVar;
        lo.f fVar2;
        qs.g gVarZ0 = K0().z0();
        if (gVarZ0 != null ? gVarZ0.f(this.mOrPlayer) : false) {
            qs.g gVarZ1 = K0().z0();
            if (gVarZ1 != null ? gVarZ1.e(this.mOrPlayer) : false) {
                lg.a.f68839a.c(this.loggerTag, " 播放器在缓存中，这里不能release", true);
            } else {
                fVar = this.mOrPlayer;
                if (fVar != null) {
                    fVar.stop();
                }
                fVar2 = this.mOrPlayer;
                if (fVar2 != null) {
                    fVar2.release();
                }
            }
        } else {
            fVar = this.mOrPlayer;
            if (fVar != null) {
                fVar.stop();
            }
            fVar2 = this.mOrPlayer;
            if (fVar2 != null) {
                fVar2.release();
            }
        }
        lg.a.C0828a.f(lg.a.f68839a, this.loggerTag, "onDestroy  removePlayerListener", false, 4, null);
        lo.f fVar3 = this.mOrPlayer;
        if (fVar3 != null) {
            fVar3.removePlayerListener(this);
        }
        qs.d dVarS0 = K0().s0();
        if (dVarS0 != null) {
            dVarS0.c();
        }
        DeviceKeyMonitor deviceKeyMonitor = this.deviceKeyMonitor;
        if (deviceKeyMonitor != null) {
            deviceKeyMonitor.b();
        }
    }

    @Override // com.transsion.shorttv.base.fragment.PageStatusFragment
    public void initListener() {
    }

    @Override // com.transsion.player.orplayer.f
    public void initPlayer() {
        com.transsion.player.orplayer.f.a.b(this);
    }

    @Override // com.transsion.shorttv.base.fragment.PageStatusFragment
    public void initViewData() {
        initView();
        startLoading();
        loadData();
        initAd();
    }

    @Override // com.transsion.shorttv.base.fragment.PageStatusFragment
    public void initViewModel() {
        K0().F0().j(this, new d(new Function1() { // from class: com.transsion.shorttv.ui.fragment.j0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ShortTvDetailListFragment.V0(this.f53413a, (List) obj);
            }
        }));
        K0().t0().j(this, new d(new Function1() { // from class: com.transsion.shorttv.ui.fragment.k0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ShortTvDetailListFragment.W0(this.f53415a, (ShortTvInfoEpisodeList) obj);
            }
        }));
        K0().H0().j(this, new d(new Function1() { // from class: com.transsion.shorttv.ui.fragment.l0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ShortTvDetailListFragment.X0(this.f53417a, (Subject) obj);
            }
        }));
        K0().j0().j(this, new d(new Function1() { // from class: com.transsion.shorttv.ui.fragment.m0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ShortTvDetailListFragment.Y0(this.f53419a, (Integer) obj);
            }
        }));
        K0().J0().j(this, new d(new Function1() { // from class: com.transsion.shorttv.ui.fragment.n0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ShortTvDetailListFragment.Z0(this.f53421a, (Boolean) obj);
            }
        }));
        K0().V().j(this, new d(new Function1() { // from class: com.transsion.shorttv.ui.fragment.o0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ShortTvDetailListFragment.a1(this.f53424a, (ShortTVItem) obj);
            }
        }));
        K0().Z().j(this, new d(new Function1() { // from class: com.transsion.shorttv.ui.fragment.z
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ShortTvDetailListFragment.c1(this.f53435a, (DubsInfoData) obj);
            }
        }));
        K0().m0().j(this, new d(new Function1() { // from class: com.transsion.shorttv.ui.fragment.a0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ShortTvDetailListFragment.d1(this.f53319a, (Unit) obj);
            }
        }));
        K0().n0(this.mSubjectId);
    }

    @Override // com.transsion.shorttv.base.fragment.PageStatusFragment
    public boolean isAudioShowNoNetworkLayout() {
        return false;
    }

    public final void k1(int ep2) {
        List<Object> data;
        List<Object> data2;
        int i11 = ep2 < 0 ? 1 : ep2;
        ShortTvPagerChangeControl shortTvPagerChangeControl = this.mPagerChangeControl;
        if (shortTvPagerChangeControl != null) {
            int iK = shortTvPagerChangeControl.k();
            com.transsion.shorttv.ui.adapter.g gVar = this.mAdapter;
            if (gVar == null || (data = gVar.getData()) == null || iK >= data.size()) {
                return;
            }
            js.k kVar = (js.k) data.get(iK);
            if ((kVar instanceof js.e) && ((js.e) kVar).c() == i11) {
                lg.a.C0828a c0828a = lg.a.f68839a;
                String str = this.loggerTag;
                ShortTvPagerChangeControl shortTvPagerChangeControl2 = this.mPagerChangeControl;
                lg.a.C0828a.f(c0828a, str, "scrollToEpisode current:" + (shortTvPagerChangeControl2 != null ? Integer.valueOf(shortTvPagerChangeControl2.k()) : null) + " == " + i11, false, 4, null);
                return;
            }
            com.transsion.shorttv.ui.adapter.g gVar2 = this.mAdapter;
            int i12 = -1;
            if (gVar2 != null && (data2 = gVar2.getData()) != null) {
                Iterator<Object> it = data2.iterator();
                int i13 = 0;
                while (it.hasNext()) {
                    js.k kVar2 = (js.k) it.next();
                    if ((kVar2 instanceof js.e) && ((js.e) kVar2).c() == ep2) {
                        i12 = i13;
                        break;
                    }
                    i13++;
                }
            }
            if (i12 >= 0) {
                if (i12 == iK) {
                    return;
                }
                ShortTvPagerChangeControl shortTvPagerChangeControl3 = this.mPagerChangeControl;
                if (shortTvPagerChangeControl3 != null) {
                    shortTvPagerChangeControl3.r(true);
                }
                scrollToPosition(i12);
                return;
            }
            lg.a.C0828a c0828a2 = lg.a.f68839a;
            String str2 = this.loggerTag;
            ShortTvPagerChangeControl shortTvPagerChangeControl4 = this.mPagerChangeControl;
            lg.a.C0828a.f(c0828a2, str2, "scrollToEpisode current:" + (shortTvPagerChangeControl4 != null ? Integer.valueOf(shortTvPagerChangeControl4.k()) : null) + " == " + i11 + " indexOfEp:" + i12 + " return", false, 4, null);
        }
    }

    @Override // com.transsion.shorttv.base.fragment.PageStatusFragment
    public void logPause() {
        super.logPause();
        if (this.resumeTimeStamp != 0) {
            long jElapsedRealtime = SystemClock.elapsedRealtime() - this.resumeTimeStamp;
            qs.f fVarY0 = K0().y0();
            if (fVarY0 != null) {
                fVarY0.a(getPageName(), Long.valueOf(jElapsedRealtime), getContext());
            }
        }
    }

    @Override // com.transsion.shorttv.base.fragment.PageStatusFragment
    public void logResume() {
        super.logResume();
        this.resumeTimeStamp = SystemClock.elapsedRealtime();
    }

    public final void m1(boolean z10) {
        this.isClickPause = z10;
    }

    public final void n1() {
        if (this.shortListDialog == null) {
            ShortTvEpisodeListDialog shortTvEpisodeListDialog = new ShortTvEpisodeListDialog();
            shortTvEpisodeListDialog.setArguments(androidx.core.os.d.b(new Pair("hasTrailer", Boolean.valueOf(this.hasTrailer))));
            this.shortListDialog = shortTvEpisodeListDialog;
        }
        ShortTvEpisodeListDialog shortTvEpisodeListDialog2 = this.shortListDialog;
        if (shortTvEpisodeListDialog2 != null) {
            FragmentManager childFragmentManager = getChildFragmentManager();
            Intrinsics.g(childFragmentManager, "getChildFragmentManager(...)");
            shortTvEpisodeListDialog2.show(childFragmentManager, "immComment");
        }
        ss.b bVar = ss.b.f75858a;
        Subject subject = this.mSubject;
        ss.b.b(bVar, subject != null ? subject.getSubjectId() : null, this.mOps, "dialog_minitv_ep", null, 8, null);
    }

    @Override // com.transsion.shorttv.base.fragment.PageStatusFragment
    public hj.b newLogViewConfig() {
        return new hj.b(getPageName(), false, 2, null);
    }

    @Override // com.transsion.player.orplayer.f
    public void onAliyunDecodeErrorChangeSoftwareDecoder(ao.e eVar) {
        com.transsion.player.orplayer.f.a.c(this, eVar);
    }

    @Override // com.transsion.player.orplayer.f
    public void onBufferedPosition(long j11, ao.e eVar) {
        com.transsion.player.orplayer.f.a.d(this, j11, eVar);
    }

    @Override // com.transsion.player.orplayer.f
    public void onCompletion(ao.e mediaSource) {
        com.transsion.player.orplayer.f.a.e(this, mediaSource);
        Integer num = (Integer) K0().j0().f();
        if (num != null) {
            K0().Z0(num.intValue());
        }
        B0();
    }

    @Override // com.transsion.shorttv.base.fragment.PageStatusFragment, nh.n
    public void onConnected(Network network, NetworkCapabilities networkCapabilities) {
        lo.f fVar;
        Intrinsics.h(network, "network");
        Intrinsics.h(networkCapabilities, "networkCapabilities");
        super.onConnected(network, networkCapabilities);
        Log.e(this.loggerTag, "onConnected");
        loadData();
        D0();
        ShortTvPagerChangeControl shortTvPagerChangeControl = this.mPagerChangeControl;
        if (shortTvPagerChangeControl != null) {
            shortTvPagerChangeControl.p();
        }
        if (this.errorInfo == null || (fVar = this.mOrPlayer) == null) {
            return;
        }
        fVar.prepare();
    }

    @Override // com.transsion.shorttv.base.fragment.PageStatusFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        String string;
        hj.b logViewConfig;
        HashMap mapG;
        HashMap mapG2;
        String subjectId;
        super.onCreate(savedInstanceState);
        hj.i iVar = hj.i.f64505a;
        this.lastPageFrom = iVar.i();
        Bundle arguments = getArguments();
        String str = "";
        if (arguments == null || (string = arguments.getString("id")) == null) {
            string = "";
        }
        this.mSubjectId = string;
        Bundle arguments2 = getArguments();
        this.ep = arguments2 != null ? arguments2.getInt("ep", this.ep) : this.ep;
        Bundle arguments3 = getArguments();
        this.ms = arguments3 != null ? arguments3.getLong("ms", this.ms) : this.ms;
        Bundle arguments4 = getArguments();
        this.mOps = arguments4 != null ? arguments4.getString("ops") : null;
        Bundle arguments5 = getArguments();
        this.isHistoryFirst = arguments5 != null ? arguments5.getBoolean("historyFist", this.isHistoryFirst) : this.isHistoryFirst;
        Bundle arguments6 = getArguments();
        this.openDownload = arguments6 != null ? arguments6.getBoolean("download") : false;
        this.fromTrending = Intrinsics.c(iVar.i(), "Trending");
        Bundle arguments7 = getArguments();
        this.mSubject = (Subject) (arguments7 != null ? arguments7.getSerializable("item_object") : null);
        if (this.mSubjectId.length() == 0) {
            Subject subject = this.mSubject;
            if (subject != null && (subjectId = subject.getSubjectId()) != null) {
                str = subjectId;
            }
            this.mSubjectId = str;
        }
        Subject subject2 = this.mSubject;
        if ((subject2 != null ? subject2.getTrailer() : null) == null || !lr.c.f69031a.b().b()) {
            lg.a.C0828a.f(lg.a.f68839a, this.loggerTag, "No trailer", false, 4, null);
            this.hasTrailer = false;
        } else {
            this.hasTrailer = true;
            lg.a.C0828a c0828a = lg.a.f68839a;
            String str2 = this.loggerTag;
            Subject subject3 = this.mSubject;
            lg.a.C0828a.f(c0828a, str2, "Has trailer " + (subject3 != null ? subject3.getTrailer() : null), false, 4, null);
        }
        hj.b logViewConfig2 = getLogViewConfig();
        if (logViewConfig2 != null && (mapG2 = logViewConfig2.g()) != null) {
        }
        String str3 = this.mOps;
        if (str3 != null && str3.length() != 0 && (logViewConfig = getLogViewConfig()) != null && (mapG = logViewConfig.g()) != null) {
        }
        qs.d dVarS0 = K0().s0();
        if (dVarS0 != null) {
            dVarS0.f(this.downloadListener);
        }
        Context context = getContext();
        if (context != null) {
            this.deviceKeyMonitor = new DeviceKeyMonitor(context, new c());
        }
    }

    @Override // com.transsion.shorttv.base.fragment.PageStatusFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        DeviceKeyMonitor deviceKeyMonitor = this.deviceKeyMonitor;
        if (deviceKeyMonitor != null) {
            deviceKeyMonitor.b();
        }
        super.onDestroy();
    }

    @Override // com.transsion.shorttv.base.fragment.PageStatusFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        ORPlayerView oRPlayerView = this.mOrPlayerView;
        if (oRPlayerView != null) {
            oRPlayerView.removeAllViews();
        }
        this.mOrPlayerView = null;
    }

    @Override // com.transsion.player.orplayer.f
    public void onFocusChange(boolean z10) {
        com.transsion.player.orplayer.f.a.g(this, z10);
    }

    @Override // androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean hidden) {
        super.onHiddenChanged(hidden);
        if (isResumed()) {
            if (hidden) {
                lo.f fVar = this.mOrPlayer;
                if (fVar != null) {
                    fVar.pause();
                }
                logPause();
                return;
            }
            FragmentActivity activity = getActivity();
            ShortTvListActivity shortTvListActivity = activity instanceof ShortTvListActivity ? (ShortTvListActivity) activity : null;
            if (shortTvListActivity != null && shortTvListActivity.getIsActivityPaused()) {
                lg.a.C0828a.f(lg.a.f68839a, this.loggerTag, "onHiddenChanged play return, isActivityPaused is true", false, 4, null);
                return;
            }
            lo.f fVar2 = this.mOrPlayer;
            if (fVar2 != null) {
                fVar2.play();
            }
            logResume();
        }
    }

    @Override // com.transsion.player.orplayer.f
    public void onIsPlayingChanged(boolean z10) {
        com.transsion.player.orplayer.f.a.h(this, z10);
    }

    @Override // com.transsion.player.orplayer.f
    public void onLoadingBegin(ao.e eVar) {
        com.transsion.player.orplayer.f.a.i(this, eVar);
    }

    @Override // com.transsion.player.orplayer.f
    public void onLoadingEnd(ao.e eVar) {
        com.transsion.player.orplayer.f.a.k(this, eVar);
    }

    @Override // com.transsion.player.orplayer.f
    public void onLoadingProgress(int i11, float f11, ao.e eVar) {
        com.transsion.player.orplayer.f.a.m(this, i11, f11, eVar);
    }

    @Override // com.transsion.player.orplayer.f
    public void onLoopingStart() {
        com.transsion.player.orplayer.f.a.o(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
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
    @Override // com.transsion.player.orplayer.f
    public void onMediaItemTransition(String uuid) {
        js.k kVar;
        List<Object> arrayList;
        View viewJ;
        String id2;
        List<Object> data;
        List<Object> data2;
        E0();
        if (K0().N0()) {
            K0().e1(false);
            lg.a.C0828a.f(lg.a.f68839a, this.loggerTag, "onMediaItemTransition skipped: audio track switching", false, 4, null);
            return;
        }
        this.isNewPlayer = true;
        Integer num = (Integer) K0().j0().f();
        if (num != null) {
            int iIntValue = num.intValue();
            K0().Z0(iIntValue);
            com.transsion.shorttv.ui.adapter.g gVar = this.mAdapter;
            if (gVar != null) {
                int iS1 = gVar.S1(iIntValue, this.hasTrailer);
                com.transsion.shorttv.ui.adapter.g gVar2 = this.mAdapter;
                if (gVar2 == null || (kVar = (js.k) gVar2.f0(iS1)) == null || iS1 == -1) {
                    return;
                }
                com.transsion.shorttv.ui.adapter.g gVar3 = this.mAdapter;
                if (gVar3 == null || (arrayList = gVar3.getData()) == null) {
                    arrayList = new ArrayList<>();
                }
                int i11 = iS1 + 1;
                js.k kVar2 = (js.k) CollectionsKt.l0(arrayList, i11);
                if (kVar2 == null) {
                    return;
                }
                if (kVar2 instanceof js.c) {
                    lo.f fVar = this.mOrPlayer;
                    if (fVar != null) {
                        fVar.pause();
                    }
                    scrollToPosition(i11);
                    return;
                }
                if (kVar2 instanceof js.e) {
                    lg.a.C0828a c0828a = lg.a.f68839a;
                    lg.a.C0828a.f(c0828a, this.loggerTag, "onMediaItemTransition uuid:" + uuid + " nextItem:" + kVar2, false, 4, null);
                    js.e eVar = (js.e) kVar2;
                    if (js.l.b(eVar)) {
                        lo.f fVar2 = this.mOrPlayer;
                        if (fVar2 != null) {
                            fVar2.pause();
                        }
                        B0();
                        return;
                    }
                    com.transsion.shorttv.ui.adapter.g gVar4 = this.mAdapter;
                    if (gVar4 != null) {
                        gVar4.G0(i11);
                    }
                    com.transsion.shorttv.ui.adapter.g gVar5 = this.mAdapter;
                    if (gVar5 != null && (data2 = gVar5.getData()) != null) {
                    }
                    com.transsion.shorttv.ui.adapter.g gVar6 = this.mAdapter;
                    if (gVar6 != null && (data = gVar6.getData()) != null) {
                        data.add(iS1, kVar);
                    }
                    com.transsion.shorttv.ui.adapter.g gVar7 = this.mAdapter;
                    if (gVar7 != null) {
                        gVar7.notifyItemInserted(iS1);
                    }
                    ShortTvPagerChangeControl shortTvPagerChangeControl = this.mPagerChangeControl;
                    if (shortTvPagerChangeControl == null || (viewJ = shortTvPagerChangeControl.j()) == 0) {
                        return;
                    }
                    if (viewJ instanceof com.transsion.shorttv.ui.widget.d) {
                        com.transsion.player.orplayer.f fVar3 = (com.transsion.player.orplayer.f) viewJ;
                        ShortTVItem shortTVItemD = eVar.d();
                        if (shortTVItemD == null || (id2 = shortTVItemD.getId()) == null) {
                            id2 = "";
                        }
                        fVar3.onMediaItemTransition(id2);
                        ((com.transsion.shorttv.ui.widget.d) viewJ).setData(eVar, this, Integer.valueOf(i11), false, null, null, false, this.fromTrending);
                        int iC = eVar.c();
                        Integer num2 = (Integer) K0().j0().f();
                        if (num2 == null || iC != num2.intValue()) {
                            K0().j0().q(Integer.valueOf(eVar.c()));
                        }
                        ShortTvPagerChangeControl shortTvPagerChangeControl2 = this.mPagerChangeControl;
                        if (shortTvPagerChangeControl2 != null) {
                            shortTvPagerChangeControl2.f(i11, false, viewJ);
                        }
                        lo.f fVar4 = this.mOrPlayer;
                        boolean zIsPlaying = fVar4 != null ? fVar4.isPlaying() : false;
                        lg.a.C0828a.f(c0828a, this.loggerTag, "onMediaItemTransition  isPlaying:" + zIsPlaying, false, 4, null);
                        if (zIsPlaying) {
                            fVar3.onRenderFirstFrame();
                        }
                    }
                    K0().d1(eVar.c());
                }
            }
        }
    }

    @Override // com.transsion.shorttv.base.fragment.PageStatusFragment, androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        j1();
    }

    @Override // androidx.fragment.app.Fragment
    public void onPictureInPictureModeChanged(boolean isInPictureInPictureMode) {
        qs.g gVarZ0;
        super.onPictureInPictureModeChanged(isInPictureInPictureMode);
        js.j jVarJ0 = J0();
        if (jVarJ0 == null || (gVarZ0 = K0().z0()) == null) {
            return;
        }
        gVarZ0.h(isInPictureInPictureMode, getActivity(), jVarJ0);
    }

    @Override // com.transsion.player.orplayer.f
    public void onPlayError(PlayError errorInfo, ao.e mediaSource) {
        Intrinsics.h(errorInfo, "errorInfo");
        com.transsion.player.orplayer.f.a.q(this, errorInfo, mediaSource);
        this.errorInfo = errorInfo;
    }

    @Override // com.transsion.player.orplayer.f
    public void onPlayerRelease(ao.e eVar) {
        com.transsion.player.orplayer.f.a.t(this, eVar);
    }

    @Override // com.transsion.player.orplayer.f
    public void onPlayerReset() {
        com.transsion.player.orplayer.f.a.v(this);
    }

    @Override // com.transsion.player.orplayer.f
    public void onPrepare(ao.e mediaSource) {
        com.transsion.player.orplayer.f.a.w(this, mediaSource);
        this.errorInfo = null;
    }

    @Override // com.transsion.player.orplayer.f
    public void onProgress(long j11, ao.e eVar) {
        com.transsion.player.orplayer.f.a.y(this, j11, eVar);
    }

    @Override // com.transsion.player.orplayer.f
    public void onRenderFirstFrame() {
        com.transsion.player.orplayer.f.a.A(this);
    }

    @Override // com.transsion.shorttv.base.fragment.PageStatusFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        FragmentActivity activity = getActivity();
        ShortTvListActivity shortTvListActivity = activity instanceof ShortTvListActivity ? (ShortTvListActivity) activity : null;
        if (shortTvListActivity == null || !shortTvListActivity.getIsActivityPaused()) {
            return;
        }
        lg.a.C0828a.f(lg.a.f68839a, this.loggerTag, "onResume isActivityPaused is true, pause player", false, 4, null);
        lo.f fVar = this.mOrPlayer;
        if (fVar != null) {
            fVar.pause();
        }
    }

    @Override // com.transsion.player.orplayer.f
    public void onSetDataSource() {
        com.transsion.player.orplayer.f.a.B(this);
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
    }

    @Override // com.transsion.player.orplayer.f
    public void onTracksAudioBitrateChange(int i11) {
        com.transsion.player.orplayer.f.a.C(this, i11);
    }

    @Override // com.transsion.player.orplayer.f
    public void onTracksChange(mo.c cVar) {
        com.transsion.player.orplayer.f.a.D(this, cVar);
    }

    @Override // com.transsion.player.orplayer.f
    public void onTracksVideoBitrateChange(int i11) {
        com.transsion.player.orplayer.f.a.E(this, i11);
    }

    @Override // com.transsion.player.orplayer.f
    public void onVideoPause(ao.e mediaSource) {
        com.transsion.player.orplayer.f.a.F(this, mediaSource);
        r1(false);
        hideLoading();
    }

    @Override // com.transsion.player.orplayer.f
    public void onVideoSizeChanged(int i11, int i12) {
        com.transsion.player.orplayer.f.a.H(this, i11, i12);
    }

    @Override // com.transsion.player.orplayer.f
    public void onVideoStart(ao.e mediaSource) {
        com.transsion.player.orplayer.f.a.I(this, mediaSource);
        r1(true);
    }

    public final void p1() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - this.lastShowNetWorkErrToastTime > ToastStrategy.LONG_DURATION_TIMEOUT) {
            this.lastShowNetWorkErrToastTime = jCurrentTimeMillis;
            com.transsion.shorttv.base.widget.toast.core.h.f52989a.h(R$string.short_tv_no_network_toast);
        }
    }

    public void r1(boolean videoPlaying) {
        try {
            Result.Companion companion = Result.INSTANCE;
            FragmentActivity activity = getActivity();
            if (activity != null && !activity.isDestroyed() && !activity.isFinishing()) {
                qs.g gVarZ0 = K0().z0();
                Unit unit = null;
                if (gVarZ0 != null) {
                    ORPlayerView oRPlayerView = this.mOrPlayerView;
                    ViewParent parent = oRPlayerView != null ? oRPlayerView.getParent() : null;
                    gVarZ0.a(activity, true, videoPlaying, parent instanceof ViewGroup ? (ViewGroup) parent : null);
                    unit = Unit.f67061a;
                }
                Result.m454constructorimpl(unit);
            }
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th2));
        }
    }

    @Override // com.transsion.shorttv.base.fragment.PageStatusFragment
    public void retryLoadData() {
    }

    @Override // com.transsion.player.orplayer.f
    public void setOnSeekCompleteListener() {
        com.transsion.player.orplayer.f.a.K(this);
    }

    public final void startLoading() {
        b bVar = this.loadingHandler;
        if (bVar.hasMessages(bVar.b())) {
            return;
        }
        b bVar2 = this.loadingHandler;
        bVar2.sendEmptyMessageDelayed(bVar2.b(), this.loadingHandler.a());
    }
}
