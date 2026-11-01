package com.transsion.shorttv_pugc.ui.widget;

import android.app.Activity;
import android.content.Context;
import android.graphics.Insets;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.text.SpannableStringBuilder;
import android.text.style.ImageSpan;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.view.WindowInsets;
import android.view.WindowInsetsController;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import android.widget.Space;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatSeekBar;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.FragmentActivity;
import androidx.p009lifecycle.Lifecycle;
import androidx.p009lifecycle.LiveData;
import androidx.p009lifecycle.v0;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.engine.GlideException;
import com.bumptech.glide.request.RequestListener;
import com.bumptech.glide.request.target.Target;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.google.android.material.imageview.ShapeableImageView;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.transsion.player.orplayer.PlayError;
import com.transsion.player.orplayer.global.TnPlayerType;
import com.transsion.player.ui.ORPlayerView;
import com.transsion.push.PushConstants;
import com.transsion.shorttv.R$id;
import com.transsion.shorttv.R$layout;
import com.transsion.shorttv_pugc.ShorttvModel;
import com.transsion.shorttv_pugc.base.pager.PagerLayoutManager;
import com.transsion.shorttv_pugc.base.widget.TnTextView;
import com.transsion.shorttv_pugc.base.widget.expand.ExpandView;
import com.transsion.shorttv_pugc.bean.Cover;
import com.transsion.shorttv_pugc.bean.ShortTvInnerPlayBean;
import com.transsion.shorttv_pugc.bean.Video;
import com.transsion.shorttv_pugc.ui.fragment.ShortTvDetailListFragment;
import com.transsion.shorttv_pugc.utils.ShortTvExtKt;
import com.transsion.shorttv_pugc.viewmodel.ShortTvViewModel;
import com.transsion.subtitle_download.db.SubtitleDownloadTable;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Arrays;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u009e\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b#\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0016\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u00052\u00020\u0006B!\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t\u0012\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\r\u0010\u000eB\u0011\b\u0016\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\r\u0010\u000fB\u001b\b\u0016\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\r\u0010\u0010J\u000f\u0010\u0012\u001a\u00020\u0011H\u0014¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0011H\u0014¢\u0006\u0004\b\u0014\u0010\u0013JU\u0010!\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u00172\b\u0010\u0019\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u001b\u001a\u00020\u001a2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001c2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001c2\u0006\u0010\u001f\u001a\u00020\u001a2\u0006\u0010 \u001a\u00020\u001aH\u0016¢\u0006\u0004\b!\u0010\"J-\u0010'\u001a\u00020\u00112\b\u0010$\u001a\u0004\u0018\u00010#2\b\u0010&\u001a\u0004\u0018\u00010%2\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0016¢\u0006\u0004\b'\u0010(J-\u0010)\u001a\u00020\u00112\b\u0010$\u001a\u0004\u0018\u00010#2\b\u0010&\u001a\u0004\u0018\u00010%2\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0016¢\u0006\u0004\b)\u0010(J\u0017\u0010*\u001a\u00020\u00112\u0006\u0010\u0019\u001a\u00020\u000bH\u0016¢\u0006\u0004\b*\u0010+J\u001f\u0010.\u001a\u00020\u00112\u0006\u0010,\u001a\u00020\u000b2\u0006\u0010-\u001a\u00020\u000bH\u0016¢\u0006\u0004\b.\u0010/J\u0019\u00100\u001a\u00020\u00112\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0016¢\u0006\u0004\b0\u00101J\u0017\u00104\u001a\u00020\u00112\u0006\u00103\u001a\u000202H\u0016¢\u0006\u0004\b4\u00105J\u000f\u00107\u001a\u000206H\u0016¢\u0006\u0004\b7\u00108J\u0017\u0010<\u001a\u00020;2\u0006\u0010:\u001a\u000209H\u0016¢\u0006\u0004\b<\u0010=J\u0017\u0010@\u001a\u00020\u001a2\u0006\u0010?\u001a\u00020>H\u0016¢\u0006\u0004\b@\u0010AJ\u001f\u0010E\u001a\u00020\u00112\u0006\u0010C\u001a\u00020B2\u0006\u0010?\u001a\u00020DH\u0016¢\u0006\u0004\bE\u0010FJ\u000f\u0010G\u001a\u00020\u0011H\u0016¢\u0006\u0004\bG\u0010\u0013J\r\u0010H\u001a\u00020\u0011¢\u0006\u0004\bH\u0010\u0013J\u000f\u0010I\u001a\u00020\u0011H\u0016¢\u0006\u0004\bI\u0010\u0013J\u0015\u0010K\u001a\u00020\u00112\u0006\u0010J\u001a\u00020\u001c¢\u0006\u0004\bK\u0010LJ\u0015\u0010N\u001a\u00020\u00112\u0006\u0010M\u001a\u00020\u001c¢\u0006\u0004\bN\u0010LJ\u000f\u0010O\u001a\u00020\u0011H\u0016¢\u0006\u0004\bO\u0010\u0013J\u000f\u0010P\u001a\u00020\u0011H\u0016¢\u0006\u0004\bP\u0010\u0013J\u0019\u0010S\u001a\u00020\u00112\b\u0010R\u001a\u0004\u0018\u00010QH\u0016¢\u0006\u0004\bS\u0010TJ\u0019\u0010U\u001a\u00020\u00112\b\u0010R\u001a\u0004\u0018\u00010QH\u0016¢\u0006\u0004\bU\u0010TJ\u0019\u0010V\u001a\u00020\u00112\b\u0010R\u001a\u0004\u0018\u00010QH\u0016¢\u0006\u0004\bV\u0010TJ!\u0010Y\u001a\u00020\u00112\u0006\u0010X\u001a\u00020W2\b\u0010R\u001a\u0004\u0018\u00010QH\u0016¢\u0006\u0004\bY\u0010ZJ\u0019\u0010[\u001a\u00020\u00112\b\u0010R\u001a\u0004\u0018\u00010QH\u0016¢\u0006\u0004\b[\u0010TJ\u0019\u0010\\\u001a\u00020\u00112\b\u0010R\u001a\u0004\u0018\u00010QH\u0016¢\u0006\u0004\b\\\u0010TJ!\u0010_\u001a\u00020\u00112\u0006\u0010^\u001a\u00020]2\b\u0010R\u001a\u0004\u0018\u00010QH\u0016¢\u0006\u0004\b_\u0010`J\u000f\u0010a\u001a\u00020\u0011H\u0016¢\u0006\u0004\ba\u0010\u0013J\u0019\u0010b\u001a\u00020\u00112\b\u0010R\u001a\u0004\u0018\u00010QH\u0016¢\u0006\u0004\bb\u0010TJ\u0019\u0010e\u001a\u00020\u00112\b\u0010d\u001a\u0004\u0018\u00010cH\u0016¢\u0006\u0004\be\u0010fJ\r\u0010g\u001a\u00020\u0011¢\u0006\u0004\bg\u0010\u0013J\u000f\u0010h\u001a\u00020WH\u0016¢\u0006\u0004\bh\u0010iJ\r\u0010j\u001a\u00020\u0011¢\u0006\u0004\bj\u0010\u0013J\u000f\u0010k\u001a\u00020\u0011H\u0016¢\u0006\u0004\bk\u0010\u0013J\u000f\u0010l\u001a\u00020\u0011H\u0016¢\u0006\u0004\bl\u0010\u0013J\u001f\u0010o\u001a\u00020\u00112\u0006\u0010X\u001a\u00020\u000b2\u0006\u0010n\u001a\u00020mH\u0016¢\u0006\u0004\bo\u0010pJ\u0017\u0010q\u001a\u00020\u00112\u0006\u0010n\u001a\u00020mH\u0016¢\u0006\u0004\bq\u0010rJ#\u0010w\u001a\u00020\u00112\n\u0010u\u001a\u00060sj\u0002`t2\u0006\u0010v\u001a\u00020mH\u0016¢\u0006\u0004\bw\u0010xJ\u000f\u0010y\u001a\u00020\u0011H\u0002¢\u0006\u0004\by\u0010\u0013J\u000f\u0010z\u001a\u00020\u0011H\u0002¢\u0006\u0004\bz\u0010\u0013J\u000f\u0010{\u001a\u00020\u0011H\u0002¢\u0006\u0004\b{\u0010\u0013J\u000f\u0010|\u001a\u00020\u0011H\u0002¢\u0006\u0004\b|\u0010\u0013J\u001b\u0010~\u001a\u00020\u00112\n\b\u0002\u0010}\u001a\u0004\u0018\u00010WH\u0002¢\u0006\u0004\b~\u0010\u007fJ\u0011\u0010\u0080\u0001\u001a\u00020\u0011H\u0002¢\u0006\u0005\b\u0080\u0001\u0010\u0013J\u0011\u0010\u0081\u0001\u001a\u00020\u0011H\u0002¢\u0006\u0005\b\u0081\u0001\u0010\u0013J\u001b\u0010\u0083\u0001\u001a\u00020\u00112\u0007\u0010\u0082\u0001\u001a\u00020\u001aH\u0002¢\u0006\u0006\b\u0083\u0001\u0010\u0084\u0001J\u0019\u0010\u0085\u0001\u001a\u00020\u00112\u0006\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0005\b\u0085\u0001\u0010\u000fJ(\u0010\u0088\u0001\u001a\u00020\u00112\t\u0010\u0086\u0001\u001a\u0004\u0018\u00010\u000b2\t\u0010\u0087\u0001\u001a\u0004\u0018\u00010\u000bH\u0002¢\u0006\u0006\b\u0088\u0001\u0010\u0089\u0001J$\u0010\u008c\u0001\u001a\u00020\u00112\u0007\u0010\u008a\u0001\u001a\u00020\u001c2\u0007\u0010\u008b\u0001\u001a\u00020\u0015H\u0002¢\u0006\u0006\b\u008c\u0001\u0010\u008d\u0001J\u001b\u0010\u008e\u0001\u001a\u00020\u00112\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0002¢\u0006\u0005\b\u008e\u0001\u00101J\u001a\u0010\u008f\u0001\u001a\u00020\u00112\u0006\u0010X\u001a\u00020WH\u0002¢\u0006\u0006\b\u008f\u0001\u0010\u0090\u0001J\u001b\u0010\u0092\u0001\u001a\u00020\u00112\u0007\u0010\u0091\u0001\u001a\u00020WH\u0002¢\u0006\u0006\b\u0092\u0001\u0010\u0090\u0001J\u0011\u0010\u0093\u0001\u001a\u00020\u0011H\u0002¢\u0006\u0005\b\u0093\u0001\u0010\u0013J\u0011\u0010\u0094\u0001\u001a\u00020\u0011H\u0002¢\u0006\u0005\b\u0094\u0001\u0010\u0013J\u0011\u0010\u0095\u0001\u001a\u00020\u0011H\u0002¢\u0006\u0005\b\u0095\u0001\u0010\u0013J\u0011\u0010\u0096\u0001\u001a\u00020\u0011H\u0002¢\u0006\u0005\b\u0096\u0001\u0010\u0013J\u001b\u0010\u0097\u0001\u001a\u00020\u00112\u0007\u0010\u0082\u0001\u001a\u00020\u001aH\u0002¢\u0006\u0006\b\u0097\u0001\u0010\u0084\u0001J\"\u0010\u009a\u0001\u001a\u00020\u00112\u000e\u0010\u0099\u0001\u001a\t\u0012\u0004\u0012\u00020\u00110\u0098\u0001H\u0002¢\u0006\u0006\b\u009a\u0001\u0010\u009b\u0001J\u0011\u0010\u009c\u0001\u001a\u00020\u0011H\u0002¢\u0006\u0005\b\u009c\u0001\u0010\u0013J\u0011\u0010\u009d\u0001\u001a\u00020\u0011H\u0002¢\u0006\u0005\b\u009d\u0001\u0010\u0013J\u0011\u0010\u009e\u0001\u001a\u00020\u0011H\u0002¢\u0006\u0005\b\u009e\u0001\u0010\u0013J\u0011\u0010\u0086\u0001\u001a\u00020\u0011H\u0002¢\u0006\u0005\b\u0086\u0001\u0010\u0013J\u0011\u0010\u009f\u0001\u001a\u00020\u0011H\u0002¢\u0006\u0005\b\u009f\u0001\u0010\u0013J$\u0010d\u001a\u00020\u00112\u0006\u0010&\u001a\u00020%2\n\u0010¡\u0001\u001a\u0005\u0018\u00010 \u0001H\u0002¢\u0006\u0005\bd\u0010¢\u0001J\u0011\u0010£\u0001\u001a\u00020\u0011H\u0002¢\u0006\u0005\b£\u0001\u0010\u0013R\u0017\u0010¦\u0001\u001a\u00020\u001c8\u0002X\u0082D¢\u0006\b\n\u0006\b¤\u0001\u0010¥\u0001R\u0017\u0010©\u0001\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\b\n\u0006\b§\u0001\u0010¨\u0001R\u0018\u0010\u00ad\u0001\u001a\u00030ª\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b«\u0001\u0010¬\u0001R\u001b\u0010°\u0001\u001a\u0004\u0018\u00010\u00158\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b®\u0001\u0010¯\u0001R\u0019\u0010\u0018\u001a\u0004\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bu\u0010±\u0001R\u001a\u0010\u001b\u001a\u0004\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b²\u0001\u0010³\u0001R\u001a\u0010\u0019\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b´\u0001\u0010µ\u0001R\u001a\u0010\u001d\u001a\u0004\u0018\u00010\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0087\u0001\u0010¥\u0001R\u001a\u0010$\u001a\u0004\u0018\u00010#8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¶\u0001\u0010·\u0001R\u001a\u0010&\u001a\u0004\u0018\u00010%8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¸\u0001\u0010¹\u0001R\u001a\u00103\u001a\u0004\u0018\u0001028\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bº\u0001\u0010»\u0001R\u001c\u0010¿\u0001\u001a\u0005\u0018\u00010¼\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b½\u0001\u0010¾\u0001R\u001c\u0010Ã\u0001\u001a\u0005\u0018\u00010À\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÁ\u0001\u0010Â\u0001R\u0019\u0010Å\u0001\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÄ\u0001\u0010\u0081\u0001R\u0019\u0010Ç\u0001\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÆ\u0001\u0010\u0081\u0001R\u0019\u0010É\u0001\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÈ\u0001\u0010\u0081\u0001R\u0019\u0010Ì\u0001\u001a\u00020W8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÊ\u0001\u0010Ë\u0001R\u0017\u0010Î\u0001\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\b\n\u0006\bÍ\u0001\u0010¨\u0001R\u0017\u0010Ð\u0001\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\b\n\u0006\bÏ\u0001\u0010¨\u0001R\u0017\u0010Ò\u0001\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\b\n\u0006\bÑ\u0001\u0010¨\u0001R\u0017\u0010Ô\u0001\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\b\n\u0006\bÓ\u0001\u0010¨\u0001R\u0017\u0010J\u001a\u00020\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bd\u0010¥\u0001R\u001b\u0010Ö\u0001\u001a\u0004\u0018\u00010;8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0086\u0001\u0010Õ\u0001R\u001c\u0010Ú\u0001\u001a\u0005\u0018\u00010×\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bØ\u0001\u0010Ù\u0001R\u001e\u0010Þ\u0001\u001a\t\u0012\u0004\u0012\u00020\u001a0Û\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\bÜ\u0001\u0010Ý\u0001R \u0010à\u0001\u001a\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u001a0Û\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\bß\u0001\u0010Ý\u0001R \u0010â\u0001\u001a\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u001a0Û\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\bá\u0001\u0010Ý\u0001R \u0010ã\u0001\u001a\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u001a0Û\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u009e\u0001\u0010Ý\u0001R \u0010ä\u0001\u001a\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u001c0Û\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u0080\u0001\u0010Ý\u0001R\u0019\u0010å\u0001\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0085\u0001\u0010\u0081\u0001R\u0019\u0010æ\u0001\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b£\u0001\u0010\u0081\u0001R\u001d\u0010ë\u0001\u001a\b0ç\u0001j\u0003`è\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\bé\u0001\u0010ê\u0001R\u0019\u0010ì\u0001\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009d\u0001\u0010\u0081\u0001R\u0018\u0010ð\u0001\u001a\u00030í\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\bî\u0001\u0010ï\u0001R\u001d\u0010ñ\u0001\u001a\b0ç\u0001j\u0003`è\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b¨\u0001\u0010ê\u0001R\u001c\u0010ô\u0001\u001a\u0005\u0018\u00010ò\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bË\u0001\u0010ó\u0001¨\u0006õ\u0001"}, d2 = {"Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "Lcom/transsion/player/orplayer/f;", "Landroid/view/View$OnClickListener;", "Landroidx/lifecycle/r;", "Lcom/transsion/shorttv_pugc/ui/widget/a;", "Lcom/transsion/subtitle_download/a;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "(Landroid/content/Context;)V", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "onAttachedToWindow", "()V", "onDetachedFromWindow", "Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;", WebConstants.FIELD_ITEM, "Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;", "fragment", RequestParameters.POSITION, "", "videoLoadMore", "", "basePostId", "baseItemType", "isPayloads", "fromTrending", "setData", "(Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;ZZ)V", "Lcom/transsion/player/orplayer/g;", "orPlayer", "Lcom/transsion/player/ui/ORPlayerView;", "orPlayerView", "onPageSelected", "(Lcom/transsion/player/orplayer/g;Lcom/transsion/player/ui/ORPlayerView;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;)V", "updateShortTvInfo", "onPageRelease", "(I)V", "width", "height", "onVideoSizeChanged", "(II)V", "updateLockState", "(Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;)V", "Lcom/transsion/shorttv_pugc/base/pager/PagerLayoutManager;", "pagerLayoutManager", "setPagerLayoutManager", "(Lcom/transsion/shorttv_pugc/base/pager/PagerLayoutManager;)V", "Landroid/widget/FrameLayout;", "getPlayerContainer", "()Landroid/widget/FrameLayout;", "Landroidx/fragment/app/FragmentActivity;", "activity", "Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;", "getViewModel", "(Landroidx/fragment/app/FragmentActivity;)Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;", "Landroid/view/MotionEvent;", NotificationCompat.CATEGORY_EVENT, "onTouchEvent", "(Landroid/view/MotionEvent;)Z", "Landroidx/lifecycle/u;", EventConstants.KEY_SOURCE, "Landroidx/lifecycle/Lifecycle$Event;", "onStateChanged", "(Landroidx/lifecycle/u;Landroidx/lifecycle/Lifecycle$Event;)V", "onPlayerReset", "reset", "app2Background", "pageFrom", "videoStartPrepare", "(Ljava/lang/String;)V", "url", "setVideoUrl", "onSetDataSource", "onRenderFirstFrame", "Lao/e;", "mediaSource", "onVideoStart", "(Lao/e;)V", "onPrepare", "onVideoPause", "", NotificationCompat.CATEGORY_PROGRESS, "onProgress", "(JLao/e;)V", "onLoadingBegin", "onLoadingEnd", "Lcom/transsion/player/orplayer/PlayError;", "errorInfo", "onPlayError", "(Lcom/transsion/player/orplayer/PlayError;Lao/e;)V", "onLoopingStart", "onCompletion", "Landroid/view/View;", "v", "onClick", "(Landroid/view/View;)V", "showEpisodeListDialog", "getProgress", "()J", "onNetConnect", "onGetDubsInfo", "onAudioTrackChange", "Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;", "stDownloadTable", "onDownloading", "(ILcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V", "onComplete", "(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V", "Ljava/lang/Exception;", "Lkotlin/Exception;", "e", "dbBean", "onFail", "(Ljava/lang/Exception;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V", "a0", "c0", "b0", "f0", "count", "g0", "(Ljava/lang/Long;)V", "C", "Z", PushConstants.PUSH_SERVICE_TYPE_SHOW, "W", "(Z)V", "D", "w", "h", "h0", "(Ljava/lang/Integer;Ljava/lang/Integer;)V", "ep", "ugcVideo", "T", "(Ljava/lang/String;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;)V", "i0", "d0", "(J)V", "max", "e0", "O", "U", "R", "X", "setLoading", "Lkotlin/Function0;", "block", "S", "(Lkotlin/jvm/functions/Function0;)V", "P", "G", "B", "Y", "Lcom/transsion/shorttv_pugc/bean/Video;", "video", "(Lcom/transsion/player/ui/ORPlayerView;Lcom/transsion/shorttv_pugc/bean/Video;)V", "E", "a", "Ljava/lang/String;", "TAG", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "I", "screenWidth", "Lms/j0;", "c", "Lms/j0;", "viewBinding", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;", "data", "Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;", "f", "Ljava/lang/Boolean;", "g", "Ljava/lang/Integer;", "i", "Lcom/transsion/player/orplayer/g;", "j", "Lcom/transsion/player/ui/ORPlayerView;", CampaignEx.JSON_KEY_AD_K, "Lcom/transsion/shorttv_pugc/base/pager/PagerLayoutManager;", "Landroid/view/GestureDetector;", "l", "Landroid/view/GestureDetector;", "gestureDetector", "Lut/c;", "m", "Lut/c;", "dotLayer", "n", "isClickPause", "o", "isHorizontalDragging", TtmlNode.TAG_P, "isPageHide", CampaignEx.JSON_KEY_AD_Q, "J", "currentSaveProgress", CampaignEx.JSON_KEY_AD_R, "resImgLargeWidth", "s", "resImgLargeHeight", "t", "resImgSmallWidth", TmcStartParams.KEY_URL_SHORT, "resImgSmallHeight", "Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;", "mShortTvViewModel", "Lxt/a;", "x", "Lxt/a;", "mShortTvSubViewModel", "Landroidx/lifecycle/c0;", "y", "Landroidx/lifecycle/c0;", "observer", "z", "favoriteObserver", "A", "likeObserver", "followObserver", "shareObserver", "isFirstFrame", "isPrepare", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "F", "Ljava/lang/Runnable;", "delayToastNetErrRunnable", "isLoading", "Landroid/os/Handler;", "H", "Landroid/os/Handler;", "autoHideRightMenuHandle", "autoHideRightMenuRunnable", "Lcom/transsion/shorttv_pugc/ui/adapter/p;", "Lcom/transsion/shorttv_pugc/ui/adapter/p;", "tagAdapter", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class ShortTvVideoItemView extends ConstraintLayout implements com.transsion.player.orplayer.f, View.OnClickListener, androidx.p009lifecycle.r, com.transsion.shorttv_pugc.ui.widget.a, com.transsion.subtitle_download.a {

    /* JADX INFO: renamed from: A, reason: from kotlin metadata */
    private final androidx.p009lifecycle.c0 likeObserver;

    /* JADX INFO: renamed from: B, reason: from kotlin metadata */
    private final androidx.p009lifecycle.c0 followObserver;

    /* JADX INFO: renamed from: C, reason: from kotlin metadata */
    private final androidx.p009lifecycle.c0 shareObserver;

    /* JADX INFO: renamed from: D, reason: from kotlin metadata */
    private boolean isFirstFrame;

    /* JADX INFO: renamed from: E, reason: from kotlin metadata */
    private boolean isPrepare;

    /* JADX INFO: renamed from: F, reason: from kotlin metadata */
    private final Runnable delayToastNetErrRunnable;

    /* JADX INFO: renamed from: G, reason: from kotlin metadata */
    private boolean isLoading;

    /* JADX INFO: renamed from: H, reason: from kotlin metadata */
    private final Handler autoHideRightMenuHandle;

    /* JADX INFO: renamed from: I, reason: from kotlin metadata */
    private final Runnable autoHideRightMenuRunnable;

    /* JADX INFO: renamed from: J, reason: from kotlin metadata */
    private com.transsion.shorttv_pugc.ui.adapter.p tagAdapter;

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private final String TAG;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private final int screenWidth;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private final ms.j0 viewBinding;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private ShorttvModel.UGCVideo data;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private ShortTvDetailListFragment fragment;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private Boolean videoLoadMore;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private Integer position;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private String basePostId;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private com.transsion.player.orplayer.g orPlayer;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private ORPlayerView orPlayerView;

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    private PagerLayoutManager pagerLayoutManager;

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    private GestureDetector gestureDetector;

    /* JADX INFO: renamed from: m, reason: collision with root package name and from kotlin metadata */
    private ut.c dotLayer;

    /* JADX INFO: renamed from: n, reason: collision with root package name and from kotlin metadata */
    private boolean isClickPause;

    /* JADX INFO: renamed from: o, reason: collision with root package name and from kotlin metadata */
    private boolean isHorizontalDragging;

    /* JADX INFO: renamed from: p, reason: collision with root package name and from kotlin metadata */
    private boolean isPageHide;

    /* JADX INFO: renamed from: q, reason: collision with root package name and from kotlin metadata */
    private long currentSaveProgress;

    /* JADX INFO: renamed from: r, reason: collision with root package name and from kotlin metadata */
    private final int resImgLargeWidth;

    /* JADX INFO: renamed from: s, reason: collision with root package name and from kotlin metadata */
    private final int resImgLargeHeight;

    /* JADX INFO: renamed from: t, reason: collision with root package name and from kotlin metadata */
    private final int resImgSmallWidth;

    /* JADX INFO: renamed from: u, reason: collision with root package name and from kotlin metadata */
    private final int resImgSmallHeight;

    /* JADX INFO: renamed from: v, reason: collision with root package name and from kotlin metadata */
    private String pageFrom;

    /* JADX INFO: renamed from: w, reason: collision with root package name and from kotlin metadata */
    private ShortTvViewModel mShortTvViewModel;

    /* JADX INFO: renamed from: x, reason: collision with root package name and from kotlin metadata */
    private xt.a mShortTvSubViewModel;

    /* JADX INFO: renamed from: y, reason: collision with root package name and from kotlin metadata */
    private final androidx.p009lifecycle.c0 observer;

    /* JADX INFO: renamed from: z, reason: collision with root package name and from kotlin metadata */
    private final androidx.p009lifecycle.c0 favoriteObserver;

    public /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f54369a;

        static {
            int[] iArr = new int[Lifecycle.Event.values().length];
            try {
                iArr[Lifecycle.Event.ON_PAUSE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Lifecycle.Event.ON_RESUME.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[Lifecycle.Event.ON_STOP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[Lifecycle.Event.ON_START.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[Lifecycle.Event.ON_DESTROY.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            f54369a = iArr;
        }
    }

    public static final class b extends GestureDetector.SimpleOnGestureListener {
        b() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onSingleTapUp(MotionEvent e11) {
            Intrinsics.h(e11, "e");
            ShortTvVideoItemView.this.O();
            return super.onSingleTapUp(e11);
        }
    }

    public static final class c implements com.transsion.shorttv_pugc.base.widget.e.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f54371a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f54372b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f54373c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private String f54374d = "";

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f54375e = com.blankj.utilcode.util.a0.a(1.5f);

        c() {
        }

        @Override // com.transsion.shorttv_pugc.base.widget.e.a
        public void a() {
        }

        @Override // com.transsion.shorttv_pugc.base.widget.e.a
        public void b(float f11, float f12) {
            int i11 = 0;
            if (!ShortTvVideoItemView.this.isHorizontalDragging) {
                PagerLayoutManager pagerLayoutManager = ShortTvVideoItemView.this.pagerLayoutManager;
                if (pagerLayoutManager != null) {
                    pagerLayoutManager.W(false);
                }
                this.f54371a = ShortTvVideoItemView.this.viewBinding.f69820r.getProgress();
                AppCompatSeekBar seekBar = ShortTvVideoItemView.this.viewBinding.f69823u;
                Intrinsics.g(seekBar, "seekBar");
                ct.b.d(seekBar);
                ProgressBar progressBar = ShortTvVideoItemView.this.viewBinding.f69820r;
                Intrinsics.g(progressBar, "progressBar");
                ct.b.b(progressBar);
                this.f54373c = ShortTvVideoItemView.this.viewBinding.f69820r.getWidth();
                int max = ShortTvVideoItemView.this.viewBinding.f69820r.getMax();
                this.f54372b = max;
                this.f54374d = com.transsion.shorttv_pugc.utils.j.a(max);
            }
            ShortTvVideoItemView.this.isHorizontalDragging = true;
            float f13 = f12 - f11;
            int i12 = this.f54372b;
            int i13 = (int) (this.f54371a + ((f13 * i12) / this.f54373c));
            if (i13 >= 0) {
                i11 = i13 > i12 ? i12 : i13;
            }
            ShortTvVideoItemView.this.d0(i11);
        }

        @Override // com.transsion.shorttv_pugc.base.widget.e.a
        public void c(float f11, float f12) {
        }

        @Override // com.transsion.shorttv_pugc.base.widget.e.a
        public void d(float f11, float f12) {
        }

        @Override // com.transsion.shorttv_pugc.base.widget.e.a
        public void e() {
            com.transsion.player.orplayer.g gVar;
            PagerLayoutManager pagerLayoutManager = ShortTvVideoItemView.this.pagerLayoutManager;
            if (pagerLayoutManager != null) {
                pagerLayoutManager.W(true);
            }
            if (ShortTvVideoItemView.this.isHorizontalDragging) {
                ShortTvVideoItemView.this.isHorizontalDragging = false;
                AppCompatSeekBar seekBar = ShortTvVideoItemView.this.viewBinding.f69823u;
                Intrinsics.g(seekBar, "seekBar");
                ct.b.b(seekBar);
                ProgressBar progressBar = ShortTvVideoItemView.this.viewBinding.f69820r;
                Intrinsics.g(progressBar, "progressBar");
                ct.b.d(progressBar);
                long progress = ShortTvVideoItemView.this.viewBinding.f69820r.getProgress();
                ShorttvModel.UGCVideo uGCVideo = ShortTvVideoItemView.this.data;
                if ((uGCVideo != null ? uGCVideo.getPlayUrl() : null) == null) {
                    lg.a.C0828a.f(lg.a.f68839a, ShortTvVideoItemView.this.TAG, "数据还没有拉下来，不进行seek", false, 4, null);
                    return;
                }
                com.transsion.player.orplayer.g gVar2 = ShortTvVideoItemView.this.orPlayer;
                if (gVar2 != null) {
                    gVar2.seekTo(progress);
                }
                com.transsion.player.orplayer.g gVar3 = ShortTvVideoItemView.this.orPlayer;
                if (gVar3 != null && !gVar3.isPlaying() && (gVar = ShortTvVideoItemView.this.orPlayer) != null) {
                    gVar.play();
                }
                ut.c cVar = ShortTvVideoItemView.this.dotLayer;
                if (cVar != null) {
                    cVar.h();
                }
            }
        }

        @Override // com.transsion.shorttv_pugc.base.widget.e.a
        public void onDoubleTap(MotionEvent e11) {
            Intrinsics.h(e11, "e");
        }

        @Override // com.transsion.shorttv_pugc.base.widget.e.a
        public void onLongPress(MotionEvent e11) {
            Intrinsics.h(e11, "e");
        }
    }

    public static final class d implements ExpandView.c {
        d() {
        }

        @Override // com.transsion.shorttv_pugc.base.widget.expand.ExpandView.c
        public void a(ExpandView expandView) {
            ShortTvVideoItemView.this.Y();
        }

        @Override // com.transsion.shorttv_pugc.base.widget.expand.ExpandView.c
        public void b(ExpandView expandView) {
            ShortTvVideoItemView.this.w();
        }
    }

    public static final class e implements RequestListener {
        e() {
        }

        @Override // com.bumptech.glide.request.RequestListener
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public boolean onResourceReady(Drawable resource, Object model, Target target, DataSource dataSource, boolean z10) {
            Intrinsics.h(resource, "resource");
            Intrinsics.h(model, "model");
            Intrinsics.h(dataSource, "dataSource");
            lg.a.C0828a.f(lg.a.f68839a, ShortTvVideoItemView.this.TAG, "onResourceReady  " + ShortTvVideoItemView.this, false, 4, null);
            return false;
        }

        @Override // com.bumptech.glide.request.RequestListener
        public boolean onLoadFailed(GlideException glideException, Object obj, Target target, boolean z10) {
            Intrinsics.h(target, "target");
            lg.a.C0828a.f(lg.a.f68839a, ShortTvVideoItemView.this.TAG, "onLoadFailed  " + ShortTvVideoItemView.this, false, 4, null);
            return false;
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ShortTvVideoItemView(Context context) {
        this(context, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ShortTvVideoItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShortTvVideoItemView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        Intrinsics.h(context, "context");
        this.TAG = "ShortTvVideoItemView";
        this.screenWidth = com.blankj.utilcode.util.y.e();
        this.pageFrom = "";
        View.inflate(getContext(), R$layout.short_tv_layout_play_detail, this);
        ms.j0 j0VarA = ms.j0.a(this);
        Intrinsics.g(j0VarA, "bind(...)");
        this.viewBinding = j0VarA;
        j0VarA.f69827y.setText("");
        j0VarA.f69825w.setPadding(0, com.blankj.utilcode.util.d.c(), 0, 0);
        j0VarA.f69810h.setOnClickListener(this);
        j0VarA.f69828z.setOnClickListener(this);
        j0VarA.f69827y.setOnClickListener(this);
        j0VarA.f69814l.setOnClickListener(this);
        j0VarA.f69813k.setOnClickListener(this);
        j0VarA.f69812j.setOnClickListener(this);
        j0VarA.f69815m.setOnClickListener(this);
        j0VarA.B.setOnClickListener(this);
        j0VarA.C.setOnClickListener(this);
        j0VarA.f69816n.setOnClickListener(this);
        this.resImgLargeWidth = com.blankj.utilcode.util.a0.a(48.0f);
        this.resImgLargeHeight = com.blankj.utilcode.util.a0.a(64.0f);
        this.resImgSmallWidth = com.blankj.utilcode.util.a0.a(24.0f);
        this.resImgSmallHeight = com.blankj.utilcode.util.a0.a(32.0f);
        D(context);
        this.observer = new androidx.p009lifecycle.c0() { // from class: com.transsion.shorttv_pugc.ui.widget.v
            @Override // androidx.p009lifecycle.c0
            public final void onChanged(Object obj) {
                ShortTvVideoItemView.J(this.f54428a, ((Boolean) obj).booleanValue());
            }
        };
        this.favoriteObserver = new androidx.p009lifecycle.c0() { // from class: com.transsion.shorttv_pugc.ui.widget.a0
            @Override // androidx.p009lifecycle.c0
            public final void onChanged(Object obj) {
                ShortTvVideoItemView.z(this.f54380a, (Boolean) obj);
            }
        };
        this.likeObserver = new androidx.p009lifecycle.c0() { // from class: com.transsion.shorttv_pugc.ui.widget.b0
            @Override // androidx.p009lifecycle.c0
            public final void onChanged(Object obj) {
                ShortTvVideoItemView.I(this.f54382a, (Boolean) obj);
            }
        };
        this.followObserver = new androidx.p009lifecycle.c0() { // from class: com.transsion.shorttv_pugc.ui.widget.c0
            @Override // androidx.p009lifecycle.c0
            public final void onChanged(Object obj) {
                ShortTvVideoItemView.A(this.f54384a, (Boolean) obj);
            }
        };
        this.shareObserver = new androidx.p009lifecycle.c0() { // from class: com.transsion.shorttv_pugc.ui.widget.d0
            @Override // androidx.p009lifecycle.c0
            public final void onChanged(Object obj) {
                ShortTvVideoItemView.V(this.f54386a, (String) obj);
            }
        };
        this.delayToastNetErrRunnable = new Runnable() { // from class: com.transsion.shorttv_pugc.ui.widget.e0
            @Override // java.lang.Runnable
            public final void run() {
                ShortTvVideoItemView.y(this.f54388a);
            }
        };
        Looper looperMyLooper = Looper.myLooper();
        Intrinsics.e(looperMyLooper);
        this.autoHideRightMenuHandle = new Handler(looperMyLooper);
        this.autoHideRightMenuRunnable = new Runnable() { // from class: com.transsion.shorttv_pugc.ui.widget.f0
            @Override // java.lang.Runnable
            public final void run() {
                ShortTvVideoItemView.x(this.f54390a);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void A(ShortTvVideoItemView shortTvVideoItemView, Boolean bool) {
        shortTvVideoItemView.b0();
    }

    private final void B() {
        this.autoHideRightMenuHandle.removeCallbacks(this.autoHideRightMenuRunnable);
        ShortTvViewModel shortTvViewModel = this.mShortTvViewModel;
        if (shortTvViewModel != null) {
            shortTvViewModel.q0(false);
        }
    }

    private final void C() {
        Window window;
        View decorView;
        WindowInsetsController insetsController;
        if (Build.VERSION.SDK_INT < 30) {
            Context context = getContext();
            Activity activity = context instanceof Activity ? (Activity) context : null;
            window = activity != null ? activity.getWindow() : null;
            if (window == null || (decorView = window.getDecorView()) == null) {
                return;
            }
            decorView.setSystemUiVisibility(5894);
            return;
        }
        Context context2 = getContext();
        Activity activity2 = context2 instanceof Activity ? (Activity) context2 : null;
        window = activity2 != null ? activity2.getWindow() : null;
        if (window == null || (insetsController = window.getInsetsController()) == null) {
            return;
        }
        insetsController.hide(WindowInsets.Type.statusBars() | WindowInsets.Type.navigationBars());
        insetsController.setSystemBarsBehavior(2);
    }

    private final void D(Context context) {
        this.gestureDetector = new GestureDetector(context, new b());
        G();
    }

    private final void E() {
        final List<ShorttvModel.UGCVideoHasTag> hashTags;
        ShorttvModel.UGCVideo uGCVideo = this.data;
        if (uGCVideo != null && (hashTags = uGCVideo.getHashTags()) != null) {
            final com.transsion.shorttv_pugc.ui.adapter.p pVar = new com.transsion.shorttv_pugc.ui.adapter.p(0, 1, null);
            pVar.n1(hashTags);
            pVar.w1(new p6.d() { // from class: com.transsion.shorttv_pugc.ui.widget.y
                @Override // p6.d
                public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i11) {
                    ShortTvVideoItemView.F(pVar, hashTags, this, baseQuickAdapter, view, i11);
                }
            });
            this.tagAdapter = pVar;
        }
        RecyclerView recyclerView = this.viewBinding.f69822t;
        recyclerView.setLayoutManager(new LinearLayoutManager(recyclerView.getContext(), 0, false));
        recyclerView.addItemDecoration(new com.transsion.shorttv_pugc.base.widget.k(8.0f, 0.0f, 0.0f, 6, null));
        recyclerView.setAdapter(this.tagAdapter);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void F(com.transsion.shorttv_pugc.ui.adapter.p pVar, List list, ShortTvVideoItemView shortTvVideoItemView, BaseQuickAdapter baseQuickAdapter, View view, int i11) {
        Intrinsics.h(baseQuickAdapter, "<unused var>");
        Intrinsics.h(view, "<unused var>");
        ShorttvModel.UGCVideoHasTag uGCVideoHasTag = (ShorttvModel.UGCVideoHasTag) pVar.getData().get(i11);
        Navigator.x(TheRouter.c("/home/hashtag").K("hashtag", ShortTvExtKt.o(list, uGCVideoHasTag)), pVar.getContext(), null, 2, null);
        ut.a aVar = ut.a.f76891a;
        ShortTvViewModel shortTvViewModel = shortTvVideoItemView.mShortTvViewModel;
        aVar.c(uGCVideoHasTag, i11, shortTvViewModel != null ? shortTvViewModel.I() : null);
    }

    private final void G() {
        new com.transsion.shorttv_pugc.base.widget.e(getContext(), this.viewBinding.I).r(new c());
        this.viewBinding.f69823u.setOnTouchListener(new View.OnTouchListener() { // from class: com.transsion.shorttv_pugc.ui.widget.z
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return ShortTvVideoItemView.H(view, motionEvent);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean H(View view, MotionEvent motionEvent) {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void I(ShortTvVideoItemView shortTvVideoItemView, Boolean bool) {
        shortTvVideoItemView.c0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void J(ShortTvVideoItemView shortTvVideoItemView, boolean z10) {
        shortTvVideoItemView.W(z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit K(ShortTvVideoItemView shortTvVideoItemView) {
        ShortTvViewModel shortTvViewModel = shortTvVideoItemView.mShortTvViewModel;
        if (shortTvViewModel != null) {
            shortTvViewModel.o(shortTvVideoItemView.data);
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit L(ShortTvVideoItemView shortTvVideoItemView) {
        ShortTvViewModel shortTvViewModel = shortTvVideoItemView.mShortTvViewModel;
        if (shortTvViewModel != null) {
            shortTvViewModel.V(shortTvVideoItemView.data);
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit M(ShortTvVideoItemView shortTvVideoItemView) {
        ShorttvModel.UGCVideo uGCVideo = shortTvVideoItemView.data;
        ShortTvViewModel shortTvViewModel = shortTvVideoItemView.mShortTvViewModel;
        if (shortTvViewModel != null) {
            shortTvViewModel.n(uGCVideo);
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit N(ShortTvVideoItemView shortTvVideoItemView) {
        ShorttvModel.UGCVideoCreator creator;
        ShorttvModel.UGCVideo uGCVideo = shortTvVideoItemView.data;
        if (uGCVideo != null && (creator = uGCVideo.getCreator()) != null) {
            Navigator.x(TheRouter.c("/profile/user_profile").K("userId", creator.getUid()), shortTvVideoItemView.getContext(), null, 2, null);
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void O() {
        if (this.isLoading) {
            FrameLayout layoutTvEpisode = this.viewBinding.f69817o;
            Intrinsics.g(layoutTvEpisode, "layoutTvEpisode");
            if (layoutTvEpisode.getVisibility() == 0) {
                B();
                return;
            } else {
                Y();
                return;
            }
        }
        com.transsion.player.orplayer.g gVar = this.orPlayer;
        if (gVar == null || !gVar.isPlaying()) {
            FrameLayout layoutTvEpisode2 = this.viewBinding.f69817o;
            Intrinsics.g(layoutTvEpisode2, "layoutTvEpisode");
            if (layoutTvEpisode2.getVisibility() != 0) {
                Y();
            }
            ut.c cVar = this.dotLayer;
            if (cVar != null) {
                cVar.c();
            }
            R();
            this.isClickPause = false;
            ShortTvDetailListFragment shortTvDetailListFragment = this.fragment;
            if (shortTvDetailListFragment != null) {
                shortTvDetailListFragment.P0(false);
                return;
            }
            return;
        }
        FrameLayout layoutTvEpisode3 = this.viewBinding.f69817o;
        Intrinsics.g(layoutTvEpisode3, "layoutTvEpisode");
        if (layoutTvEpisode3.getVisibility() != 0) {
            Y();
            w();
            return;
        }
        this.isClickPause = true;
        ShortTvDetailListFragment shortTvDetailListFragment2 = this.fragment;
        if (shortTvDetailListFragment2 != null) {
            shortTvDetailListFragment2.P0(true);
        }
        ut.c cVar2 = this.dotLayer;
        if (cVar2 != null) {
            cVar2.b();
        }
        com.transsion.player.orplayer.g gVar2 = this.orPlayer;
        if (gVar2 != null) {
            gVar2.pause();
        }
        Y();
    }

    private final void P() {
        ShortTvViewModel shortTvViewModel;
        st.h hVarP;
        String pageName;
        if (this.data == null || (shortTvViewModel = this.mShortTvViewModel) == null || (hVarP = shortTvViewModel.P()) == null) {
            return;
        }
        ShortTvDetailListFragment shortTvDetailListFragment = this.fragment;
        ShorttvModel.UGCVideo uGCVideo = this.data;
        Intrinsics.e(uGCVideo);
        String ugcVideoId = uGCVideo.getUgcVideoId();
        ShorttvModel.UGCVideo uGCVideo2 = this.data;
        Intrinsics.e(uGCVideo2);
        String title = uGCVideo2.getTitle();
        ShortTvDetailListFragment shortTvDetailListFragment2 = this.fragment;
        if (shortTvDetailListFragment2 == null || (pageName = shortTvDetailListFragment2.getPageName()) == null) {
            pageName = "";
        }
        hVarP.a(shortTvDetailListFragment, ugcVideoId, title, pageName);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void Q(ShortTvVideoItemView shortTvVideoItemView) {
        shortTvVideoItemView.R();
    }

    private final void R() {
        com.transsion.player.orplayer.g gVar;
        lg.a.C0828a c0828a = lg.a.f68839a;
        lg.a.C0828a.f(c0828a, this.TAG, "playVideo   data:" + this.data + "  orPlayer:" + this.orPlayer + " ------- " + this, false, 4, null);
        ShorttvModel.UGCVideo uGCVideo = this.data;
        if (uGCVideo == null || this.orPlayer == null) {
            return;
        }
        if ((uGCVideo != null ? uGCVideo.getPlayUrl() : null) == null) {
            return;
        }
        com.transsion.player.orplayer.g gVar2 = this.orPlayer;
        if (gVar2 != null && gVar2.isComplete() && (gVar = this.orPlayer) != null) {
            gVar.seekTo(0L);
        }
        com.transsion.player.orplayer.g gVar3 = this.orPlayer;
        if (gVar3 != null) {
            gVar3.play();
        }
        ShortTvViewModel shortTvViewModel = this.mShortTvViewModel;
        if (shortTvViewModel != null) {
            shortTvViewModel.X();
        }
        lg.a.C0828a.f(c0828a, this.TAG, "player- startplay", false, 4, null);
    }

    private final void S(Function0 block) {
        if (nh.m.f70474a.e()) {
            block.invoke();
        } else {
            X();
        }
    }

    private final void T(String ep2, ShorttvModel.UGCVideo ugcVideo) {
        String description;
        String str;
        String description2;
        ExpandView expandView = this.viewBinding.f69805c;
        expandView.setExpandListener(new d());
        if (ugcVideo == null || (description2 = ugcVideo.getDescription()) == null || description2.length() <= 0) {
            description = ugcVideo.getDescription();
            if (description == null) {
                description = "";
            }
        } else {
            description = ugcVideo.getDescription();
        }
        if (description == null || description.length() == 0) {
            StringCompanionObject stringCompanionObject = StringCompanionObject.f67289a;
            str = String.format("EP%s", Arrays.copyOf(new Object[]{ep2}, 1));
        } else {
            StringCompanionObject stringCompanionObject2 = StringCompanionObject.f67289a;
            str = String.format("EP%s | %s", Arrays.copyOf(new Object[]{ep2, description}, 2));
        }
        Intrinsics.g(str, "format(...)");
        expandView.l(str);
    }

    private final void U() {
        LiveData liveDataS;
        Boolean bool;
        ShortTvViewModel shortTvViewModel = this.mShortTvViewModel;
        W((shortTvViewModel == null || (liveDataS = shortTvViewModel.S()) == null || (bool = (Boolean) liveDataS.f()) == null) ? true : bool.booleanValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void V(ShortTvVideoItemView shortTvVideoItemView, String str) {
        shortTvVideoItemView.f0();
    }

    private final void W(boolean show) {
        ShorttvModel.UGCVideo uGCVideo;
        ShorttvModel.UGCVideoCreator creator;
        ShorttvModel.UGCVideoCreator creator2;
        if (!show) {
            C();
            Group groupContent = this.viewBinding.f69808f;
            Intrinsics.g(groupContent, "groupContent");
            ct.b.c(groupContent);
            AppCompatImageView ivSubscribe = this.viewBinding.f69816n;
            Intrinsics.g(ivSubscribe, "ivSubscribe");
            ct.b.c(ivSubscribe);
            return;
        }
        Z();
        ShorttvModel.UGCVideo uGCVideo2 = this.data;
        if (((uGCVideo2 == null || (creator2 = uGCVideo2.getCreator()) == null) ? null : creator2.getAvatar()) == null) {
            Group groupContent2 = this.viewBinding.f69808f;
            Intrinsics.g(groupContent2, "groupContent");
            ct.b.c(groupContent2);
            FrameLayout layoutTvEpisode = this.viewBinding.f69817o;
            Intrinsics.g(layoutTvEpisode, "layoutTvEpisode");
            ct.b.d(layoutTvEpisode);
            return;
        }
        Group groupContent3 = this.viewBinding.f69808f;
        Intrinsics.g(groupContent3, "groupContent");
        ct.b.d(groupContent3);
        AppCompatImageView appCompatImageView = this.viewBinding.f69816n;
        ShorttvModel.UGCVideo uGCVideo3 = this.data;
        appCompatImageView.setVisibility((uGCVideo3 == null || (creator = uGCVideo3.getCreator()) == null) ? false : Intrinsics.c(creator.getHasSubscribe(), Boolean.FALSE) ? 0 : 8);
        if (this.viewBinding.f69805c.isSetTitleSuccess() || (uGCVideo = this.data) == null) {
            return;
        }
        T(String.valueOf(uGCVideo.getEp()), uGCVideo);
    }

    private final void X() {
        ShortTvDetailListFragment shortTvDetailListFragment = this.fragment;
        if (shortTvDetailListFragment != null) {
            shortTvDetailListFragment.S0();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void Y() {
        this.autoHideRightMenuHandle.removeCallbacks(this.autoHideRightMenuRunnable);
        ShortTvViewModel shortTvViewModel = this.mShortTvViewModel;
        if (shortTvViewModel != null) {
            shortTvViewModel.q0(true);
        }
    }

    private final void Z() {
        Window window;
        View decorView;
        WindowInsetsController insetsController;
        if (Build.VERSION.SDK_INT >= 30) {
            Context context = getContext();
            Activity activity = context instanceof Activity ? (Activity) context : null;
            window = activity != null ? activity.getWindow() : null;
            if (window == null || (insetsController = window.getInsetsController()) == null) {
                return;
            }
            insetsController.show(WindowInsets.Type.statusBars() | WindowInsets.Type.navigationBars());
            return;
        }
        Context context2 = getContext();
        Activity activity2 = context2 instanceof Activity ? (Activity) context2 : null;
        window = activity2 != null ? activity2.getWindow() : null;
        if (window == null || (decorView = window.getDecorView()) == null) {
            return;
        }
        decorView.setSystemUiVisibility(1792);
    }

    private final void a0() {
        ShorttvModel.UGCVideoInteractiveInfo interactiveInfo;
        Boolean hasFavorite;
        ShorttvModel.UGCVideoInteractiveInfo interactiveInfo2;
        String favoriteNum;
        ShorttvModel.UGCVideo uGCVideo = this.data;
        this.viewBinding.f69828z.setText(ShortTvExtKt.t(ht.e.a((uGCVideo == null || (interactiveInfo2 = uGCVideo.getInteractiveInfo()) == null || (favoriteNum = interactiveInfo2.getFavoriteNum()) == null) ? 0L : Long.parseLong(favoriteNum))));
        AppCompatTextView appCompatTextView = this.viewBinding.f69828z;
        ShorttvModel.UGCVideo uGCVideo2 = this.data;
        appCompatTextView.setSelected((uGCVideo2 == null || (interactiveInfo = uGCVideo2.getInteractiveInfo()) == null || (hasFavorite = interactiveInfo.getHasFavorite()) == null) ? false : hasFavorite.booleanValue());
    }

    private final void b0() {
        ShorttvModel.UGCVideoCreator creator;
        ShorttvModel.UGCVideo uGCVideo = this.data;
        boolean zC = (uGCVideo == null || (creator = uGCVideo.getCreator()) == null) ? false : Intrinsics.c(creator.getHasSubscribe(), Boolean.TRUE);
        ms.j0 j0Var = this.viewBinding;
        AppCompatImageView appCompatImageView = j0Var.f69816n;
        if (!zC) {
            Group groupContent = j0Var.f69808f;
            Intrinsics.g(groupContent, "groupContent");
            if (groupContent.getVisibility() == 0) {
                Intrinsics.e(appCompatImageView);
                ct.b.d(appCompatImageView);
                return;
            }
        }
        Intrinsics.e(appCompatImageView);
        ct.b.b(appCompatImageView);
    }

    private final void c0() {
        ShorttvModel.UGCVideoInteractiveInfo interactiveInfo;
        Boolean hasLike;
        ShorttvModel.UGCVideoInteractiveInfo interactiveInfo2;
        String likeNum;
        ShorttvModel.UGCVideo uGCVideo = this.data;
        this.viewBinding.B.setText(ShortTvExtKt.t(ht.e.a((uGCVideo == null || (interactiveInfo2 = uGCVideo.getInteractiveInfo()) == null || (likeNum = interactiveInfo2.getLikeNum()) == null) ? 0L : Long.parseLong(likeNum))));
        AppCompatTextView appCompatTextView = this.viewBinding.B;
        ShorttvModel.UGCVideo uGCVideo2 = this.data;
        appCompatTextView.setSelected((uGCVideo2 == null || (interactiveInfo = uGCVideo2.getInteractiveInfo()) == null || (hasLike = interactiveInfo.getHasLike()) == null) ? false : hasLike.booleanValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void d0(long progress) {
        int i11 = (int) progress;
        this.viewBinding.f69823u.setProgress(i11);
        this.viewBinding.f69820r.setProgress(i11);
        this.viewBinding.D.setText(com.transsion.shorttv_pugc.utils.j.a(i11) + " / " + com.transsion.shorttv_pugc.utils.j.a(this.viewBinding.f69820r.getMax()));
    }

    private final void e0(long max) {
        int i11 = (int) max;
        this.viewBinding.f69823u.setMax(i11);
        this.viewBinding.f69820r.setMax(i11);
        lg.a.C0828a.f(lg.a.f68839a, this.TAG, "updateProgressMax: " + max + "  : " + this, false, 4, null);
    }

    private final void f0() {
        ShorttvModel.UGCVideoInteractiveInfo interactiveInfo;
        String shareNum;
        ShorttvModel.UGCVideo uGCVideo = this.data;
        ht.e.a((uGCVideo == null || (interactiveInfo = uGCVideo.getInteractiveInfo()) == null || (shareNum = interactiveInfo.getShareNum()) == null) ? 0L : Long.parseLong(shareNum));
    }

    private final void g0(Long count) {
        ShorttvModel.UGCVideoInteractiveInfo interactiveInfo;
        String shareNum;
        if (count == null || count.toString() == null) {
            ShorttvModel.UGCVideo uGCVideo = this.data;
            ht.e.a((uGCVideo == null || (interactiveInfo = uGCVideo.getInteractiveInfo()) == null || (shareNum = interactiveInfo.getShareNum()) == null) ? 0L : Long.parseLong(shareNum));
        }
    }

    private final void h0(Integer w11, Integer h11) {
        if (w11 == null || h11 == null || w11.intValue() == 0) {
            return;
        }
        FrameLayout flContainer = this.viewBinding.f69806d;
        Intrinsics.g(flContainer, "flContainer");
        ViewGroup.LayoutParams layoutParams = flContainer.getLayoutParams();
        if (layoutParams == null) {
            throw new NullPointerException("null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
        }
        ConstraintLayout.b bVar = (ConstraintLayout.b) layoutParams;
        ((ViewGroup.MarginLayoutParams) bVar).width = com.blankj.utilcode.util.y.e();
        ((ViewGroup.MarginLayoutParams) bVar).height = (h11.intValue() * ((ViewGroup.MarginLayoutParams) bVar).width) / w11.intValue();
        flContainer.setLayoutParams(bVar);
    }

    private final void i0(ShorttvModel.UGCVideo item) {
        Cover cover;
        String url;
        ShortTvDetailListFragment shortTvDetailListFragment;
        FragmentActivity activity;
        d0(0L);
        if (item != null) {
            int iVideoUGCPosition = item.videoUGCPosition();
            TnTextView tnTextView = this.viewBinding.G;
            StringCompanionObject stringCompanionObject = StringCompanionObject.f67289a;
            String str = String.format("EP%s", Arrays.copyOf(new Object[]{ShortTvExtKt.n(Integer.valueOf(iVideoUGCPosition))}, 1));
            Intrinsics.g(str, "format(...)");
            tnTextView.setText(str);
        }
        if (item == null || (cover = item.getCover()) == null || (url = cover.getUrl()) == null) {
            this.viewBinding.f69811i.setImageDrawable(null);
            return;
        }
        et.b.a aVar = et.b.f61995a;
        int i11 = this.screenWidth;
        String strD = aVar.d(url, (120 & 2) != 0 ? 0 : i11, (120 & 4) != 0 ? 0 : i11, (120 & 8) != 0, (120 & 16) != 0 ? false : false, (120 & 32) == 0 ? false : false, (120 & 64) != 0 ? 25 : 0);
        if (Intrinsics.c(strD, this.viewBinding.f69811i.getTag()) || (shortTvDetailListFragment = this.fragment) == null || (activity = shortTvDetailListFragment.getActivity()) == null) {
            return;
        }
        lg.a.C0828a.f(lg.a.f68839a, this.TAG, "into  " + this, false, 4, null);
        this.viewBinding.f69811i.setTag(strD);
        Glide.with(activity).load2(strD).addListener(new e()).into(this.viewBinding.f69811i);
    }

    private final void setLoading(boolean show) {
        this.isLoading = show;
        if (show) {
            ShortTvDetailListFragment shortTvDetailListFragment = this.fragment;
            Intrinsics.f(shortTvDetailListFragment, "null cannot be cast to non-null type com.transsion.shorttv_pugc.ui.fragment.ShortTvDetailListFragment");
            shortTvDetailListFragment.startLoading();
        } else {
            ShortTvDetailListFragment shortTvDetailListFragment2 = this.fragment;
            Intrinsics.f(shortTvDetailListFragment2, "null cannot be cast to non-null type com.transsion.shorttv_pugc.ui.fragment.ShortTvDetailListFragment");
            shortTvDetailListFragment2.hideLoading();
        }
    }

    private final void v(ORPlayerView orPlayerView, Video video) {
        ViewParent parent = orPlayerView.getParent();
        if (!Intrinsics.c(parent, this.viewBinding.f69806d)) {
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(orPlayerView);
            }
            this.viewBinding.f69806d.addView(orPlayerView, new FrameLayout.LayoutParams(-1, -1));
        }
        if (video != null) {
            h0(video.getWidth(), video.getHeight());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void w() {
        FrameLayout layoutTvEpisode = this.viewBinding.f69817o;
        Intrinsics.g(layoutTvEpisode, "layoutTvEpisode");
        if (layoutTvEpisode.getVisibility() == 0) {
            this.autoHideRightMenuHandle.removeCallbacks(this.autoHideRightMenuRunnable);
            this.autoHideRightMenuHandle.postDelayed(this.autoHideRightMenuRunnable, 3000L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void x(ShortTvVideoItemView shortTvVideoItemView) {
        shortTvVideoItemView.B();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void y(ShortTvVideoItemView shortTvVideoItemView) {
        shortTvVideoItemView.X();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void z(ShortTvVideoItemView shortTvVideoItemView, Boolean bool) {
        shortTvVideoItemView.a0();
    }

    public void app2Background() {
        ut.c cVar = this.dotLayer;
        if (cVar != null) {
            cVar.d(true);
        }
    }

    @Override // com.transsion.player.orplayer.f
    public void canNonSubscriberPlay(boolean z10, int i11, int i12, mo.d dVar) {
        com.transsion.player.orplayer.f.a.a(this, z10, i11, i12, dVar);
    }

    public FrameLayout getPlayerContainer() {
        FrameLayout flContainer = this.viewBinding.f69806d;
        Intrinsics.g(flContainer, "flContainer");
        return flContainer;
    }

    @Override // com.transsion.shorttv_pugc.ui.widget.a
    public long getProgress() {
        return this.viewBinding.f69823u.getProgress();
    }

    public ShortTvViewModel getViewModel(FragmentActivity activity) {
        Intrinsics.h(activity, "activity");
        return (ShortTvViewModel) new v0(activity).a(ShortTvViewModel.class);
    }

    @Override // com.transsion.player.orplayer.f
    public void initPlayer() {
        com.transsion.player.orplayer.f.a.b(this);
    }

    @Override // com.transsion.player.orplayer.f
    public void onAliyunDecodeErrorChangeSoftwareDecoder(ao.e eVar) {
        com.transsion.player.orplayer.f.a.c(this, eVar);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        androidx.p009lifecycle.u viewLifecycleOwner;
        LiveData liveDataJ;
        LiveData liveDataB;
        LiveData liveDataE;
        LiveData liveDataY;
        LiveData liveDataS;
        super.onAttachedToWindow();
        ShortTvDetailListFragment shortTvDetailListFragment = this.fragment;
        if (shortTvDetailListFragment == null || (viewLifecycleOwner = shortTvDetailListFragment.getViewLifecycleOwner()) == null) {
            return;
        }
        ShortTvViewModel shortTvViewModel = this.mShortTvViewModel;
        if (shortTvViewModel != null && (liveDataS = shortTvViewModel.S()) != null) {
            liveDataS.j(viewLifecycleOwner, this.observer);
        }
        ShortTvViewModel shortTvViewModel2 = this.mShortTvViewModel;
        if (shortTvViewModel2 != null && (liveDataY = shortTvViewModel2.y()) != null) {
            liveDataY.j(viewLifecycleOwner, this.favoriteObserver);
        }
        ShortTvViewModel shortTvViewModel3 = this.mShortTvViewModel;
        if (shortTvViewModel3 != null && (liveDataE = shortTvViewModel3.E()) != null) {
            liveDataE.j(viewLifecycleOwner, this.likeObserver);
        }
        ShortTvViewModel shortTvViewModel4 = this.mShortTvViewModel;
        if (shortTvViewModel4 != null && (liveDataB = shortTvViewModel4.B()) != null) {
            liveDataB.j(viewLifecycleOwner, this.followObserver);
        }
        ShortTvViewModel shortTvViewModel5 = this.mShortTvViewModel;
        if (shortTvViewModel5 == null || (liveDataJ = shortTvViewModel5.J()) == null) {
            return;
        }
        liveDataJ.j(viewLifecycleOwner, this.shareObserver);
    }

    public void onAudioTrackChange() {
    }

    @Override // com.transsion.player.orplayer.f
    public void onBufferedPosition(long j11, ao.e eVar) {
        com.transsion.player.orplayer.f.a.d(this, j11, eVar);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v11) {
        ShortTvDetailListFragment shortTvDetailListFragment;
        FragmentActivity activity;
        String strR;
        ShortTvViewModel shortTvViewModel;
        st.c cVarL;
        ShorttvModel.UGCVideoCollection belongToCollection;
        ShorttvModel.UGCVideoInteractiveInfo interactiveInfo;
        String shareNum;
        if (ht.c.f64838a.a(v11 != null ? v11.getId() : 0, 500L)) {
            return;
        }
        lg.a.C0828a.f(lg.a.f68839a, this.TAG, "onclick, " + v11, false, 4, null);
        Integer numValueOf = v11 != null ? Integer.valueOf(v11.getId()) : null;
        int i11 = R$id.iv_subscribe;
        if (numValueOf != null && numValueOf.intValue() == i11) {
            S(new Function0() { // from class: com.transsion.shorttv_pugc.ui.widget.g0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return ShortTvVideoItemView.K(this.f54392a);
                }
            });
            ut.a aVar = ut.a.f76891a;
            ShorttvModel.UGCVideo uGCVideo = this.data;
            ShortTvViewModel shortTvViewModel2 = this.mShortTvViewModel;
            ut.a.b(aVar, PushConstants.TOPIC_SUBSCRIBE, uGCVideo, null, shortTvViewModel2 != null ? shortTvViewModel2.I() : null, 4, null);
            return;
        }
        int i12 = R$id.tv_episode;
        if (numValueOf != null && numValueOf.intValue() == i12) {
            showEpisodeListDialog();
            return;
        }
        int i13 = R$id.tv_like;
        if (numValueOf != null && numValueOf.intValue() == i13) {
            S(new Function0() { // from class: com.transsion.shorttv_pugc.ui.widget.h0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return ShortTvVideoItemView.L(this.f54394a);
                }
            });
            ut.a aVar2 = ut.a.f76891a;
            ShorttvModel.UGCVideo uGCVideo2 = this.data;
            ShortTvViewModel shortTvViewModel3 = this.mShortTvViewModel;
            ut.a.b(aVar2, "like", uGCVideo2, null, shortTvViewModel3 != null ? shortTvViewModel3.I() : null, 4, null);
            return;
        }
        int i14 = R$id.iv_share;
        if (numValueOf != null && numValueOf.intValue() == i14) {
            ShortTvViewModel shortTvViewModel4 = this.mShortTvViewModel;
            if (shortTvViewModel4 != null) {
                shortTvViewModel4.i0(this.data);
            }
            P();
            ShorttvModel.UGCVideo uGCVideo3 = this.data;
            g0(Long.valueOf((uGCVideo3 == null || (interactiveInfo = uGCVideo3.getInteractiveInfo()) == null || (shareNum = interactiveInfo.getShareNum()) == null) ? 1L : Long.parseLong(shareNum)));
            ut.a aVar3 = ut.a.f76891a;
            ShorttvModel.UGCVideo uGCVideo4 = this.data;
            ShortTvViewModel shortTvViewModel5 = this.mShortTvViewModel;
            ut.a.b(aVar3, "share", uGCVideo4, null, shortTvViewModel5 != null ? shortTvViewModel5.I() : null, 4, null);
            return;
        }
        int i15 = R$id.tv_favorite;
        if (numValueOf != null && numValueOf.intValue() == i15) {
            S(new Function0() { // from class: com.transsion.shorttv_pugc.ui.widget.i0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return ShortTvVideoItemView.M(this.f54396a);
                }
            });
            ut.a aVar4 = ut.a.f76891a;
            ShorttvModel.UGCVideo uGCVideo5 = this.data;
            ShortTvViewModel shortTvViewModel6 = this.mShortTvViewModel;
            ut.a.b(aVar4, "favorite", uGCVideo5, null, shortTvViewModel6 != null ? shortTvViewModel6.I() : null, 4, null);
            return;
        }
        int i16 = R$id.iv_play_status;
        if (numValueOf != null && numValueOf.intValue() == i16) {
            O();
            return;
        }
        int i17 = R$id.iv_short_cover;
        if (numValueOf == null || numValueOf.intValue() != i17) {
            int i18 = R$id.tv_name;
            if (numValueOf == null || numValueOf.intValue() != i18) {
                int i19 = R$id.iv_download;
                if (numValueOf == null || numValueOf.intValue() != i19) {
                    int i20 = R$id.iv_back;
                    if (numValueOf == null || numValueOf.intValue() != i20 || (shortTvDetailListFragment = this.fragment) == null || (activity = shortTvDetailListFragment.getActivity()) == null) {
                        return;
                    }
                    activity.finish();
                    return;
                }
                ShortTvViewModel shortTvViewModel7 = this.mShortTvViewModel;
                if (shortTvViewModel7 != null && (strR = shortTvViewModel7.r()) != null && (shortTvViewModel = this.mShortTvViewModel) != null && (cVarL = shortTvViewModel.L()) != null) {
                    Context context = getContext();
                    Intrinsics.f(context, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity");
                    FragmentActivity fragmentActivity = (FragmentActivity) context;
                    ShorttvModel.UGCVideo uGCVideo6 = this.data;
                    String collectionName = (uGCVideo6 == null || (belongToCollection = uGCVideo6.getBelongToCollection()) == null) ? null : belongToCollection.getCollectionName();
                    ShortTvViewModel shortTvViewModel8 = this.mShortTvViewModel;
                    String strI = shortTvViewModel8 != null ? shortTvViewModel8.I() : null;
                    ShorttvModel.UGCVideo uGCVideo7 = this.data;
                    cVarL.a(fragmentActivity, strR, collectionName, "ugc_video", "/ugc_shorts/detail", strI, uGCVideo7 != null ? uGCVideo7.getSubjectId() : null);
                }
                ut.a aVar5 = ut.a.f76891a;
                ShorttvModel.UGCVideo uGCVideo8 = this.data;
                ShortTvViewModel shortTvViewModel9 = this.mShortTvViewModel;
                ut.a.b(aVar5, "saved", uGCVideo8, null, shortTvViewModel9 != null ? shortTvViewModel9.I() : null, 4, null);
                return;
            }
        }
        S(new Function0() { // from class: com.transsion.shorttv_pugc.ui.widget.w
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ShortTvVideoItemView.N(this.f54429a);
            }
        });
        ut.a aVar6 = ut.a.f76891a;
        ShorttvModel.UGCVideo uGCVideo9 = this.data;
        ShortTvViewModel shortTvViewModel10 = this.mShortTvViewModel;
        ut.a.b(aVar6, "cover", uGCVideo9, null, shortTvViewModel10 != null ? shortTvViewModel10.I() : null, 4, null);
    }

    @Override // com.transsion.subtitle_download.a
    public void onComplete(SubtitleDownloadTable stDownloadTable) {
        Intrinsics.h(stDownloadTable, "stDownloadTable");
    }

    @Override // com.transsion.player.orplayer.f
    public void onCompletion(ao.e mediaSource) {
        lg.a.C0828a.r(lg.a.f68839a, this.TAG, new String[]{"onCompletion， play next"}, false, 4, null);
        ut.c cVar = this.dotLayer;
        if (cVar != null) {
            com.transsion.player.orplayer.f.a.f(cVar, null, 1, null);
        }
        d0(0L);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        LiveData liveDataB;
        LiveData liveDataE;
        LiveData liveDataJ;
        LiveData liveDataY;
        LiveData liveDataS;
        super.onDetachedFromWindow();
        ShortTvViewModel shortTvViewModel = this.mShortTvViewModel;
        if (shortTvViewModel != null && (liveDataS = shortTvViewModel.S()) != null) {
            liveDataS.o(this.observer);
        }
        ShortTvViewModel shortTvViewModel2 = this.mShortTvViewModel;
        if (shortTvViewModel2 != null && (liveDataY = shortTvViewModel2.y()) != null) {
            liveDataY.o(this.favoriteObserver);
        }
        ShortTvViewModel shortTvViewModel3 = this.mShortTvViewModel;
        if (shortTvViewModel3 != null && (liveDataJ = shortTvViewModel3.J()) != null) {
            liveDataJ.o(this.shareObserver);
        }
        ShortTvViewModel shortTvViewModel4 = this.mShortTvViewModel;
        if (shortTvViewModel4 != null && (liveDataE = shortTvViewModel4.E()) != null) {
            liveDataE.o(this.likeObserver);
        }
        ShortTvViewModel shortTvViewModel5 = this.mShortTvViewModel;
        if (shortTvViewModel5 != null && (liveDataB = shortTvViewModel5.B()) != null) {
            liveDataB.o(this.followObserver);
        }
        this.autoHideRightMenuHandle.removeCallbacksAndMessages(null);
    }

    @Override // com.transsion.subtitle_download.a
    public void onDownloading(int progress, SubtitleDownloadTable stDownloadTable) {
        Intrinsics.h(stDownloadTable, "stDownloadTable");
    }

    @Override // com.transsion.subtitle_download.a
    public void onFail(Exception e11, SubtitleDownloadTable dbBean) {
        Intrinsics.h(e11, "e");
        Intrinsics.h(dbBean, "dbBean");
    }

    @Override // com.transsion.player.orplayer.f
    public void onFocusChange(boolean z10) {
        com.transsion.player.orplayer.f.a.g(this, z10);
    }

    public void onGetDubsInfo() {
    }

    @Override // com.transsion.player.orplayer.f
    public void onIsPlayingChanged(boolean z10) {
        com.transsion.player.orplayer.f.a.h(this, z10);
    }

    @Override // com.transsion.player.orplayer.f
    public void onLoadingBegin(ao.e mediaSource) {
        ut.c cVar = this.dotLayer;
        if (cVar != null) {
            com.transsion.player.orplayer.f.a.j(cVar, null, 1, null);
        }
        setLoading(true);
    }

    @Override // com.transsion.player.orplayer.f
    public void onLoadingEnd(ao.e mediaSource) {
        ut.c cVar = this.dotLayer;
        if (cVar != null) {
            com.transsion.player.orplayer.f.a.l(cVar, null, 1, null);
        }
        setLoading(false);
        removeCallbacks(this.delayToastNetErrRunnable);
    }

    @Override // com.transsion.player.orplayer.f
    public void onLoadingProgress(int i11, float f11, ao.e eVar) {
        com.transsion.player.orplayer.f.a.m(this, i11, f11, eVar);
    }

    @Override // com.transsion.player.orplayer.f
    public void onLoopingStart() {
    }

    @Override // com.transsion.player.orplayer.f
    public void onMediaItemTransition(String str) {
        com.transsion.player.orplayer.f.a.p(this, str);
    }

    public final void onNetConnect() {
        lg.a.C0828a.f(lg.a.f68839a, "ORSubtitle_v", "onNetConnect, 网络恢复，检测字幕", false, 4, null);
    }

    @Override // com.transsion.shorttv_pugc.ui.widget.a
    public void onPageRelease(int position) {
        onPlayerReset();
    }

    @Override // com.transsion.shorttv_pugc.ui.widget.a
    public void onPageSelected(com.transsion.player.orplayer.g orPlayer, ORPlayerView orPlayerView, ShorttvModel.UGCVideo item) {
        ShortTvViewModel shortTvViewModel;
        this.orPlayer = orPlayer;
        this.orPlayerView = orPlayerView;
        ut.c cVar = this.dotLayer;
        if (cVar != null) {
            cVar.p(orPlayer);
        }
        ut.c cVar2 = this.dotLayer;
        if (cVar2 != null && orPlayer != null) {
            orPlayer.addPlayerListener(cVar2);
        }
        if (item != null && (shortTvViewModel = this.mShortTvViewModel) != null) {
            shortTvViewModel.c0(item.getEp());
        }
        updateShortTvInfo(orPlayer, orPlayerView, item);
    }

    @Override // com.transsion.player.orplayer.f
    public void onPlayError(PlayError errorInfo, ao.e mediaSource) {
        Integer errorCode;
        Intrinsics.h(errorInfo, "errorInfo");
        ut.c cVar = this.dotLayer;
        if (cVar != null) {
            com.transsion.player.orplayer.f.a.r(cVar, errorInfo, null, 2, null);
        }
        lg.a.f68839a.i("i_media", this.TAG + " --> IPlayerListener --> onPlayError()  errorCode:" + errorInfo.getErrorCode() + " errorMessage:" + errorInfo.getErrorMessage() + " url:" + (mediaSource != null ? mediaSource.k() : null) + " --> 短播放失败了", true);
        setLoading(false);
        Integer errorCode2 = errorInfo.getErrorCode();
        if ((errorCode2 != null && errorCode2.intValue() == 2001) || ((errorCode = errorInfo.getErrorCode()) != null && errorCode.intValue() == 2002)) {
            X();
        }
    }

    public void onPlayErrorChangePayer(TnPlayerType tnPlayerType, ao.e eVar) {
        com.transsion.player.orplayer.f.a.s(this, tnPlayerType, eVar);
    }

    @Override // com.transsion.player.orplayer.f
    public void onPlayerRelease(ao.e eVar) {
        com.transsion.player.orplayer.f.a.t(this, eVar);
    }

    @Override // com.transsion.player.orplayer.f
    public void onPlayerReset() {
        com.transsion.player.orplayer.g gVar;
        lg.a.C0828a c0828a = lg.a.f68839a;
        lg.a.C0828a.f(c0828a, this.TAG, "player- onPlayerReset data: " + this.data, false, 4, null);
        setKeepScreenOn(false);
        this.isClickPause = false;
        ShortTvDetailListFragment shortTvDetailListFragment = this.fragment;
        if (shortTvDetailListFragment != null) {
            shortTvDetailListFragment.P0(false);
        }
        this.isFirstFrame = false;
        this.isPrepare = false;
        ut.c cVar = this.dotLayer;
        if (cVar != null) {
            cVar.e(true, false);
        }
        AppCompatImageView ivCover = this.viewBinding.f69811i;
        Intrinsics.g(ivCover, "ivCover");
        ct.b.d(ivCover);
        lg.a.C0828a.f(c0828a, this.TAG, "onPlayerReset   visible  " + this, false, 4, null);
        AppCompatImageView ivPlayStatus = this.viewBinding.f69813k;
        Intrinsics.g(ivPlayStatus, "ivPlayStatus");
        ct.b.b(ivPlayStatus);
        com.transsion.player.orplayer.g gVar2 = this.orPlayer;
        if (gVar2 != null) {
            gVar2.removePlayerListener(this);
        }
        ut.c cVar2 = this.dotLayer;
        if (cVar2 != null && (gVar = this.orPlayer) != null) {
            gVar.removePlayerListener(cVar2);
        }
        this.orPlayer = null;
        this.orPlayerView = null;
        this.pagerLayoutManager = null;
        this.currentSaveProgress = 0L;
        d0(0L);
        e0(100L);
    }

    @Override // com.transsion.player.orplayer.f
    public void onPrepare(ao.e mediaSource) {
        LiveData liveDataD;
        ShortTvInnerPlayBean shortTvInnerPlayBean;
        ShorttvModel.UGCVideo uGCVideo;
        if (this.isPrepare) {
            return;
        }
        this.isPrepare = true;
        com.transsion.player.orplayer.g gVar = this.orPlayer;
        e0(gVar != null ? gVar.getDuration() : 0L);
        ShortTvViewModel shortTvViewModel = this.mShortTvViewModel;
        if (shortTvViewModel != null && (liveDataD = shortTvViewModel.D()) != null && (shortTvInnerPlayBean = (ShortTvInnerPlayBean) liveDataD.f()) != null && (uGCVideo = this.data) != null && shortTvInnerPlayBean.getPosition() == uGCVideo.getEp()) {
            long progress = shortTvInnerPlayBean.getProgress();
            lg.a.C0828a.f(lg.a.f68839a, this.TAG, "player- onPrepare, duration = " + this.viewBinding.f69823u.getProgress() + ", progress = " + progress + "  this = " + this, false, 4, null);
            if (progress > 0) {
                this.currentSaveProgress = progress;
                com.transsion.player.orplayer.g gVar2 = this.orPlayer;
                if (gVar2 != null) {
                    gVar2.seekTo(progress);
                }
            }
            ShortTvViewModel shortTvViewModel2 = this.mShortTvViewModel;
            if (shortTvViewModel2 != null) {
                shortTvViewModel2.m();
            }
        }
        setKeepScreenOn(true);
    }

    @Override // com.transsion.player.orplayer.f
    public void onProgress(long progress, ao.e mediaSource) {
        com.transsion.player.orplayer.g gVar;
        com.transsion.player.orplayer.g gVar2;
        if (this.isHorizontalDragging) {
            return;
        }
        long max = this.viewBinding.f69823u.getMax();
        if (max <= 0 || max == 100 || (gVar2 = this.orPlayer) == null || max != gVar2.getDuration()) {
            com.transsion.player.orplayer.g gVar3 = this.orPlayer;
            long duration = gVar3 != null ? gVar3.getDuration() : 0L;
            if (duration <= 0) {
                lg.a.C0828a.f(lg.a.f68839a, this.TAG, "onProgress- duration <= 0, return", false, 4, null);
                return;
            }
            e0(duration);
        }
        ut.c cVar = this.dotLayer;
        if (cVar != null) {
            com.transsion.player.orplayer.f.a.z(cVar, progress, null, 2, null);
        }
        d0(progress);
        setLoading(false);
        if (progress > 0) {
            AppCompatImageView ivCover = this.viewBinding.f69811i;
            Intrinsics.g(ivCover, "ivCover");
            if (ivCover.getVisibility() == 0 && (gVar = this.orPlayer) != null && gVar.isPlaying()) {
                lg.a.C0828a.f(lg.a.f68839a, this.TAG, "onProgress-progress>= cover gone", false, 4, null);
                AppCompatImageView ivCover2 = this.viewBinding.f69811i;
                Intrinsics.g(ivCover2, "ivCover");
                ct.b.b(ivCover2);
            }
        }
    }

    @Override // com.transsion.player.orplayer.f
    public void onRenderFirstFrame() {
        lg.a.C0828a c0828a = lg.a.f68839a;
        String str = this.TAG;
        AppCompatImageView ivCover = this.viewBinding.f69811i;
        Intrinsics.g(ivCover, "ivCover");
        lg.a.C0828a.f(c0828a, str, "player-   viewBinding.ivCover.isVisible:" + (ivCover.getVisibility() == 0) + " onRenderFirstFrame" + this, false, 4, null);
        if (!this.isFirstFrame) {
            this.isFirstFrame = true;
            ut.c cVar = this.dotLayer;
            if (cVar != null) {
                cVar.onRenderFirstFrame();
            }
        }
        setLoading(false);
        AppCompatImageView ivCover2 = this.viewBinding.f69811i;
        Intrinsics.g(ivCover2, "ivCover");
        ct.b.b(ivCover2);
    }

    @Override // com.transsion.subtitle_download.a
    public void onSaveDownload(SubtitleDownloadTable subtitleDownloadTable) {
        com.transsion.subtitle_download.a.C0673a.a(this, subtitleDownloadTable);
    }

    @Override // com.transsion.player.orplayer.f
    public void onSetDataSource() {
    }

    @Override // androidx.p009lifecycle.r
    public void onStateChanged(androidx.p009lifecycle.u source, Lifecycle.Event event) {
        com.transsion.player.orplayer.g gVar;
        st.e eVarN;
        ShortTvDetailListFragment shortTvDetailListFragment;
        Lifecycle lifecycle;
        Intrinsics.h(source, "source");
        Intrinsics.h(event, "event");
        int i11 = a.f54369a[event.ordinal()];
        if (i11 == 1) {
            this.isPageHide = true;
            lg.a.C0828a.f(lg.a.f68839a, this.TAG, "player- onPause", false, 4, null);
            ShortTvViewModel shortTvViewModel = this.mShortTvViewModel;
            if ((shortTvViewModel == null || (eVarN = shortTvViewModel.N()) == null || !eVarN.f(this.orPlayer)) && (gVar = this.orPlayer) != null) {
                gVar.pause();
                return;
            }
            return;
        }
        if (i11 == 2) {
            this.isPageHide = false;
            if (!this.isClickPause && (shortTvDetailListFragment = this.fragment) != null && shortTvDetailListFragment.isVisible()) {
                lg.a.C0828a.f(lg.a.f68839a, this.TAG, "ON_RESUME", false, 4, null);
                post(new Runnable() { // from class: com.transsion.shorttv_pugc.ui.widget.x
                    @Override // java.lang.Runnable
                    public final void run() {
                        ShortTvVideoItemView.Q(this.f54430a);
                    }
                });
            }
            U();
            return;
        }
        if (i11 != 5) {
            return;
        }
        ShortTvDetailListFragment shortTvDetailListFragment2 = this.fragment;
        if (shortTvDetailListFragment2 != null && (lifecycle = shortTvDetailListFragment2.getLifecycle()) != null) {
            lifecycle.d(this);
        }
        ut.c cVar = this.dotLayer;
        if (cVar != null) {
            cVar.i();
        }
        com.transsion.player.orplayer.g gVar2 = this.orPlayer;
        if (gVar2 != null) {
            gVar2.removePlayerListener(this);
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent event) {
        Intrinsics.h(event, "event");
        GestureDetector gestureDetector = this.gestureDetector;
        if (gestureDetector == null || !gestureDetector.onTouchEvent(event)) {
            return super.onTouchEvent(event);
        }
        return true;
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

    @Override // com.transsion.subtitle_download.a
    public void onUnGzZip(SubtitleDownloadTable subtitleDownloadTable) {
        com.transsion.subtitle_download.a.C0673a.b(this, subtitleDownloadTable);
    }

    @Override // com.transsion.player.orplayer.f
    public void onVideoPause(ao.e mediaSource) {
        lg.a.C0828a.f(lg.a.f68839a, this.TAG, "player- onVideoPause", false, 4, null);
        if (this.isClickPause) {
            AppCompatImageView ivPlayStatus = this.viewBinding.f69813k;
            Intrinsics.g(ivPlayStatus, "ivPlayStatus");
            ivPlayStatus.setVisibility(0);
        }
        ut.c cVar = this.dotLayer;
        if (cVar != null) {
            com.transsion.player.orplayer.f.a.G(cVar, null, 1, null);
        }
        setKeepScreenOn(false);
        Y();
    }

    @Override // com.transsion.player.orplayer.f
    public void onVideoSizeChanged(int width, int height) {
        h0(Integer.valueOf(width), Integer.valueOf(height));
        lg.a.C0828a.f(lg.a.f68839a, this.TAG, "onVideoSizeChanged " + this, false, 4, null);
    }

    @Override // com.transsion.player.orplayer.f
    public void onVideoStart(ao.e mediaSource) {
        lg.a.C0828a.f(lg.a.f68839a, this.TAG, "player- onVideoStart", false, 4, null);
        onPrepare(mediaSource);
        ut.c cVar = this.dotLayer;
        if (cVar != null) {
            com.transsion.player.orplayer.f.a.J(cVar, null, 1, null);
        }
        AppCompatImageView ivPlayStatus = this.viewBinding.f69813k;
        Intrinsics.g(ivPlayStatus, "ivPlayStatus");
        ivPlayStatus.setVisibility(8);
        setLoading(false);
        setKeepScreenOn(true);
        w();
    }

    public final void reset() {
        lg.a.C0828a.f(lg.a.f68839a, this.TAG, "playNewMedia data: " + this.data, false, 4, null);
        setKeepScreenOn(false);
        this.isClickPause = false;
        ShortTvDetailListFragment shortTvDetailListFragment = this.fragment;
        if (shortTvDetailListFragment != null) {
            shortTvDetailListFragment.P0(false);
        }
        this.isFirstFrame = false;
        ut.c cVar = this.dotLayer;
        if (cVar != null) {
            cVar.e(true, false);
        }
        AppCompatImageView ivPlayStatus = this.viewBinding.f69813k;
        Intrinsics.g(ivPlayStatus, "ivPlayStatus");
        ct.b.b(ivPlayStatus);
        this.currentSaveProgress = 0L;
        d0(0L);
        e0(100L);
    }

    @Override // com.transsion.shorttv_pugc.ui.widget.a
    public void setData(ShorttvModel.UGCVideo item, ShortTvDetailListFragment fragment, Integer position, boolean videoLoadMore, String basePostId, String baseItemType, boolean isPayloads, boolean fromTrending) {
        WindowInsets rootWindowInsets;
        Insets insets;
        ViewGroup.MarginLayoutParams marginLayoutParams;
        ShorttvModel.UGCVideoCreator creator;
        FragmentActivity activity;
        ShorttvModel.UGCVideoCollection belongToCollection;
        String strI;
        Intrinsics.h(item, "item");
        Intrinsics.h(fragment, "fragment");
        lg.a.C0828a c0828a = lg.a.f68839a;
        String str = this.TAG;
        ShorttvModel.UGCVideoCollection belongToCollection2 = item.getBelongToCollection();
        lg.a.C0828a.f(c0828a, str, "setData position:" + position + "  ep:" + (belongToCollection2 != null ? belongToCollection2.getPosition() : null) + " item:" + item + " " + this, false, 4, null);
        this.data = item;
        this.fragment = fragment;
        this.videoLoadMore = Boolean.valueOf(videoLoadMore);
        this.basePostId = basePostId;
        this.position = position;
        this.viewBinding.f69808f.setReferencedIds(this.viewBinding.f69808f.getReferencedIds());
        FragmentActivity activity2 = fragment.getActivity();
        if (activity2 != null) {
            this.mShortTvViewModel = getViewModel(activity2);
            this.mShortTvSubViewModel = (xt.a) new v0(activity2).a(xt.a.class);
        }
        fragment.getLifecycle().a(this);
        if (!isPayloads) {
            this.dotLayer = new ut.c(fragment, this.mShortTvViewModel);
        }
        ut.c cVar = this.dotLayer;
        if (cVar != null) {
            cVar.l(basePostId);
        }
        ut.c cVar2 = this.dotLayer;
        if (cVar2 != null) {
            cVar2.k(baseItemType);
        }
        ut.c cVar3 = this.dotLayer;
        if (cVar3 != null) {
            cVar3.r(fragment.getPageName());
        }
        ShorttvModel.UGCVideo uGCVideo = this.data;
        if (uGCVideo == null || uGCVideo.isDataNotComplete()) {
            int iVideoUGCPosition = item.videoUGCPosition();
            TnTextView tnTextView = this.viewBinding.G;
            StringCompanionObject stringCompanionObject = StringCompanionObject.f67289a;
            String str2 = String.format("EP%s", Arrays.copyOf(new Object[]{ShortTvExtKt.n(Integer.valueOf(iVideoUGCPosition))}, 1));
            Intrinsics.g(str2, "format(...)");
            tnTextView.setText(str2);
            return;
        }
        ut.c cVar4 = this.dotLayer;
        if (cVar4 != null) {
            cVar4.s(this.data);
        }
        ut.c cVar5 = this.dotLayer;
        if (cVar5 != null) {
            ShortTvViewModel shortTvViewModel = this.mShortTvViewModel;
            if (shortTvViewModel == null || (strI = shortTvViewModel.I()) == null) {
                strI = "";
            }
            cVar5.n(strI);
        }
        ShorttvModel.UGCVideo uGCVideo2 = this.data;
        String strN = ShortTvExtKt.n((uGCVideo2 == null || (belongToCollection = uGCVideo2.getBelongToCollection()) == null) ? null : belongToCollection.getPosition());
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        int i11 = Build.VERSION.SDK_INT;
        spannableStringBuilder.setSpan(i11 >= 29 ? new ImageSpan(getContext(), ShorttvModel.f53724a.a(), 2) : new ImageSpan(getContext(), ShorttvModel.f53724a.a(), 1), 0, 0, 33);
        ShorttvModel.UGCVideo uGCVideo3 = this.data;
        String title = uGCVideo3 != null ? uGCVideo3.getTitle() : null;
        ShorttvModel.UGCVideo uGCVideo4 = this.data;
        spannableStringBuilder.append((CharSequence) ("ShortTV • " + title + " / EP" + (uGCVideo4 != null ? Integer.valueOf(uGCVideo4.videoUGCPosition()) : null)));
        AppCompatTextView appCompatTextView = this.viewBinding.f69827y;
        appCompatTextView.setText(spannableStringBuilder);
        appCompatTextView.setText(spannableStringBuilder);
        ShorttvModel.UGCVideo uGCVideo5 = this.data;
        if (uGCVideo5 != null && (creator = uGCVideo5.getCreator()) != null && (activity = fragment.getActivity()) != null) {
            et.b.a aVar = et.b.f61995a;
            ShapeableImageView ivShortCover = this.viewBinding.f69815m;
            Intrinsics.g(ivShortCover, "ivShortCover");
            String avatar = creator.getAvatar();
            aVar.k(activity, ivShortCover, avatar == null ? "" : avatar, (4064 & 8) != 0 ? aVar.c() : 0, (4064 & 16) != 0 ? aVar.b() : 0, (4064 & 32) != 0, (4064 & 64) != 0, (4064 & 128) != 0, (4064 & 256) != 0 ? false : false, (4064 & 512) != 0 ? false : false, (4064 & 1024) != 0 ? false : false, (4064 & 2048) != 0 ? 25 : 0);
            this.viewBinding.C.setText(creator.getNickname());
        }
        ShorttvModel.UGCVideo uGCVideo6 = this.data;
        Intrinsics.e(uGCVideo6);
        T(strN, uGCVideo6);
        if (i11 >= 30) {
            Context context = getContext();
            Intrinsics.f(context, "null cannot be cast to non-null type android.app.Activity");
            Window window = ((Activity) context).getWindow();
            if (window != null && (rootWindowInsets = window.getDecorView().getRootWindowInsets()) != null && (insets = rootWindowInsets.getInsets(WindowInsets.Type.tappableElement())) != null) {
                boolean z10 = com.blankj.utilcode.util.d.e(window) && com.blankj.utilcode.util.d.a() > 1;
                int iE = com.blankj.utilcode.util.i.e(16.0f);
                if (z10 || insets.top <= 0) {
                    Space progressGuideline = this.viewBinding.f69821s;
                    Intrinsics.g(progressGuideline, "progressGuideline");
                    ViewGroup.LayoutParams layoutParams = progressGuideline.getLayoutParams();
                    if (layoutParams == null) {
                        throw new NullPointerException("null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
                    }
                    ConstraintLayout.b bVar = (ConstraintLayout.b) layoutParams;
                    ViewGroup.LayoutParams layoutParams2 = getLayoutParams();
                    ViewGroup.MarginLayoutParams marginLayoutParams2 = layoutParams2 instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams2 : null;
                    int i12 = marginLayoutParams2 != null ? marginLayoutParams2.leftMargin : 0;
                    ViewGroup.LayoutParams layoutParams3 = getLayoutParams();
                    ViewGroup.MarginLayoutParams marginLayoutParams3 = layoutParams3 instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams3 : null;
                    int i13 = marginLayoutParams3 != null ? marginLayoutParams3.topMargin : 0;
                    ViewGroup.LayoutParams layoutParams4 = getLayoutParams();
                    marginLayoutParams = layoutParams4 instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams4 : null;
                    bVar.setMargins(i12, i13, marginLayoutParams != null ? marginLayoutParams.rightMargin : 0, iE);
                    progressGuideline.setLayoutParams(bVar);
                } else {
                    Space progressGuideline2 = this.viewBinding.f69821s;
                    Intrinsics.g(progressGuideline2, "progressGuideline");
                    ViewGroup.LayoutParams layoutParams5 = progressGuideline2.getLayoutParams();
                    if (layoutParams5 == null) {
                        throw new NullPointerException("null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
                    }
                    ConstraintLayout.b bVar2 = (ConstraintLayout.b) layoutParams5;
                    ViewGroup.LayoutParams layoutParams6 = getLayoutParams();
                    ViewGroup.MarginLayoutParams marginLayoutParams4 = layoutParams6 instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams6 : null;
                    int i14 = marginLayoutParams4 != null ? marginLayoutParams4.leftMargin : 0;
                    ViewGroup.LayoutParams layoutParams7 = getLayoutParams();
                    ViewGroup.MarginLayoutParams marginLayoutParams5 = layoutParams7 instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams7 : null;
                    int i15 = marginLayoutParams5 != null ? marginLayoutParams5.topMargin : 0;
                    ViewGroup.LayoutParams layoutParams8 = getLayoutParams();
                    marginLayoutParams = layoutParams8 instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams8 : null;
                    bVar2.setMargins(i14, i15, marginLayoutParams != null ? marginLayoutParams.rightMargin : 0, RangesKt.f(iE, insets.top));
                    progressGuideline2.setLayoutParams(bVar2);
                }
            }
        }
        i0(item);
        f0();
        b0();
        c0();
        a0();
        E();
    }

    @Override // com.transsion.player.orplayer.f
    public void setOnSeekCompleteListener() {
        com.transsion.player.orplayer.f.a.K(this);
    }

    public void setPagerLayoutManager(PagerLayoutManager pagerLayoutManager) {
        Intrinsics.h(pagerLayoutManager, "pagerLayoutManager");
        this.pagerLayoutManager = pagerLayoutManager;
    }

    public final void setVideoUrl(String url) {
        Intrinsics.h(url, "url");
    }

    public final void showEpisodeListDialog() {
        ShortTvDetailListFragment shortTvDetailListFragment = this.fragment;
        Intrinsics.f(shortTvDetailListFragment, "null cannot be cast to non-null type com.transsion.shorttv_pugc.ui.fragment.ShortTvDetailListFragment");
        shortTvDetailListFragment.Q0();
    }

    public void updateLockState(ShorttvModel.UGCVideo item) {
    }

    public void updateShortTvInfo(com.transsion.player.orplayer.g orPlayer, ORPlayerView orPlayerView, ShorttvModel.UGCVideo item) {
        lg.a.C0828a c0828a = lg.a.f68839a;
        String str = this.TAG;
        Integer num = this.position;
        ShorttvModel.UGCVideo uGCVideo = this.data;
        c0828a.u(str, "updateShortTvInfo:" + num + " ugcVideoId:" + (uGCVideo != null ? uGCVideo.getUgcVideoId() : null), true);
        if ((item != null ? item.getPlayUrl() : null) == null) {
            c0828a.c(this.TAG, "onPageSelect position:" + this.position + " item is null ", true);
            if (orPlayer != null) {
                orPlayer.pause();
                return;
            }
            return;
        }
        if (orPlayer != null) {
            orPlayer.setPlayerListener(this);
        }
        if (orPlayerView != null) {
            v(orPlayerView, null);
            lg.a.C0828a.f(c0828a, this.TAG, "addView-----", false, 4, null);
        }
        videoStartPrepare(this.pageFrom);
        String playUrl = item.getPlayUrl();
        if (playUrl != null) {
            lg.a.C0828a.r(c0828a, this.TAG, new String[]{"------seekTo url=" + playUrl + " "}, false, 4, null);
            if (orPlayer != null) {
                orPlayer.seekTo(playUrl, 0L);
            }
            setVideoUrl(playUrl);
        }
        if (orPlayer != null) {
            orPlayer.play();
        }
    }

    public final void videoStartPrepare(String pageFrom) {
        Intrinsics.h(pageFrom, "pageFrom");
        this.isFirstFrame = false;
        this.pageFrom = pageFrom;
        ut.c cVar = this.dotLayer;
        if (cVar != null) {
            cVar.q(pageFrom);
        }
        ut.c cVar2 = this.dotLayer;
        if (cVar2 != null) {
            cVar2.o("immersive_play");
        }
        ut.c cVar3 = this.dotLayer;
        if (cVar3 != null) {
            ShorttvModel.UGCVideo uGCVideo = this.data;
            cVar3.m(String.valueOf(uGCVideo != null ? Integer.valueOf(uGCVideo.getEp()) : null));
        }
        ut.c cVar4 = this.dotLayer;
        if (cVar4 != null) {
            cVar4.g();
        }
        ut.c cVar5 = this.dotLayer;
        if (cVar5 != null) {
            cVar5.a();
        }
        setLoading(true);
        ShortTvViewModel shortTvViewModel = this.mShortTvViewModel;
        if (shortTvViewModel != null) {
            shortTvViewModel.X();
        }
    }
}
