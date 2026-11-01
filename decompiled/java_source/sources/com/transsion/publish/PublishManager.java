package com.transsion.publish;

import android.app.Application;
import android.content.Context;
import android.content.IntentFilter;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import androidx.annotation.Keep;
import androidx.core.app.NotificationCompat;
import com.blankj.utilcode.util.ImageUtils;
import com.blankj.utilcode.util.Utils;
import com.cloud.tmc.integration.bridge.NetworkBridge;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.tn.lib.util.networkinfo.NetworkType;
import com.transsion.publish.api.bean.MediaAudioEntity;
import com.transsion.publish.api.bean.MediaCoverEntity;
import com.transsion.publish.api.bean.MediaImageEntity;
import com.transsion.publish.api.bean.MediaVideoEntity;
import com.transsion.publish.api.bean.RequestPostEntity;
import com.transsion.publish.api.bean.RequestPostMediaEntity;
import com.transsion.publish.bean.PublishResult;
import com.transsion.publish.bean.PublishValue;
import com.transsion.publish.net.PostResuleEntity;
import com.transsion.upload.bean.TstTokenEntity;
import com.transsion.upload.bean.UploadFileType;
import com.transsion.upload.bean.UploadTstTokenStorageType;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Deprecated;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes.dex */
@Keep
@Metadata(d1 = {"\u0000ª\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010!\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0010\t\n\u0002\b%\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\b\u0007\u0018\u0000 \u009d\u00012\u00020\u0001:\u0002\u009e\u0001B\t\b\u0012¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u001f\u0010\f\u001a\u00020\u000b2\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\f\u0010\rJ'\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u001f\u0010\u0016\u001a\u00020\u000b2\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0014H\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\u0018\u0010\u0003J'\u0010\u0018\u001a\u00020\u000b2\u000e\u0010\u001a\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u00192\u0006\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\u0018\u0010\u001bJ!\u0010\u001e\u001a\u00020\u000b2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001c2\u0006\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\u001e\u0010\u001fJ'\u0010\"\u001a\u00020\u000b2\u000e\u0010!\u001a\n\u0012\u0004\u0012\u00020 \u0018\u00010\u00192\u0006\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\"\u0010\u001bJ'\u0010%\u001a\u00020\u000b2\u000e\u0010$\u001a\n\u0012\u0004\u0012\u00020#\u0018\u00010\u00192\u0006\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b%\u0010\u001bJ\u000f\u0010'\u001a\u00020&H\u0002¢\u0006\u0004\b'\u0010(J\u0019\u0010*\u001a\u00020\t2\b\u0010)\u001a\u0004\u0018\u00010\u0004H\u0002¢\u0006\u0004\b*\u0010+J\u000f\u0010,\u001a\u00020\tH\u0002¢\u0006\u0004\b,\u0010-J\u000f\u0010.\u001a\u00020\tH\u0002¢\u0006\u0004\b.\u0010-J\u000f\u0010/\u001a\u00020\tH\u0002¢\u0006\u0004\b/\u0010-J\u000f\u00100\u001a\u00020\u000bH\u0002¢\u0006\u0004\b0\u0010\u0003J\u000f\u00101\u001a\u00020\tH\u0002¢\u0006\u0004\b1\u0010-J\u000f\u00102\u001a\u00020\u000bH\u0002¢\u0006\u0004\b2\u0010\u0003J\u000f\u00103\u001a\u00020\u000bH\u0002¢\u0006\u0004\b3\u0010\u0003J\u0017\u00105\u001a\u00020\u000b2\u0006\u00104\u001a\u00020\u0014H\u0002¢\u0006\u0004\b5\u00106J\u000f\u00107\u001a\u00020\u000bH\u0002¢\u0006\u0004\b7\u0010\u0003J\u000f\u00108\u001a\u00020\u000bH\u0002¢\u0006\u0004\b8\u0010\u0003J'\u0010=\u001a\u00020\u000b2\u0006\u00109\u001a\u00020\u00042\u0006\u0010;\u001a\u00020:2\u0006\u0010<\u001a\u00020:H\u0002¢\u0006\u0004\b=\u0010>J'\u0010?\u001a\u00020\u000b2\u0006\u00109\u001a\u00020\u00042\u0006\u0010;\u001a\u00020:2\u0006\u0010<\u001a\u00020:H\u0002¢\u0006\u0004\b?\u0010>J/\u0010A\u001a\u00020\u000b2\u0006\u00109\u001a\u00020\u00042\u0006\u0010;\u001a\u00020:2\u0006\u0010<\u001a\u00020:2\u0006\u0010@\u001a\u00020\u0014H\u0002¢\u0006\u0004\bA\u0010BJ\u001f\u00104\u001a\u00020\u00142\u0006\u0010;\u001a\u00020:2\u0006\u0010<\u001a\u00020:H\u0002¢\u0006\u0004\b4\u0010CJ\u0017\u0010E\u001a\u00020\t2\u0006\u0010D\u001a\u00020\u0014H\u0002¢\u0006\u0004\bE\u0010FJ'\u0010G\u001a\u00020\t2\u0006\u00109\u001a\u00020\u00042\u0006\u0010;\u001a\u00020:2\u0006\u0010<\u001a\u00020:H\u0003¢\u0006\u0004\bG\u0010HJ\u000f\u0010I\u001a\u00020\u000bH\u0002¢\u0006\u0004\bI\u0010\u0003J\u000f\u0010J\u001a\u00020\u000bH\u0002¢\u0006\u0004\bJ\u0010\u0003J\u000f\u0010K\u001a\u00020\u000bH\u0002¢\u0006\u0004\bK\u0010\u0003J\u000f\u0010L\u001a\u00020\u000bH\u0002¢\u0006\u0004\bL\u0010\u0003J\u0017\u0010N\u001a\u00020\u000b2\u0006\u0010M\u001a\u00020\u000eH\u0002¢\u0006\u0004\bN\u0010OJ\u001f\u0010N\u001a\u00020\u000b2\u0006\u0010M\u001a\u00020\u000e2\u0006\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\bN\u0010PJ\u0017\u0010Q\u001a\u00020\u000b2\u0006\u0010M\u001a\u00020\u000eH\u0002¢\u0006\u0004\bQ\u0010OJ\u0019\u0010S\u001a\u00020\t2\b\u0010R\u001a\u0004\u0018\u00010\u0004H\u0002¢\u0006\u0004\bS\u0010+J+\u0010V\u001a\u00020\u000b2\b\u0010T\u001a\u0004\u0018\u00010\u00042\b\u0010U\u001a\u0004\u0018\u00010\u00042\u0006\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\bV\u0010WJ\u0019\u0010Y\u001a\u00020\u000b2\b\u0010X\u001a\u0004\u0018\u00010\u0001H\u0002¢\u0006\u0004\bY\u0010ZJ\u0019\u0010[\u001a\u00020\u000b2\b\u0010X\u001a\u0004\u0018\u00010\u0001H\u0002¢\u0006\u0004\b[\u0010ZJ+\u0010^\u001a\u00020\u000b2\u0006\u0010\\\u001a\u00020\u00142\b\b\u0002\u00104\u001a\u00020\u00142\b\b\u0002\u0010]\u001a\u00020\u0004H\u0002¢\u0006\u0004\b^\u0010_J\u0017\u0010b\u001a\u00020\u000b2\u0006\u0010a\u001a\u00020`H\u0002¢\u0006\u0004\bb\u0010cJ\u0017\u0010d\u001a\u00020\u000b2\u0006\u0010]\u001a\u00020\u0004H\u0002¢\u0006\u0004\bd\u0010eJ\u000f\u0010f\u001a\u00020\u000bH\u0002¢\u0006\u0004\bf\u0010\u0003J\u001d\u0010i\u001a\u00020\u000b2\u0006\u0010g\u001a\u00020\u000e2\u0006\u0010h\u001a\u00020\u0014¢\u0006\u0004\bi\u0010jJ\r\u0010k\u001a\u00020\t¢\u0006\u0004\bk\u0010-J\r\u0010l\u001a\u00020\t¢\u0006\u0004\bl\u0010-J\r\u0010\n\u001a\u00020\u000b¢\u0006\u0004\b\n\u0010\u0003J\r\u0010m\u001a\u00020\u000b¢\u0006\u0004\bm\u0010\u0003J\r\u0010n\u001a\u00020\u000b¢\u0006\u0004\bn\u0010\u0003J\r\u0010o\u001a\u00020\u000b¢\u0006\u0004\bo\u0010\u0003J\u0017\u0010r\u001a\u00020\u000b2\b\u0010q\u001a\u0004\u0018\u00010p¢\u0006\u0004\br\u0010sJ\r\u0010t\u001a\u00020\u0004¢\u0006\u0004\bt\u0010\u0006R\"\u0010w\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020v0u8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bw\u0010xR\u0018\u0010\u000f\u001a\u0004\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000f\u0010yR\u0016\u0010h\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bh\u0010zR\u0016\u0010{\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b{\u0010zR\u0016\u0010|\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b|\u0010}R\u0014\u0010~\u001a\u00020\u00148\u0002X\u0082D¢\u0006\u0006\n\u0004\b~\u0010zR\u0014\u0010\u007f\u001a\u00020\u00148\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u007f\u0010zR\u0016\u0010\u0080\u0001\u001a\u00020\u00148\u0002X\u0082D¢\u0006\u0007\n\u0005\b\u0080\u0001\u0010zR\u0016\u0010\u0081\u0001\u001a\u00020\u00148\u0002X\u0082D¢\u0006\u0007\n\u0005\b\u0081\u0001\u0010zR\u0019\u0010\u0082\u0001\u001a\u00020:8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0082\u0001\u0010\u0083\u0001R\u0019\u0010\u0084\u0001\u001a\u00020:8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0084\u0001\u0010\u0083\u0001R\u001c\u0010\u0086\u0001\u001a\u0005\u0018\u00010\u0085\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0086\u0001\u0010\u0087\u0001R\u0017\u0010k\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bk\u0010\u0088\u0001R\u0019\u0010\u0089\u0001\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0089\u0001\u0010\u0088\u0001R\u0017\u00103\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b3\u0010\u0088\u0001R\u0019\u0010\u008a\u0001\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008a\u0001\u0010\u0088\u0001R\u0019\u0010\u008b\u0001\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008b\u0001\u0010\u0088\u0001R\u001a\u0010\u008d\u0001\u001a\u00030\u008c\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008d\u0001\u0010\u008e\u0001R\u0018\u0010\u008f\u0001\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u008f\u0001\u0010zR!\u0010\u0095\u0001\u001a\u00030\u0090\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b\u0091\u0001\u0010\u0092\u0001\u001a\u0006\b\u0093\u0001\u0010\u0094\u0001R\u001c\u0010\u0097\u0001\u001a\u0005\u0018\u00010\u0096\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0097\u0001\u0010\u0098\u0001R\u001d\u0010\u0099\u0001\u001a\b\u0012\u0004\u0012\u00020\u00120\u00198\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u0099\u0001\u0010\u009a\u0001R\u0019\u0010\u009b\u0001\u001a\u00020`8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009b\u0001\u0010\u009c\u0001¨\u0006\u009f\u0001"}, d2 = {"Lcom/transsion/publish/PublishManager;", "", "<init>", "()V", "", "getClassTag", "()Ljava/lang/String;", "Landroid/content/Context;", "context", "", "retry", "", "startPost", "(Landroid/content/Context;Z)V", "Lcom/transsion/publish/api/bean/RequestPostEntity;", "postEntity", "disposePost", "(Landroid/content/Context;Lcom/transsion/publish/api/bean/RequestPostEntity;Z)V", "Lcom/transsion/publish/api/bean/MediaImageEntity;", "it", "", "size", "check", "(Lcom/transsion/publish/api/bean/MediaImageEntity;I)V", "disposeImage", "", "images", "(Ljava/util/List;Z)V", "Lcom/transsion/publish/api/bean/MediaCoverEntity;", "cover", "disposeCover", "(Lcom/transsion/publish/api/bean/MediaCoverEntity;Z)V", "Lcom/transsion/publish/api/bean/MediaVideoEntity;", "videos", "disposeVideo", "Lcom/transsion/publish/api/bean/MediaAudioEntity;", "audios", "disposeAudio", "Lcw/a;", "uploadCallback", "()Lcw/a;", "key", "isUploadSucceed", "(Ljava/lang/String;)Z", "checkImageNext", "()Z", "checkImageUploadState", "isInterceptProgress", "setLastRefreshTime", "isCompleteAll", "uploadSuccess", "uploadFail", NotificationCompat.CATEGORY_PROGRESS, "uploadIng", "(I)V", "uploadSucceed", "netWorkMonitor", "uploadKey", "", "currentSize", "totalSize", "uploadProgress", "(Ljava/lang/String;JJ)V", "disposeImageProgress", "mediaType", "disposeAudioVideoProgress", "(Ljava/lang/String;JJI)V", "(JJ)I", AppMeasurementSdk.ConditionalUserProperty.VALUE, "isComplete", "(I)Z", "checkUploadState", "(Ljava/lang/String;JJ)Z", "imageSourceReplace", "videoSourceReplace", "audioSourceReplace", "coverSourceReplace", "requestPost", "create", "(Lcom/transsion/publish/api/bean/RequestPostEntity;)V", "(Lcom/transsion/publish/api/bean/RequestPostEntity;Z)V", "filterExceptionData", "url", "isExceptionData", "code", "message", "failureCallback", "(Ljava/lang/String;Ljava/lang/String;Z)V", "data", "successCallback", "(Ljava/lang/Object;)V", "postSucceed", "state", "postId", "postUploadState", "(IILjava/lang/String;)V", "Ljava/lang/Runnable;", "runnable", "asyn", "(Ljava/lang/Runnable;)V", "syncPost", "(Ljava/lang/String;)V", "setNetMonitor", "requestPostEntity", "publishType", "publish", "(Lcom/transsion/publish/api/bean/RequestPostEntity;I)V", "uploading", "isFail", "cancel", "reset", "onDisconnected", "Lcom/tn/lib/util/networkinfo/NetworkType;", NetworkBridge.KEY_NETWORK_TYPE, "onConnected", "(Lcom/tn/lib/util/networkinfo/NetworkType;)V", "getPageName", "Ljava/util/concurrent/ConcurrentHashMap;", "Lcom/transsion/publish/bean/PublishValue;", "publishQueue", "Ljava/util/concurrent/ConcurrentHashMap;", "Lcom/transsion/publish/api/bean/RequestPostEntity;", "I", "uploadType", "tempBucket", "Ljava/lang/String;", "postProgress", "coverProgress", "imageProgress", "INTERVALTIME", "lastRefreshTime", "J", "NETWORK_MONITOR", "Lcom/transsion/publish/NetworkReceiver;", "netWorkReceiver", "Lcom/transsion/publish/NetworkReceiver;", "Z", "cancelIng", "uploadRetry", "createIng", "Landroid/os/Handler;", "handler", "Landroid/os/Handler;", "currentProgress", "Lkp/b;", "publishModel$delegate", "Lkotlin/Lazy;", "getPublishModel", "()Lkp/b;", "publishModel", "Lcom/transsion/upload/bean/TstTokenEntity;", "tstToken", "Lcom/transsion/upload/bean/TstTokenEntity;", "compressorList", "Ljava/util/List;", "netRunnable", "Ljava/lang/Runnable;", "Companion", "a", "Publish_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class PublishManager {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final Lazy<PublishManager> INSTANCE$delegate = LazyKt.a(LazyThreadSafetyMode.SYNCHRONIZED, new Function0() { // from class: com.transsion.publish.g
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return PublishManager.INSTANCE_delegate$lambda$27();
        }
    });
    public static final String TAG = "TNPublish";
    private volatile boolean cancelIng;
    private volatile boolean createIng;
    private int currentProgress;
    private long lastRefreshTime;
    private NetworkReceiver netWorkReceiver;
    private RequestPostEntity postEntity;
    private int publishType;
    private TstTokenEntity tstToken;
    private volatile boolean uploadFail;
    private volatile boolean uploadRetry;
    private int uploadType;
    private volatile boolean uploading;
    private ConcurrentHashMap<String, PublishValue> publishQueue = new ConcurrentHashMap<>();
    private String tempBucket = "";
    private final int postProgress = 10;
    private final int coverProgress = 10;
    private final int imageProgress = 90;
    private final int INTERVALTIME = 2000;
    private long NETWORK_MONITOR = 3600000;
    private Handler handler = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: publishModel$delegate, reason: from kotlin metadata */
    private final Lazy publishModel = LazyKt.b(new Function0() { // from class: com.transsion.publish.d
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return PublishManager.publishModel_delegate$lambda$0();
        }
    });
    private final List<MediaImageEntity> compressorList = new ArrayList();
    private Runnable netRunnable = new Runnable() { // from class: com.transsion.publish.e
        @Override // java.lang.Runnable
        public final void run() {
            PublishManager.netRunnable$lambda$14(this.f50447a);
        }
    };

    /* JADX INFO: renamed from: com.transsion.publish.PublishManager$a, reason: from kotlin metadata */
    /* JADX INFO: loaded from: classes6.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final PublishManager a() {
            return (PublishManager) PublishManager.INSTANCE$delegate.getValue();
        }
    }

    /* JADX INFO: loaded from: classes6.dex */
    public static final class b extends sg.a {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ boolean f50290e;

        b(boolean z10) {
            this.f50290e = z10;
        }

        @Override // sg.a
        public void a(String str, String str2) {
            PublishManager.this.failureCallback(str, str2, this.f50290e);
        }

        @Override // sg.a
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public void c(PostResuleEntity postResuleEntity) {
            PublishManager.this.successCallback(postResuleEntity);
        }
    }

    /* JADX INFO: loaded from: classes6.dex */
    public static final class c extends sg.a {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ boolean f50292e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ RequestPostEntity f50293f;

        c(boolean z10, RequestPostEntity requestPostEntity) {
            this.f50292e = z10;
            this.f50293f = requestPostEntity;
        }

        @Override // sg.a
        public void a(String str, String str2) {
            PublishManager.this.failureCallback(str, str2, this.f50292e);
        }

        @Override // sg.a
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public void c(PostResuleEntity postResuleEntity) {
            if (postResuleEntity != null) {
                postResuleEntity.setScore(this.f50293f.getScore());
            }
            PublishManager.this.successCallback(postResuleEntity);
        }
    }

    /* JADX INFO: loaded from: classes6.dex */
    public static final class d implements com.transsion.compressor.image.e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ MediaImageEntity f50294a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ PublishManager f50295b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ List f50296c;

        d(MediaImageEntity mediaImageEntity, PublishManager publishManager, List list) {
            this.f50294a = mediaImageEntity;
            this.f50295b = publishManager;
            this.f50296c = list;
        }

        @Override // com.transsion.compressor.image.e
        public void a(String path) {
            Intrinsics.h(path, "path");
        }

        @Override // com.transsion.compressor.image.e
        public void b(File file, int[] ints, long j11) {
            Intrinsics.h(file, "file");
            Intrinsics.h(ints, "ints");
            lg.a.C0828a.f(lg.a.f68839a, PublishManager.TAG, "TranCompressor success...file " + file, false, 4, null);
            MediaImageEntity mediaImageEntity = this.f50294a;
            String absolutePath = file.getAbsolutePath();
            Intrinsics.g(absolutePath, "getAbsolutePath(...)");
            mediaImageEntity.setUrl(absolutePath);
            this.f50294a.setWidth(Integer.valueOf(ints[0]));
            this.f50294a.setHeight(Integer.valueOf(ints[1]));
            this.f50294a.setSize(Long.valueOf(j11));
            this.f50295b.check(this.f50294a, this.f50296c.size());
        }

        @Override // com.transsion.compressor.image.e
        public void onError(Throwable th2) {
            this.f50295b.check(this.f50294a, this.f50296c.size());
        }
    }

    /* JADX INFO: loaded from: classes6.dex */
    public static final class e implements mp.h.b {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Ref.ObjectRef f50298b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ boolean f50299c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ RequestPostEntity f50300d;

        e(Ref.ObjectRef objectRef, boolean z10, RequestPostEntity requestPostEntity) {
            this.f50298b = objectRef;
            this.f50299c = z10;
            this.f50300d = requestPostEntity;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // mp.h.b
        public void a(String path) {
            Intrinsics.h(path, "path");
            try {
                if (!TextUtils.isEmpty(path) && !PublishManager.this.publishQueue.contains(path)) {
                    if (PublishManager.this.isUploadSucceed(path)) {
                        PublishManager.this.disposeVideo(((RequestPostMediaEntity) this.f50298b.element).getVideo(), this.f50299c);
                        return;
                    }
                    RequestPostMediaEntity media = this.f50300d.getMedia();
                    MediaCoverEntity cover = media != null ? media.getCover() : null;
                    if (cover == null) {
                        cover = new MediaCoverEntity();
                        RequestPostMediaEntity media2 = this.f50300d.getMedia();
                        if (media2 != null) {
                            media2.setCover(cover);
                        }
                    }
                    cover.setUrl(path);
                    int[] iArrD = ImageUtils.d(path);
                    cover.setSize(iArrD[0] * iArrD[1]);
                    cover.setWidth(iArrD[0]);
                    cover.setHeight(iArrD[1]);
                    PublishManager.this.publishQueue.put(path, new PublishValue(1));
                    cw.c.f60931a.f(path, UploadFileType.OBJECT_NAME_IMAGE, true, PublishManager.this.uploadCallback());
                    PublishManager.this.disposeVideo(((RequestPostMediaEntity) this.f50298b.element).getVideo(), this.f50299c);
                    return;
                }
                PublishManager.this.disposeVideo(((RequestPostMediaEntity) this.f50298b.element).getVideo(), this.f50299c);
            } catch (Exception e11) {
                lg.a.C0828a.f(lg.a.f68839a, PublishManager.TAG, "onFirstFrame ext:" + e11.getMessage(), false, 4, null);
            }
        }
    }

    /* JADX INFO: loaded from: classes6.dex */
    public static final class f implements cw.a {
        f() {
        }

        @Override // cw.a
        public void a(String localFilePath, long j11, long j12) {
            Intrinsics.h(localFilePath, "localFilePath");
            if (PublishManager.this.cancelIng) {
                return;
            }
            PublishManager.this.uploadProgress(localFilePath, j11, j12);
            PublishValue publishValue = (PublishValue) PublishManager.this.publishQueue.get(localFilePath);
            if (publishValue != null) {
                publishValue.setState(3);
            }
        }

        @Override // cw.a
        public void b(String localFilePath, String url, String bucket) {
            Intrinsics.h(localFilePath, "localFilePath");
            Intrinsics.h(url, "url");
            Intrinsics.h(bucket, "bucket");
            if (PublishManager.this.cancelIng) {
                return;
            }
            PublishValue publishValue = (PublishValue) PublishManager.this.publishQueue.get(localFilePath);
            if (publishValue != null) {
                publishValue.setUploadUrl(url);
            }
            PublishValue publishValue2 = (PublishValue) PublishManager.this.publishQueue.get(localFilePath);
            if (publishValue2 != null) {
                publishValue2.setState(1);
            }
            if (!TextUtils.isEmpty(bucket)) {
                PublishManager.this.tempBucket = bucket;
            }
            ew.a.f62032a.a(PublishManager.this.getClassTag() + " --> bucket = " + bucket);
            PublishManager.this.uploadSuccess();
        }

        @Override // cw.a
        public void c(String str, String str2, String str3, UploadTstTokenStorageType uploadTstTokenStorageType) {
            if (PublishManager.this.cancelIng) {
                return;
            }
            PublishValue publishValue = (PublishValue) PublishManager.this.publishQueue.get(str);
            if (publishValue != null) {
                publishValue.setState(2);
            }
            PublishManager.this.uploadFail();
        }
    }

    private PublishManager() {
        setNetMonitor();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final PublishManager INSTANCE_delegate$lambda$27() {
        return new PublishManager();
    }

    private final void asyn(Runnable runnable) {
        p.f50458b.a().d(runnable);
    }

    private final void audioSourceReplace() {
        RequestPostMediaEntity media;
        RequestPostEntity requestPostEntity = this.postEntity;
        List<MediaAudioEntity> audio = (requestPostEntity == null || (media = requestPostEntity.getMedia()) == null) ? null : media.getAudio();
        if (audio != null) {
            for (MediaAudioEntity mediaAudioEntity : audio) {
                PublishValue publishValue = this.publishQueue.get(mediaAudioEntity.getUrl());
                mediaAudioEntity.setUrl(String.valueOf(publishValue != null ? publishValue.getUploadUrl() : null));
            }
        }
        coverSourceReplace();
        RequestPostEntity requestPostEntity2 = this.postEntity;
        if (requestPostEntity2 != null) {
            create(requestPostEntity2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void check(MediaImageEntity it, int size) {
        this.compressorList.add(it);
        if (this.compressorList.size() == size) {
            disposeImage();
        }
    }

    private final boolean checkImageNext() {
        RequestPostMediaEntity media;
        RequestPostEntity requestPostEntity = this.postEntity;
        return 1 == this.uploadType && ((requestPostEntity == null || (media = requestPostEntity.getMedia()) == null) ? null : media.getImage()) != null;
    }

    private final boolean checkImageUploadState() {
        RequestPostMediaEntity media;
        RequestPostEntity requestPostEntity = this.postEntity;
        List<MediaImageEntity> image = (requestPostEntity == null || (media = requestPostEntity.getMedia()) == null) ? null : media.getImage();
        if (1 != this.uploadType || image == null) {
            return true;
        }
        return isCompleteAll();
    }

    @Deprecated
    private final boolean checkUploadState(String uploadKey, long currentSize, long totalSize) {
        return false;
    }

    private static final void checkUploadState$lambda$17(PublishManager publishManager, String str) {
        PublishValue publishValue = publishManager.publishQueue.get(str);
        if (publishValue != null) {
            publishValue.getState();
        }
    }

    private final void coverSourceReplace() {
        RequestPostMediaEntity media;
        MediaCoverEntity cover;
        RequestPostMediaEntity media2;
        MediaCoverEntity cover2;
        RequestPostEntity requestPostEntity = this.postEntity;
        String url = (requestPostEntity == null || (media2 = requestPostEntity.getMedia()) == null || (cover2 = media2.getCover()) == null) ? null : cover2.getUrl();
        RequestPostEntity requestPostEntity2 = this.postEntity;
        if (requestPostEntity2 == null || (media = requestPostEntity2.getMedia()) == null || (cover = media.getCover()) == null) {
            return;
        }
        PublishValue publishValue = this.publishQueue.get(url);
        cover.setUrl(publishValue != null ? publishValue.getUploadUrl() : null);
    }

    private final void create(RequestPostEntity requestPost) {
        create(requestPost, false);
    }

    private final void create(RequestPostEntity requestPost, boolean retry) {
        if (TextUtils.isEmpty(this.tempBucket)) {
            RequestPostMediaEntity media = requestPost.getMedia();
            if (media != null) {
                media.setTempBucket("tempBucket");
            }
        } else {
            RequestPostMediaEntity media2 = requestPost.getMedia();
            if (media2 != null) {
                media2.setTempBucket(this.tempBucket);
            }
        }
        filterExceptionData(requestPost);
        lg.a.C0828a c0828a = lg.a.f68839a;
        lg.a.C0828a.f(c0828a, TAG, "Upload create...", false, 4, null);
        if (this.createIng) {
            lg.a.C0828a.f(c0828a, TAG, "Repeated requests", false, 4, null);
            return;
        }
        this.createIng = true;
        int i11 = this.publishType;
        if (i11 == 2) {
            lg.a.C0828a.f(c0828a, TAG, "Upload create... type_post_publish", false, 4, null);
            getPublishModel().e(requestPost).f(sg.d.f75349a.c()).subscribe(new b(retry));
        } else if (i11 == 1) {
            lg.a.C0828a.f(c0828a, TAG, "Upload create... type_star_publish", false, 4, null);
            getPublishModel().f(requestPost).f(sg.d.f75349a.c()).subscribe(new c(retry, requestPost));
        }
    }

    private final void disposeAudio(List<MediaAudioEntity> audios, boolean retry) {
        if (audios != null) {
            for (MediaAudioEntity mediaAudioEntity : audios) {
                if (!isUploadSucceed(mediaAudioEntity.getUrl())) {
                    this.publishQueue.put(mediaAudioEntity.getUrl(), new PublishValue(2));
                    cw.c.f60931a.f(mediaAudioEntity.getUrl(), UploadFileType.OBJECT_NAME_AUDIO, true, uploadCallback());
                }
            }
        }
    }

    private final void disposeAudioVideoProgress(String uploadKey, long currentSize, long totalSize, int mediaType) {
        int iProgress = progress(currentSize, totalSize);
        PublishValue publishValue = this.publishQueue.get(uploadKey);
        Integer numValueOf = publishValue != null ? Integer.valueOf(publishValue.getFileType()) : null;
        if (numValueOf != null && numValueOf.intValue() == mediaType) {
            int i11 = iProgress - this.postProgress;
            lg.a.C0828a.f(lg.a.f68839a, TAG, "uploadProgress progress: " + iProgress + " " + uploadKey, false, 4, null);
            for (Map.Entry<String, PublishValue> entry : this.publishQueue.entrySet()) {
                if (!Intrinsics.c(entry.getKey(), uploadKey) && entry.getValue().getFileType() != mediaType && entry.getValue().getState() == 1) {
                    i11 += this.coverProgress;
                }
            }
            if (i11 <= 0) {
                i11 = 0;
            }
            uploadIng(i11);
        }
    }

    private final void disposeCover(MediaCoverEntity cover, boolean retry) {
        String url;
        if (isUploadSucceed(cover != null ? cover.getUrl() : null) || cover == null || (url = cover.getUrl()) == null) {
            return;
        }
        this.publishQueue.put(url, new PublishValue(1));
        cw.c.f60931a.f(url, UploadFileType.OBJECT_NAME_IMAGE, true, uploadCallback());
    }

    private final void disposeImage() {
        this.publishQueue.clear();
        int i11 = 0;
        for (Object obj : this.compressorList) {
            int i12 = i11 + 1;
            if (i11 < 0) {
                CollectionsKt.u();
            }
            MediaImageEntity mediaImageEntity = (MediaImageEntity) obj;
            this.publishQueue.put(mediaImageEntity.getUrl(), new PublishValue(1));
            cw.c.f60931a.f(mediaImageEntity.getUrl(), UploadFileType.OBJECT_NAME_IMAGE, true, uploadCallback());
            i11 = i12;
        }
    }

    private final void disposeImage(List<MediaImageEntity> images, boolean retry) {
        this.compressorList.clear();
        if (images != null) {
            int i11 = 0;
            for (Object obj : images) {
                int i12 = i11 + 1;
                if (i11 < 0) {
                    CollectionsKt.u();
                }
                MediaImageEntity mediaImageEntity = (MediaImageEntity) obj;
                pk.a.f72462a.a(Utils.a()).l(mediaImageEntity.getUrl()).j(new com.transsion.compressor.image.a() { // from class: com.transsion.publish.f
                    @Override // com.transsion.compressor.image.a
                    public final boolean a(String str) {
                        return PublishManager.disposeImage$lambda$9$lambda$8(str);
                    }
                }).m(new d(mediaImageEntity, this, images)).k();
                i11 = i12;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean disposeImage$lambda$9$lambda$8(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        Intrinsics.e(str);
        Locale locale = Locale.getDefault();
        Intrinsics.g(locale, "getDefault(...)");
        String lowerCase = str.toLowerCase(locale);
        Intrinsics.g(lowerCase, "toLowerCase(...)");
        return !StringsKt.G(lowerCase, ".gif", false, 2, null);
    }

    private final void disposeImageProgress(String uploadKey, long currentSize, long totalSize) {
        int i11;
        ConcurrentHashMap<String, PublishValue> concurrentHashMap = this.publishQueue;
        if (concurrentHashMap != null && concurrentHashMap.isEmpty()) {
            lg.a.C0828a.f(lg.a.f68839a, TAG, "disposeImageProgress isNullOrEmpty", false, 4, null);
            return;
        }
        ConcurrentHashMap<String, PublishValue> concurrentHashMap2 = this.publishQueue;
        Integer numValueOf = concurrentHashMap2 != null ? Integer.valueOf(concurrentHashMap2.size()) : null;
        if (numValueOf != null && numValueOf.intValue() == 1) {
            if (isInterceptProgress()) {
                checkUploadState(uploadKey, currentSize, totalSize);
                return;
            }
            int iProgress = progress(currentSize, totalSize);
            int i12 = iProgress - this.postProgress;
            i11 = i12 >= 0 ? i12 : 0;
            uploadIng(i11);
            lg.a.C0828a.f(lg.a.f68839a, TAG, "single uploadProgress progress " + iProgress + " imageProgress:" + i11 + " " + uploadKey, false, 4, null);
            return;
        }
        if (isInterceptProgress()) {
            checkUploadState(uploadKey, currentSize, totalSize);
            return;
        }
        int i13 = this.imageProgress;
        Intrinsics.e(numValueOf);
        int iIntValue = i13 / numValueOf.intValue();
        Iterator<Map.Entry<String, PublishValue>> it = this.publishQueue.entrySet().iterator();
        int i14 = 0;
        while (it.hasNext()) {
            if (it.next().getValue().getState() == 1) {
                i14 += iIntValue;
            }
        }
        int i15 = i14 - this.postProgress;
        i11 = i15 > 0 ? i15 : 0;
        uploadIng(i14);
        lg.a.C0828a.f(lg.a.f68839a, TAG, "uploadProgress imageProgress:" + i11 + " " + uploadKey, false, 4, null);
        setLastRefreshTime();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v4, types: [T, com.transsion.publish.api.bean.RequestPostMediaEntity] */
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
    private final void disposePost(Context context, RequestPostEntity postEntity, boolean retry) {
        RequestPostMediaEntity requestPostMediaEntity;
        List<MediaAudioEntity> audio;
        List<MediaVideoEntity> video;
        MediaVideoEntity mediaVideoEntity;
        RequestPostMediaEntity requestPostMediaEntity2;
        List<MediaImageEntity> image;
        lg.a.C0828a.f(lg.a.f68839a, TAG, "uploading=" + this.uploading, false, 4, null);
        ew.a.f62032a.b(getClassTag() + " --> publish() --> publishType = " + this.publishType + " --> postEntity = " + postEntity);
        this.uploading = true;
        postUploadState$default(this, 0, 0, null, 4, null);
        Ref.ObjectRef objectRef = new Ref.ObjectRef();
        ?? media = postEntity.getMedia();
        objectRef.element = media;
        url = null;
        String url = null;
        if ((media != 0 ? media.getImage() : null) != null && (requestPostMediaEntity2 = (RequestPostMediaEntity) objectRef.element) != null && (image = requestPostMediaEntity2.getImage()) != null && (!image.isEmpty())) {
            this.uploadType = 1;
            disposeImage(((RequestPostMediaEntity) objectRef.element).getImage(), retry);
            return;
        }
        RequestPostMediaEntity requestPostMediaEntity3 = (RequestPostMediaEntity) objectRef.element;
        if ((requestPostMediaEntity3 != null ? requestPostMediaEntity3.getVideo() : null) != null && (video = ((RequestPostMediaEntity) objectRef.element).getVideo()) != null && (!video.isEmpty())) {
            this.uploadType = 4;
            List<MediaVideoEntity> video2 = ((RequestPostMediaEntity) objectRef.element).getVideo();
            if (video2 != null && (mediaVideoEntity = video2.get(0)) != null) {
                url = mediaVideoEntity.getUrl();
            }
            mp.h.f69682a.a(context, url, new e(objectRef, retry, postEntity));
            return;
        }
        RequestPostMediaEntity requestPostMediaEntity4 = (RequestPostMediaEntity) objectRef.element;
        if ((requestPostMediaEntity4 != null ? requestPostMediaEntity4.getAudio() : null) == null || (requestPostMediaEntity = (RequestPostMediaEntity) objectRef.element) == null || (audio = requestPostMediaEntity.getAudio()) == null || !(!audio.isEmpty())) {
            RequestPostMediaEntity media2 = postEntity.getMedia();
            if (media2 != null) {
                media2.setMediaType(0);
            }
            create(postEntity, retry);
            return;
        }
        this.uploadType = 2;
        disposeAudio(((RequestPostMediaEntity) objectRef.element).getAudio(), retry);
        if (((RequestPostMediaEntity) objectRef.element).getCover() != null) {
            disposeCover(((RequestPostMediaEntity) objectRef.element).getCover(), retry);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void disposeVideo(List<MediaVideoEntity> videos, boolean retry) {
        if (videos != null) {
            for (MediaVideoEntity mediaVideoEntity : videos) {
                if (!isUploadSucceed(mediaVideoEntity.getUrl())) {
                    this.publishQueue.put(mediaVideoEntity.getUrl(), new PublishValue(4));
                    cw.c.f60931a.f(mediaVideoEntity.getUrl(), UploadFileType.OBJECT_NAME_VIDEO, true, uploadCallback());
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void failureCallback(String code, String message, boolean retry) {
        HashMap map = new HashMap();
        map.put("error_code", code == null ? "" : code);
        RequestPostEntity requestPostEntity = this.postEntity;
        map.put("subject_id", String.valueOf(requestPostEntity != null ? requestPostEntity.getSubjectId() : null));
        hj.i.f64505a.p(getPageName(), map);
        this.createIng = false;
        lg.a.C0828a c0828a = lg.a.f68839a;
        lg.a.C0828a.f(c0828a, TAG, "Upload onFailure... code:" + code + "msg:" + message, false, 4, null);
        lg.a.C0828a.f(c0828a, TAG, "Upload onFailure... retry:" + retry + ",uploadFail:" + this.uploadFail + ",uploadRetry:" + this.uploadRetry, false, 4, null);
        if (retry || this.uploadRetry) {
            reset();
        } else {
            uploadFail();
        }
    }

    private final void filterExceptionData(RequestPostEntity requestPost) {
        List<MediaVideoEntity> video;
        List<MediaImageEntity> image;
        RequestPostMediaEntity media = requestPost.getMedia();
        Iterator<MediaVideoEntity> it = null;
        Iterator<MediaImageEntity> it2 = (media == null || (image = media.getImage()) == null) ? null : image.iterator();
        while (it2 != null && it2.hasNext()) {
            if (isExceptionData(it2.next().getUrl())) {
                it2.remove();
            }
        }
        RequestPostMediaEntity media2 = requestPost.getMedia();
        if (media2 != null && (video = media2.getVideo()) != null) {
            it = video.iterator();
        }
        while (it != null && it.hasNext()) {
            if (isExceptionData(it.next().getUrl())) {
                it.remove();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String getClassTag() {
        String simpleName = PublishManager.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    public static final PublishManager getINSTANCE() {
        return INSTANCE.a();
    }

    private final kp.b getPublishModel() {
        return (kp.b) this.publishModel.getValue();
    }

    private final void imageSourceReplace() {
        RequestPostMediaEntity media;
        RequestPostEntity requestPostEntity = this.postEntity;
        List<MediaImageEntity> image = (requestPostEntity == null || (media = requestPostEntity.getMedia()) == null) ? null : media.getImage();
        if (image != null) {
            for (MediaImageEntity mediaImageEntity : image) {
                PublishValue publishValue = this.publishQueue.get(mediaImageEntity.getUrl());
                mediaImageEntity.setUrl(String.valueOf(publishValue != null ? publishValue.getUploadUrl() : null));
            }
        }
        RequestPostEntity requestPostEntity2 = this.postEntity;
        if (requestPostEntity2 != null) {
            create(requestPostEntity2);
        }
    }

    private final boolean isComplete(int value) {
        return value == 1;
    }

    private final boolean isCompleteAll() {
        boolean zIsComplete = true;
        for (Map.Entry<String, PublishValue> entry : this.publishQueue.entrySet()) {
            ew.a aVar = ew.a.f62032a;
            String classTag = getClassTag();
            String key = entry.getKey();
            aVar.a(classTag + " --> check state:" + ((Object) key) + ",state:" + entry.getValue().getState() + "size=" + this.publishQueue.size());
            zIsComplete = isComplete(entry.getValue().getState());
            if (!zIsComplete) {
                break;
            }
        }
        return zIsComplete;
    }

    private final boolean isExceptionData(String url) {
        return url == null || url.length() == 0 || StringsKt.c0(url, "/data/user", false, 2, null) || StringsKt.c0(url, "/storage/emulated", false, 2, null);
    }

    private final boolean isInterceptProgress() {
        return this.lastRefreshTime != 0 && System.currentTimeMillis() - this.lastRefreshTime < ((long) this.INTERVALTIME);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean isUploadSucceed(String key) {
        PublishValue publishValue;
        return (TextUtils.isEmpty(key) || this.publishQueue.get(key) == null || (publishValue = this.publishQueue.get(key)) == null || publishValue.getState() != 1) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void netRunnable$lambda$14(PublishManager publishManager) {
        if (publishManager.uploading) {
            return;
        }
        publishManager.reset();
        postUploadState$default(publishManager, 4, 0, null, 6, null);
    }

    private final void netWorkMonitor() {
        this.handler.postDelayed(this.netRunnable, this.NETWORK_MONITOR);
    }

    private final void postSucceed(Object data) {
        RequestPostMediaEntity media;
        if (data == null) {
            lg.a.C0828a.f(lg.a.f68839a, TAG, "postSucceed data null", false, 4, null);
            postUploadState(1, 100, "");
            syncPost("");
        } else if (data instanceof PostResuleEntity) {
            PostResuleEntity postResuleEntity = (PostResuleEntity) data;
            String postId = postResuleEntity.getPostId();
            lg.a.C0828a.f(lg.a.f68839a, TAG, "postSucceed data postid:" + postId, false, 4, null);
            syncPost(postId);
            postUploadState(1, 100, postId);
            HashMap map = new HashMap();
            map.put("post_id", postId);
            RequestPostEntity requestPostEntity = this.postEntity;
            map.put("post_media_type", String.valueOf((requestPostEntity == null || (media = requestPostEntity.getMedia()) == null) ? null : Integer.valueOf(media.getMediaType())));
            RequestPostEntity requestPostEntity2 = this.postEntity;
            map.put("subject_id", String.valueOf(requestPostEntity2 != null ? requestPostEntity2.getSubjectId() : null));
            map.put("post_score", postResuleEntity.getScore());
            hj.i.f64505a.p(getPageName(), map);
        } else {
            postUploadState(1, 100, "");
            syncPost("");
        }
        reset();
    }

    private final void postUploadState(int state, int progress, String postId) {
        PublishResult publishResult = new PublishResult();
        publishResult.setProgress(progress);
        publishResult.setState(state);
        publishResult.setPostId(postId);
        publishResult.setSource(this.publishType);
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = PublishResult.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.postEvent(name, publishResult, 0L);
    }

    static /* synthetic */ void postUploadState$default(PublishManager publishManager, int i11, int i12, String str, int i13, Object obj) {
        if ((i13 & 2) != 0) {
            i12 = 0;
        }
        if ((i13 & 4) != 0) {
            str = "";
        }
        publishManager.postUploadState(i11, i12, str);
    }

    private final int progress(long currentSize, long totalSize) {
        return 100 - ((int) (((totalSize - currentSize) * ((long) 100)) / totalSize));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final kp.b publishModel_delegate$lambda$0() {
        return new kp.b();
    }

    private final void setLastRefreshTime() {
        this.lastRefreshTime = System.currentTimeMillis();
    }

    private final void setNetMonitor() {
        try {
            if (this.netWorkReceiver != null) {
                return;
            }
            this.netWorkReceiver = new NetworkReceiver();
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.net.wifi.WIFI_STATE_CHANGED");
            intentFilter.addAction("android.net.wifi.STATE_CHANGE");
            intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
            if (Build.VERSION.SDK_INT >= 33) {
                Application applicationA = Utils.a();
                if (applicationA != null) {
                    applicationA.registerReceiver(this.netWorkReceiver, intentFilter, 2);
                }
            } else {
                Application applicationA2 = Utils.a();
                if (applicationA2 != null) {
                    applicationA2.registerReceiver(this.netWorkReceiver, intentFilter);
                }
            }
        } catch (Exception e11) {
            lg.a.C0828a.f(lg.a.f68839a, TAG, "setNetMonitor ext:" + e11.getMessage(), false, 4, null);
        }
    }

    private final void startPost(final Context context, final boolean retry) {
        asyn(new Runnable() { // from class: com.transsion.publish.i
            @Override // java.lang.Runnable
            public final void run() {
                PublishManager.startPost$lambda$3(this.f50450a, context, retry);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void startPost$lambda$3(PublishManager publishManager, Context context, boolean z10) {
        try {
            RequestPostEntity requestPostEntity = publishManager.postEntity;
            if (requestPostEntity != null) {
                publishManager.disposePost(context, requestPostEntity, z10);
            }
        } catch (Exception e11) {
            lg.a.C0828a.f(lg.a.f68839a, TAG, "startPost ext:" + e11.getMessage(), false, 4, null);
            publishManager.uploadFail();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void successCallback(Object data) {
        this.createIng = false;
        lg.a.C0828a.f(lg.a.f68839a, TAG, "Upload onSuccess...", false, 4, null);
        try {
            uploadIng(100);
            postSucceed(data);
        } catch (Exception e11) {
            lg.a.C0828a.f(lg.a.f68839a, TAG, "onSuccess ext:" + e11.getMessage(), false, 4, null);
            postSucceed(data);
        }
        pk.a.f72462a.a(Utils.a()).i();
    }

    private final void syncPost(final String postId) {
        asyn(new Runnable() { // from class: com.transsion.publish.h
            @Override // java.lang.Runnable
            public final void run() {
                PublishManager.syncPost$lambda$26(postId, this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void syncPost$lambda$26(String str, PublishManager publishManager) {
        ty.b bVarA = ty.b.f76417a.a();
        RequestPostEntity requestPostEntity = publishManager.postEntity;
        bVarA.h(str, requestPostEntity != null ? requestPostEntity.getGroupId() : null, publishManager.publishType);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final cw.a uploadCallback() {
        return new f();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void uploadFail() {
        lg.a.C0828a.f(lg.a.f68839a, TAG, "uploadFail", false, 4, null);
        this.uploadFail = true;
        postUploadState$default(this, 2, 0, null, 6, null);
    }

    private final void uploadIng(int progress) {
        postUploadState$default(this, 3, progress, null, 4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void uploadProgress(String uploadKey, long currentSize, long totalSize) {
        int i11 = this.uploadType;
        if (i11 == 1) {
            disposeImageProgress(uploadKey, currentSize, totalSize);
            return;
        }
        if (i11 == 2) {
            if (isInterceptProgress()) {
                checkUploadState(uploadKey, currentSize, totalSize);
                return;
            }
            checkUploadState(uploadKey, currentSize, totalSize);
            disposeAudioVideoProgress(uploadKey, currentSize, totalSize, 2);
            setLastRefreshTime();
            return;
        }
        if (i11 != 4) {
            return;
        }
        if (isInterceptProgress()) {
            checkUploadState(uploadKey, currentSize, totalSize);
            return;
        }
        checkUploadState(uploadKey, currentSize, totalSize);
        disposeAudioVideoProgress(uploadKey, currentSize, totalSize, 4);
        setLastRefreshTime();
    }

    private final void uploadSucceed() {
        postUploadState$default(this, 1, 0, null, 6, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void uploadSuccess() {
        boolean zIsCompleteAll = isCompleteAll();
        if (!zIsCompleteAll) {
            lg.a.C0828a.f(lg.a.f68839a, TAG, "Upload unfinished...", false, 4, null);
            return;
        }
        int i11 = this.uploadType;
        if (i11 == 1) {
            if (zIsCompleteAll) {
                imageSourceReplace();
            }
        } else if (i11 == 2) {
            if (zIsCompleteAll) {
                audioSourceReplace();
            }
        } else if (i11 == 4 && zIsCompleteAll) {
            videoSourceReplace();
        }
    }

    private final void videoSourceReplace() {
        RequestPostMediaEntity media;
        RequestPostMediaEntity media2;
        lg.a.C0828a.f(lg.a.f68839a, TAG, "videoSourceReplace", false, 4, null);
        RequestPostEntity requestPostEntity = this.postEntity;
        List<MediaVideoEntity> video = (requestPostEntity == null || (media2 = requestPostEntity.getMedia()) == null) ? null : media2.getVideo();
        if (video != null) {
            for (MediaVideoEntity mediaVideoEntity : video) {
                PublishValue publishValue = this.publishQueue.get(mediaVideoEntity.getUrl());
                mediaVideoEntity.setUrl(String.valueOf(publishValue != null ? publishValue.getUploadUrl() : null));
            }
        }
        Iterator<Map.Entry<String, PublishValue>> it = this.publishQueue.entrySet().iterator();
        while (it.hasNext()) {
            String uploadUrl = it.next().getValue().getUploadUrl();
            if (StringsKt.c0(uploadUrl, ".jpg", false, 2, null) || StringsKt.c0(uploadUrl, ".png", false, 2, null) || StringsKt.c0(uploadUrl, ".webp", false, 2, null) || StringsKt.c0(uploadUrl, ".gif", false, 2, null)) {
                RequestPostEntity requestPostEntity2 = this.postEntity;
                MediaCoverEntity cover = (requestPostEntity2 == null || (media = requestPostEntity2.getMedia()) == null) ? null : media.getCover();
                if (cover != null) {
                    cover.setUrl(uploadUrl);
                }
            }
        }
        RequestPostEntity requestPostEntity3 = this.postEntity;
        if (requestPostEntity3 != null) {
            create(requestPostEntity3);
        }
    }

    public final void cancel() {
        this.cancelIng = true;
        cw.c.f60931a.b();
        reset();
        postUploadState$default(this, 4, 0, null, 6, null);
    }

    public final String getPageName() {
        return this.publishType == 2 ? "create_post" : "create_review";
    }

    /* JADX INFO: renamed from: isFail, reason: from getter */
    public final boolean getUploadFail() {
        return this.uploadFail;
    }

    public final void onConnected(NetworkType networkType) {
        lg.a.C0828a c0828a = lg.a.f68839a;
        lg.a.C0828a.f(c0828a, TAG, "onConnected:" + (networkType != null ? networkType.name() : null), false, 4, null);
        Handler handler = this.handler;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
        Handler handler2 = this.handler;
        if (handler2 != null) {
            handler2.removeCallbacks(this.netRunnable);
        }
        lg.a.C0828a.f(c0828a, TAG, "uploadFail=" + this.uploadFail, false, 4, null);
        if (this.uploadFail) {
            this.uploading = false;
            lg.a.C0828a.f(c0828a, TAG, "uploading=" + this.uploading, false, 4, null);
            retry();
        }
    }

    public final void onDisconnected() {
        lg.a.C0828a c0828a = lg.a.f68839a;
        lg.a.C0828a.f(c0828a, TAG, "onDisconnected", false, 4, null);
        if (this.uploading) {
            netWorkMonitor();
            uploadFail();
            this.uploadFail = true;
            lg.a.C0828a.f(c0828a, TAG, "uploadFail=" + this.uploadFail, false, 4, null);
        }
    }

    public final void publish(RequestPostEntity requestPostEntity, int publishType) {
        Intrinsics.h(requestPostEntity, "requestPostEntity");
        this.postEntity = requestPostEntity;
        this.publishType = publishType;
        Application applicationA = Utils.a();
        if (applicationA != null) {
            startPost(applicationA, false);
        }
    }

    public final void reset() {
        this.publishQueue.clear();
        this.postEntity = null;
        this.uploading = false;
        this.cancelIng = false;
        this.uploadFail = false;
        this.uploadRetry = false;
        this.tstToken = null;
        lg.a.C0828a.f(lg.a.f68839a, TAG, "reset", false, 4, null);
    }

    public final void retry() {
        lg.a.C0828a c0828a = lg.a.f68839a;
        lg.a.C0828a.f(c0828a, TAG, "retry", false, 4, null);
        if (this.uploading) {
            lg.a.C0828a.f(c0828a, TAG, "Upload in progress", false, 4, null);
            return;
        }
        this.uploading = true;
        this.uploadFail = false;
        lg.a.C0828a.f(c0828a, TAG, "retry uploading=" + this.uploading + " uploadFail=" + this.uploadFail, false, 4, null);
        boolean zIsCompleteAll = isCompleteAll();
        this.uploadRetry = true;
        if (zIsCompleteAll) {
            RequestPostEntity requestPostEntity = this.postEntity;
            if (requestPostEntity != null) {
                create(requestPostEntity, true);
                return;
            }
            return;
        }
        Application applicationA = Utils.a();
        if (applicationA != null) {
            startPost(applicationA, false);
        }
    }

    /* JADX INFO: renamed from: uploading, reason: from getter */
    public final boolean getUploading() {
        return this.uploading;
    }
}
