package com.transsion.subroom.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Color;
import android.graphics.Typeface;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.Group;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.Fragment;
import androidx.p009lifecycle.Lifecycle;
import androidx.p009lifecycle.v0;
import com.blankj.utilcode.util.Utils;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.google.android.material.tabs.TabLayout;
import com.gyf.immersionbar.ImmersionBar;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.tencent.mmkv.MMKV;
import com.therouter.TheRouter;
import com.tn.lib.widget.R$color;
import com.tn.lib.widget.R$dimen;
import com.tn.lib.widget.TnTextView;
import com.transsion.ad.bidding.icon.BiddingIconAdManager;
import com.transsion.ad.bidding.nativead.BiddingNativeManager;
import com.transsion.ad.hi.HiSavanaAdManager;
import com.transsion.baseui.activity.BaseActivity;
import com.transsion.commercializationapi.ICommonDialogApi;
import com.transsion.home.R$id;
import com.transsion.home.bean.AppTab;
import com.transsion.home.bean.Badge;
import com.transsion.home.bean.BottomTabItem;
import com.transsion.home.bean.Icon;
import com.transsion.home.bean.Text;
import com.transsion.home.fragment.bottom.BottomOpFragment;
import com.transsion.home.fragment.bottom.BottomRoomFragment;
import com.transsion.home.fragment.home.HomeFragment;
import com.transsion.home.fragment.subscription.SubscriptionBottomOpFragment;
import com.transsion.home.p004enum.BottomTabType;
import com.transsion.home.p004enum.HomeTabId;
import com.transsion.home.preload.MainXMLPreloadControlImp;
import com.transsion.home.viewmodel.preload.PreloadTrendingData;
import com.transsion.mb.config.manager.ConfigBean;
import com.transsion.memberapi.IMemberApi;
import com.transsion.memberapi.IPremiumApi;
import com.transsion.player.config.RenderType;
import com.transsion.postdetail.helper.ShortTvImmVideoHelper;
import com.transsion.pushapi.NoticePermissionFrom;
import com.transsion.shorttv.ui.fragment.ShortTVDiscoverFragment;
import com.transsion.startup.StartupManager;
import com.transsion.startup.pref.consume.AppStartDotState;
import com.transsion.startup.pref.consume.AppStartReport;
import com.transsion.subroom.R$layout;
import com.transsion.subroom.R$string;
import com.transsion.usercenter.me.MeFragment;
import com.transsion.usercenter.profile.report.ReportDialog;
import com.transsion.web.api.WebConstants;
import com.transsion.web.fragment.WebFragmentV2;
import com.transsnet.downloader.R$drawable;
import com.transsnet.downloader.R$mipmap;
import com.transsnet.downloader.fragment.DownloadMainFragment;
import com.transsnet.downloader.manager.DownloadStatusIconManager;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import com.transsnet.loginapi.ILoginApi;
import com.transsnet.loginapi.bean.UserInfo;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.lang.reflect.InvocationTargetException;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.coroutines.AbstractCoroutineContextElement;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000¢\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0015\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u001a\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010%\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\t\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\b\u0006*\u0002\u0080\u0002\u0018\u0000 \u0084\u00022\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u00032\u00020\u0004:\u0002§\u0001B\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\u0019\u0010\n\u001a\u00020\t2\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0014¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\f\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0011\u0010\u0010J\u000f\u0010\u0012\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0012\u0010\u0010J\u000f\u0010\u0014\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u0017\u0010\u0018\u001a\u00020\t2\u0006\u0010\u0017\u001a\u00020\u0016H\u0014¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\tH\u0016¢\u0006\u0004\b\u001a\u0010\u0006J\u000f\u0010\u001b\u001a\u00020\tH\u0016¢\u0006\u0004\b\u001b\u0010\u0006J\u0017\u0010\u001e\u001a\u00020\t2\u0006\u0010\u001d\u001a\u00020\u001cH\u0016¢\u0006\u0004\b\u001e\u0010\u001fJ\u000f\u0010 \u001a\u00020\tH\u0014¢\u0006\u0004\b \u0010\u0006J\u0011\u0010\"\u001a\u0004\u0018\u00010!H\u0016¢\u0006\u0004\b\"\u0010#J\u001f\u0010&\u001a\u00020\t2\u0006\u0010$\u001a\u00020\u000e2\u0006\u0010%\u001a\u00020\u000eH\u0016¢\u0006\u0004\b&\u0010'J)\u0010+\u001a\u00020\t2\u0006\u0010(\u001a\u00020\u00132\u0006\u0010)\u001a\u00020\u00132\b\u0010*\u001a\u0004\u0018\u00010\u0016H\u0014¢\u0006\u0004\b+\u0010,J/\u00102\u001a\u00020\t2\u0006\u0010(\u001a\u00020\u00132\u000e\u0010/\u001a\n\u0012\u0006\b\u0001\u0012\u00020.0-2\u0006\u00101\u001a\u000200H\u0016¢\u0006\u0004\b2\u00103J\u0017\u00105\u001a\u00020\t2\u0006\u00104\u001a\u00020\u0007H\u0014¢\u0006\u0004\b5\u0010\u000bJ\u0019\u00108\u001a\u00020\u000e2\b\u00107\u001a\u0004\u0018\u000106H\u0016¢\u0006\u0004\b8\u00109J\u000f\u0010:\u001a\u00020\u000eH\u0016¢\u0006\u0004\b:\u0010\u0010J\r\u0010;\u001a\u00020\t¢\u0006\u0004\b;\u0010\u0006J\u000f\u0010<\u001a\u00020\tH\u0016¢\u0006\u0004\b<\u0010\u0006J\u000f\u0010=\u001a\u00020\u000eH\u0016¢\u0006\u0004\b=\u0010\u0010J'\u0010B\u001a\u00020\t2\u0006\u0010>\u001a\u00020.2\u0006\u0010@\u001a\u00020?2\u0006\u0010A\u001a\u00020?H\u0016¢\u0006\u0004\bB\u0010CJ4\u0010I\u001a\u00020\t2#\u0010H\u001a\u001f\u0012\u0013\u0012\u00110.¢\u0006\f\bE\u0012\b\bF\u0012\u0004\b\b(G\u0012\u0004\u0012\u00020\t\u0018\u00010DH\u0016¢\u0006\u0004\bI\u0010JJ\u000f\u0010K\u001a\u00020\u0013H\u0016¢\u0006\u0004\bK\u0010\u0015J\u000f\u0010L\u001a\u00020\u000eH\u0016¢\u0006\u0004\bL\u0010\u0010J\u000f\u0010M\u001a\u00020\tH\u0002¢\u0006\u0004\bM\u0010\u0006J\u000f\u0010N\u001a\u00020\tH\u0002¢\u0006\u0004\bN\u0010\u0006J\u000f\u0010O\u001a\u00020\tH\u0002¢\u0006\u0004\bO\u0010\u0006J\u000f\u0010P\u001a\u00020\tH\u0002¢\u0006\u0004\bP\u0010\u0006J\u000f\u0010Q\u001a\u00020\tH\u0002¢\u0006\u0004\bQ\u0010\u0006J\u0019\u0010T\u001a\u00020\t2\b\u0010S\u001a\u0004\u0018\u00010RH\u0002¢\u0006\u0004\bT\u0010UJ\u001f\u0010Y\u001a\u00020\t2\u000e\u0010X\u001a\n\u0012\u0004\u0012\u00020W\u0018\u00010VH\u0002¢\u0006\u0004\bY\u0010ZJ\u001f\u0010]\u001a\u00020\t2\u000e\u0010\\\u001a\n\u0012\u0004\u0012\u00020W\u0018\u00010[H\u0002¢\u0006\u0004\b]\u0010ZJ\u001f\u0010^\u001a\u00020\u000e2\u000e\u0010X\u001a\n\u0012\u0004\u0012\u00020W\u0018\u00010[H\u0002¢\u0006\u0004\b^\u0010_J-\u0010f\u001a\u00020e2\u0006\u0010`\u001a\u00020W2\n\u0010c\u001a\u00060aR\u00020b2\b\u0010d\u001a\u0004\u0018\u00010WH\u0002¢\u0006\u0004\bf\u0010gJ-\u0010j\u001a\u00020\t2\b\u0010h\u001a\u0004\u0018\u00010W2\b\u0010i\u001a\u0004\u0018\u00010e2\b\u0010d\u001a\u0004\u0018\u00010WH\u0002¢\u0006\u0004\bj\u0010kJ\u001f\u0010m\u001a\u00020\t2\u000e\u0010l\u001a\n\u0012\u0004\u0012\u00020W\u0018\u00010VH\u0002¢\u0006\u0004\bm\u0010ZJ\u001b\u0010o\u001a\u0004\u0018\u00010n2\b\u0010h\u001a\u0004\u0018\u00010WH\u0002¢\u0006\u0004\bo\u0010pJ\u001b\u0010q\u001a\u0004\u0018\u00010n2\b\u0010h\u001a\u0004\u0018\u00010WH\u0002¢\u0006\u0004\bq\u0010pJ\u001f\u0010t\u001a\u00020\t2\u0006\u0010r\u001a\u00020n2\u0006\u0010s\u001a\u00020.H\u0002¢\u0006\u0004\bt\u0010uJ\u0019\u0010w\u001a\u00020\t2\b\u0010`\u001a\u0004\u0018\u00010vH\u0002¢\u0006\u0004\bw\u0010xJ\u0019\u0010y\u001a\u00020\t2\b\u0010d\u001a\u0004\u0018\u00010WH\u0002¢\u0006\u0004\by\u0010zJ\u0017\u0010|\u001a\u00020\u00132\u0006\u0010{\u001a\u00020.H\u0002¢\u0006\u0004\b|\u0010}J\u0017\u0010\u007f\u001a\u00020\u00132\u0006\u0010~\u001a\u00020.H\u0002¢\u0006\u0004\b\u007f\u0010}J\u0011\u0010\u0080\u0001\u001a\u00020\tH\u0002¢\u0006\u0005\b\u0080\u0001\u0010\u0006J\u0011\u0010\u0081\u0001\u001a\u00020\tH\u0002¢\u0006\u0005\b\u0081\u0001\u0010\u0006J$\u0010\u0084\u0001\u001a\u00020\t2\u0007\u0010\u0082\u0001\u001a\u00020\u00132\u0007\u0010\u0083\u0001\u001a\u00020\u0013H\u0002¢\u0006\u0006\b\u0084\u0001\u0010\u0085\u0001J\u0011\u0010\u0086\u0001\u001a\u00020\tH\u0002¢\u0006\u0005\b\u0086\u0001\u0010\u0006J\u0011\u0010\u0087\u0001\u001a\u00020\tH\u0002¢\u0006\u0005\b\u0087\u0001\u0010\u0006J>\u0010\u008d\u0001\u001a\u00020\t2\t\u0010\u0088\u0001\u001a\u0004\u0018\u00010e2\n\u0010\u008a\u0001\u001a\u0005\u0018\u00010\u0089\u00012\n\u0010\u008c\u0001\u001a\u0005\u0018\u00010\u008b\u00012\u0007\u0010\u0083\u0001\u001a\u00020\u0013H\u0002¢\u0006\u0006\b\u008d\u0001\u0010\u008e\u0001J\u0011\u0010\u008f\u0001\u001a\u00020\tH\u0002¢\u0006\u0005\b\u008f\u0001\u0010\u0006J\u0011\u0010\u0090\u0001\u001a\u00020\tH\u0002¢\u0006\u0005\b\u0090\u0001\u0010\u0006J\u001b\u0010\u0092\u0001\u001a\u00020\t2\u0007\u0010\u0091\u0001\u001a\u00020\u0013H\u0002¢\u0006\u0006\b\u0092\u0001\u0010\u0093\u0001J\u0011\u0010\u0094\u0001\u001a\u00020\tH\u0002¢\u0006\u0005\b\u0094\u0001\u0010\u0006J%\u0010\u0096\u0001\u001a\u00020\u00132\b\u0010~\u001a\u0004\u0018\u00010.2\u0007\u0010\u0095\u0001\u001a\u00020\u0013H\u0002¢\u0006\u0006\b\u0096\u0001\u0010\u0097\u0001J\u0011\u0010\u0098\u0001\u001a\u00020\tH\u0002¢\u0006\u0005\b\u0098\u0001\u0010\u0006J\u001d\u0010\u009a\u0001\u001a\u00020\t2\t\b\u0002\u0010\u0099\u0001\u001a\u00020?H\u0002¢\u0006\u0006\b\u009a\u0001\u0010\u009b\u0001J%\u0010\u009d\u0001\u001a\u00020\t2\b\u0010h\u001a\u0004\u0018\u00010W2\u0007\u0010\u009c\u0001\u001a\u00020\u000eH\u0002¢\u0006\u0006\b\u009d\u0001\u0010\u009e\u0001J\u0011\u0010\u009f\u0001\u001a\u00020\tH\u0002¢\u0006\u0005\b\u009f\u0001\u0010\u0006J\u0011\u0010 \u0001\u001a\u00020\tH\u0002¢\u0006\u0005\b \u0001\u0010\u0006J\u0011\u0010¡\u0001\u001a\u00020\tH\u0002¢\u0006\u0005\b¡\u0001\u0010\u0006J\u0016\u0010¢\u0001\u001a\u00020\t*\u00020eH\u0002¢\u0006\u0006\b¢\u0001\u0010£\u0001J\u0011\u0010¤\u0001\u001a\u00020\tH\u0002¢\u0006\u0005\b¤\u0001\u0010\u0006J\u0011\u0010¥\u0001\u001a\u00020\tH\u0002¢\u0006\u0005\b¥\u0001\u0010\u0006R\u001c\u0010©\u0001\u001a\u0005\u0018\u00010¦\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b§\u0001\u0010¨\u0001R\u001c\u0010\u00ad\u0001\u001a\u0005\u0018\u00010ª\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b«\u0001\u0010¬\u0001R&\u0010±\u0001\u001a\u000f\u0012\u0004\u0012\u00020.\u0012\u0004\u0012\u00020n0®\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¯\u0001\u0010°\u0001R\u001a\u0010³\u0001\u001a\u0004\u0018\u00010n8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\"\u0010²\u0001R\u0019\u0010¶\u0001\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b´\u0001\u0010µ\u0001R\u0019\u0010¸\u0001\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b·\u0001\u0010µ\u0001R\u0019\u0010»\u0001\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¹\u0001\u0010º\u0001R\u0019\u0010½\u0001\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¼\u0001\u0010º\u0001R\u0018\u0010¾\u0001\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b:\u0010º\u0001R#\u0010Ä\u0001\u001a\u0005\u0018\u00010¿\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\bÀ\u0001\u0010Á\u0001\u001a\u0006\bÂ\u0001\u0010Ã\u0001R\u0019\u0010Ç\u0001\u001a\u00020.8\u0006@\u0006X\u0087\u000e¢\u0006\b\n\u0006\bÅ\u0001\u0010Æ\u0001R\u0019\u0010É\u0001\u001a\u00020.8\u0006@\u0006X\u0087\u000e¢\u0006\b\n\u0006\bÈ\u0001\u0010Æ\u0001R\u0019\u0010Ë\u0001\u001a\u00020\u00138\u0006@\u0006X\u0087\u000e¢\u0006\b\n\u0006\bÊ\u0001\u0010µ\u0001R\u0019\u0010Í\u0001\u001a\u00020\u00138\u0006@\u0006X\u0087\u000e¢\u0006\b\n\u0006\bÌ\u0001\u0010µ\u0001R\u001a\u0010Ñ\u0001\u001a\u00030Î\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÏ\u0001\u0010Ð\u0001R\u001b\u0010Ô\u0001\u001a\u0004\u0018\u00010!8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÒ\u0001\u0010Ó\u0001R\u001b\u0010×\u0001\u001a\u0004\u0018\u00010R8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÕ\u0001\u0010Ö\u0001R\u0019\u0010Ù\u0001\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bØ\u0001\u0010º\u0001R\u0019\u0010Û\u0001\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÚ\u0001\u0010º\u0001R\u001b\u0010Ý\u0001\u001a\u0004\u0018\u00010.8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÜ\u0001\u0010Æ\u0001R!\u0010â\u0001\u001a\u00030Þ\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\bß\u0001\u0010Á\u0001\u001a\u0006\bà\u0001\u0010á\u0001R\u0019\u0010ä\u0001\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bã\u0001\u0010º\u0001R\u0019\u0010æ\u0001\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bå\u0001\u0010º\u0001R\u0019\u0010è\u0001\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bç\u0001\u0010º\u0001R!\u0010í\u0001\u001a\u00030é\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\bê\u0001\u0010Á\u0001\u001a\u0006\bë\u0001\u0010ì\u0001R\u001e\u0010ñ\u0001\u001a\t\u0012\u0004\u0012\u00020\t0î\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\bï\u0001\u0010ð\u0001R\u001a\u0010ó\u0001\u001a\u00030Î\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bò\u0001\u0010Ð\u0001R\u0019\u0010õ\u0001\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bô\u0001\u0010º\u0001R\u001a\u0010ù\u0001\u001a\u00030ö\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b÷\u0001\u0010ø\u0001R\u001c\u0010ý\u0001\u001a\u0005\u0018\u00010ú\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bû\u0001\u0010ü\u0001R\u0019\u0010ÿ\u0001\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bþ\u0001\u0010º\u0001R\u0018\u0010\u0083\u0002\u001a\u00030\u0080\u00028\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u0081\u0002\u0010\u0082\u0002¨\u0006\u0085\u0002"}, d2 = {"Lcom/transsion/subroom/activity/MainActivity;", "Lcom/transsion/baseui/activity/BaseActivity;", "Lau/a;", "Lcom/transsion/home/preload/a;", "Lvl/b;", "<init>", "()V", "Landroid/os/Bundle;", "savedInstanceState", "", "onCreate", "(Landroid/os/Bundle;)V", "V0", "()Lau/a;", "", "isTranslucent", "()Z", "isChangeStatusBar", "isStatusDark", "", "statusColor", "()I", "Landroid/content/Intent;", "intent", "onNewIntent", "(Landroid/content/Intent;)V", "onResume", "onBackPressed", "Landroid/content/res/Configuration;", "newConfig", "onConfigurationChanged", "(Landroid/content/res/Configuration;)V", "onDestroy", "Lcom/transsion/home/preload/b;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "()Lcom/transsion/home/preload/b;", "isWhiteFont", "isHomeFragment", "changeStatusFontColor", "(ZZ)V", "requestCode", "resultCode", "data", "onActivityResult", "(IILandroid/content/Intent;)V", "", "", "permissions", "", "grantResults", "onRequestPermissionsResult", "(I[Ljava/lang/String;[I)V", "outState", "onSaveInstanceState", "Landroid/view/MotionEvent;", NotificationCompat.CATEGORY_EVENT, "dispatchTouchEvent", "(Landroid/view/MotionEvent;)Z", "i", "W0", "loadTwoLevelAd", "hasAd", EventConstants.KEY_ACTION, "", "distance", NotificationCompat.CATEGORY_PROGRESS, "onAction", "(Ljava/lang/String;FF)V", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "state", "callback", "setStateCallback", "(Lkotlin/jvm/functions/Function1;)V", "getTipViewBottomMargin", "isShowMemberPushViewTip", "H0", "N0", "x1", "h1", "C1", "Lcom/transsion/home/bean/AppTab;", "homeTab", "I1", "(Lcom/transsion/home/bean/AppTab;)V", "", "Lcom/transsion/home/bean/BottomTabItem;", "bottomTabs", "G0", "(Ljava/util/List;)V", "", "notEmptyBottomTabs", "X0", "I0", "(Ljava/util/List;)Z", "tab", "Lcom/google/android/material/tabs/TabLayout$TabView;", "Lcom/google/android/material/tabs/TabLayout;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "selectedTabItem", "Landroid/view/View;", "S1", "(Lcom/transsion/home/bean/BottomTabItem;Lcom/google/android/material/tabs/TabLayout$TabView;Lcom/transsion/home/bean/BottomTabItem;)Landroid/view/View;", "tabItem", "tabView", "N1", "(Lcom/transsion/home/bean/BottomTabItem;Landroid/view/View;Lcom/transsion/home/bean/BottomTabItem;)V", "tabs", "e1", "Landroidx/fragment/app/Fragment;", "M0", "(Lcom/transsion/home/bean/BottomTabItem;)Landroidx/fragment/app/Fragment;", "R0", "fragment", "tag", "P1", "(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V", "Lcom/google/android/material/tabs/TabLayout$Tab;", "z1", "(Lcom/google/android/material/tabs/TabLayout$Tab;)V", "D1", "(Lcom/transsion/home/bean/BottomTabItem;)V", "tabType", "U0", "(Ljava/lang/String;)I", "tabCode", "T0", "initPlayer", "Y0", NotificationCompat.CATEGORY_STATUS, "size", "O1", "(II)V", "J1", "L1", "vTips", "Landroidx/appcompat/widget/AppCompatTextView;", "tvStatus", "Landroidx/appcompat/widget/AppCompatImageView;", "ivDownloadFail", "Q1", "(Landroid/view/View;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatImageView;I)V", "L0", "R1", "routerPosition", "H1", "(I)V", "G1", "tabId", "S0", "(Ljava/lang/String;I)I", "k1", "bottomMargin", "J0", "(F)V", "isUserAction", "F1", "(Lcom/transsion/home/bean/BottomTabItem;Z)V", "E1", "Z0", "f1", "F0", "(Landroid/view/View;)V", "B1", "A1", "Lny/e;", "a", "Lny/e;", "onDownloadIconStatusListener", "Lcom/transsion/home/fragment/home/HomeFragment;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lcom/transsion/home/fragment/home/HomeFragment;", "homeFragment", "", "c", "Ljava/util/Map;", "mFragments", "Landroidx/fragment/app/Fragment;", "currentFragment", "e", "I", "defaultIndex", "f", "currentFragmentIndex", "g", "Z", "mVideoTabIsWhite", "h", "kidsDialogShown", "widgetDialogShowing", "Lcom/transsnet/loginapi/ILoginApi;", "j", "Lkotlin/Lazy;", "O0", "()Lcom/transsnet/loginapi/ILoginApi;", "mLoginApi", CampaignEx.JSON_KEY_AD_K, "Ljava/lang/String;", "mTopTabCode", "l", "mBottomTabCode", "m", "mInitTabId", "n", "mSecondTabIndex", "", "o", "J", "mBackTime", TtmlNode.TAG_P, "Lcom/transsion/home/preload/b;", "xmlPreload", CampaignEx.JSON_KEY_AD_Q, "Lcom/transsion/home/bean/AppTab;", "mCurrentHomeTab", CampaignEx.JSON_KEY_AD_R, "runOnce", "s", "isShowHotTips", "t", "showHotTabCode", "Ldu/b;", TmcStartParams.KEY_URL_SHORT, "P0", "()Ldu/b;", "mbUpdateManager", "v", "mHomeStatusWhite", "w", "isBottomTabLargeType", "x", "isUserBottomTabClickAction", "Lcom/transsion/usercenter/profile/f;", "y", "Q0", "()Lcom/transsion/usercenter/profile/f;", "noticeViewModel", "Lkotlin/Function0;", "z", "Lkotlin/jvm/functions/Function0;", "onConfigLoadedCallback", "A", "lastClickTime", "B", "isColdStart", "Lcom/transsion/subroom/activity/MainDialogAdManager;", "C", "Lcom/transsion/subroom/activity/MainDialogAdManager;", "mainDialogAdManager", "Lcom/transsion/subroom/activity/SecondFloorHelper;", "D", "Lcom/transsion/subroom/activity/SecondFloorHelper;", "secondFloorHelper", "E", "shouldShowGuide", "com/transsion/subroom/activity/MainActivity$c", "F", "Lcom/transsion/subroom/activity/MainActivity$c;", "hiSdkInitListener", "G", "app_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class MainActivity extends BaseActivity<au.a> implements com.transsion.home.preload.a, vl.b {

    /* JADX INFO: renamed from: A, reason: from kotlin metadata */
    private long lastClickTime;

    /* JADX INFO: renamed from: D, reason: from kotlin metadata */
    private SecondFloorHelper secondFloorHelper;

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private ny.e onDownloadIconStatusListener;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private HomeFragment homeFragment;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private Fragment currentFragment;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private boolean mVideoTabIsWhite;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private boolean kidsDialogShown;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private boolean widgetDialogShowing;

    /* JADX INFO: renamed from: o, reason: collision with root package name and from kotlin metadata */
    private long mBackTime;

    /* JADX INFO: renamed from: p, reason: collision with root package name and from kotlin metadata */
    private com.transsion.home.preload.b xmlPreload;

    /* JADX INFO: renamed from: q, reason: collision with root package name and from kotlin metadata */
    private AppTab mCurrentHomeTab;

    /* JADX INFO: renamed from: r, reason: collision with root package name and from kotlin metadata */
    private boolean runOnce;

    /* JADX INFO: renamed from: w, reason: collision with root package name and from kotlin metadata */
    private boolean isBottomTabLargeType;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private Map mFragments = new LinkedHashMap();

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private int defaultIndex;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private int currentFragmentIndex = this.defaultIndex;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private final Lazy mLoginApi = LazyKt.b(new Function0() { // from class: com.transsion.subroom.activity.p
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return MainActivity.o1();
        }
    });

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    public String mTopTabCode = "UgcTrending";

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    public String mBottomTabCode = BottomTabType.TAB_CODE_HOME;

    /* JADX INFO: renamed from: m, reason: collision with root package name and from kotlin metadata */
    public int mInitTabId = -1;

    /* JADX INFO: renamed from: n, reason: collision with root package name and from kotlin metadata */
    public int mSecondTabIndex = -1;

    /* JADX INFO: renamed from: s, reason: collision with root package name and from kotlin metadata */
    private boolean isShowHotTips = true;

    /* JADX INFO: renamed from: t, reason: collision with root package name and from kotlin metadata */
    private String showHotTabCode = "";

    /* JADX INFO: renamed from: u, reason: collision with root package name and from kotlin metadata */
    private final Lazy mbUpdateManager = LazyKt.b(new Function0() { // from class: com.transsion.subroom.activity.q
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return MainActivity.p1();
        }
    });

    /* JADX INFO: renamed from: v, reason: collision with root package name and from kotlin metadata */
    private boolean mHomeStatusWhite = true;

    /* JADX INFO: renamed from: x, reason: collision with root package name and from kotlin metadata */
    private boolean isUserBottomTabClickAction = true;

    /* JADX INFO: renamed from: y, reason: collision with root package name and from kotlin metadata */
    private final Lazy noticeViewModel = LazyKt.b(new Function0() { // from class: com.transsion.subroom.activity.r
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return MainActivity.q1(this.f54658a);
        }
    });

    /* JADX INFO: renamed from: z, reason: collision with root package name and from kotlin metadata */
    private final Function0 onConfigLoadedCallback = new Function0() { // from class: com.transsion.subroom.activity.s
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return MainActivity.r1(this.f54659a);
        }
    };

    /* JADX INFO: renamed from: B, reason: from kotlin metadata */
    private boolean isColdStart = true;

    /* JADX INFO: renamed from: C, reason: from kotlin metadata */
    private MainDialogAdManager mainDialogAdManager = new MainDialogAdManager();

    /* JADX INFO: renamed from: E, reason: from kotlin metadata */
    private boolean shouldShowGuide = true;

    /* JADX INFO: renamed from: F, reason: from kotlin metadata */
    private final c hiSdkInitListener = new c();

    /* JADX INFO: loaded from: classes6.dex */
    public static final class b extends AbstractCoroutineContextElement implements kotlinx.coroutines.j0 {
        public b(kotlinx.coroutines.j0.a aVar) {
            super(aVar);
        }

        @Override // kotlinx.coroutines.j0
        public void o(CoroutineContext coroutineContext, Throwable th2) {
            lg.a.f68839a.i("MainActivity", "coroutineExceptionHandler " + th2.getMessage(), true);
            th2.printStackTrace();
        }
    }

    /* JADX INFO: loaded from: classes6.dex */
    public static final class c implements com.transsion.ad.hi.a {
        c() {
        }

        @Override // com.transsion.ad.hi.a
        public void onInitSuccess() {
            MainActivity.this.A1();
        }
    }

    /* JADX INFO: loaded from: classes6.dex */
    public static final class d implements ny.e {
        d() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // ny.e
        public void a(int i11, int i12) {
            if (((au.a) MainActivity.this.getMViewBinding()).f16138m.getTabCount() > 3) {
                MainActivity.this.O1(i11, i12);
            }
        }
    }

    /* JADX INFO: loaded from: classes6.dex */
    public static final class e implements TabLayout.OnTabSelectedListener {
        e() {
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        public void onTabReselected(TabLayout.Tab tab) {
            lg.a.C0828a.f(lg.a.f68839a, "MainActivity", "onTabReselected", false, 4, null);
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        public void onTabSelected(TabLayout.Tab tab) {
            lg.a.C0828a.f(lg.a.f68839a, "MainActivity", "onTabSelected --> tag = " + (tab != null ? tab.getTag() : null), false, 4, null);
            MainActivity.this.z1(tab);
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        public void onTabUnselected(TabLayout.Tab tab) {
            lg.a.C0828a.f(lg.a.f68839a, "MainActivity", "onTabUnselected", false, 4, null);
        }
    }

    /* JADX INFO: loaded from: classes6.dex */
    static final class f implements androidx.p009lifecycle.c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f54577a;

        f(Function1 function) {
            Intrinsics.h(function, "function");
            this.f54577a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f54577a;
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
            this.f54577a.invoke(obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void A1() {
        BiddingNativeManager.Companion companion = BiddingNativeManager.f42016y;
        BiddingNativeManager.Companion.b(companion, "VideoStartBidScene", null, 2, null);
        BiddingNativeManager.Companion.b(companion, "DownloadListScene", null, 2, null);
        BiddingNativeManager.Companion.b(companion, "StreamingMediaContentScene", null, 2, null);
        BiddingNativeManager.Companion.b(companion, "DownloadCenterAppDistributionScene", null, 2, null);
        BiddingNativeManager.Companion.b(companion, "SearchHotNativeScene", null, 2, null);
        BiddingIconAdManager.Companion companion2 = BiddingIconAdManager.f41937s;
        BiddingIconAdManager.Companion.b(companion2, "StreamerIconAdScene", null, 2, null);
        companion2.a("StreamVideoBackInterstitialScene", null);
    }

    private final void B1() {
        HiSavanaAdManager hiSavanaAdManager = HiSavanaAdManager.f42117a;
        if (hiSavanaAdManager.i()) {
            A1();
        } else {
            hiSavanaAdManager.e(this.hiSdkInitListener);
        }
    }

    private final void C1() {
        List<BottomTabItem> bottomTabs;
        I1(PreloadTrendingData.f45886n.a().F());
        AppTab appTab = this.mCurrentHomeTab;
        if (appTab == null || (bottomTabs = appTab.getBottomTabs()) == null) {
            return;
        }
        lg.a.C0828a c0828a = lg.a.f68839a;
        AppTab appTab2 = this.mCurrentHomeTab;
        String version = appTab2 != null ? appTab2.getVersion() : null;
        AppTab appTab3 = this.mCurrentHomeTab;
        c0828a.c("PreloadTrending", "bottomTab build from cache1 " + version + " ugcMode " + (appTab3 != null ? Boolean.valueOf(appTab3.isUgcEnabled()) : null), true);
        G0(bottomTabs);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void D1(BottomTabItem selectedTabItem) {
        List<BottomTabItem> bottomTabs;
        TabLayout tabLayout = ((au.a) getMViewBinding()).f16138m;
        int tabCount = tabLayout.getTabCount();
        for (int i11 = 0; i11 < tabCount; i11++) {
            try {
                Result.Companion companion = Result.INSTANCE;
                AppTab appTab = this.mCurrentHomeTab;
                BottomTabItem bottomTabItem = (appTab == null || (bottomTabs = appTab.getBottomTabs()) == null) ? null : (BottomTabItem) CollectionsKt.l0(bottomTabs, i11);
                TabLayout.Tab tabAt = tabLayout.getTabAt(i11);
                N1(bottomTabItem, tabAt != null ? tabAt.view : null, selectedTabItem);
                Result.m454constructorimpl(Unit.f67061a);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m454constructorimpl(ResultKt.a(th2));
            }
        }
    }

    private final void E1() {
        List<BottomTabItem> bottomTabs;
        AppTab appTab = this.mCurrentHomeTab;
        if (appTab == null || (bottomTabs = appTab.getBottomTabs()) == null) {
            return;
        }
        for (BottomTabItem bottomTabItem : bottomTabs) {
            hj.i.f64505a.D("main_page", MapsKt.m(TuplesKt.a(WebConstants.TAB_CODE, bottomTabItem.getBtTabCode()), TuplesKt.a("tab_type", bottomTabItem.getBtTabType()), TuplesKt.a("tab_name", bottomTabItem.getName())));
        }
    }

    private final void F0(View view) {
        Integer num;
        if (view.getId() == R$id.image_red_tips && !com.transsion.baselib.report.launch.b.f43370a.b().getBoolean("k_is_family_mode_badge", true) && (num = (Integer) Q0().h().f()) != null && num.intValue() == 0) {
            view.setVisibility(8);
        }
    }

    private final void F1(BottomTabItem tabItem, boolean isUserAction) {
        hj.i.f64505a.p("main_page", MapsKt.m(TuplesKt.a(WebConstants.TAB_CODE, tabItem != null ? tabItem.getBtTabCode() : null), TuplesKt.a("tab_type", tabItem != null ? tabItem.getBtTabType() : null), TuplesKt.a("tab_name", tabItem != null ? tabItem.getName() : null), TuplesKt.a("tab_user_click", String.valueOf(isUserAction))));
    }

    private final void G0(List bottomTabs) {
        List<BottomTabItem> listU0 = bottomTabs != null ? CollectionsKt.U0(bottomTabs) : null;
        List list = bottomTabs;
        if (list == null || list.isEmpty()) {
            lg.a.f68839a.c("MainActivity", "bottom tabs 异常兜底", true);
            I1(PreloadTrendingData.f45886n.a().A(this));
            AppTab appTab = this.mCurrentHomeTab;
            listU0 = appTab != null ? appTab.getBottomTabs() : null;
        }
        E1();
        e1(listU0);
        X0(listU0);
        Y0();
        J1();
        L1();
        k1();
    }

    private final void G1() {
        if (nh.m.f70474a.e()) {
            return;
        }
        kotlinx.coroutines.k.d(o0.a(y0.c()), null, null, new MainActivity$routerToDownloadsFragment$1(this, null), 3, null);
    }

    private final void H0() {
        ConfigBean configBeanC = sm.f.f75407c.a().c("sa_key_kid_mode_feature_enable", true);
        StartupManager.a aVar = StartupManager.f54503g;
        if (aVar.a().d0() || configBeanC != null) {
            N0();
        } else {
            lg.a.C0828a.f(lg.a.f68839a, "MainActivity", "config not loaded yet, wait for config callback.", false, 4, null);
            aVar.a().z(this.onConfigLoadedCallback);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public final void H1(int routerPosition) {
        TabLayout tabLayout = ((au.a) getMViewBinding()).f16138m;
        this.isUserBottomTabClickAction = false;
        tabLayout.selectTab(tabLayout.getTabAt(routerPosition));
        this.isUserBottomTabClickAction = true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final boolean I0(List bottomTabs) {
        int size = bottomTabs != null ? bottomTabs.size() : 0;
        BottomTabItem bottomTabItem = null;
        if (bottomTabs != null) {
            int size2 = bottomTabs.size() / 2;
            int i11 = 0;
            BottomTabItem bottomTabItem2 = null;
            for (Object obj : bottomTabs) {
                int i12 = i11 + 1;
                if (i11 < 0) {
                    CollectionsKt.u();
                }
                BottomTabItem bottomTabItem3 = (BottomTabItem) obj;
                if (bottomTabItem3.isLargeUiType()) {
                    if (i11 != size2) {
                        Icon icon = bottomTabItem3.getIcon();
                        if (icon != null) {
                            icon.setDefaultBigIcon(null);
                        }
                        Icon icon2 = bottomTabItem3.getIcon();
                        if (icon2 != null) {
                            icon2.setSelectBigIcon(null);
                        }
                    } else {
                        bottomTabItem2 = bottomTabItem3;
                    }
                }
                i11 = i12;
            }
            bottomTabItem = bottomTabItem2;
        }
        this.isBottomTabLargeType = bottomTabItem != null && size % 2 == 1;
        Group largeBottomBg = ((au.a) getMViewBinding()).f16130e;
        Intrinsics.g(largeBottomBg, "largeBottomBg");
        largeBottomBg.setVisibility(this.isBottomTabLargeType ? 0 : 8);
        ImageView tabBg = ((au.a) getMViewBinding()).f16137l;
        Intrinsics.g(tabBg, "tabBg");
        tabBg.setVisibility(this.isBottomTabLargeType ? 8 : 0);
        return bottomTabItem != null;
    }

    private final void I1(AppTab homeTab) {
        this.mCurrentHomeTab = homeTab;
        lg.a.f68839a.c("MainActivity", "setCurrentHomeTab :" + homeTab, true);
        ak.g.f639a.e(homeTab != null ? homeTab.isUgcEnabled() : false);
    }

    private final void J0(float bottomMargin) {
        IMemberApi iMemberApi = (IMemberApi) TheRouter.d(IMemberApi.class, new Object[0]);
        if (iMemberApi != null) {
            iMemberApi.x(bottomMargin);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void J1() {
        TabLayout.TabView tabView;
        final int iT0 = T0(BottomTabType.TAB_CODE_HOME);
        TabLayout.Tab tabAt = ((au.a) getMViewBinding()).f16138m.getTabAt(iT0);
        if (tabAt == null || (tabView = tabAt.view) == null) {
            return;
        }
        tabView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.subroom.activity.k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MainActivity.K1(this.f54648a, iT0, view);
            }
        });
    }

    static /* synthetic */ void K0(MainActivity mainActivity, float f11, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            f11 = 50.0f;
        }
        mainActivity.J0(f11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void K1(MainActivity mainActivity, int i11, View view) {
        if (mainActivity.currentFragmentIndex != i11) {
            return;
        }
        if (System.currentTimeMillis() - mainActivity.lastClickTime >= 500) {
            mainActivity.lastClickTime = System.currentTimeMillis();
            return;
        }
        HomeFragment homeFragment = mainActivity.homeFragment;
        if (homeFragment != null) {
            homeFragment.c1();
        }
        mainActivity.lastClickTime = 0L;
    }

    private final void L0() {
        if (this.runOnce) {
            return;
        }
        this.runOnce = true;
        kotlinx.coroutines.k.d(androidx.p009lifecycle.v.a(this), new b(kotlinx.coroutines.j0.f67892k1), null, new MainActivity$createDelayTask$1(this, null), 2, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void L1() {
        TabLayout.TabView tabView;
        List<BottomTabItem> bottomTabs;
        final int iT0 = T0(BottomTabType.TAB_CODE_COMMUNITY);
        TabLayout.Tab tabAt = ((au.a) getMViewBinding()).f16138m.getTabAt(iT0);
        AppTab appTab = this.mCurrentHomeTab;
        final BottomTabItem bottomTabItem = (appTab == null || (bottomTabs = appTab.getBottomTabs()) == null) ? null : (BottomTabItem) CollectionsKt.l0(bottomTabs, iT0);
        if (tabAt == null || (tabView = tabAt.view) == null) {
            return;
        }
        tabView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.subroom.activity.n
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MainActivity.M1(this.f54653a, iT0, bottomTabItem, view);
            }
        });
    }

    /* JADX WARN: Code duplicated, block: B:37:0x010b  */
    /* JADX WARN: Code duplicated, block: B:39:0x0115  */
    private final Fragment M0(BottomTabItem tabItem) {
        IMemberApi iMemberApi;
        Fragment fragmentB = null;
        if (tabItem == null) {
            return null;
        }
        String btTabType = tabItem.getBtTabType();
        if (Intrinsics.c(btTabType, BottomTabType.HOME.getValue())) {
            lg.a.C0828a.f(lg.a.f68839a, "MainActivity", "createFragment() --> homeFragment", false, 4, null);
            Fragment fragmentK0 = getSupportFragmentManager().k0(tabItem.getBtTabCode());
            return fragmentK0 instanceof HomeFragment ? (HomeFragment) fragmentK0 : new HomeFragment();
        }
        if (Intrinsics.c(btTabType, BottomTabType.SHORT_TV.getValue())) {
            lg.a.C0828a.f(lg.a.f68839a, "MainActivity", "createFragment() --> ShortTVDiscoverFragment", false, 4, null);
            Fragment fragmentK1 = getSupportFragmentManager().k0(tabItem.getBtTabCode());
            return fragmentK1 instanceof ShortTVDiscoverFragment ? (ShortTVDiscoverFragment) fragmentK1 : ShortTVDiscoverFragment.Companion.b(ShortTVDiscoverFragment.INSTANCE, false, null, 2, null);
        }
        if (Intrinsics.c(btTabType, BottomTabType.OPERATION.getValue())) {
            lg.a.C0828a.f(lg.a.f68839a, "MainActivity", "createFragment() --> BottomOpFragment:" + tabItem.getOperateTabId(), false, 4, null);
            Fragment fragmentK2 = getSupportFragmentManager().k0(tabItem.getBtTabCode());
            if (fragmentK2 instanceof BottomOpFragment) {
                return (BottomOpFragment) fragmentK2;
            }
            BottomOpFragment.Companion aVar = BottomOpFragment.INSTANCE;
            Integer operateTabId = tabItem.getOperateTabId();
            return aVar.a(operateTabId != null ? operateTabId.intValue() : HomeTabId.INSTANCE.e(), tabItem.getBtTabCode());
        }
        if (Intrinsics.c(btTabType, BottomTabType.PREMIUM.getValue())) {
            lg.a.C0828a.f(lg.a.f68839a, "MainActivity", "createFragment() --> memberFragment", false, 4, null);
            Fragment fragmentK3 = getSupportFragmentManager().k0(tabItem.getBtTabCode());
            if (fragmentK3 == null) {
                iMemberApi = (IMemberApi) TheRouter.d(IMemberApi.class, new Object[0]);
                if (iMemberApi != null) {
                    fragmentB = iMemberApi.r();
                }
            } else {
                IMemberApi iMemberApi2 = (IMemberApi) TheRouter.d(IMemberApi.class, new Object[0]);
                if (iMemberApi2 != null ? iMemberApi2.j(fragmentK3) : false) {
                    fragmentB = fragmentK3;
                } else {
                    iMemberApi = (IMemberApi) TheRouter.d(IMemberApi.class, new Object[0]);
                    if (iMemberApi != null) {
                        fragmentB = iMemberApi.r();
                    }
                }
            }
        } else {
            if (Intrinsics.c(btTabType, BottomTabType.DOWNLOAD.getValue())) {
                lg.a.C0828a.f(lg.a.f68839a, "MainActivity", "createFragment() --> DownloadMainFragment", false, 4, null);
                Fragment fragmentK4 = getSupportFragmentManager().k0(tabItem.getBtTabCode());
                return fragmentK4 instanceof DownloadMainFragment ? (DownloadMainFragment) fragmentK4 : DownloadMainFragment.INSTANCE.a(0);
            }
            if (!Intrinsics.c(btTabType, BottomTabType.H5TAB.getValue())) {
                if (Intrinsics.c(btTabType, BottomTabType.ME.getValue())) {
                    lg.a.C0828a.f(lg.a.f68839a, "MainActivity", "createFragment() --> MeFragment", false, 4, null);
                    Fragment fragmentK5 = getSupportFragmentManager().k0(tabItem.getBtTabCode());
                    return fragmentK5 instanceof MeFragment ? (MeFragment) fragmentK5 : MeFragment.INSTANCE.a();
                }
                if (Intrinsics.c(btTabType, BottomTabType.ROOM.getValue())) {
                    lg.a.C0828a.f(lg.a.f68839a, "MainActivity", "createFragment() --> BottomRoomFragment", false, 4, null);
                    Fragment fragmentK6 = getSupportFragmentManager().k0(tabItem.getBtTabCode());
                    return fragmentK6 instanceof BottomRoomFragment ? (BottomRoomFragment) fragmentK6 : new BottomRoomFragment();
                }
                if (Intrinsics.c(btTabType, BottomTabType.SUBSCRIPTION.getValue())) {
                    lg.a.C0828a.f(lg.a.f68839a, "MainActivity", "createFragment() --> SubscriptionBottomOpFragment", false, 4, null);
                    Fragment fragmentK7 = getSupportFragmentManager().k0(tabItem.getBtTabCode());
                    return fragmentK7 instanceof SubscriptionBottomOpFragment ? (SubscriptionBottomOpFragment) fragmentK7 : SubscriptionBottomOpFragment.INSTANCE.a(0, "");
                }
                WebFragmentV2 webFragmentV2B = WebFragmentV2.INSTANCE.b();
                webFragmentV2B.setArguments(androidx.core.os.d.b(TuplesKt.a("url", "https://moviebox.ng/home"), TuplesKt.a(WebConstants.FIELD_TOOL_BAR_HIDDEN, Boolean.TRUE)));
                return webFragmentV2B;
            }
            lg.a.C0828a.f(lg.a.f68839a, "MainActivity", "createFragment() --> WebFragmentV2 --> " + tabItem.getUrl(), false, 4, null);
            Fragment fragmentK8 = getSupportFragmentManager().k0(tabItem.getBtTabCode());
            if (fragmentK8 instanceof WebFragmentV2) {
                fragmentB = (WebFragmentV2) fragmentK8;
            } else {
                fragmentB = WebFragmentV2.INSTANCE.b();
                fragmentB.setArguments(androidx.core.os.d.b(TuplesKt.a("url", tabItem.getUrl()), TuplesKt.a(WebConstants.FIELD_TOOL_BAR_HIDDEN, Boolean.TRUE), TuplesKt.a(WebConstants.TAB_CODE, tabItem.getBtTabCode()), TuplesKt.a(WebConstants.BOTTOM_MARGIN, Integer.valueOf((int) getResources().getDimension(R$dimen.tab_bottom_show_height)))));
            }
        }
        return fragmentB;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void M1(MainActivity mainActivity, int i11, BottomTabItem bottomTabItem, View view) {
        if (mainActivity.currentFragmentIndex == i11 && !com.transsion.baseui.util.c.f43504a.a(view.getId(), 1000L)) {
            try {
                Result.Companion companion = Result.INSTANCE;
                Fragment fragmentR0 = mainActivity.R0(bottomTabItem);
                Unit unit = null;
                BottomRoomFragment bottomRoomFragment = fragmentR0 instanceof BottomRoomFragment ? (BottomRoomFragment) fragmentR0 : null;
                if (bottomRoomFragment != null) {
                    bottomRoomFragment.b0();
                    unit = Unit.f67061a;
                }
                Result.m454constructorimpl(unit);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m454constructorimpl(ResultKt.a(th2));
            }
        }
    }

    private final void N0() {
        kotlinx.coroutines.k.d(androidx.p009lifecycle.v.a(this), null, null, new MainActivity$doShowKidsDialog$1(this, null), 3, null);
    }

    private final void N1(BottomTabItem tabItem, View tabView, BottomTabItem selectedTabItem) {
        int iA;
        Typeface typefaceD;
        int color;
        Text text;
        Text text2;
        String defaultIcon;
        String text3;
        Text text4;
        Text text5;
        String selectIcon;
        List<BottomTabItem> bottomTabs;
        if (tabView != null) {
            AppTab appTab = this.mCurrentHomeTab;
            int size = (appTab == null || (bottomTabs = appTab.getBottomTabs()) == null) ? 5 : bottomTabs.size();
            if (size >= 4) {
                tabView.setMinimumWidth(com.blankj.utilcode.util.y.e() / size);
            }
            TnTextView tnTextView = (TnTextView) tabView.findViewById(R$id.tv_tab);
            Unit unit = null;
            if (tnTextView != null) {
                tnTextView.setText(tabItem != null ? tabItem.getName() : null);
            }
            String str = "";
            if (Intrinsics.c(selectedTabItem, tabItem)) {
                if (tabItem != null && (selectIcon = tabItem.getSelectIcon()) != null) {
                    str = selectIcon;
                }
                iA = a.f54627a.b(tabItem);
                Context context = tabView.getContext();
                Intrinsics.g(context, "getContext(...)");
                typefaceD = jg.a.c(context);
                String selectColor = (tabItem == null || (text5 = tabItem.getText()) == null) ? null : text5.getSelectColor();
                if (selectColor == null || selectColor.length() == 0) {
                    color = androidx.core.content.b.getColor(this, R$color.text_01);
                } else {
                    color = Color.parseColor((tabItem == null || (text4 = tabItem.getText()) == null) ? null : text4.getSelectColor());
                }
            } else {
                if (tabItem != null && (defaultIcon = tabItem.getDefaultIcon()) != null) {
                    str = defaultIcon;
                }
                iA = a.f54627a.a(tabItem);
                Context context2 = tabView.getContext();
                Intrinsics.g(context2, "getContext(...)");
                typefaceD = jg.a.d(context2);
                String defaultColor = (tabItem == null || (text2 = tabItem.getText()) == null) ? null : text2.getDefaultColor();
                if (defaultColor == null || defaultColor.length() == 0) {
                    color = androidx.core.content.b.getColor(this, R$color.text_02);
                } else {
                    color = Color.parseColor((tabItem == null || (text = tabItem.getText()) == null) ? null : text.getDefaultColor());
                }
            }
            AppCompatTextView appCompatTextView = (AppCompatTextView) tabView.findViewById(R$id.tv_tab);
            if (appCompatTextView != null) {
                appCompatTextView.setTextColor(color);
                appCompatTextView.setTypeface(typefaceD);
            }
            AppCompatImageView appCompatImageView = (AppCompatImageView) tabView.findViewById(R$id.image_tab_icon);
            if (appCompatImageView != null) {
                float f11 = (tabItem == null || !tabItem.isLargeUiType()) ? 24.0f : 72.0f;
                lg.a.C0828a.f(lg.a.f68839a, "MainActivity", "setTabUI() -->name:" + (tabItem != null ? tabItem.getName() : null) + " drawableUrl = " + str + ", width = " + f11, false, 4, null);
                ej.f.a aVar = ej.f.f61882a;
                Context context3 = appCompatImageView.getContext();
                Intrinsics.g(context3, "getContext(...)");
                aVar.m(context3).g(str).i(iA).m(com.blankj.utilcode.util.a0.a(f11)).d(appCompatImageView);
            }
            AppCompatImageView appCompatImageView2 = (AppCompatImageView) tabView.findViewById(R$id.iv_download_fail);
            if (appCompatImageView2 != null) {
                appCompatImageView2.setImageResource(R$mipmap.ic_download_status_fail_dark);
            }
            AppCompatTextView appCompatTextView2 = (AppCompatTextView) tabView.findViewById(R$id.tv_download_status);
            if (appCompatTextView2 != null) {
                appCompatTextView2.setBackgroundResource(R$drawable.shape_download_icon_status_dark);
            }
            AppCompatTextView appCompatTextView3 = (AppCompatTextView) tabView.findViewById(R$id.tv_red_tips);
            if ((tabItem != null ? tabItem.getBadge() : null) == null || !this.isShowHotTips || com.transsion.baselib.report.launch.b.f43370a.b().getBoolean("tab_hot_tips_is_show", false)) {
                if (appCompatTextView3 != null) {
                    jg.c.g(appCompatTextView3);
                    return;
                }
                return;
            }
            if (appCompatTextView3 != null) {
                jg.c.k(appCompatTextView3);
            }
            if (appCompatTextView3 != null) {
                appCompatTextView3.setText(Utils.a().getString(R$string.bottom_tab_tips_hot));
            }
            try {
                Result.Companion companion = Result.INSTANCE;
                if (appCompatTextView3 != null) {
                    Badge badge = tabItem.getBadge();
                    if (badge == null || (text3 = badge.getText()) == null) {
                        text3 = "Hot";
                    }
                    appCompatTextView3.setText(text3);
                }
                if (appCompatTextView3 != null) {
                    Badge badge2 = tabItem.getBadge();
                    appCompatTextView3.setBackgroundColor(Color.parseColor(badge2 != null ? badge2.getBgHue() : null));
                    unit = Unit.f67061a;
                }
                Result.m454constructorimpl(unit);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m454constructorimpl(ResultKt.a(th2));
            }
            this.showHotTabCode = tabItem.getBtTabCode();
        }
    }

    private final ILoginApi O0() {
        return (ILoginApi) this.mLoginApi.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public final void O1(int status, int size) {
        TabLayout.TabView tabView;
        TabLayout.TabView tabView2;
        TabLayout.TabView tabView3;
        TabLayout.Tab tabAt = ((au.a) getMViewBinding()).f16138m.getTabAt(U0(BottomTabType.DOWNLOAD.getValue()));
        AppCompatImageView appCompatImageView = null;
        View viewFindViewById = (tabAt == null || (tabView3 = tabAt.view) == null) ? null : tabView3.findViewById(R$id.image_red_tips);
        AppCompatTextView appCompatTextView = (tabAt == null || (tabView2 = tabAt.view) == null) ? null : (AppCompatTextView) tabView2.findViewById(R$id.tv_download_status);
        if (tabAt != null && (tabView = tabAt.view) != null) {
            appCompatImageView = (AppCompatImageView) tabView.findViewById(R$id.iv_download_fail);
        }
        if (status == 0) {
            if (viewFindViewById != null) {
                F0(viewFindViewById);
            }
            if (appCompatTextView != null) {
                jg.c.g(appCompatTextView);
            }
            if (appCompatImageView != null) {
                jg.c.g(appCompatImageView);
                return;
            }
            return;
        }
        if (status == 1) {
            if (viewFindViewById != null) {
                F0(viewFindViewById);
            }
            if (appCompatTextView != null) {
                jg.c.g(appCompatTextView);
            }
            if (appCompatImageView != null) {
                jg.c.g(appCompatImageView);
                return;
            }
            return;
        }
        if (status == 2) {
            if (appCompatImageView != null) {
                jg.c.k(appCompatImageView);
            }
            if (viewFindViewById != null) {
                F0(viewFindViewById);
            }
            if (appCompatTextView != null) {
                jg.c.g(appCompatTextView);
                return;
            }
            return;
        }
        if (status == 4) {
            Q1(viewFindViewById, appCompatTextView, appCompatImageView, size);
            return;
        }
        if (status == 5) {
            Q1(viewFindViewById, appCompatTextView, appCompatImageView, size);
        } else if (status == 6 && viewFindViewById != null && jg.c.i(viewFindViewById)) {
            F0(viewFindViewById);
        }
    }

    private final du.b P0() {
        return (du.b) this.mbUpdateManager.getValue();
    }

    private final void P1(Fragment fragment, String tag) {
        if (Intrinsics.c(this.currentFragment, fragment)) {
            return;
        }
        lg.a.f68839a.c("MainActivity", "showFragment() --> tag:" + tag + " isAdded:" + fragment.isAdded(), true);
        androidx.fragment.app.w wVarP = getSupportFragmentManager().p();
        Fragment fragment2 = this.currentFragment;
        if (fragment2 != null) {
            wVarP.p(fragment2);
        }
        this.currentFragment = fragment;
        if (fragment.isAdded()) {
            wVarP.y(fragment);
            wVarP.l();
        } else {
            wVarP.c(com.transsion.subroom.R$id.container, fragment, tag);
            wVarP.y(fragment);
            wVarP.l();
        }
    }

    private final com.transsion.usercenter.profile.f Q0() {
        return (com.transsion.usercenter.profile.f) this.noticeViewModel.getValue();
    }

    private final void Q1(View vTips, AppCompatTextView tvStatus, AppCompatImageView ivDownloadFail, int size) {
        if (vTips != null) {
            F0(vTips);
        }
        if (ivDownloadFail != null) {
            jg.c.g(ivDownloadFail);
        }
        if (size <= 0) {
            if (tvStatus != null) {
                jg.c.g(tvStatus);
            }
        } else {
            String strValueOf = size > 99 ? "99+" : String.valueOf(size);
            if (tvStatus != null) {
                jg.c.k(tvStatus);
            }
            if (tvStatus != null) {
                tvStatus.setText(strValueOf);
            }
        }
    }

    private final Fragment R0(BottomTabItem tabItem) {
        String btTabCode;
        if (tabItem == null || (btTabCode = tabItem.getBtTabCode()) == null) {
            return null;
        }
        Fragment fragment = (Fragment) this.mFragments.get(btTabCode);
        if (fragment != null) {
            return fragment;
        }
        Fragment fragmentK0 = getSupportFragmentManager().k0(btTabCode);
        if (fragmentK0 != null) {
            this.mFragments.put(btTabCode, fragmentK0);
            if (fragmentK0 instanceof HomeFragment) {
                this.homeFragment = (HomeFragment) fragmentK0;
            }
            return fragmentK0;
        }
        Fragment fragmentM0 = M0(tabItem);
        if (fragmentM0 != null) {
            this.mFragments.put(btTabCode, fragmentM0);
            if (fragmentM0 instanceof HomeFragment) {
                this.homeFragment = (HomeFragment) fragmentM0;
            }
            if (Intrinsics.c(tabItem.getBtTabType(), BottomTabType.NOVEL.getValue())) {
                uj.a.f76760a.d(this);
            }
        }
        return fragmentM0;
    }

    private final void R1() {
        HomeFragment homeFragment;
        BottomTabItem bottomTabItem;
        int iS0 = S0(this.mBottomTabCode, this.mInitTabId);
        AppTab appTab = this.mCurrentHomeTab;
        String btTabCode = null;
        List<BottomTabItem> bottomTabs = appTab != null ? appTab.getBottomTabs() : null;
        if (iS0 >= (bottomTabs != null ? bottomTabs.size() : 0) || iS0 < 0) {
            return;
        }
        if (iS0 != this.currentFragmentIndex) {
            H1(iS0);
        }
        if (bottomTabs != null && (bottomTabItem = bottomTabs.get(iS0)) != null) {
            btTabCode = bottomTabItem.getBtTabCode();
        }
        if (!Intrinsics.c(btTabCode, BottomTabType.TAB_CODE_HOME) || (homeFragment = this.homeFragment) == null) {
            return;
        }
        homeFragment.u1(this.mTopTabCode, this.mSecondTabIndex);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int S0(String tabCode, int tabId) {
        List<BottomTabItem> bottomTabs;
        if (tabId >= 0 && tabId < 5) {
            tabCode = BottomTabType.TAB_CODE_HOME;
            if (tabId != 0 && tabId != 1) {
                if (tabId == 2) {
                    tabCode = BottomTabType.TAB_CODE_SHORT_TV;
                } else if (tabId == 3) {
                    tabCode = BottomTabType.TAB_CODE_ME;
                } else if (tabId == 4) {
                    tabCode = BottomTabType.TAB_CODE_PREMIUM;
                } else if (tabId == 5) {
                    tabCode = BottomTabType.TAB_CODE_MUSIC;
                }
            }
        }
        AppTab appTab = this.mCurrentHomeTab;
        int i11 = 0;
        if (appTab != null && (bottomTabs = appTab.getBottomTabs()) != null) {
            int i12 = 0;
            for (Object obj : bottomTabs) {
                int i13 = i12 + 1;
                if (i12 < 0) {
                    CollectionsKt.u();
                }
                if (Intrinsics.c(((BottomTabItem) obj).getBtTabCode(), tabCode)) {
                    i11 = i12;
                }
                i12 = i13;
            }
        }
        return i11;
    }

    private final View S1(BottomTabItem tab, TabLayout.TabView view, BottomTabItem selectedTabItem) {
        View viewInflate = LayoutInflater.from(this).inflate(tab.isLargeUiType() ? R$layout.layout_center_bottom_tab : com.transsion.home.R$layout.tab_bottom, (ViewGroup) view, false);
        N1(tab, viewInflate, selectedTabItem);
        Intrinsics.g(viewInflate, "apply(...)");
        return viewInflate;
    }

    private final int T0(String tabCode) {
        List<BottomTabItem> bottomTabs;
        AppTab appTab = this.mCurrentHomeTab;
        int i11 = -1;
        if (appTab != null && (bottomTabs = appTab.getBottomTabs()) != null) {
            int i12 = 0;
            for (Object obj : bottomTabs) {
                int i13 = i12 + 1;
                if (i12 < 0) {
                    CollectionsKt.u();
                }
                if (Intrinsics.c(((BottomTabItem) obj).getBtTabCode(), tabCode)) {
                    i11 = i12;
                }
                i12 = i13;
            }
        }
        return i11;
    }

    private final int U0(String tabType) {
        List<BottomTabItem> bottomTabs;
        AppTab appTab = this.mCurrentHomeTab;
        int i11 = 0;
        if (appTab != null && (bottomTabs = appTab.getBottomTabs()) != null) {
            int i12 = 0;
            for (Object obj : bottomTabs) {
                int i13 = i12 + 1;
                if (i12 < 0) {
                    CollectionsKt.u();
                }
                if (Intrinsics.c(((BottomTabItem) obj).getBtTabType(), tabType)) {
                    i11 = i12;
                }
                i12 = i13;
            }
        }
        return i11;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void X0(List notEmptyBottomTabs) {
        ((au.a) getMViewBinding()).f16138m.removeAllTabs();
        com.transsion.baselib.report.launch.b bVar = com.transsion.baselib.report.launch.b.f43370a;
        String string = bVar.b().getString("tab_hot_tips_version", "");
        AppTab appTab = this.mCurrentHomeTab;
        if (appTab != null && !TextUtils.equals(string, appTab.getBadgeVer())) {
            bVar.b().putBoolean("tab_hot_tips_is_show", false);
        }
        I0(notEmptyBottomTabs);
        this.isUserBottomTabClickAction = false;
        if (this.currentFragmentIndex >= (notEmptyBottomTabs != null ? notEmptyBottomTabs.size() : 0)) {
            this.currentFragmentIndex = this.defaultIndex;
        }
        if (notEmptyBottomTabs != null) {
            int i11 = 0;
            for (Object obj : notEmptyBottomTabs) {
                int i12 = i11 + 1;
                if (i11 < 0) {
                    CollectionsKt.u();
                }
                BottomTabItem bottomTabItem = (BottomTabItem) obj;
                TabLayout tabLayout = ((au.a) getMViewBinding()).f16138m;
                TabLayout.Tab tabNewTab = ((au.a) getMViewBinding()).f16138m.newTab();
                tabNewTab.setTag(bottomTabItem.getBtTabCode());
                TabLayout.TabView view = tabNewTab.view;
                Intrinsics.g(view, "view");
                tabNewTab.setCustomView(S1(bottomTabItem, view, (BottomTabItem) notEmptyBottomTabs.get(this.currentFragmentIndex)));
                tabLayout.addTab(tabNewTab, this.currentFragmentIndex == i11);
                i11 = i12;
            }
        }
        this.isUserBottomTabClickAction = true;
        f1();
    }

    private final void Y0() {
        this.onDownloadIconStatusListener = new d();
        DownloadStatusIconManager.a aVar = DownloadStatusIconManager.f59462h;
        DownloadStatusIconManager downloadStatusIconManagerA = aVar.a();
        ny.e eVar = this.onDownloadIconStatusListener;
        Intrinsics.f(eVar, "null cannot be cast to non-null type com.transsnet.downloader.callback.OnDownloadIconStatusListener");
        downloadStatusIconManagerA.o(eVar);
        aVar.a().r();
    }

    private final void Z0() {
        Function1 function1 = new Function1() { // from class: com.transsion.subroom.activity.t
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return MainActivity.a1(this.f54660a, (aq.f) obj);
            }
        };
        AppScopeVMlProvider appScopeVMlProvider = AppScopeVMlProvider.INSTANCE;
        FlowEventBus flowEventBus = (FlowEventBus) appScopeVMlProvider.getApplicationScopeViewModel(FlowEventBus.class);
        String name = aq.f.class.getName();
        Intrinsics.g(name, "getName(...)");
        Lifecycle.State state = Lifecycle.State.CREATED;
        flowEventBus.observeEvent(this, name, state, y0.c().q(), false, function1);
        Function1 function2 = new Function1() { // from class: com.transsion.subroom.activity.u
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return MainActivity.b1(this.f54661a, (cx.a) obj);
            }
        };
        FlowEventBus flowEventBus2 = (FlowEventBus) appScopeVMlProvider.getApplicationScopeViewModel(FlowEventBus.class);
        String name2 = cx.a.class.getName();
        Intrinsics.g(name2, "getName(...)");
        flowEventBus2.observeEvent(this, name2, state, y0.c().q(), false, function2);
        Function1 function3 = new Function1() { // from class: com.transsion.subroom.activity.v
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return MainActivity.c1(this.f54662a, (ak.n) obj);
            }
        };
        FlowEventBus flowEventBus3 = (FlowEventBus) appScopeVMlProvider.getApplicationScopeViewModel(FlowEventBus.class);
        String name3 = ak.n.class.getName();
        Intrinsics.g(name3, "getName(...)");
        flowEventBus3.observeEvent(this, name3, state, y0.c().q(), false, function3);
        Function1 function4 = new Function1() { // from class: com.transsion.subroom.activity.w
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return MainActivity.d1(this.f54663a, (vl.a) obj);
            }
        };
        FlowEventBus flowEventBus4 = (FlowEventBus) appScopeVMlProvider.getApplicationScopeViewModel(FlowEventBus.class);
        String name4 = vl.a.class.getName();
        Intrinsics.g(name4, "getName(...)");
        flowEventBus4.observeEvent(this, name4, state, y0.c().q(), false, function4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit a1(MainActivity mainActivity, aq.f it) {
        Intrinsics.h(it, "it");
        com.transsion.room.helper.n.f51635a.c(mainActivity);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit b1(MainActivity mainActivity, cx.a it) {
        Intrinsics.h(it, "it");
        mainActivity.currentFragmentIndex = mainActivity.defaultIndex;
        PreloadTrendingData.a aVar = PreloadTrendingData.f45886n;
        aVar.a().z();
        aVar.a().Q("");
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit c1(MainActivity mainActivity, ak.n it) {
        Intrinsics.h(it, "it");
        mainActivity.currentFragmentIndex = mainActivity.defaultIndex;
        PreloadTrendingData.a aVar = PreloadTrendingData.f45886n;
        aVar.a().z();
        aVar.a().G();
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit d1(MainActivity mainActivity, vl.a it) {
        Intrinsics.h(it, "it");
        mainActivity.currentFragmentIndex = mainActivity.defaultIndex;
        PreloadTrendingData.a aVar = PreloadTrendingData.f45886n;
        aVar.a().z();
        aVar.a().Q("");
        return Unit.f67061a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void e1(List tabs) {
        String btTabCode;
        String btTabCode2;
        lg.a.C0828a c0828a = lg.a.f68839a;
        lg.a.C0828a.f(c0828a, "MainActivity", "initFragment() --> 初始化Fragment数据，延迟加载模式", false, 4, null);
        getSupportFragmentManager().l1(null, 1);
        this.mFragments.clear();
        this.homeFragment = null;
        if (this.currentFragmentIndex >= (tabs != null ? tabs.size() : 0)) {
            c0828a.i("MainActivity", "showFragment index error : " + this.currentFragmentIndex + ", ", true);
            return;
        }
        BottomTabItem bottomTabItem = tabs != null ? (BottomTabItem) tabs.get(this.currentFragmentIndex) : null;
        if (bottomTabItem != null && bottomTabItem.isOpenLandPage()) {
            String url = bottomTabItem.getUrl();
            if (url != null) {
                ak.k.h(url, null, 1, null);
            }
            TabLayout tabLayout = ((au.a) getMViewBinding()).f16138m;
            this.isUserBottomTabClickAction = false;
            tabLayout.selectTab(tabLayout.getTabAt(this.currentFragmentIndex));
            this.isUserBottomTabClickAction = true;
            return;
        }
        Fragment fragmentM0 = M0(bottomTabItem);
        if (fragmentM0 != null) {
            Map map = this.mFragments;
            String str = "";
            if (bottomTabItem == null || (btTabCode = bottomTabItem.getBtTabCode()) == null) {
                btTabCode = "";
            }
            map.put(btTabCode, fragmentM0);
            if (fragmentM0 instanceof HomeFragment) {
                this.homeFragment = (HomeFragment) fragmentM0;
            }
            if (bottomTabItem != null && (btTabCode2 = bottomTabItem.getBtTabCode()) != null) {
                str = btTabCode2;
            }
            P1(fragmentM0, str);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void f1() {
        TabLayout.Tab tabAt;
        TabLayout.TabView tabView;
        final ImageView imageView;
        int iU0 = U0(BottomTabType.ME.getValue());
        if (!com.transsion.baselib.report.launch.b.f43370a.b().getBoolean("k_is_family_mode_badge", true) || (tabAt = ((au.a) getMViewBinding()).f16138m.getTabAt(iU0)) == null || (tabView = tabAt.view) == null || (imageView = (ImageView) tabView.findViewById(R$id.image_red_tips)) == null) {
            return;
        }
        jg.c.k(imageView);
        Function1 function1 = new Function1() { // from class: com.transsion.subroom.activity.l
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return MainActivity.g1(this.f54650a, imageView, (cx.b) obj);
            }
        };
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = cx.b.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.observeEvent(this, name, Lifecycle.State.CREATED, y0.c().q(), false, function1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit g1(MainActivity mainActivity, ImageView imageView, cx.b it) {
        Intrinsics.h(it, "it");
        mainActivity.F0(imageView);
        return Unit.f67061a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void h1() {
        lg.a.C0828a.f(lg.a.f68839a, "MainActivity", "initTabs() --> 开始创建Tab了", false, 4, null);
        ((au.a) getMViewBinding()).f16138m.addOnTabSelectedListener((TabLayout.OnTabSelectedListener) new e());
        C1();
        PreloadTrendingData.a aVar = PreloadTrendingData.f45886n;
        aVar.a().C().j(this, new f(new Function1() { // from class: com.transsion.subroom.activity.h
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return MainActivity.i1(this.f54641a, (AppTab) obj);
            }
        }));
        aVar.a().D().j(this, new f(new Function1() { // from class: com.transsion.subroom.activity.i
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return MainActivity.j1(this.f54643a, (AppTab) obj);
            }
        }));
        if (aVar.a().M()) {
            return;
        }
        aVar.a().z();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:14:0x0023  */
    /* JADX WARN: Code duplicated, block: B:16:0x002c  */
    /* JADX WARN: Code duplicated, block: B:17:0x0031  */
    /* JADX WARN: Code duplicated, block: B:20:0x0036  */
    /* JADX WARN: Code duplicated, block: B:21:0x003f  */
    /* JADX WARN: Code duplicated, block: B:24:0x0061  */
    public static final Unit i1(MainActivity mainActivity, AppTab appTab) {
        AppTab appTab2;
        String version;
        AppTab appTab3;
        Boolean boolValueOf;
        if (mainActivity.mCurrentHomeTab == null) {
            mainActivity.I1(appTab);
            lg.a.C0828a c0828a = lg.a.f68839a;
            appTab2 = mainActivity.mCurrentHomeTab;
            if (appTab2 != null) {
                version = appTab2.getVersion();
            } else {
                version = null;
            }
            appTab3 = mainActivity.mCurrentHomeTab;
            if (appTab3 != null) {
                boolValueOf = Boolean.valueOf(appTab3.isUgcEnabled());
            } else {
                boolValueOf = null;
            }
            c0828a.c("PreloadTrending", "bottomTab build from cache2: " + version + " ugcMode " + boolValueOf, true);
            mainActivity.G0(appTab != null ? appTab.getBottomTabs() : null);
        } else {
            if ((appTab != null ? appTab.getVersion() : null) != null) {
                String version2 = appTab.getVersion();
                AppTab appTab4 = mainActivity.mCurrentHomeTab;
                if (!Intrinsics.c(version2, appTab4 != null ? appTab4.getVersion() : null)) {
                    mainActivity.I1(appTab);
                    lg.a.C0828a c0828a2 = lg.a.f68839a;
                    appTab2 = mainActivity.mCurrentHomeTab;
                    if (appTab2 != null) {
                        version = appTab2.getVersion();
                    } else {
                        version = null;
                    }
                    appTab3 = mainActivity.mCurrentHomeTab;
                    if (appTab3 != null) {
                        boolValueOf = Boolean.valueOf(appTab3.isUgcEnabled());
                    } else {
                        boolValueOf = null;
                    }
                    c0828a2.c("PreloadTrending", "bottomTab build from cache2: " + version + " ugcMode " + boolValueOf, true);
                    mainActivity.G0(appTab != null ? appTab.getBottomTabs() : null);
                }
            }
        }
        return Unit.f67061a;
    }

    private final void initPlayer() {
        bo.b.f16639a.d(new bo.d(RenderType.SURFACE_VIEW, false, 0, 0, 0, 0, 0, 0, 0L, 0, 0, false, false, false, false, false, null, 131070, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit j1(MainActivity mainActivity, AppTab appTab) {
        List<BottomTabItem> bottomTabs;
        lg.a.C0828a c0828a = lg.a.f68839a;
        c0828a.c("PreloadTrending", "bottomTab has observed " + (appTab != null ? appTab.getVersion() : null) + " " + (appTab != null ? appTab.getBottomTabs() : null) + " ugcMode" + (appTab != null ? Boolean.valueOf(appTab.isUgcEnabled()) : null), true);
        if ((appTab != null ? appTab.getVersion() : null) != null) {
            String version = appTab.getVersion();
            AppTab appTab2 = mainActivity.mCurrentHomeTab;
            if (!Intrinsics.c(version, appTab2 != null ? appTab2.getVersion() : null) && (bottomTabs = appTab.getBottomTabs()) != null && !bottomTabs.isEmpty()) {
                mainActivity.I1(appTab);
                AppTab appTab3 = mainActivity.mCurrentHomeTab;
                lg.a.C0828a.f(c0828a, "PreloadTrending", "bottomTab build from net:" + (appTab3 != null ? appTab3.getBottomTabs() : null), false, 4, null);
                mainActivity.G0(appTab.getBottomTabs());
            }
        }
        return Unit.f67061a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void k1() {
        TabLayout.Tab tabAt = ((au.a) getMViewBinding()).f16138m.getTabAt(U0(BottomTabType.ME.getValue()));
        final TabLayout.TabView tabView = tabAt != null ? tabAt.view : null;
        if (tabView != null) {
            tabView.post(new Runnable() { // from class: com.transsion.subroom.activity.j
                @Override // java.lang.Runnable
                public final void run() {
                    MainActivity.l1(this.f54645a, tabView);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l1(final MainActivity mainActivity, final TabLayout.TabView tabView) {
        mainActivity.Q0().h().j(mainActivity, new f(new Function1() { // from class: com.transsion.subroom.activity.o
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return MainActivity.m1(tabView, mainActivity, (Integer) obj);
            }
        }));
        mainActivity.Q0().d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit m1(TabLayout.TabView tabView, MainActivity mainActivity, Integer num) {
        View viewFindViewById = tabView.findViewById(R$id.image_red_tips);
        if (viewFindViewById != null) {
            if (num.intValue() > 0) {
                jg.c.k(viewFindViewById);
            } else {
                mainActivity.F0(viewFindViewById);
            }
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit n1(MainActivity mainActivity) {
        lg.a.C0828a.f(lg.a.f68839a, "MainActivity", "MainActivity second floor guide finished", false, 4, null);
        mainActivity.mainDialogAdManager.E(mainActivity);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ILoginApi o1() {
        return (ILoginApi) TheRouter.d(ILoginApi.class, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final du.b p1() {
        return new du.b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final com.transsion.usercenter.profile.f q1(MainActivity mainActivity) {
        return (com.transsion.usercenter.profile.f) new v0(mainActivity).a(com.transsion.usercenter.profile.f.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit r1(final MainActivity mainActivity) {
        mainActivity.runOnUiThread(new Runnable() { // from class: com.transsion.subroom.activity.c
            @Override // java.lang.Runnable
            public final void run() {
                MainActivity.s1(this.f54633a);
            }
        });
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s1(MainActivity mainActivity) {
        if (mainActivity.isDestroyed() || mainActivity.isFinishing()) {
            return;
        }
        mainActivity.N0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void t1(MainActivity mainActivity) {
        final ILoginApi iLoginApiO0 = mainActivity.O0();
        hr.a aVar = hr.a.f64825a;
        String string = mainActivity.getString(com.transsion.baseui.R$string.base_app_name);
        Intrinsics.g(string, "getString(...)");
        aVar.d(string, new Function0() { // from class: com.transsion.subroom.activity.e
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return MainActivity.u1(iLoginApiO0);
            }
        }, new Function4() { // from class: com.transsion.subroom.activity.f
            @Override // kotlin.jvm.functions.Function4
            public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
                return MainActivity.v1((Context) obj, (String) obj2, (String) obj3, (com.transsion.share.share.a) obj4);
            }
        }, new Function1() { // from class: com.transsion.subroom.activity.g
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return MainActivity.w1((String) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String u1(ILoginApi iLoginApi) {
        UserInfo userInfoI;
        if (iLoginApi == null || (userInfoI = iLoginApi.i()) == null) {
            return null;
        }
        return userInfoI.getUserId();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit v1(Context content, String str, String mSubjectId, com.transsion.share.share.a aVar) {
        Intrinsics.h(content, "content");
        Intrinsics.h(mSubjectId, "mSubjectId");
        ReportDialog reportDialogA = ReportDialog.INSTANCE.a(str, mSubjectId);
        reportDialogA.A0(aVar);
        reportDialogA.k0(content, "report");
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit w1(String it) {
        Intrinsics.h(it, "it");
        com.tn.lib.widget.toast.core.h.f41479a.l(it);
        return Unit.f67061a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void x1() {
        lg.a.C0828a.f(lg.a.f68839a, "MainActivity", "onCreateNext() --> 首页开始初始化了", false, 4, null);
        h1();
        initPlayer();
        ((au.a) getMViewBinding()).f16129d.setBackgroundResource(R$color.bg_04);
        G1();
        if (!tp.e.f76335a.f(this, NoticePermissionFrom.APP_START)) {
            this.widgetDialogShowing = com.transsion.mbwidget.d.f46239a.i(new Function0() { // from class: com.transsion.subroom.activity.d
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return MainActivity.y1(this.f54635a);
                }
            });
        }
        IMemberApi iMemberApi = (IMemberApi) TheRouter.d(IMemberApi.class, new Object[0]);
        if (iMemberApi != null) {
            iMemberApi.h();
        }
        ox.e.f72197a.b().e();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit y1(MainActivity mainActivity) {
        mainActivity.widgetDialogShowing = false;
        if (!mainActivity.kidsDialogShown) {
            mainActivity.kidsDialogShown = true;
            mainActivity.H0();
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public final void z1(TabLayout.Tab tab) {
        String btTabCode;
        if (tab == null) {
            return;
        }
        IMemberApi iMemberApi = (IMemberApi) TheRouter.d(IMemberApi.class, new Object[0]);
        if (iMemberApi != null) {
            iMemberApi.G();
        }
        AppTab appTab = this.mCurrentHomeTab;
        List<BottomTabItem> bottomTabs = appTab != null ? appTab.getBottomTabs() : null;
        int size = bottomTabs != null ? bottomTabs.size() : 0;
        int position = tab.getPosition();
        if (position < 0 || position >= size) {
            return;
        }
        BottomTabItem bottomTabItem = bottomTabs != null ? (BottomTabItem) CollectionsKt.l0(bottomTabs, tab.getPosition()) : null;
        F1(bottomTabItem, this.isUserBottomTabClickAction);
        if (bottomTabItem != null && bottomTabItem.isOpenLandPage()) {
            String url = bottomTabItem.getUrl();
            if (url != null) {
                ak.k.h(url, null, 1, null);
            }
            TabLayout tabLayout = ((au.a) getMViewBinding()).f16138m;
            this.isUserBottomTabClickAction = false;
            tabLayout.selectTab(tabLayout.getTabAt(this.currentFragmentIndex));
            this.isUserBottomTabClickAction = true;
            return;
        }
        if (Intrinsics.c(bottomTabItem != null ? bottomTabItem.getBtTabCode() : null, this.showHotTabCode)) {
            this.isShowHotTips = false;
            com.transsion.baselib.report.launch.b bVar = com.transsion.baselib.report.launch.b.f43370a;
            MMKV mmkvB = bVar.b();
            AppTab appTab2 = this.mCurrentHomeTab;
            mmkvB.putString("tab_hot_tips_version", appTab2 != null ? appTab2.getBadgeVer() : null);
            bVar.b().putBoolean("tab_hot_tips_is_show", true);
        }
        D1(bottomTabItem);
        this.currentFragmentIndex = tab.getPosition();
        Fragment fragmentR0 = R0(bottomTabItem);
        if (fragmentR0 == null) {
            lg.a.f68839a.i("MainActivity", "onTabSelected() --> fragment is null for tab:" + (bottomTabItem != null ? bottomTabItem.getBtTabCode() : null), true);
            return;
        }
        if (bottomTabItem == null || (btTabCode = bottomTabItem.getBtTabCode()) == null) {
            btTabCode = "";
        }
        P1(fragmentR0, btTabCode);
        String btTabType = bottomTabItem != null ? bottomTabItem.getBtTabType() : null;
        BottomTabType bottomTabType = BottomTabType.HOME;
        if (Intrinsics.c(btTabType, bottomTabType.getValue())) {
            BaseActivity.changeStatusFontColor$default(this, this.mHomeStatusWhite, false, 2, null);
        } else {
            BaseActivity.changeStatusFontColor$default(this, bottomTabItem != null && bottomTabItem.getStatusWhite(), false, 2, null);
        }
        if (!Intrinsics.c(bottomTabItem != null ? bottomTabItem.getBtTabType() : null, bottomTabType.getValue())) {
            if (!Intrinsics.c(bottomTabItem != null ? bottomTabItem.getBtTabType() : null, BottomTabType.PREMIUM.getValue())) {
                K0(this, 0.0f, 1, null);
            }
        }
        if (Intrinsics.c(bottomTabItem != null ? bottomTabItem.getBtTabType() : null, BottomTabType.DOWNLOAD.getValue())) {
            O1(6, 0);
        }
    }

    @Override // com.transsion.baseui.activity.BaseCommonActivity
    /* JADX INFO: renamed from: V0, reason: merged with bridge method [inline-methods] */
    public au.a getViewBinding() {
        au.a aVarC = au.a.c(getLayoutInflater());
        Intrinsics.g(aVarC, "inflate(...)");
        return aVarC;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void W0() {
        SecondFloorHelper secondFloorHelper = new SecondFloorHelper((au.a) getMViewBinding());
        this.secondFloorHelper = secondFloorHelper;
        boolean zS = secondFloorHelper.S();
        this.shouldShowGuide = zS;
        if (zS) {
            return;
        }
        this.isColdStart = false;
    }

    @Override // com.transsion.baseui.activity.BaseActivity
    public void changeStatusFontColor(boolean isWhiteFont, boolean isHomeFragment) {
        if (isHomeFragment) {
            this.mHomeStatusWhite = isWhiteFont;
        }
        super.changeStatusFontColor(isWhiteFont, isHomeFragment);
    }

    @Override // com.transsion.home.preload.a
    /* JADX INFO: renamed from: d, reason: from getter */
    public com.transsion.home.preload.b getXmlPreload() {
        return this.xmlPreload;
    }

    @Override // com.transsion.baseui.activity.BaseActivity, com.transsion.baseui.activity.BaseMusicFloatActivity, android.app.Activity, android.view.Window.Callback
    public boolean dispatchTouchEvent(MotionEvent event) {
        if (event != null && event.getAction() == 0) {
            com.transsion.home.view.g gVar = com.transsion.home.view.g.f45784a;
            if (!gVar.a()) {
                gVar.e(true);
            }
        }
        return super.dispatchTouchEvent(event);
    }

    @Override // com.transsion.baseui.activity.BaseMusicFloatActivity
    public int getTipViewBottomMargin() {
        return ImmersionBar.hasNavigationBar((Activity) this) ? com.blankj.utilcode.util.a0.a(68.0f) + ImmersionBar.getNavigationBarHeight((Activity) this) : com.blankj.utilcode.util.a0.a(68.0f);
    }

    @Override // com.transsion.baseui.activity.BaseActivity
    public boolean hasAd() {
        SecondFloorHelper secondFloorHelper = this.secondFloorHelper;
        if (secondFloorHelper != null) {
            return secondFloorHelper.Q();
        }
        return false;
    }

    @Override // vl.b
    /* JADX INFO: renamed from: i, reason: from getter */
    public boolean getIsBottomTabLargeType() {
        return this.isBottomTabLargeType;
    }

    @Override // com.transsion.baseui.activity.BaseActivity
    public boolean isChangeStatusBar() {
        return false;
    }

    @Override // com.transsion.baseui.activity.BaseMusicFloatActivity
    public boolean isShowMemberPushViewTip() {
        return true;
    }

    @Override // com.transsion.baseui.activity.BaseActivity
    public boolean isStatusDark() {
        return false;
    }

    @Override // com.transsion.baseui.activity.BaseActivity
    public boolean isTranslucent() {
        return true;
    }

    @Override // com.transsion.baseui.activity.BaseActivity
    public void loadTwoLevelAd() {
        SecondFloorHelper secondFloorHelper;
        if (this.shouldShowGuide && (secondFloorHelper = this.secondFloorHelper) != null) {
            secondFloorHelper.Z(new Function0() { // from class: com.transsion.subroom.activity.b
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return MainActivity.n1(this.f54630a);
                }
            });
        }
        SecondFloorHelper secondFloorHelper2 = this.secondFloorHelper;
        if (secondFloorHelper2 != null) {
            SecondFloorHelper.V(secondFloorHelper2, this.shouldShowGuide, false, 2, null);
        }
        this.shouldShowGuide = false;
    }

    @Override // com.transsion.baseui.activity.BaseActivity
    public void onAction(String action, float distance, float progress) {
        Intrinsics.h(action, "action");
        SecondFloorHelper secondFloorHelper = this.secondFloorHelper;
        if (secondFloorHelper != null) {
            secondFloorHelper.X(action, distance, progress);
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        P0().a(requestCode, resultCode, data);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        HomeFragment homeFragment;
        HomeFragment homeFragment2;
        com.transsion.subroom.deeplink.b bVar = com.transsion.subroom.deeplink.b.f54673a;
        if (bVar.a()) {
            bVar.b(false);
            super.onBackPressed();
            return;
        }
        Fragment fragment = this.currentFragment;
        if (fragment instanceof WebFragmentV2) {
            Intrinsics.f(fragment, "null cannot be cast to non-null type com.transsion.web.fragment.WebFragmentV2");
            if (((WebFragmentV2) fragment).u1()) {
                return;
            }
        }
        Fragment fragment2 = this.currentFragment;
        if (fragment2 instanceof HomeFragment) {
            Intrinsics.f(fragment2, "null cannot be cast to non-null type com.transsion.home.fragment.home.HomeFragment");
            if (((HomeFragment) fragment2).Y0()) {
                return;
            }
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - this.mBackTime <= TimeUnit.SECONDS.toMillis(3L)) {
            super.onBackPressed();
            return;
        }
        this.mBackTime = jCurrentTimeMillis;
        uh.b.f76753a.d(com.transsion.baseui.R$string.tap_again_to_exit);
        if (!nh.m.f70474a.e() || (homeFragment = this.homeFragment) == null || !homeFragment.isVisible() || (homeFragment2 = this.homeFragment) == null) {
            return;
        }
        homeFragment2.v1();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration newConfig) {
        Intrinsics.h(newConfig, "newConfig");
        super.onConfigurationChanged(newConfig);
        HomeFragment homeFragment = this.homeFragment;
        if (homeFragment != null) {
            homeFragment.onConfigurationChanged(newConfig);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsion.baseui.activity.BaseActivity, com.transsion.baseui.activity.BaseCommonActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) throws IllegalAccessException, InvocationTargetException {
        AppStartReport appStartReport = AppStartReport.f54517a;
        appStartReport.f(new AppStartDotState(AppStartDotState.MAIN_CREATE, 0L, 2, null));
        if (Build.VERSION.SDK_INT > 28) {
            this.xmlPreload = new MainXMLPreloadControlImp(this);
        }
        TheRouter.l(this);
        super.onCreate(savedInstanceState);
        appStartReport.l("main_super");
        this.currentFragmentIndex = savedInstanceState != null ? savedInstanceState.getInt("current_fragment_index") : this.defaultIndex;
        this.mVideoTabIsWhite = savedInstanceState != null ? savedInstanceState.getBoolean("video_tab_is_white") : false;
        com.transsion.startup.pref.consume.c.f54529a.k(this);
        x1();
        appStartReport.l("main_create_next");
        lg.a.C0828a.f(lg.a.f68839a, "MainActivity", "MainActivity onCreate " + com.transsion.home.view.g.f45784a.a(), false, 4, null);
        changeStatusFontColor(false, true);
        ((au.a) getMViewBinding()).getRoot().post(new Runnable() { // from class: com.transsion.subroom.activity.m
            @Override // java.lang.Runnable
            public final void run() {
                MainActivity.t1(this.f54652a);
            }
        });
        fitAndroidV(((au.a) getMViewBinding()).f16133h);
        W0();
        appStartReport.l("main_ad_init");
        Z0();
        B1();
        qw.c.f73882a.b();
        IPremiumApi iPremiumApi = (IPremiumApi) TheRouter.d(IPremiumApi.class, new Object[0]);
        if (iPremiumApi != null) {
            iPremiumApi.v();
        }
    }

    @Override // com.transsion.baseui.activity.BaseActivity, com.transsion.baseui.activity.BaseCommonActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        com.transsion.home.preload.b bVar = this.xmlPreload;
        if (bVar != null) {
            bVar.reset();
        }
        this.runOnce = false;
        AppStartReport.f54517a.k();
        P0().b();
        ny.e eVar = this.onDownloadIconStatusListener;
        if (eVar != null) {
            DownloadStatusIconManager.f59462h.a().v(eVar);
        }
        StartupManager.f54503g.a().k0(this.onConfigLoadedCallback);
        com.transsion.subtitle.h.f54887a.b().destroy();
        ShortTvImmVideoHelper.f48854k.a().y();
        com.transsion.home.view.g.f45784a.d();
        bf.c.f16466a.a();
        ICommonDialogApi iCommonDialogApi = (ICommonDialogApi) TheRouter.d(ICommonDialogApi.class, new Object[0]);
        if (iCommonDialogApi != null) {
            iCommonDialogApi.onDestroy();
        }
        hr.a.f64825a.a();
        SecondFloorHelper secondFloorHelper = this.secondFloorHelper;
        if (secondFloorHelper != null) {
            secondFloorHelper.D();
        }
        HiSavanaAdManager.f42117a.k(this.hiSdkInitListener);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    protected void onNewIntent(Intent intent) {
        Intrinsics.h(intent, "intent");
        super.onNewIntent(intent);
        try {
            setIntent(intent);
            TheRouter.l(this);
            R1();
        } catch (Exception unused) {
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onRequestPermissionsResult(int requestCode, String[] permissions, int[] grantResults) {
        Intrinsics.h(permissions, "permissions");
        Intrinsics.h(grantResults, "grantResults");
        super.onRequestPermissionsResult(requestCode, permissions, grantResults);
    }

    @Override // com.transsion.baseui.activity.BaseActivity, com.transsion.baseui.activity.BaseMusicFloatActivity, com.transsion.baseui.activity.BaseCommonActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        L0();
        if (this.isColdStart) {
            this.isColdStart = false;
        } else {
            this.mainDialogAdManager.E(this);
        }
        if (this.kidsDialogShown || this.widgetDialogShowing) {
            return;
        }
        this.kidsDialogShown = true;
        H0();
    }

    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onSaveInstanceState(Bundle outState) {
        Intrinsics.h(outState, "outState");
        super.onSaveInstanceState(outState);
        outState.putInt("current_fragment_index", this.currentFragmentIndex);
        outState.putBoolean("video_tab_is_white", this.mVideoTabIsWhite);
    }

    @Override // com.transsion.baseui.activity.BaseActivity
    public void setStateCallback(Function1 callback) {
        SecondFloorHelper secondFloorHelper = this.secondFloorHelper;
        if (secondFloorHelper != null) {
            secondFloorHelper.a0(callback);
        }
    }

    @Override // com.transsion.baseui.activity.BaseActivity
    public int statusColor() {
        return R$color.text_01;
    }
}
