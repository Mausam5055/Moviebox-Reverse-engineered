package com.cloud.hisavana.sdk.common.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.app.NotificationCompat;
import androidx.core.view.WindowCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.WindowInsetsControllerCompat;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.cloud.hisavana.sdk.C0993p;
import com.cloud.hisavana.sdk.N0;
import com.cloud.hisavana.sdk.P;
import com.cloud.hisavana.sdk.R$drawable;
import com.cloud.hisavana.sdk.R$id;
import com.cloud.hisavana.sdk.R$string;
import com.cloud.hisavana.sdk.Z;
import com.cloud.hisavana.sdk.api.view.AdBadgeView;
import com.cloud.hisavana.sdk.api.view.AdCloseView;
import com.cloud.hisavana.sdk.api.view.AdDisclaimerView;
import com.cloud.hisavana.sdk.api.view.StoreMarkView;
import com.cloud.hisavana.sdk.b2;
import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.common.bean.AdImage;
import com.cloud.hisavana.sdk.common.bean.PslinkInfo;
import com.cloud.hisavana.sdk.common.bean.RewardedState;
import com.cloud.hisavana.sdk.common.bean.VastData;
import com.cloud.hisavana.sdk.common.bean.VastMedia;
import com.cloud.hisavana.sdk.common.bean.VideoMask;
import com.cloud.hisavana.sdk.common.constant.Constants;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.common.http.DownLoadRequest;
import com.cloud.hisavana.sdk.common.http.listener.DrawableResponseListener;
import com.cloud.hisavana.sdk.common.tracking.DownUpPointBean;
import com.cloud.hisavana.sdk.common.util.HSChronometer;
import com.cloud.hisavana.sdk.common.util.i0;
import com.cloud.hisavana.sdk.common.widget.InteractiveWebView;
import com.cloud.hisavana.sdk.common.widget.video.RewardedVideoView;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.data.bean.response.NativeBean;
import com.cloud.hisavana.sdk.e4;
import com.cloud.hisavana.sdk.f4;
import com.cloud.hisavana.sdk.g4;
import com.cloud.hisavana.sdk.m0;
import com.cloud.hisavana.sdk.o0;
import com.cloud.hisavana.sdk.t2;
import com.cloud.hisavana.sdk.u1;
import com.cloud.hisavana.sdk.v2;
import com.cloud.hisavana.sdk.x1;
import com.cloud.hisavana.sdk.x3;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.vungle.ads.internal.model.AdPayload;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000à\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u0007\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\r\b\u0016\u0018\u0000 a2\u00020\u00012\u00020\u0002:\u0003TQYB\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0007\u0010\u0004J\u000f\u0010\b\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\b\u0010\u0004J\u000f\u0010\t\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\t\u0010\u0004J\u000f\u0010\n\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\n\u0010\u0004J\u000f\u0010\u000b\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u000b\u0010\u0004J\u000f\u0010\f\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\f\u0010\u0004J\u000f\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0010\u0010\u0004J\u000f\u0010\u0011\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0011\u0010\u0004J\u000f\u0010\u0012\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0012\u0010\u0004J\u000f\u0010\u0013\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0013\u0010\u0004J\u000f\u0010\u0014\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0014\u0010\u0004J\u0017\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\u0015H\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0019\u0010\u0004J\u000f\u0010\u001a\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u001a\u0010\u0004J\u000f\u0010\u001b\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u001b\u0010\u0004J\u000f\u0010\u001c\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u001c\u0010\u0004J\u0017\u0010\u001f\u001a\u00020\u00052\u0006\u0010\u001e\u001a\u00020\u001dH\u0002¢\u0006\u0004\b\u001f\u0010 J\u0017\u0010#\u001a\u00020\u00052\u0006\u0010\"\u001a\u00020!H\u0002¢\u0006\u0004\b#\u0010$J\u0017\u0010&\u001a\u00020\u00052\u0006\u0010%\u001a\u00020!H\u0002¢\u0006\u0004\b&\u0010$J\u000f\u0010'\u001a\u00020\u0005H\u0002¢\u0006\u0004\b'\u0010\u0004J\u000f\u0010(\u001a\u00020\u0005H\u0002¢\u0006\u0004\b(\u0010\u0004J\u000f\u0010)\u001a\u00020\u0005H\u0002¢\u0006\u0004\b)\u0010\u0004J'\u0010-\u001a\u00020\u00052\u0006\u0010*\u001a\u00020\u001d2\u0006\u0010+\u001a\u00020\u001d2\u0006\u0010,\u001a\u00020\u001dH\u0002¢\u0006\u0004\b-\u0010.J\u000f\u0010/\u001a\u00020\u0005H\u0002¢\u0006\u0004\b/\u0010\u0004J\u000f\u00100\u001a\u00020\u0005H\u0002¢\u0006\u0004\b0\u0010\u0004J\u0017\u00102\u001a\u00020\u00052\u0006\u00101\u001a\u00020\rH\u0002¢\u0006\u0004\b2\u00103J\u0019\u00106\u001a\u00020\u00052\b\u00105\u001a\u0004\u0018\u000104H\u0002¢\u0006\u0004\b6\u00107J!\u0010;\u001a\u00020\u00052\u0006\u00108\u001a\u00020\r2\b\u0010:\u001a\u0004\u0018\u000109H\u0002¢\u0006\u0004\b;\u0010<J\u0017\u0010>\u001a\u00020\u00052\u0006\u0010=\u001a\u00020\rH\u0002¢\u0006\u0004\b>\u00103J\u0017\u0010@\u001a\u00020\u00052\u0006\u0010?\u001a\u00020\u001dH\u0002¢\u0006\u0004\b@\u0010 J!\u0010C\u001a\u00020\u00052\u0006\u0010?\u001a\u00020\u001d2\b\u0010B\u001a\u0004\u0018\u00010AH\u0002¢\u0006\u0004\bC\u0010DJ\u0019\u0010G\u001a\u00020\u00052\b\u0010F\u001a\u0004\u0018\u00010EH\u0014¢\u0006\u0004\bG\u0010HJ\u0017\u0010K\u001a\u00020\u00052\u0006\u0010J\u001a\u00020IH\u0016¢\u0006\u0004\bK\u0010LJ\u000f\u0010M\u001a\u00020\u0005H\u0014¢\u0006\u0004\bM\u0010\u0004J\u000f\u0010N\u001a\u00020\u0005H\u0014¢\u0006\u0004\bN\u0010\u0004J\u000f\u0010O\u001a\u00020\u0005H\u0017¢\u0006\u0004\bO\u0010\u0004J\u000f\u0010P\u001a\u00020\u0005H\u0014¢\u0006\u0004\bP\u0010\u0004J!\u0010Q\u001a\u00020\u00052\u0006\u00108\u001a\u00020\r2\b\u0010:\u001a\u0004\u0018\u000109H\u0016¢\u0006\u0004\bQ\u0010<J\u0017\u0010T\u001a\u00020\u00052\u0006\u0010S\u001a\u00020RH\u0016¢\u0006\u0004\bT\u0010UJ\u0011\u0010W\u001a\u0004\u0018\u00010VH\u0016¢\u0006\u0004\bW\u0010XJ\u000f\u0010Y\u001a\u00020\rH\u0016¢\u0006\u0004\bY\u0010\u000fJ\u0017\u0010T\u001a\u00020\u00052\u0006\u0010Z\u001a\u00020\rH\u0016¢\u0006\u0004\bT\u00103J\u000f\u0010[\u001a\u00020\u0005H\u0016¢\u0006\u0004\b[\u0010\u0004J\u000f\u0010T\u001a\u00020\u0005H\u0016¢\u0006\u0004\bT\u0010\u0004J\u000f\u0010\\\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\\\u0010\u0004J\u0019\u0010T\u001a\u00020\u00052\b\u0010]\u001a\u0004\u0018\u000109H\u0016¢\u0006\u0004\bT\u0010^J\u000f\u0010Q\u001a\u00020\u0005H\u0016¢\u0006\u0004\bQ\u0010\u0004R\u0014\u0010`\u001a\u00020\u001d8\u0002X\u0082D¢\u0006\u0006\n\u0004\bT\u0010_R\u0014\u0010b\u001a\u00020R8\u0002X\u0082D¢\u0006\u0006\n\u0004\bQ\u0010aR\u0016\u0010d\u001a\u00020!8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bY\u0010cR\u0018\u0010f\u001a\u0004\u0018\u00010V8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b[\u0010eR\u0016\u0010g\u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\\\u0010_R\u0016\u0010h\u001a\u00020!8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bW\u0010cR\u0016\u0010j\u001a\u00020R8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bi\u0010aR\u0018\u0010m\u001a\u0004\u0018\u00010k8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b'\u0010lR\u0018\u0010p\u001a\u0004\u0018\u00010n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b)\u0010oR\u0018\u0010s\u001a\u0004\u0018\u00010q8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0006\u0010rR\u0018\u0010v\u001a\u0004\u0018\u00010t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0017\u0010uR\u0018\u0010y\u001a\u0004\u0018\u00010w8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u0010xR\u0018\u0010{\u001a\u0004\u0018\u00010q8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bz\u0010rR\u0018\u0010}\u001a\u0004\u0018\u00010q8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b|\u0010rR\u0018\u0010\u007f\u001a\u0004\u0018\u00010q8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b~\u0010rR\u001c\u0010\u0083\u0001\u001a\u0005\u0018\u00010\u0080\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0081\u0001\u0010\u0082\u0001R\u001c\u0010\u0087\u0001\u001a\u0005\u0018\u00010\u0084\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0085\u0001\u0010\u0086\u0001R\u001c\u0010\u008b\u0001\u001a\u0005\u0018\u00010\u0088\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0089\u0001\u0010\u008a\u0001R\u001c\u0010\u008f\u0001\u001a\u0005\u0018\u00010\u008c\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008d\u0001\u0010\u008e\u0001R\u001c\u0010\u0093\u0001\u001a\u0005\u0018\u00010\u0090\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0091\u0001\u0010\u0092\u0001R\u001c\u0010\u0097\u0001\u001a\u0005\u0018\u00010\u0094\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0095\u0001\u0010\u0096\u0001R\u001b\u0010\u0098\u0001\u001a\u0005\u0018\u00010\u0094\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b6\u0010\u0096\u0001R\u0018\u0010\u009a\u0001\u001a\u00020\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u001f\u0010\u0099\u0001R\u0018\u0010\u009b\u0001\u001a\u00020\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bC\u0010\u0099\u0001R\u0017\u0010\u009c\u0001\u001a\u00020!8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b-\u0010cR\u0018\u0010\u009e\u0001\u001a\u00020!8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u009d\u0001\u0010cR\u001a\u0010¢\u0001\u001a\u00030\u009f\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b \u0001\u0010¡\u0001R\u0017\u0010£\u0001\u001a\u00020R8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u0010aR,\u0010«\u0001\u001a\u0005\u0018\u00010¤\u00018\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\b¥\u0001\u0010¦\u0001\u001a\u0006\b§\u0001\u0010¨\u0001\"\u0006\b©\u0001\u0010ª\u0001R,\u0010³\u0001\u001a\u0005\u0018\u00010¬\u00018\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\b\u00ad\u0001\u0010®\u0001\u001a\u0006\b¯\u0001\u0010°\u0001\"\u0006\b±\u0001\u0010²\u0001R\u0018\u0010µ\u0001\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b´\u0001\u0010@R\u0017\u0010¶\u0001\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b@\u0010@R\u0017\u0010·\u0001\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b>\u0010@R\u0017\u0010¸\u0001\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b;\u0010@¨\u0006¹\u0001"}, d2 = {"Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;", "Landroid/app/Activity;", "Lcom/cloud/hisavana/sdk/g4;", "<init>", "()V", "", "j", "Y", "S", "U", "n0", "g0", "p0", "", "q0", "()Z", "c0", "i0", "j0", "t0", "l0", "", "volume", CampaignEx.JSON_KEY_AD_K, "(F)V", "s0", "a0", "r0", "e0", "", "videoUrl", "w", "(Ljava/lang/String;)V", "", "duration", "B", "(J)V", "remainingDuration", "l", "h", "w0", "i", CampaignEx.JSON_KEY_TITLE, "message", "buttonText", "y", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "u0", "v0", "isShowToast", "L", "(Z)V", "Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;", "adErrorCode", "v", "(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V", "isClose", "Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;", "downUpPointBean", "H", "(ZLcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;)V", "isSentEvent", "G", NotificationCompat.CATEGORY_EVENT, "F", "", "params", "x", "(Ljava/lang/String;Ljava/lang/Object;)V", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/content/res/Configuration;", "newConfig", "onConfigurationChanged", "(Landroid/content/res/Configuration;)V", "onResume", "onPause", "onBackPressed", "onDestroy", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "", "psClickType", "a", "(I)V", "Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;", "f", "()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;", "c", NotificationCompat.CATEGORY_STATUS, DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "e", "pointBean", "(Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;)V", "Ljava/lang/String;", "tag", "I", "defaultDuration", "J", "rewardDuration", "Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;", "adBean", RequestParameters.PREFIX, "observerId", "g", "adMediaType", "Landroidx/constraintlayout/widget/ConstraintLayout;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "adMainLayout", "Landroid/widget/FrameLayout;", "Landroid/widget/FrameLayout;", "adContainer", "Landroid/widget/ImageView;", "Landroid/widget/ImageView;", "adVolume", "Lcom/cloud/hisavana/sdk/common/util/HSChronometer;", "Lcom/cloud/hisavana/sdk/common/util/HSChronometer;", "adChronometer", "Lcom/cloud/hisavana/sdk/common/widget/video/RewardedVideoView;", "Lcom/cloud/hisavana/sdk/common/widget/video/RewardedVideoView;", "adVideoView", "m", "adImageView", "n", "adIcon", "o", "adChoicesView", "Lcom/cloud/hisavana/sdk/api/view/AdBadgeView;", TtmlNode.TAG_P, "Lcom/cloud/hisavana/sdk/api/view/AdBadgeView;", "adBadgeView", "Lcom/cloud/hisavana/sdk/api/view/AdCloseView;", CampaignEx.JSON_KEY_AD_Q, "Lcom/cloud/hisavana/sdk/api/view/AdCloseView;", "adCloseView", "Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;", CampaignEx.JSON_KEY_AD_R, "Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;", "storeMarkView", "Lcom/cloud/hisavana/sdk/api/view/AdDisclaimerView;", "s", "Lcom/cloud/hisavana/sdk/api/view/AdDisclaimerView;", "adDisclaimerView", "Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;", "t", "Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;", "interactiveWebView", "Lcom/cloud/hisavana/sdk/common/util/v;", TmcStartParams.KEY_URL_SHORT, "Lcom/cloud/hisavana/sdk/common/util/v;", "retainDialog", "ruDialog", "Z", "isLandscape", "isNeedRuMargin", "lastClickTime", "z", "triggerMillis", "Lcom/cloud/hisavana/sdk/common/bean/RewardedState;", "A", "Lcom/cloud/hisavana/sdk/common/bean/RewardedState;", "state", "closeDelayTimeDuration", "Lcom/cloud/hisavana/sdk/o0;", "C", "Lcom/cloud/hisavana/sdk/o0;", "V", "()Lcom/cloud/hisavana/sdk/o0;", "setRewardStyle", "(Lcom/cloud/hisavana/sdk/o0;)V", "rewardStyle", "Le7/i;", "D", "Le7/i;", "getHsConfirmPopUpWindow", "()Le7/i;", "setHsConfirmPopUpWindow", "(Le7/i;)V", "hsConfirmPopUpWindow", "E", "downX", "downY", "upX", "upY", "api_release"}, k = 1, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public class HisavanaRewardedActivity extends Activity implements g4 {

    /* JADX INFO: renamed from: I, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static WeakReference J;

    /* JADX INFO: renamed from: B, reason: from kotlin metadata */
    private int closeDelayTimeDuration;

    /* JADX INFO: renamed from: C, reason: from kotlin metadata */
    private o0 rewardStyle;

    /* JADX INFO: renamed from: D, reason: from kotlin metadata */
    private e7.i hsConfirmPopUpWindow;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private AdsDTO adBean;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private long observerId;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private int adMediaType;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private ConstraintLayout adMainLayout;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private FrameLayout adContainer;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private ImageView adVolume;

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    private HSChronometer adChronometer;

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    private RewardedVideoView adVideoView;

    /* JADX INFO: renamed from: m, reason: collision with root package name and from kotlin metadata */
    private ImageView adImageView;

    /* JADX INFO: renamed from: n, reason: collision with root package name and from kotlin metadata */
    private ImageView adIcon;

    /* JADX INFO: renamed from: o, reason: collision with root package name and from kotlin metadata */
    private ImageView adChoicesView;

    /* JADX INFO: renamed from: p, reason: collision with root package name and from kotlin metadata */
    private AdBadgeView adBadgeView;

    /* JADX INFO: renamed from: q, reason: collision with root package name and from kotlin metadata */
    private AdCloseView adCloseView;

    /* JADX INFO: renamed from: r, reason: collision with root package name and from kotlin metadata */
    private StoreMarkView storeMarkView;

    /* JADX INFO: renamed from: s, reason: collision with root package name and from kotlin metadata */
    private AdDisclaimerView adDisclaimerView;

    /* JADX INFO: renamed from: t, reason: collision with root package name and from kotlin metadata */
    private InteractiveWebView interactiveWebView;

    /* JADX INFO: renamed from: u, reason: collision with root package name and from kotlin metadata */
    private com.cloud.hisavana.sdk.common.util.v retainDialog;

    /* JADX INFO: renamed from: v, reason: collision with root package name and from kotlin metadata */
    private com.cloud.hisavana.sdk.common.util.v ruDialog;

    /* JADX INFO: renamed from: w, reason: collision with root package name and from kotlin metadata */
    private boolean isLandscape;

    /* JADX INFO: renamed from: x, reason: collision with root package name and from kotlin metadata */
    private boolean isNeedRuMargin;

    /* JADX INFO: renamed from: y, reason: collision with root package name and from kotlin metadata */
    private long lastClickTime;

    /* JADX INFO: renamed from: z, reason: collision with root package name and from kotlin metadata */
    private long triggerMillis;

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private final String tag = "Rewarded";

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private final int defaultDuration = 5;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private long rewardDuration = ((long) 5) * 1000;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private String prefix = "";

    /* JADX INFO: renamed from: A, reason: from kotlin metadata */
    private RewardedState state = new RewardedState(0, 0.0f, false, false, false, false, false, false, false, 511, null);

    /* JADX INFO: renamed from: E, reason: from kotlin metadata */
    private float downX = -1.0f;

    /* JADX INFO: renamed from: F, reason: from kotlin metadata */
    private float downY = -1.0f;

    /* JADX INFO: renamed from: G, reason: from kotlin metadata */
    private float upX = -1.0f;

    /* JADX INFO: renamed from: H, reason: from kotlin metadata */
    private float upY = -1.0f;

    /* JADX INFO: renamed from: com.cloud.hisavana.sdk.common.activity.HisavanaRewardedActivity$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void a(WeakReference weakReference) {
            HisavanaRewardedActivity.J = weakReference;
        }
    }

    public final class b extends com.cloud.hisavana.sdk.common.tranmeasure.a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private WeakReference f21761b;

        public b(HisavanaRewardedActivity hisavanaRewardedActivity) {
            this.f21761b = new WeakReference(hisavanaRewardedActivity);
        }

        @Override // com.cloud.hisavana.sdk.common.tranmeasure.a, com.cloud.hisavana.sdk.common.tranmeasure.d.b
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public void a(AdsDTO adsDTO) {
            super.a(adsDTO);
            if (((HisavanaRewardedActivity) this.f21761b.get()) != null) {
                HisavanaRewardedActivity hisavanaRewardedActivity = HisavanaRewardedActivity.this;
                hisavanaRewardedActivity.u0();
                hisavanaRewardedActivity.v0();
            }
        }
    }

    public final class c implements View.OnTouchListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final boolean f21763a;

        public c(boolean z10) {
            this.f21763a = z10;
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View v11, MotionEvent event) {
            Intrinsics.h(v11, "v");
            Intrinsics.h(event, "event");
            int action = event.getAction();
            if (action == 0) {
                HisavanaRewardedActivity.this.downX = event.getX();
                HisavanaRewardedActivity.this.downY = event.getY();
            } else if (action == 1) {
                HisavanaRewardedActivity.this.upX = event.getX();
                HisavanaRewardedActivity.this.upY = event.getY();
                if (Math.hypot(HisavanaRewardedActivity.this.upX - HisavanaRewardedActivity.this.downX, HisavanaRewardedActivity.this.upY - HisavanaRewardedActivity.this.downY) < 50.0d && this.f21763a) {
                    v11.performClick();
                    o0 rewardStyle = HisavanaRewardedActivity.this.getRewardStyle();
                    if (rewardStyle != null) {
                        rewardStyle.e(false, new DownUpPointBean(HisavanaRewardedActivity.this.downX, HisavanaRewardedActivity.this.downY, HisavanaRewardedActivity.this.upX, HisavanaRewardedActivity.this.upY, v11.getMeasuredWidth(), v11.getMeasuredHeight()), null);
                    }
                }
            }
            return this.f21763a;
        }
    }

    public static final class d implements InteractiveWebView.c {
        d() {
        }

        @Override // com.cloud.hisavana.sdk.common.widget.InteractiveWebView.c
        public void a(String str) {
            e4.b().d(HisavanaRewardedActivity.this.tag, "interactiveEvent, eventId is " + str);
            AthenaTracker.y(HisavanaRewardedActivity.this.adBean, str);
        }

        @Override // com.cloud.hisavana.sdk.common.widget.InteractiveWebView.c
        public void b() {
            e4.b().d(HisavanaRewardedActivity.this.tag, "handleClick");
            o0 rewardStyle = HisavanaRewardedActivity.this.getRewardStyle();
            if (rewardStyle != null) {
                float f11 = HisavanaRewardedActivity.this.downX;
                float f12 = HisavanaRewardedActivity.this.downY;
                float f13 = HisavanaRewardedActivity.this.upX;
                float f14 = HisavanaRewardedActivity.this.upY;
                InteractiveWebView interactiveWebView = HisavanaRewardedActivity.this.interactiveWebView;
                int measuredWidth = interactiveWebView != null ? interactiveWebView.getMeasuredWidth() : 0;
                InteractiveWebView interactiveWebView2 = HisavanaRewardedActivity.this.interactiveWebView;
                rewardStyle.e(false, new DownUpPointBean(f11, f12, f13, f14, measuredWidth, interactiveWebView2 != null ? interactiveWebView2.getMeasuredHeight() : 0), HisavanaRewardedActivity.this.interactiveWebView);
            }
        }

        @Override // com.cloud.hisavana.sdk.common.widget.InteractiveWebView.c
        public void c() {
            e4.b().d(HisavanaRewardedActivity.this.tag, "timeoutShutdown");
        }
    }

    public static final class e extends f4 {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ RewardedVideoView f21766e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ HisavanaRewardedActivity f21767f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e(RewardedVideoView rewardedVideoView, HisavanaRewardedActivity hisavanaRewardedActivity, AdsDTO adsDTO) {
            super(adsDTO);
            this.f21766e = rewardedVideoView;
            this.f21767f = hisavanaRewardedActivity;
        }

        @Override // com.cloud.hisavana.sdk.f4, com.cloud.hisavana.sdk.q4
        public void a(C0993p error) {
            Intrinsics.h(error, "error");
            super.a(error);
            this.f21766e.showRepeatButton(true);
        }

        @Override // com.cloud.hisavana.sdk.f4, com.cloud.hisavana.sdk.q4
        public void b() {
            if (!this.f21767f.state.isPlayStart()) {
                super.b();
            }
            this.f21767f.state.setPlayStart(true);
        }

        @Override // com.cloud.hisavana.sdk.f4, com.cloud.hisavana.sdk.q4
        public void onComplete() {
            if (!this.f21767f.state.isPlayComplete()) {
                super.onComplete();
            }
            this.f21767f.state.setPlayComplete(true);
        }

        @Override // com.cloud.hisavana.sdk.f4, com.cloud.hisavana.sdk.q4
        public void onIsPlayingChanged(boolean z10) {
            super.onIsPlayingChanged(z10);
            if (z10) {
                this.f21766e.showRepeatButton(false);
            }
        }

        @Override // com.cloud.hisavana.sdk.f4, com.cloud.hisavana.sdk.q4
        public void onVolumeChanged(float f11) {
            super.onVolumeChanged(f11);
            this.f21767f.state.setVideoVolume(f11);
            this.f21767f.k(f11);
        }
    }

    public static final class f extends DrawableResponseListener {
        f() {
        }

        @Override // com.cloud.hisavana.sdk.common.http.listener.ResponseBaseListener
        public void a(TaErrorCode taErrorCode) {
            if (taErrorCode != null) {
                HisavanaRewardedActivity.this.v(taErrorCode);
            }
            HisavanaRewardedActivity.this.G(false);
        }

        @Override // com.cloud.hisavana.sdk.common.http.listener.DrawableResponseListener
        public void g(int i11, AdImage adImage) {
            if (adImage != null && adImage.isAdImageRecycled()) {
                HisavanaRewardedActivity.this.v(new TaErrorCode(i11, "bitmap is null"));
                HisavanaRewardedActivity.this.G(false);
                return;
            }
            ImageView imageView = HisavanaRewardedActivity.this.adImageView;
            if ((imageView != null ? imageView.getParent() : null) != null) {
                ImageView imageView2 = HisavanaRewardedActivity.this.adImageView;
                ViewParent parent = imageView2 != null ? imageView2.getParent() : null;
                Intrinsics.f(parent, "null cannot be cast to non-null type android.view.ViewGroup");
                ((ViewGroup) parent).removeView(HisavanaRewardedActivity.this.adImageView);
            }
            FrameLayout frameLayout = HisavanaRewardedActivity.this.adContainer;
            if (frameLayout != null) {
                frameLayout.addView(HisavanaRewardedActivity.this.adImageView);
            }
        }
    }

    public static final class g implements e7.i.a {
        g() {
        }

        @Override // e7.i.a
        public void a() {
            try {
                if (Build.VERSION.SDK_INT <= 29) {
                    HisavanaRewardedActivity.this.U();
                }
            } catch (Throwable unused) {
            }
            HisavanaRewardedActivity.this.h();
        }

        @Override // e7.i.a
        public void onClick(View view) {
            HisavanaRewardedActivity.this.a(2);
            HisavanaRewardedActivity.this.d();
            AdsDTO adsDTO = HisavanaRewardedActivity.this.adBean;
            if (adsDTO != null) {
                adsDTO.setAdClickTracking(false);
            }
            HisavanaRewardedActivity.this.b(false, null);
            HisavanaRewardedActivity.this.G(true);
        }
    }

    public static final class h implements com.cloud.hisavana.sdk.common.util.v.a {
        h() {
        }

        @Override // com.cloud.hisavana.sdk.common.util.v.a
        public void a() {
            HSChronometer hSChronometer = HisavanaRewardedActivity.this.adChronometer;
            if (hSChronometer != null) {
                hSChronometer.stop();
            }
            com.cloud.hisavana.sdk.common.util.v vVar = HisavanaRewardedActivity.this.retainDialog;
            if (vVar != null) {
                vVar.dismiss();
            }
            HisavanaRewardedActivity.this.state.setShowRetainDialog(false);
            HisavanaRewardedActivity.this.H(true, null);
        }

        @Override // com.cloud.hisavana.sdk.common.util.v.a
        public void b() {
            RewardedVideoView rewardedVideoView;
            com.cloud.hisavana.sdk.common.util.v vVar = HisavanaRewardedActivity.this.retainDialog;
            if (vVar != null) {
                vVar.dismiss();
            }
            HSChronometer hSChronometer = HisavanaRewardedActivity.this.adChronometer;
            if (hSChronometer != null) {
                hSChronometer.resumeCountdown(HisavanaRewardedActivity.this.state.getCountdownRemainDuration());
            }
            if (!HisavanaRewardedActivity.this.state.isPlayComplete() && (rewardedVideoView = HisavanaRewardedActivity.this.adVideoView) != null) {
                rewardedVideoView.resume();
            }
            HisavanaRewardedActivity.this.state.setShowRetainDialog(false);
        }

        @Override // com.cloud.hisavana.sdk.common.util.v.a
        public void c() {
            com.cloud.hisavana.sdk.common.util.v.a.C0305a.a(this);
        }
    }

    public static final class i implements com.cloud.hisavana.sdk.common.util.v.a {
        i() {
        }

        @Override // com.cloud.hisavana.sdk.common.util.v.a
        public void a() {
            com.cloud.hisavana.sdk.common.util.v.a.C0305a.b(this);
        }

        @Override // com.cloud.hisavana.sdk.common.util.v.a
        public void b() {
            com.cloud.hisavana.sdk.common.util.v.a.C0305a.c(this);
        }

        @Override // com.cloud.hisavana.sdk.common.util.v.a
        public void c() {
            RewardedVideoView rewardedVideoView;
            com.cloud.hisavana.sdk.common.util.v vVar = HisavanaRewardedActivity.this.ruDialog;
            if (vVar != null) {
                vVar.dismiss();
            }
            HSChronometer hSChronometer = HisavanaRewardedActivity.this.adChronometer;
            if (hSChronometer != null) {
                hSChronometer.resumeCountdown(HisavanaRewardedActivity.this.state.getCountdownRemainDuration());
            }
            if (!HisavanaRewardedActivity.this.state.isPlayComplete() && (rewardedVideoView = HisavanaRewardedActivity.this.adVideoView) != null) {
                rewardedVideoView.resume();
            }
            HisavanaRewardedActivity.this.state.setShowRuDialog(false);
        }
    }

    public static final class j implements HSChronometer.a {
        j() {
        }

        @Override // com.cloud.hisavana.sdk.common.util.HSChronometer.a
        public void onFinish() {
            o0 rewardStyle = HisavanaRewardedActivity.this.getRewardStyle();
            if (rewardStyle != null) {
                rewardStyle.j();
            }
            HisavanaRewardedActivity.this.L(false);
        }

        @Override // com.cloud.hisavana.sdk.common.util.HSChronometer.a
        public void onTick(long j11) {
            HisavanaRewardedActivity.this.l(j11);
        }
    }

    public static final class k implements HSChronometer.a {
        k() {
        }

        @Override // com.cloud.hisavana.sdk.common.util.HSChronometer.a
        public void onFinish() {
            o0 rewardStyle = HisavanaRewardedActivity.this.getRewardStyle();
            if (rewardStyle != null) {
                rewardStyle.j();
            }
            HisavanaRewardedActivity.this.L(false);
        }

        @Override // com.cloud.hisavana.sdk.common.util.HSChronometer.a
        public void onTick(long j11) {
            HisavanaRewardedActivity.this.l(j11);
        }
    }

    private final void B(long duration) {
        if (e4.c()) {
            e4.b().i(this.tag, "-----------> startCountdown " + this.state);
        }
        o0 o0Var = this.rewardStyle;
        if (o0Var != null) {
            o0Var.c(this.adChronometer);
        }
        if (this.state.isShowRetainDialog()) {
            i();
        }
        if (this.state.isShowRuDialog()) {
            String string = getResources().getString(R$string.disclaimer);
            Intrinsics.g(string, "getString(...)");
            String strF = com.cloud.hisavana.sdk.common.util.f0.f(this.adBean);
            Intrinsics.g(strF, "getDisclaimerText(...)");
            String string2 = getResources().getString(R$string.f21534ok);
            Intrinsics.g(string2, "getString(...)");
            y(string, strF, string2);
        }
        l(duration);
        boolean z10 = this.state.isShowRetainDialog() || this.state.isShowRuDialog() || this.state.isPaused();
        if (this.state.isRewarded()) {
            HSChronometer hSChronometer = this.adChronometer;
            if (hSChronometer != null) {
                o0 o0Var2 = this.rewardStyle;
                if (o0Var2 != null) {
                    o0Var2.j();
                }
                hSChronometer.setText(hSChronometer.getFinishedString());
                return;
            }
            return;
        }
        if (!z10) {
            HSChronometer hSChronometer2 = this.adChronometer;
            if (hSChronometer2 != null) {
                hSChronometer2.startCountdown(duration, new j());
                return;
            }
            return;
        }
        HSChronometer hSChronometer3 = this.adChronometer;
        if (hSChronometer3 != null) {
            hSChronometer3.setText(hSChronometer3.countdownText(this.state.getCountdownRemainDuration()));
            hSChronometer3.setTickListener(new k());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void D(HisavanaRewardedActivity this$0, View view) {
        Intrinsics.h(this$0, "this$0");
        RewardedVideoView rewardedVideoView = this$0.adVideoView;
        if (rewardedVideoView != null) {
            rewardedVideoView.toggleVolume();
        }
    }

    private final void F(String event) {
        x(event, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void G(boolean isSentEvent) {
        if (isSentEvent) {
            F("_close");
        }
        if (isFinishing()) {
            return;
        }
        finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void H(boolean isClose, DownUpPointBean downUpPointBean) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - this.lastClickTime < 1000) {
            return;
        }
        this.lastClickTime = jCurrentTimeMillis;
        if (isClose) {
            G(true);
        } else {
            x("_click", new Pair(this.adBean, downUpPointBean));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void K(HisavanaRewardedActivity this$0, View view) {
        Intrinsics.h(this$0, "this$0");
        HSChronometer hSChronometer = this$0.adChronometer;
        if ((hSChronometer != null && hSChronometer.getIsTimeUp()) || this$0.state.isRewarded()) {
            this$0.G(true);
            return;
        }
        RewardedState rewardedState = this$0.state;
        HSChronometer hSChronometer2 = this$0.adChronometer;
        rewardedState.setCountdownRemainDuration(hSChronometer2 != null ? hSChronometer2.pauseCountdown() : 0L);
        RewardedVideoView rewardedVideoView = this$0.adVideoView;
        if (rewardedVideoView != null) {
            rewardedVideoView.pause();
        }
        this$0.i();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void L(boolean isShowToast) {
        o0 o0Var;
        if (this.state.isRewarded()) {
            return;
        }
        if (isShowToast && (o0Var = this.rewardStyle) != null) {
            o0Var.l();
        }
        AdsDTO adsDTO = this.adBean;
        x("_rewarded", adsDTO != null ? Long.valueOf(adsDTO.getTriggerShowSpend()) : null);
        this.state.setRewarded(true);
        this.state.setCountdownRemainDuration(0L);
    }

    private final void S() {
        try {
            try {
                AdsDTO adsDTO = this.adBean;
                String materialStyle = adsDTO != null ? adsDTO.getMaterialStyle() : null;
                if (Intrinsics.c(materialStyle, "R02")) {
                    View decorView = getWindow().getDecorView();
                    Intrinsics.g(decorView, "getDecorView(...)");
                    this.rewardStyle = new x1(this, decorView, this);
                } else if (Intrinsics.c(materialStyle, "R01")) {
                    View decorView2 = getWindow().getDecorView();
                    Intrinsics.g(decorView2, "getDecorView(...)");
                    this.rewardStyle = new u1(this, decorView2, this);
                } else {
                    View decorView3 = getWindow().getDecorView();
                    Intrinsics.g(decorView3, "getDecorView(...)");
                    this.rewardStyle = new u1(this, decorView3, this);
                }
                o0 o0Var = this.rewardStyle;
                if (o0Var != null) {
                    o0Var.k();
                }
            } catch (Throwable unused) {
            }
        } catch (Throwable unused2) {
            v(TaErrorCode.ERROR_SHOW_LAYOUT_ERROR);
            finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void U() {
        if (Build.VERSION.SDK_INT >= 28) {
            getWindow().getAttributes().layoutInDisplayCutoutMode = 1;
        }
        WindowCompat.setDecorFitsSystemWindows(getWindow(), false);
        WindowInsetsControllerCompat windowInsetsControllerCompat = new WindowInsetsControllerCompat(getWindow(), getWindow().getDecorView());
        windowInsetsControllerCompat.hide(WindowInsetsCompat.Type.systemBars());
        windowInsetsControllerCompat.setSystemBarsBehavior(2);
    }

    private final void Y() {
        this.isLandscape = getResources().getConfiguration().orientation == 2;
        S();
        n0();
    }

    private final void a0() {
        if (this.adImageView == null) {
            ImageView imageView = new ImageView(this);
            imageView.setAdjustViewBounds(true);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
            layoutParams.gravity = 17;
            imageView.setLayoutParams(layoutParams);
            this.adImageView = imageView;
        }
    }

    private final void c0() {
        NativeBean nativeObject;
        ImageView imageView = (ImageView) findViewById(R$id.ad_icon);
        AdsDTO adsDTO = this.adBean;
        String titleTxt = null;
        if (adsDTO != null) {
            if (adsDTO.getSource() == 4) {
                DownLoadRequest.n(adsDTO.getLogoUrl(), adsDTO, null, imageView);
            } else {
                DownLoadRequest.o(adsDTO.getLogoUrl(), this.adBean, 1, null, imageView);
            }
        }
        TextView textView = (TextView) findViewById(R$id.ad_name);
        if (textView != null) {
            AdsDTO adsDTO2 = this.adBean;
            if (adsDTO2 != null && (nativeObject = adsDTO2.getNativeObject()) != null) {
                titleTxt = nativeObject.getTitleTxt();
            }
            textView.setText(titleTxt);
        }
        o0 o0Var = this.rewardStyle;
        if (o0Var != null) {
            o0Var.d(this.adBean);
        }
    }

    private final void e0() {
        if (this.interactiveWebView == null) {
            InteractiveWebView interactiveWebView = new InteractiveWebView(this);
            interactiveWebView.setWebClientCallback(this.adBean);
            interactiveWebView.setInteractiveListener(new d());
            this.interactiveWebView = interactiveWebView;
        }
    }

    private final void g0() {
        View view;
        ConstraintLayout constraintLayout = (ConstraintLayout) findViewById(R$id.main_layout);
        this.adMainLayout = constraintLayout;
        if (constraintLayout != null) {
            constraintLayout.setOnTouchListener(new c(true));
        }
        this.adContainer = (FrameLayout) findViewById(R$id.ad_container);
        AdsDTO adsDTO = this.adBean;
        boolean z10 = adsDTO != null && (adsDTO.isVastTypeAd() || (adsDTO.getSource() == 4 && adsDTO.getDefaultMaterialType() == 2));
        AdsDTO adsDTO2 = this.adBean;
        if (adsDTO2 != null && adsDTO2.isInteractiveAd()) {
            r0();
        } else if (z10) {
            t0();
        } else {
            AdsDTO adsDTO3 = this.adBean;
            if ((adsDTO3 != null ? adsDTO3.getNativeObject() : null) != null) {
                s0();
            }
        }
        if (this.adBean == null || this.state.isAlreadyMeasure()) {
            return;
        }
        AthenaTracker.A(this.adBean);
        if (z10) {
            view = this.adVideoView;
        } else {
            AdsDTO adsDTO4 = this.adBean;
            view = (adsDTO4 == null || !adsDTO4.isInteractiveAd()) ? this.adImageView : this.interactiveWebView;
        }
        com.cloud.hisavana.sdk.common.tranmeasure.e.c().e(this.adBean, view, new b(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void h() {
        e7.i iVar;
        RewardedVideoView rewardedVideoView;
        if (e4.c()) {
            e4.b().i(this.tag, "-----------> onResume " + this.state);
        }
        if (!this.state.isShowRetainDialog() && !this.state.isShowRuDialog()) {
            HSChronometer hSChronometer = this.adChronometer;
            if (hSChronometer != null) {
                hSChronometer.resumeCountdown(this.state.getCountdownRemainDuration());
            }
            if (!this.state.isPlayComplete() && (rewardedVideoView = this.adVideoView) != null) {
                rewardedVideoView.resume();
            }
        }
        this.state.setPaused(false);
        try {
            e7.i iVar2 = this.hsConfirmPopUpWindow;
            if (iVar2 != null && iVar2.isShowing() && (iVar = this.hsConfirmPopUpWindow) != null) {
                iVar.dismiss();
            }
        } catch (Throwable unused) {
        }
        o0 o0Var = this.rewardStyle;
        if (o0Var != null) {
            o0Var.i();
        }
    }

    private final void i() {
        if (this.retainDialog == null) {
            com.cloud.hisavana.sdk.common.util.v vVar = new com.cloud.hisavana.sdk.common.util.v(this, new h());
            this.retainDialog = vVar;
            String string = getResources().getString(R$string.not_reward_title);
            Intrinsics.g(string, "getString(...)");
            vVar.k(string);
            String string2 = getResources().getString(R$string.not_reward_content);
            Intrinsics.g(string2, "getString(...)");
            vVar.h(string2);
            String string3 = getResources().getString(R$string.continue_txt);
            Intrinsics.g(string3, "getString(...)");
            vVar.i(string3);
        }
        try {
            com.cloud.hisavana.sdk.common.util.v vVar2 = this.retainDialog;
            if (vVar2 != null) {
                vVar2.show();
            }
            this.state.setShowRetainDialog(true);
        } catch (Exception e11) {
            e4.b().e(this.tag, "showRetainDialog error: " + e11.getMessage());
        }
    }

    private final void i0() {
        ImageView imageView = (ImageView) findViewById(R$id.ad_choices_view);
        this.adChoicesView = imageView;
        if (imageView != null) {
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.cloud.hisavana.sdk.common.activity.i
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    HisavanaRewardedActivity.q(this.f21931a, view);
                }
            });
        }
        AdsDTO adsDTO = this.adBean;
        if (adsDTO != null) {
            if (adsDTO.getSource() == 4) {
                DownLoadRequest.n(adsDTO.getAdChoiceImageUrl(), adsDTO, null, this.adChoicesView);
            } else {
                DownLoadRequest.o(adsDTO.getAdChoiceImageUrl(), this.adBean, 3, null, this.adChoicesView);
            }
        }
        AdBadgeView adBadgeView = (AdBadgeView) findViewById(R$id.ad_badge_view);
        this.adBadgeView = adBadgeView;
        if (adBadgeView != null) {
            AdsDTO adsDTO2 = this.adBean;
            adBadgeView.setDisplayStyle(adsDTO2 != null ? adsDTO2.getDisplayRule() : null, com.cloud.hisavana.sdk.common.util.f0.c(this.adBean));
        }
        AdCloseView adCloseView = (AdCloseView) findViewById(R$id.ad_close_view);
        this.adCloseView = adCloseView;
        if (adCloseView != null) {
            AdsDTO adsDTO3 = this.adBean;
            adCloseView.setDisplayStyle(adsDTO3 != null ? adsDTO3.getDisplayRule() : null, AdCloseView.CloseImageType.EXPAND);
        }
        t2.p().f(this, this.adCloseView, this, this.adBean);
        this.storeMarkView = (StoreMarkView) findViewById(R$id.ps_mark_view);
        boolean zA = i0.a(this.adBean);
        StoreMarkView storeMarkView = this.storeMarkView;
        if (storeMarkView != null) {
            storeMarkView.setVisibility(zA ? 0 : 8);
        }
        StoreMarkView storeMarkView2 = this.storeMarkView;
        if (storeMarkView2 != null) {
            storeMarkView2.setTextSize(6.0f);
        }
        StoreMarkView storeMarkView3 = this.storeMarkView;
        if (storeMarkView3 != null) {
            storeMarkView3.setTextColor(-8882056);
        }
        StoreMarkView storeMarkView4 = this.storeMarkView;
        if (storeMarkView4 != null) {
            storeMarkView4.attachInfo(this.adBean);
        }
    }

    private final void j() {
        Intent intent = getIntent();
        if (intent != null) {
            this.adBean = Build.VERSION.SDK_INT >= 33 ? (AdsDTO) intent.getParcelableExtra("adBean", AdsDTO.class) : (AdsDTO) intent.getParcelableExtra("adBean");
            String stringExtra = intent.getStringExtra(RequestParameters.PREFIX);
            if (stringExtra == null) {
                stringExtra = "";
            } else {
                Intrinsics.e(stringExtra);
            }
            this.prefix = stringExtra;
            this.observerId = intent.getLongExtra("observerId", 0L);
            this.triggerMillis = intent.getLongExtra("triggerTs", System.currentTimeMillis());
        }
        AdsDTO adsDTO = this.adBean;
        if (adsDTO == null || adsDTO.getMaterialStyle() == null) {
            AdsDTO adsDTO2 = this.adBean;
            if (adsDTO2 == null) {
                v(TaErrorCode.ERROR_SHOW_ADBEAN_NULL);
            } else if (adsDTO2.getMaterialStyle() == null) {
                v(TaErrorCode.ERROR_SHOW_MATERIAL_STYLE_NULL);
            }
            G(true);
            return;
        }
        int iB = com.cloud.hisavana.sdk.common.util.b.f22148a.b(this.adBean);
        this.adMediaType = iB;
        if (iB != -1) {
            U();
            Y();
        } else {
            e4.b().w(this.tag, "adMediaType is INVALID_TYPE");
            v(TaErrorCode.ERROR_SHOW_ADMEDIATYPE_INVALID);
            G(true);
        }
    }

    private final void j0() {
        final AdsDTO adsDTO = this.adBean;
        if (adsDTO != null) {
            if (adsDTO.getDisplayRule() != Constants.AdDisplayRule.RU) {
                adsDTO = null;
            }
            if (adsDTO != null) {
                final ConstraintLayout constraintLayout = (ConstraintLayout) findViewById(R$id.main_layout);
                AdDisclaimerView adDisclaimerView = (AdDisclaimerView) findViewById(R$id.ad_disclaimer_view);
                this.adDisclaimerView = adDisclaimerView;
                if (adDisclaimerView != null) {
                    adDisclaimerView.setListener(new AdDisclaimerView.b() { // from class: com.cloud.hisavana.sdk.common.activity.e
                        @Override // com.cloud.hisavana.sdk.api.view.AdDisclaimerView.b
                        public final void a(String str, String str2, String str3) {
                            HisavanaRewardedActivity.s(this.f21904a, str, str2, str3);
                        }
                    });
                }
                if (constraintLayout != null) {
                    Intrinsics.e(constraintLayout);
                    constraintLayout.post(new Runnable() { // from class: com.cloud.hisavana.sdk.common.activity.f
                        @Override // java.lang.Runnable
                        public final void run() {
                            HisavanaRewardedActivity.m(constraintLayout, this, adsDTO);
                        }
                    });
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void k(float volume) {
        o0 o0Var = this.rewardStyle;
        if (o0Var != null) {
            o0Var.b(this.adVolume, volume);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void l(long remainingDuration) {
        View viewFindViewById = findViewById(R$id.ad_close);
        int i11 = this.closeDelayTimeDuration;
        if (i11 <= 0 || remainingDuration <= 0) {
            if (viewFindViewById == null) {
                return;
            }
            viewFindViewById.setVisibility(0);
        } else {
            if ((this.rewardDuration - remainingDuration) / 1000.0f < i11 || viewFindViewById == null) {
                return;
            }
            viewFindViewById.setVisibility(0);
        }
    }

    private final void l0() {
        if (this.adVideoView != null) {
            return;
        }
        Context applicationContext = getApplicationContext();
        Intrinsics.g(applicationContext, "getApplicationContext(...)");
        RewardedVideoView rewardedVideoView = new RewardedVideoView(applicationContext, null, 0, 6, null);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 17;
        rewardedVideoView.setLayoutParams(layoutParams);
        rewardedVideoView.setAdMediaPlayerListener(new e(rewardedVideoView, this, this.adBean));
        this.adVideoView = rewardedVideoView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m(ConstraintLayout container, HisavanaRewardedActivity this$0, AdsDTO bean) {
        Intrinsics.h(container, "$container");
        Intrinsics.h(this$0, "this$0");
        Intrinsics.h(bean, "$bean");
        int measuredHeight = container.getMeasuredHeight();
        AdDisclaimerView adDisclaimerView = this$0.adDisclaimerView;
        if (adDisclaimerView != null) {
            adDisclaimerView.setDisplayStyle(bean.getDisplayRule(), com.cloud.hisavana.sdk.common.util.f0.f(bean), com.cloud.hisavana.sdk.common.util.f0.e(bean), measuredHeight);
        }
        AdDisclaimerView adDisclaimerView2 = this$0.adDisclaimerView;
        if (adDisclaimerView2 == null) {
            return;
        }
        adDisclaimerView2.setVisibility(0);
    }

    private final void n0() {
        if (this.adBean == null) {
            e4.b().w(this.tag, "rewarded adBean is null");
            v(TaErrorCode.ERROR_SHOW_ADBEAN_NULL);
            G(true);
            return;
        }
        g0();
        p0();
        c0();
        i0();
        j0();
        try {
            com.cloud.hisavana.sdk.manager.a aVar = com.cloud.hisavana.sdk.manager.a.f22653a;
            Context applicationContext = getApplicationContext();
            Intrinsics.g(applicationContext, "getApplicationContext(...)");
            aVar.s(applicationContext, this.adBean, false);
        } catch (Throwable unused) {
        }
    }

    private final void p0() {
        VastData videoInfo;
        Integer duration;
        ImageView imageView = (ImageView) findViewById(R$id.ad_volume);
        this.adVolume = imageView;
        if (imageView != null) {
            k(this.state.getVideoVolume());
            AdsDTO adsDTO = this.adBean;
            imageView.setVisibility((adsDTO == null || !adsDTO.isVastTypeAd()) ? 8 : 0);
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.cloud.hisavana.sdk.common.activity.g
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    HisavanaRewardedActivity.D(this.f21929a, view);
                }
            });
        }
        HSChronometer hSChronometer = (HSChronometer) findViewById(R$id.ad_chronometer);
        this.adChronometer = hSChronometer;
        if (hSChronometer != null && this.state.isAlreadyMeasure()) {
            B(this.state.getCountdownRemainDuration());
        }
        View viewFindViewById = findViewById(R$id.ad_close);
        if (viewFindViewById != null) {
            viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.cloud.hisavana.sdk.common.activity.h
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    HisavanaRewardedActivity.K(this.f21930a, view);
                }
            });
        }
        AdsDTO adsDTO2 = this.adBean;
        int closeDelayTime = adsDTO2 != null ? adsDTO2.getCloseDelayTime() : 0;
        AdsDTO adsDTO3 = this.adBean;
        if (adsDTO3 != null && adsDTO3.isVastTypeAd()) {
            AdsDTO adsDTO4 = this.adBean;
            closeDelayTime = Math.min(closeDelayTime, (adsDTO4 == null || (videoInfo = adsDTO4.getVideoInfo()) == null || (duration = videoInfo.getDuration()) == null) ? closeDelayTime : duration.intValue());
        }
        e4.b().d(this.tag, "current close delay time duration is: " + closeDelayTime);
        this.closeDelayTimeDuration = closeDelayTime;
        if (closeDelayTime > 0) {
            try {
                if (!q0()) {
                    if (viewFindViewById != null) {
                        viewFindViewById.setVisibility(8);
                    }
                    if (this.state.isAlreadyMeasure()) {
                        l(this.state.getCountdownRemainDuration());
                        return;
                    }
                    return;
                }
            } catch (Throwable unused) {
                return;
            }
        }
        e4.b().d(this.tag, "current close delay time is 0 or video or image is null, do not count down.");
        if (viewFindViewById == null) {
            return;
        }
        viewFindViewById.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(HisavanaRewardedActivity this$0, View view) {
        Intrinsics.h(this$0, "this$0");
        N0.k(com.cloud.sdk.commonutil.util.e.a(), this$0.adBean);
    }

    private final boolean q0() {
        VastData videoInfo;
        VastMedia mainAd;
        AdsDTO adsDTO = this.adBean;
        String adImgUrl = null;
        if (adsDTO == null || !adsDTO.isVastTypeAd()) {
            AdsDTO adsDTO2 = this.adBean;
            adImgUrl = adsDTO2 != null ? adsDTO2.getAdImgUrl() : null;
            if (adImgUrl == null || adImgUrl.length() == 0) {
                return true;
            }
        } else {
            AdsDTO adsDTO3 = this.adBean;
            if (adsDTO3 != null && (videoInfo = adsDTO3.getVideoInfo()) != null && (mainAd = videoInfo.getMainAd()) != null) {
                adImgUrl = mainAd.getMediaResource();
            }
            if (adImgUrl == null || adImgUrl.length() == 0) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:20:0x002d  */
    /* JADX WARN: Code duplicated, block: B:22:0x0030  */
    private final void r0() {
        AdsDTO adsDTO;
        String scale;
        List<String> scales;
        try {
            AdsDTO adsDTO2 = this.adBean;
            if (adsDTO2 == null || (scale = adsDTO2.getScale()) == null) {
                adsDTO = this.adBean;
                if (adsDTO != null || (scales = adsDTO.getScales()) == null) {
                    scale = null;
                } else {
                    scale = (String) CollectionsKt.k0(scales);
                }
                if (scale == null) {
                    scale = "";
                }
            } else {
                if (scale.length() <= 0) {
                    scale = null;
                }
                if (scale == null) {
                    adsDTO = this.adBean;
                    if (adsDTO != null) {
                        scale = null;
                    } else {
                        scale = null;
                    }
                    if (scale == null) {
                        scale = "";
                    }
                }
            }
            FrameLayout frameLayout = this.adContainer;
            if (frameLayout != null) {
                frameLayout.removeAllViews();
            }
            FrameLayout frameLayout2 = this.adContainer;
            ViewGroup.LayoutParams layoutParams = frameLayout2 != null ? frameLayout2.getLayoutParams() : null;
            if ((layoutParams instanceof ConstraintLayout.b) && scale.length() > 0) {
                ((ConstraintLayout.b) layoutParams).I = scale;
            }
            e0();
            FrameLayout frameLayout3 = this.adContainer;
            if (frameLayout3 != null) {
                frameLayout3.addView(this.interactiveWebView, new FrameLayout.LayoutParams(-1, -1));
            }
            AdsDTO adsDTO3 = this.adBean;
            String indexLocation = adsDTO3 != null ? adsDTO3.getIndexLocation() : null;
            if (this.interactiveWebView != null && indexLocation != null && indexLocation.length() != 0 && new File(indexLocation).exists()) {
                InteractiveWebView interactiveWebView = this.interactiveWebView;
                if (interactiveWebView != null) {
                    interactiveWebView.setVisibility(0);
                }
                InteractiveWebView interactiveWebView2 = this.interactiveWebView;
                if (interactiveWebView2 != null) {
                    interactiveWebView2.loadUrl(AdPayload.FILE_SCHEME + indexLocation);
                    return;
                }
                return;
            }
            G(false);
            v(new TaErrorCode(3005, "interactive file not exists "));
        } catch (Throwable th2) {
            G(false);
            v(new TaErrorCode(3005, th2.getMessage()));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s(HisavanaRewardedActivity this$0, String str, String str2, String str3) {
        Intrinsics.h(this$0, "this$0");
        HSChronometer hSChronometer = this$0.adChronometer;
        if ((hSChronometer == null || !hSChronometer.getIsTimeUp()) && !this$0.state.isRewarded()) {
            RewardedState rewardedState = this$0.state;
            HSChronometer hSChronometer2 = this$0.adChronometer;
            rewardedState.setCountdownRemainDuration(hSChronometer2 != null ? hSChronometer2.pauseCountdown() : 0L);
            RewardedVideoView rewardedVideoView = this$0.adVideoView;
            if (rewardedVideoView != null) {
                rewardedVideoView.pause();
            }
        }
        Intrinsics.e(str);
        Intrinsics.e(str2);
        Intrinsics.e(str3);
        this$0.y(str, str2, str3);
    }

    private final void s0() {
        Unit unit;
        String adImgUrl;
        a0();
        AdsDTO adsDTO = this.adBean;
        if (adsDTO == null || (adImgUrl = adsDTO.getAdImgUrl()) == null) {
            unit = null;
        } else {
            f fVar = new f();
            AdsDTO adsDTO2 = this.adBean;
            if (adsDTO2 == null || adsDTO2.getSource() != 4) {
                DownLoadRequest.o(adImgUrl, this.adBean, 2, fVar, this.adImageView);
            } else {
                DownLoadRequest.n(adImgUrl, this.adBean, fVar, this.adImageView);
            }
            unit = Unit.f67061a;
        }
        if (unit == null) {
            v(TaErrorCode.NO_MAIN_IMG_DATA_ERROR);
            G(false);
        }
    }

    private final void t0() {
        String strL = v2.f23027a.l(this.adBean);
        if (strL != null) {
            if (strL.length() <= 0) {
                strL = null;
            }
            if (strL != null) {
                l0();
                w(strL);
                RewardedVideoView rewardedVideoView = this.adVideoView;
                if ((rewardedVideoView != null ? rewardedVideoView.getParent() : null) != null) {
                    RewardedVideoView rewardedVideoView2 = this.adVideoView;
                    ViewParent parent = rewardedVideoView2 != null ? rewardedVideoView2.getParent() : null;
                    Intrinsics.f(parent, "null cannot be cast to non-null type android.view.ViewGroup");
                    ((ViewGroup) parent).removeView(this.adVideoView);
                }
                FrameLayout frameLayout = this.adContainer;
                if (frameLayout != null) {
                    frameLayout.addView(this.adVideoView);
                    return;
                }
                return;
            }
        }
        v(TaErrorCode.NO_MAIN_VIDEO_DATA_ERROR);
        G(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void u0() {
        this.state.setAlreadyMeasure(true);
        long jCurrentTimeMillis = System.currentTimeMillis() - this.triggerMillis;
        AdsDTO adsDTO = this.adBean;
        if (adsDTO != null) {
            adsDTO.setTriggerShowSpend(jCurrentTimeMillis);
        }
        F("_show");
        AdsDTO adsDTO2 = this.adBean;
        Integer rewardDuration = adsDTO2 != null ? adsDTO2.getRewardDuration() : null;
        long jMax = ((long) Math.max(rewardDuration == null ? this.defaultDuration : rewardDuration.intValue(), this.defaultDuration)) * 1000;
        this.rewardDuration = jMax;
        this.state.setCountdownRemainDuration(jMax);
        B(jMax);
        AdsDTO adsDTO3 = this.adBean;
        if (adsDTO3 != null) {
            P.g().k(adsDTO3.getCodeSeatId());
            if (adsDTO3.getSource() == 4) {
                Z z10 = Z.f21541a;
                String adCreativeId = adsDTO3.getAdCreativeId();
                Intrinsics.g(adCreativeId, "getAdCreativeId(...)");
                String codeSeatId = adsDTO3.getCodeSeatId();
                Intrinsics.g(codeSeatId, "getCodeSeatId(...)");
                z10.q(adCreativeId, codeSeatId);
            } else if (adsDTO3.isOfflineAd()) {
                adsDTO3.setShowNum(Integer.valueOf(adsDTO3.getShowNum().intValue() + 1));
                com.cloud.hisavana.sdk.c0.F().q(adsDTO3);
            }
        }
        View viewFindViewById = findViewById(R$id.ad_close_container);
        if (viewFindViewById == null) {
            return;
        }
        viewFindViewById.setBackground(androidx.core.content.b.getDrawable(com.cloud.sdk.commonutil.util.e.a(), R$drawable.hisavana_hollow_rounded_rect));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void v(TaErrorCode adErrorCode) {
        x("_error", adErrorCode);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void v0() {
        x3 x3Var;
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.adChoicesView);
        arrayList.add(this.adDisclaimerView);
        arrayList.add(this.adCloseView);
        arrayList.add(this.storeMarkView);
        arrayList.add(this.adChoicesView);
        arrayList.add(this.adChronometer);
        m0.a aVar = m0.f22644a;
        WeakReference weakReference = J;
        aVar.a((weakReference == null || (x3Var = (x3) weakReference.get()) == null) ? null : x3Var.v(), this.adBean, (ViewGroup) findViewById(R$id.main_layout), arrayList);
    }

    private final void w(String videoUrl) {
        VastData videoInfo;
        VideoMask videoMask;
        String resource;
        RewardedVideoView rewardedVideoView;
        if (this.state.isPlayComplete()) {
            RewardedVideoView rewardedVideoView2 = this.adVideoView;
            if (rewardedVideoView2 != null) {
                rewardedVideoView2.seekTo(rewardedVideoView2.getDuration());
                return;
            }
            return;
        }
        if (this.state.isPlayStart()) {
            return;
        }
        if (e4.c()) {
            e4.b().i(this.tag, "-----------> video set media data.");
        }
        boolean zW = StringsKt.W(videoUrl, "http", false, 2, null);
        RewardedVideoView rewardedVideoView3 = this.adVideoView;
        if (rewardedVideoView3 != null) {
            rewardedVideoView3.setMediaData(videoUrl, this.adBean, this.state.getVideoVolume() == 0.0f, zW);
        }
        AdsDTO adsDTO = this.adBean;
        if (adsDTO == null || (videoInfo = adsDTO.getVideoInfo()) == null || (videoMask = videoInfo.getVideoMask()) == null || (resource = videoMask.getResource()) == null || (rewardedVideoView = this.adVideoView) == null) {
            return;
        }
        rewardedVideoView.setCompanionUrl(resource);
    }

    private final void w0() {
        RewardedVideoView rewardedVideoView;
        if (!this.state.isShowRetainDialog() && !this.state.isShowRuDialog() && !this.state.isPaused()) {
            RewardedState rewardedState = this.state;
            HSChronometer hSChronometer = this.adChronometer;
            rewardedState.setCountdownRemainDuration(hSChronometer != null ? hSChronometer.pauseCountdown() : 0L);
            if (!this.state.isPlayComplete() && (rewardedVideoView = this.adVideoView) != null) {
                rewardedVideoView.pause();
            }
        }
        this.state.setPaused(true);
        if (e4.c()) {
            e4.b().i(this.tag, "----------> onPause " + this.state);
        }
        o0 o0Var = this.rewardStyle;
        if (o0Var != null) {
            o0Var.h();
        }
    }

    private final void x(String event, Object params) {
        b2.f21685a.d(this.observerId, this.prefix + event, params);
    }

    private final void y(String title, String message, String buttonText) {
        if (this.ruDialog == null) {
            com.cloud.hisavana.sdk.common.util.v vVar = new com.cloud.hisavana.sdk.common.util.v(this, new i());
            this.ruDialog = vVar;
            vVar.k(title);
            vVar.h(message);
            vVar.g(buttonText);
            vVar.j(true);
        }
        try {
            com.cloud.hisavana.sdk.common.util.v vVar2 = this.ruDialog;
            if (vVar2 != null) {
                vVar2.show();
            }
            this.state.setShowRuDialog(true);
        } catch (Exception e11) {
            e4.b().e(this.tag, "showRuDialog error: " + e11.getMessage());
        }
    }

    /* JADX INFO: renamed from: V, reason: from getter */
    public final o0 getRewardStyle() {
        return this.rewardStyle;
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
    @Override // com.cloud.hisavana.sdk.g4
    public void a() {
        HSChronometer hSChronometer = this.adChronometer;
        if (hSChronometer != null) {
            hSChronometer.tickComplete(hSChronometer);
        }
        o0 o0Var = this.rewardStyle;
        if (o0Var != null) {
            o0Var.l();
        }
        G(true);
    }

    @Override // com.cloud.hisavana.sdk.g4
    public void a(int psClickType) {
        PslinkInfo pslinkInfo;
        AdsDTO adsDTO = this.adBean;
        if ((adsDTO != null ? adsDTO.getPslinkInfo() : null) != null) {
            if (psClickType == 2) {
                AdsDTO adsDTO2 = this.adBean;
                pslinkInfo = adsDTO2 != null ? adsDTO2.getPslinkInfo() : null;
                if (pslinkInfo != null) {
                    pslinkInfo.setClickType(2);
                }
                AdsDTO adsDTO3 = this.adBean;
                if (adsDTO3 != null) {
                    adsDTO3.setTrackUserClickArea(2);
                }
                e4.b().d(this.tag, "pslink half setClickType, click_install");
                return;
            }
            AdsDTO adsDTO4 = this.adBean;
            pslinkInfo = adsDTO4 != null ? adsDTO4.getPslinkInfo() : null;
            if (pslinkInfo != null) {
                pslinkInfo.setClickType(1);
            }
            AdsDTO adsDTO5 = this.adBean;
            if (adsDTO5 != null) {
                adsDTO5.setTrackUserClickArea(1);
            }
            e4.b().d(this.tag, "pslink half setClickType, click_img");
        }
    }

    @Override // com.cloud.hisavana.sdk.g4
    public void a(DownUpPointBean pointBean) {
        try {
            com.cloud.hisavana.sdk.common.util.r.f22193a.o(this.adBean, pointBean);
        } catch (Throwable unused) {
        }
        try {
            if (this.hsConfirmPopUpWindow == null) {
                e7.i iVar = new e7.i(this, this.adBean, false, 4, null);
                this.hsConfirmPopUpWindow = iVar;
                iVar.h(new g());
                e7.i iVar2 = this.hsConfirmPopUpWindow;
                if (iVar2 != null) {
                    iVar2.k(this.adBean);
                }
            }
            e7.i iVar3 = this.hsConfirmPopUpWindow;
            if (iVar3 != null) {
                AdsDTO adsDTO = this.adBean;
                View decorView = getWindow().getDecorView();
                Intrinsics.g(decorView, "getDecorView(...)");
                iVar3.j(this, adsDTO, decorView, pointBean != null ? (int) pointBean.getDownX() : 0, pointBean != null ? (int) pointBean.getDownY() : 0);
            }
            w0();
        } catch (Throwable unused2) {
        }
    }

    @Override // com.cloud.hisavana.sdk.g4
    public void a(boolean status) {
        this.isNeedRuMargin = status;
    }

    @Override // com.cloud.hisavana.sdk.g4
    public void b() {
        InteractiveWebView interactiveWebView;
        try {
            AdsDTO adsDTO = this.adBean;
            if (adsDTO == null || !adsDTO.isInteractiveAd() || (interactiveWebView = this.interactiveWebView) == null) {
                return;
            }
            interactiveWebView.setOnTouchListener(new c(false));
        } catch (Throwable unused) {
        }
    }

    @Override // com.cloud.hisavana.sdk.g4
    public void b(boolean isClose, DownUpPointBean downUpPointBean) {
        H(isClose, downUpPointBean);
    }

    @Override // com.cloud.hisavana.sdk.g4
    /* JADX INFO: renamed from: c, reason: from getter */
    public boolean getIsLandscape() {
        return this.isLandscape;
    }

    @Override // com.cloud.hisavana.sdk.g4
    public void d() {
        L(true);
    }

    @Override // com.cloud.hisavana.sdk.g4
    public void e() {
        G(true);
    }

    @Override // com.cloud.hisavana.sdk.g4
    /* JADX INFO: renamed from: f, reason: from getter */
    public AdsDTO getAdBean() {
        return this.adBean;
    }

    @Override // android.app.Activity
    public void onBackPressed() {
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration newConfig) {
        com.cloud.hisavana.sdk.common.util.v vVar;
        com.cloud.hisavana.sdk.common.util.v vVar2;
        Intrinsics.h(newConfig, "newConfig");
        super.onConfigurationChanged(newConfig);
        HSChronometer hSChronometer = this.adChronometer;
        if (hSChronometer != null) {
            this.state.setCountdownRemainDuration(hSChronometer.pauseCountdown());
            hSChronometer.stop();
        }
        FrameLayout frameLayout = this.adContainer;
        if (frameLayout != null) {
            frameLayout.removeAllViews();
        }
        Y();
        if (this.state.isShowRuDialog() && (vVar2 = this.ruDialog) != null) {
            vVar2.l();
        }
        if (!this.state.isShowRetainDialog() || (vVar = this.retainDialog) == null) {
            return;
        }
        vVar.l();
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        j();
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        RewardedVideoView rewardedVideoView = this.adVideoView;
        if (rewardedVideoView != null) {
            rewardedVideoView.release();
        }
        HSChronometer hSChronometer = this.adChronometer;
        if (hSChronometer != null) {
            hSChronometer.stop();
        }
        FrameLayout frameLayout = this.adContainer;
        if (frameLayout != null) {
            frameLayout.removeAllViews();
        }
        com.cloud.hisavana.sdk.common.util.v vVar = this.retainDialog;
        if (vVar != null) {
            vVar.dismiss();
        }
        com.cloud.hisavana.sdk.common.util.v vVar2 = this.ruDialog;
        if (vVar2 != null) {
            vVar2.dismiss();
        }
        com.cloud.hisavana.sdk.common.tranmeasure.e.c().g(this.adBean);
        com.cloud.sdk.commonutil.util.k.a(this.adImageView);
        com.cloud.sdk.commonutil.util.k.a(this.adIcon);
        com.cloud.sdk.commonutil.util.k.a(this.adChoicesView);
        try {
            e7.i iVar = this.hsConfirmPopUpWindow;
            if (iVar == null || !iVar.isShowing()) {
                return;
            }
            e7.i iVar2 = this.hsConfirmPopUpWindow;
            if (iVar2 != null) {
                iVar2.dismiss();
            }
            this.hsConfirmPopUpWindow = null;
        } catch (Throwable unused) {
        }
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        w0();
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        h();
    }
}
