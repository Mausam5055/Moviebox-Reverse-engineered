package com.transsion.publish.ui;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.util.Linkify;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RatingBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.activity.result.ActivityResult;
import androidx.fragment.app.FragmentActivity;
import androidx.p009lifecycle.Lifecycle;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.blankj.utilcode.util.ImageUtils;
import com.blankj.utilcode.util.KeyboardUtils;
import com.cloud.tmc.integration.MiniAppConfigHelper;
import com.cloud.tmc.integration.event.EventConstants;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.tencent.mmkv.MMKV;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.tn.lib.view.bubbleview.BubbleTextView;
import com.tn.lib.view.layoutmanager.NpaGridLayoutManager;
import com.tn.lib.widget.R$color;
import com.tn.lib.widget.dialog.TRDialog;
import com.tn.lib.widget.dialog.TRDialogListener;
import com.transsion.baseui.fragment.BaseFragment;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.publish.PublishManager;
import com.transsion.publish.PublishService;
import com.transsion.publish.R$drawable;
import com.transsion.publish.R$id;
import com.transsion.publish.R$string;
import com.transsion.publish.api.AudioEntity;
import com.transsion.publish.api.GroupBean;
import com.transsion.publish.api.LinkEntity;
import com.transsion.publish.api.PhotoEntity;
import com.transsion.publish.api.VsMediaInfo;
import com.transsion.publish.api.bean.MediaAudioEntity;
import com.transsion.publish.api.bean.MediaCoverEntity;
import com.transsion.publish.api.bean.MediaImageEntity;
import com.transsion.publish.api.bean.MediaLinkEntity;
import com.transsion.publish.api.bean.MediaVideoEntity;
import com.transsion.publish.api.bean.RequestPostEntity;
import com.transsion.publish.api.bean.RequestPostMediaEntity;
import com.transsion.publish.bean.BigImageBean;
import com.transsion.publish.bean.CoverEntity;
import com.transsion.publish.view.ObservableScrollView;
import com.transsion.publish.view.operation.OperationBarView;
import com.transsion.publish.view.operation.OperationVerticalBarView;
import com.transsion.room.api.IRoomApi;
import com.transsion.room.api.bean.LocationPlace;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import com.transsnet.loginapi.ILoginApi;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.StringsKt;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000¢\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010!\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 Ð\u00012\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u00032\u00020\u00042\u00020\u0005:\u0002Ñ\u0001B\u0007¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\t\u0010\u0007J\u000f\u0010\n\u001a\u00020\bH\u0002¢\u0006\u0004\b\n\u0010\u0007J\u000f\u0010\u000b\u001a\u00020\bH\u0002¢\u0006\u0004\b\u000b\u0010\u0007J\u001f\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\fH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\bH\u0002¢\u0006\u0004\b\u0012\u0010\u0007J\u000f\u0010\u0013\u001a\u00020\bH\u0002¢\u0006\u0004\b\u0013\u0010\u0007J\u000f\u0010\u0014\u001a\u00020\bH\u0002¢\u0006\u0004\b\u0014\u0010\u0007J\u001f\u0010\u0019\u001a\u00020\b2\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u0017H\u0002¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\u0015H\u0002¢\u0006\u0004\b\u001b\u0010\u001cJ\u0017\u0010\u001d\u001a\u00020\b2\u0006\u0010\u0016\u001a\u00020\u0015H\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ\u0017\u0010!\u001a\u00020\b2\u0006\u0010 \u001a\u00020\u001fH\u0002¢\u0006\u0004\b!\u0010\"J\u001f\u0010%\u001a\u00020\b2\u0006\u0010 \u001a\u00020\u001f2\u0006\u0010$\u001a\u00020#H\u0002¢\u0006\u0004\b%\u0010&J\u000f\u0010'\u001a\u00020\u000fH\u0002¢\u0006\u0004\b'\u0010(J\u000f\u0010)\u001a\u00020\bH\u0003¢\u0006\u0004\b)\u0010\u0007J\u000f\u0010*\u001a\u00020\bH\u0002¢\u0006\u0004\b*\u0010\u0007J\u0017\u0010-\u001a\u00020\b2\u0006\u0010,\u001a\u00020+H\u0002¢\u0006\u0004\b-\u0010.J\u0017\u0010/\u001a\u00020\b2\u0006\u0010,\u001a\u00020+H\u0002¢\u0006\u0004\b/\u0010.J\u0017\u00100\u001a\u00020\b2\u0006\u0010,\u001a\u00020+H\u0002¢\u0006\u0004\b0\u0010.J\u000f\u00101\u001a\u00020\bH\u0002¢\u0006\u0004\b1\u0010\u0007J\u000f\u00102\u001a\u00020\bH\u0002¢\u0006\u0004\b2\u0010\u0007J\u0015\u00104\u001a\b\u0012\u0004\u0012\u00020#03H\u0002¢\u0006\u0004\b4\u00105J\u0015\u00107\u001a\b\u0012\u0004\u0012\u00020603H\u0002¢\u0006\u0004\b7\u00105J\u001f\u00109\u001a\u00020\b2\u000e\u00108\u001a\n\u0012\u0004\u0012\u000206\u0018\u000103H\u0002¢\u0006\u0004\b9\u0010:J\u0017\u0010;\u001a\u00020\b2\u0006\u0010,\u001a\u00020+H\u0002¢\u0006\u0004\b;\u0010.J\u0017\u0010<\u001a\u00020\b2\u0006\u0010,\u001a\u00020+H\u0002¢\u0006\u0004\b<\u0010.J\u0017\u0010=\u001a\u00020\b2\u0006\u0010,\u001a\u00020+H\u0002¢\u0006\u0004\b=\u0010.J\u0017\u0010>\u001a\u00020\b2\u0006\u0010,\u001a\u00020+H\u0002¢\u0006\u0004\b>\u0010.J\u0017\u0010?\u001a\u00020\b2\u0006\u0010,\u001a\u00020+H\u0002¢\u0006\u0004\b?\u0010.J\u0017\u0010B\u001a\u00020\b2\u0006\u0010A\u001a\u00020@H\u0002¢\u0006\u0004\bB\u0010CJ\u0017\u0010F\u001a\u00020\b2\u0006\u0010E\u001a\u00020DH\u0002¢\u0006\u0004\bF\u0010GJ\u0019\u0010J\u001a\u00020\b2\b\u0010I\u001a\u0004\u0018\u00010HH\u0002¢\u0006\u0004\bJ\u0010KJ\u0017\u0010L\u001a\u00020\b2\u0006\u0010,\u001a\u00020+H\u0002¢\u0006\u0004\bL\u0010.J\u000f\u0010M\u001a\u00020\bH\u0002¢\u0006\u0004\bM\u0010\u0007J\u0017\u0010O\u001a\u00020\b2\u0006\u0010N\u001a\u00020\u0017H\u0002¢\u0006\u0004\bO\u0010PJ\u000f\u0010Q\u001a\u00020\bH\u0002¢\u0006\u0004\bQ\u0010\u0007J\u000f\u0010R\u001a\u00020\bH\u0002¢\u0006\u0004\bR\u0010\u0007J\u000f\u0010S\u001a\u00020\bH\u0002¢\u0006\u0004\bS\u0010\u0007J\u000f\u0010T\u001a\u00020\bH\u0002¢\u0006\u0004\bT\u0010\u0007J\u000f\u0010U\u001a\u00020\bH\u0002¢\u0006\u0004\bU\u0010\u0007J\u0017\u0010X\u001a\u00020\b2\u0006\u0010W\u001a\u00020VH\u0002¢\u0006\u0004\bX\u0010YJ\u000f\u0010Z\u001a\u00020\bH\u0002¢\u0006\u0004\bZ\u0010\u0007J\u0017\u0010]\u001a\u00020\b2\u0006\u0010\\\u001a\u00020[H\u0002¢\u0006\u0004\b]\u0010^J\u000f\u0010_\u001a\u00020\bH\u0002¢\u0006\u0004\b_\u0010\u0007J\u000f\u0010`\u001a\u00020\bH\u0002¢\u0006\u0004\b`\u0010\u0007J\u000f\u0010a\u001a\u00020[H\u0002¢\u0006\u0004\ba\u0010bJ\u000f\u0010c\u001a\u00020\bH\u0002¢\u0006\u0004\bc\u0010\u0007J\u000f\u0010e\u001a\u00020dH\u0016¢\u0006\u0004\be\u0010fJ\u0017\u0010i\u001a\u00020\u00022\u0006\u0010h\u001a\u00020gH\u0016¢\u0006\u0004\bi\u0010jJ!\u0010o\u001a\u00020\b2\u0006\u0010l\u001a\u00020k2\b\u0010n\u001a\u0004\u0018\u00010mH\u0016¢\u0006\u0004\bo\u0010pJ!\u0010q\u001a\u00020\b2\u0006\u0010l\u001a\u00020k2\b\u0010n\u001a\u0004\u0018\u00010mH\u0016¢\u0006\u0004\bq\u0010pJ\r\u0010r\u001a\u00020\b¢\u0006\u0004\br\u0010\u0007J\r\u0010s\u001a\u00020\b¢\u0006\u0004\bs\u0010\u0007J\u000f\u0010t\u001a\u00020\bH\u0016¢\u0006\u0004\bt\u0010\u0007J\u000f\u0010u\u001a\u00020\bH\u0016¢\u0006\u0004\bu\u0010\u0007J\u0017\u0010x\u001a\u00020\b2\u0006\u0010w\u001a\u00020vH\u0016¢\u0006\u0004\bx\u0010yJ\u0017\u0010z\u001a\u00020\b2\u0006\u0010w\u001a\u00020vH\u0016¢\u0006\u0004\bz\u0010yJ\u0017\u0010{\u001a\u00020\b2\u0006\u0010W\u001a\u00020VH\u0016¢\u0006\u0004\b{\u0010YJ\u0017\u0010|\u001a\u00020\b2\u0006\u0010W\u001a\u00020VH\u0016¢\u0006\u0004\b|\u0010YJ\u0017\u0010}\u001a\u00020\b2\u0006\u0010W\u001a\u00020VH\u0016¢\u0006\u0004\b}\u0010YJ\u0017\u0010~\u001a\u00020\b2\u0006\u0010W\u001a\u00020VH\u0016¢\u0006\u0004\b~\u0010YJ\u0017\u0010\u007f\u001a\u00020\b2\u0006\u0010W\u001a\u00020VH\u0016¢\u0006\u0004\b\u007f\u0010YJ\u0019\u0010\u0080\u0001\u001a\u00020\b2\u0006\u0010W\u001a\u00020VH\u0016¢\u0006\u0005\b\u0080\u0001\u0010YJ\u0019\u0010\u0081\u0001\u001a\u00020\b2\u0006\u0010W\u001a\u00020VH\u0016¢\u0006\u0005\b\u0081\u0001\u0010YJ\u0019\u0010\u0082\u0001\u001a\u00020\b2\u0006\u0010W\u001a\u00020VH\u0016¢\u0006\u0005\b\u0082\u0001\u0010YJ\u0011\u0010\u0083\u0001\u001a\u00020\bH\u0016¢\u0006\u0005\b\u0083\u0001\u0010\u0007J\u0011\u0010\u0084\u0001\u001a\u00020\bH\u0016¢\u0006\u0005\b\u0084\u0001\u0010\u0007J\u0011\u0010\u0085\u0001\u001a\u00020\bH\u0016¢\u0006\u0005\b\u0085\u0001\u0010\u0007J\u0011\u0010\u0086\u0001\u001a\u00020\bH\u0016¢\u0006\u0005\b\u0086\u0001\u0010\u0007J\u000f\u0010\u0087\u0001\u001a\u00020\u000f¢\u0006\u0005\b\u0087\u0001\u0010(R\u001c\u0010\u0089\u0001\u001a\u0005\u0018\u00010\u0088\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0089\u0001\u0010\u008a\u0001R\u001c\u0010\u008c\u0001\u001a\u0005\u0018\u00010\u008b\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008c\u0001\u0010\u008d\u0001R\u001c\u0010\u008f\u0001\u001a\u0005\u0018\u00010\u008e\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008f\u0001\u0010\u0090\u0001R\u001b\u0010\u0091\u0001\u001a\u0004\u0018\u00010+8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0091\u0001\u0010\u0092\u0001R\u001c\u0010\u0094\u0001\u001a\u0005\u0018\u00010\u0093\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0094\u0001\u0010\u0095\u0001R\u001c\u0010\u0097\u0001\u001a\u0005\u0018\u00010\u0096\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0097\u0001\u0010\u0098\u0001R\u0019\u0010E\u001a\u0004\u0018\u00010D8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bE\u0010\u0099\u0001R\u001b\u0010\u009a\u0001\u001a\u0004\u0018\u00010@8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009a\u0001\u0010\u009b\u0001R\u001b\u0010\u009c\u0001\u001a\u0004\u0018\u00010H8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009c\u0001\u0010\u009d\u0001R\u001b\u0010\u009e\u0001\u001a\u0004\u0018\u00010H8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009e\u0001\u0010\u009d\u0001R\u001c\u0010 \u0001\u001a\u0005\u0018\u00010\u009f\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b \u0001\u0010¡\u0001R\u0019\u0010¢\u0001\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¢\u0001\u0010£\u0001R\u0019\u0010¤\u0001\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¤\u0001\u0010£\u0001R\u0019\u0010¥\u0001\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¥\u0001\u0010£\u0001R\u0017\u0010¦\u0001\u001a\u00020\u00178\u0002X\u0082D¢\u0006\b\n\u0006\b¦\u0001\u0010£\u0001R\u0017\u0010§\u0001\u001a\u00020\u00178\u0002X\u0082D¢\u0006\b\n\u0006\b§\u0001\u0010£\u0001R\u0019\u0010¨\u0001\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¨\u0001\u0010©\u0001R\u0019\u0010ª\u0001\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bª\u0001\u0010£\u0001R\u0019\u0010«\u0001\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b«\u0001\u0010©\u0001R\u0019\u0010¬\u0001\u001a\u00020\f8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¬\u0001\u0010\u00ad\u0001R\u0019\u0010®\u0001\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b®\u0001\u0010©\u0001R\u0019\u0010¯\u0001\u001a\u00020[8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¯\u0001\u0010°\u0001R#\u0010¶\u0001\u001a\u0005\u0018\u00010±\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b²\u0001\u0010³\u0001\u001a\u0006\b´\u0001\u0010µ\u0001R#\u0010»\u0001\u001a\u0005\u0018\u00010·\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b¸\u0001\u0010³\u0001\u001a\u0006\b¹\u0001\u0010º\u0001R!\u0010À\u0001\u001a\u00030¼\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b½\u0001\u0010³\u0001\u001a\u0006\b¾\u0001\u0010¿\u0001R#\u0010Ã\u0001\u001a\f\u0012\u0005\u0012\u00030Â\u0001\u0018\u00010Á\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÃ\u0001\u0010Ä\u0001R\u0019\u0010Å\u0001\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÅ\u0001\u0010©\u0001R\u001c\u0010Ç\u0001\u001a\u0005\u0018\u00010Æ\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÇ\u0001\u0010È\u0001R\u001c\u0010É\u0001\u001a\u0005\u0018\u00010Æ\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÉ\u0001\u0010È\u0001R\u0019\u0010Ê\u0001\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÊ\u0001\u0010©\u0001R#\u0010Ì\u0001\u001a\f\u0012\u0005\u0012\u00030Ë\u0001\u0018\u00010Á\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÌ\u0001\u0010Ä\u0001R\u0018\u0010Î\u0001\u001a\u00030Í\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\bÎ\u0001\u0010Ï\u0001¨\u0006Ò\u0001"}, d2 = {"Lcom/transsion/publish/ui/FilmReviewFragment;", "Lcom/transsion/baseui/fragment/BaseFragment;", "Lhp/h;", "Lcom/tn/lib/widget/dialog/TRDialogListener;", "Lcom/transsion/publish/adapter/a;", "Lip/b$b;", "<init>", "()V", "", "getVideoIconView", "getImageIconView", "showActivityTips", "", "timestamp1", "timestamp2", "", "isMoreThanADay", "(JJ)Z", "requestCurrentLocation", "userPost", "userGrade", "Lcom/transsion/publish/api/bean/RequestPostEntity;", "request", "", EventConstants.KEY_SOURCE, "postService", "(Lcom/transsion/publish/api/bean/RequestPostEntity;I)V", "buildRequest", "()Lcom/transsion/publish/api/bean/RequestPostEntity;", "detectionSelect", "(Lcom/transsion/publish/api/bean/RequestPostEntity;)V", "Lcom/transsion/publish/api/bean/RequestPostMediaEntity;", "mediaTypes", "checkCover", "(Lcom/transsion/publish/api/bean/RequestPostMediaEntity;)V", "Lcom/transsion/publish/api/VsMediaInfo;", "vsMediaInfo", "checkVideoCover", "(Lcom/transsion/publish/api/bean/RequestPostMediaEntity;Lcom/transsion/publish/api/VsMediaInfo;)V", "checkLogin", "()Z", "initViewModel", "observe", "Lfp/a;", "it", "disposeOperate", "(Lfp/a;)V", "refreshLocation", "refreshImage", "initImageAdapter", "initVideoAdapter", "", "getAddVideoEntity", "()Ljava/util/List;", "Lcom/transsion/publish/api/PhotoEntity;", "getAddImageEntity", "photoEntity", "selectPhotosDispose", "(Ljava/util/List;)V", "refreshAudio", "refreshVideo", "refreshCover", "refreshLink", "refreshWork", "Lcom/transsion/moviedetailapi/bean/Subject;", "subject", "setSubject", "(Lcom/transsion/moviedetailapi/bean/Subject;)V", "Lcom/transsion/publish/api/GroupBean;", "groupBean", "setGroup", "(Lcom/transsion/publish/api/GroupBean;)V", "Lcom/transsion/room/api/bean/LocationPlace;", RequestParameters.SUBRESOURCE_LOCATION, "setLocation", "(Lcom/transsion/room/api/bean/LocationPlace;)V", "refreshGroup", "initManagerAdapter", MimeTypes.BASE_TYPE_TEXT, "setStarTips", "(I)V", "deleteAudio", "deleteLocation", "coverClearDialog", "backSaveDialog", "initRegisterMediaSelector", "Landroid/content/Context;", "context", "showLinkEditInputDialog", "(Landroid/content/Context;)V", "checkBottomMargin", "", AppMeasurementSdk.ConditionalUserProperty.VALUE, "clickTrace", "(Ljava/lang/String;)V", "clickPostTrace", "openRoomList", "getPageName", "()Ljava/lang/String;", "hideOpertaionDialog", "Lhj/b;", "newLogViewConfig", "()Lhj/b;", "Landroid/view/LayoutInflater;", "inflater", "getViewBinding", "(Landroid/view/LayoutInflater;)Lhp/h;", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Landroid/os/Bundle;", "savedInstanceState", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "initView", "closeAffirm", "checkPost", "lazyLoadData", "onDestroy", "Lcom/tn/lib/widget/dialog/TRDialog;", "dialog", "onLeftButtonClick", "(Lcom/tn/lib/widget/dialog/TRDialog;)V", "onRightButtonClick", "startPhoto", "startVideo", "startAudio", "startWork", "startLink", "startLocation", "startGroup", "put", "onPause", "completeLoad", "onStop", "onResume", "isPostEnable", "Lcom/transsion/publish/adapter/g;", "imageAdapter", "Lcom/transsion/publish/adapter/g;", "Lcom/transsion/publish/adapter/r;", "managerAdapter", "Lcom/transsion/publish/adapter/r;", "Lcom/transsion/publish/adapter/v;", "videoAdapter", "Lcom/transsion/publish/adapter/v;", "operationMenu", "Lfp/a;", "Lcom/transsion/publish/viewmodel/d;", "postViewModel", "Lcom/transsion/publish/viewmodel/d;", "Lcom/transsion/publish/bean/CoverEntity;", "coverPath", "Lcom/transsion/publish/bean/CoverEntity;", "Lcom/transsion/publish/api/GroupBean;", "mSubject", "Lcom/transsion/moviedetailapi/bean/Subject;", "locationBean", "Lcom/transsion/room/api/bean/LocationPlace;", "curLocationBean", "Lcom/transsion/publish/api/bean/MediaLinkEntity;", "linkEntity", "Lcom/transsion/publish/api/bean/MediaLinkEntity;", "publishType", "I", "sourceType", "sourceMode", "TITLE_MAX", "DESC_MAX", "requestGroup", "Z", "postStar", "isBold", "showTime", "J", "hasFocus", "TAG", "Ljava/lang/String;", "Lcom/transsion/room/api/IRoomApi;", "mRoomApi$delegate", "Lkotlin/Lazy;", "getMRoomApi", "()Lcom/transsion/room/api/IRoomApi;", "mRoomApi", "Lcom/transsnet/loginapi/ILoginApi;", "loginApi$delegate", "getLoginApi", "()Lcom/transsnet/loginapi/ILoginApi;", "loginApi", "Lkp/b;", "publishModel$delegate", "getPublishModel", "()Lkp/b;", "publishModel", "Landroidx/activity/result/b;", "Landroid/content/Intent;", "loginLaunch", "Landroidx/activity/result/b;", "isNeedShowLoginActivity", "Landroid/widget/ImageView;", "videoIcon", "Landroid/widget/ImageView;", "imageIcon", "underOS33", "Landroidx/activity/result/e;", "videoSelectLauncher", "Ljava/lang/Runnable;", "mRunnable", "Ljava/lang/Runnable;", "Companion", "a", "Publish_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class FilmReviewFragment extends BaseFragment<hp.h> implements TRDialogListener, com.transsion.publish.adapter.a, ip.b.InterfaceC0793b {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final String PAGE_NAME = "publish_post";
    private CoverEntity coverPath;
    private LocationPlace curLocationBean;
    private GroupBean groupBean;
    private boolean hasFocus;
    private com.transsion.publish.adapter.g imageAdapter;
    private ImageView imageIcon;
    private boolean isBold;
    private boolean isNeedShowLoginActivity;
    private MediaLinkEntity linkEntity;
    private LocationPlace locationBean;
    private androidx.activity.result.b loginLaunch;
    private final Runnable mRunnable;
    private Subject mSubject;
    private com.transsion.publish.adapter.r managerAdapter;
    private fp.a operationMenu;
    private int postStar;
    private com.transsion.publish.viewmodel.d postViewModel;
    private int publishType;
    private boolean requestGroup;
    private long showTime;
    private int sourceMode;
    private int sourceType;
    private boolean underOS33;
    private com.transsion.publish.adapter.v videoAdapter;
    private ImageView videoIcon;
    private androidx.activity.result.b videoSelectLauncher;
    private final int TITLE_MAX = 100;
    private final int DESC_MAX = 1000;
    private String TAG = PublishManager.TAG;

    /* JADX INFO: renamed from: mRoomApi$delegate, reason: from kotlin metadata */
    private final Lazy mRoomApi = LazyKt.b(new Function0() { // from class: com.transsion.publish.ui.h
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return FilmReviewFragment.mRoomApi_delegate$lambda$0();
        }
    });

    /* JADX INFO: renamed from: loginApi$delegate, reason: from kotlin metadata */
    private final Lazy loginApi = LazyKt.b(new Function0() { // from class: com.transsion.publish.ui.s
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return FilmReviewFragment.loginApi_delegate$lambda$1();
        }
    });

    /* JADX INFO: renamed from: publishModel$delegate, reason: from kotlin metadata */
    private final Lazy publishModel = LazyKt.b(new Function0() { // from class: com.transsion.publish.ui.w
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return FilmReviewFragment.publishModel_delegate$lambda$2();
        }
    });

    /* JADX INFO: renamed from: com.transsion.publish.ui.FilmReviewFragment$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final FilmReviewFragment a(int i11, Subject subject, int i12, GroupBean groupBean) {
            FilmReviewFragment filmReviewFragment = new FilmReviewFragment();
            Bundle bundle = new Bundle();
            bundle.putInt("sourceType", i11);
            bundle.putInt("sourceMode", i12);
            if (subject != null) {
                bundle.putSerializable("subject", subject);
            }
            if (groupBean != null) {
                bundle.putSerializable("group", groupBean);
            }
            filmReviewFragment.setArguments(bundle);
            return filmReviewFragment;
        }
    }

    public static final class b implements TextWatcher {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Ref.ObjectRef f50476b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Ref.ObjectRef f50477c;

        b(Ref.ObjectRef objectRef, Ref.ObjectRef objectRef2) {
            this.f50476b = objectRef;
            this.f50477c = objectRef2;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            EditText editText;
            EditText editText2;
            TextView textView;
            EditText editText3;
            EditText editText4;
            TextView textView2;
            TextView textView3;
            EditText editText5;
            EditText editText6;
            int length = editable != null ? editable.length() : 0;
            if (length <= 0) {
                FilmReviewFragment.this.isBold = false;
                hp.h mViewBinding = FilmReviewFragment.this.getMViewBinding();
                if (mViewBinding != null && (editText2 = mViewBinding.f64781d) != null) {
                    editText2.setTypeface((Typeface) this.f50477c.element, 0);
                }
                hp.h mViewBinding2 = FilmReviewFragment.this.getMViewBinding();
                if (mViewBinding2 != null && (editText = mViewBinding2.f64781d) != null) {
                    editText.invalidate();
                }
            } else if (!FilmReviewFragment.this.isBold) {
                hp.h mViewBinding3 = FilmReviewFragment.this.getMViewBinding();
                if (mViewBinding3 != null && (editText6 = mViewBinding3.f64781d) != null) {
                    editText6.setTypeface((Typeface) this.f50476b.element, 1);
                }
                hp.h mViewBinding4 = FilmReviewFragment.this.getMViewBinding();
                if (mViewBinding4 != null && (editText5 = mViewBinding4.f64781d) != null) {
                    editText5.invalidate();
                }
                FilmReviewFragment.this.isBold = true;
            }
            if (length < FilmReviewFragment.this.TITLE_MAX - 20 || length > FilmReviewFragment.this.TITLE_MAX) {
                hp.h mViewBinding5 = FilmReviewFragment.this.getMViewBinding();
                if (mViewBinding5 != null && (textView = mViewBinding5.f64800w) != null) {
                    textView.setVisibility(8);
                }
            } else {
                hp.h mViewBinding6 = FilmReviewFragment.this.getMViewBinding();
                if (mViewBinding6 != null && (textView3 = mViewBinding6.f64800w) != null) {
                    textView3.setVisibility(0);
                }
                hp.h mViewBinding7 = FilmReviewFragment.this.getMViewBinding();
                if (mViewBinding7 != null && (textView2 = mViewBinding7.f64800w) != null) {
                    textView2.setText(String.valueOf(FilmReviewFragment.this.TITLE_MAX - length));
                }
            }
            if (length > FilmReviewFragment.this.TITLE_MAX) {
                com.tn.lib.widget.toast.core.h.f41479a.k(R$string.post_title_length_max);
                if (TextUtils.isEmpty(editable)) {
                    return;
                }
                Integer numValueOf = editable != null ? Integer.valueOf(editable.length()) : null;
                Intrinsics.e(numValueOf);
                if (numValueOf.intValue() > FilmReviewFragment.this.TITLE_MAX) {
                    String string = editable.subSequence(0, FilmReviewFragment.this.TITLE_MAX).toString();
                    hp.h mViewBinding8 = FilmReviewFragment.this.getMViewBinding();
                    if (mViewBinding8 != null && (editText4 = mViewBinding8.f64781d) != null) {
                        editText4.setText(string);
                    }
                    hp.h mViewBinding9 = FilmReviewFragment.this.getMViewBinding();
                    if (mViewBinding9 == null || (editText3 = mViewBinding9.f64781d) == null) {
                        return;
                    }
                    editText3.setSelection(string.length());
                }
            }
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i11, int i12, int i13) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i11, int i12, int i13) {
        }
    }

    public static final class c implements TextWatcher {
        c() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            OperationBarView operationBarView;
            OperationBarView operationBarView2;
            OperationBarView operationBarView3;
            hp.h mViewBinding;
            EditText editText;
            EditText editText2;
            OperationBarView operationBarView4;
            EditText editText3;
            Integer numValueOf = editable != null ? Integer.valueOf(editable.length()) : null;
            hp.h mViewBinding2 = FilmReviewFragment.this.getMViewBinding();
            if (mViewBinding2 != null && (editText3 = mViewBinding2.f64780c) != null) {
                Linkify.addLinks(editText3, 1);
            }
            if (numValueOf != null) {
                FragmentActivity activity = FilmReviewFragment.this.getActivity();
                Intrinsics.f(activity, "null cannot be cast to non-null type com.transsion.publish.ui.FilmReviewActivity");
                ((FilmReviewActivity) activity).m0(FilmReviewFragment.this.isPostEnable());
                if (numValueOf.intValue() >= 995) {
                    hp.h mViewBinding3 = FilmReviewFragment.this.getMViewBinding();
                    if (mViewBinding3 != null && (operationBarView4 = mViewBinding3.f64790m) != null) {
                        operationBarView4.setInputLimitColor(R$color.error_50);
                    }
                } else {
                    hp.h mViewBinding4 = FilmReviewFragment.this.getMViewBinding();
                    if (mViewBinding4 != null && (operationBarView2 = mViewBinding4.f64790m) != null) {
                        operationBarView2.setInputLimitColor(R$color.white_80);
                    }
                }
                if (numValueOf.intValue() >= FilmReviewFragment.this.DESC_MAX) {
                    if (TextUtils.isEmpty(editable)) {
                        return;
                    }
                    Integer numValueOf2 = editable != null ? Integer.valueOf(editable.length()) : null;
                    Intrinsics.e(numValueOf2);
                    if (numValueOf2.intValue() > FilmReviewFragment.this.DESC_MAX) {
                        String string = editable != null ? editable.subSequence(0, FilmReviewFragment.this.DESC_MAX).toString() : null;
                        hp.h mViewBinding5 = FilmReviewFragment.this.getMViewBinding();
                        if (mViewBinding5 != null && (editText2 = mViewBinding5.f64780c) != null) {
                            editText2.setText(string);
                        }
                        if (string != null && (mViewBinding = FilmReviewFragment.this.getMViewBinding()) != null && (editText = mViewBinding.f64780c) != null) {
                            editText.setSelection(string.length());
                        }
                        hp.h mViewBinding6 = FilmReviewFragment.this.getMViewBinding();
                        if (mViewBinding6 == null || (operationBarView3 = mViewBinding6.f64790m) == null) {
                            return;
                        }
                        operationBarView3.updateInputNum(string != null ? string.length() : 0);
                        return;
                    }
                    return;
                }
            }
            hp.h mViewBinding7 = FilmReviewFragment.this.getMViewBinding();
            if (mViewBinding7 == null || (operationBarView = mViewBinding7.f64790m) == null) {
                return;
            }
            operationBarView.updateInputNum(numValueOf != null ? numValueOf.intValue() : 0);
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i11, int i12, int i13) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i11, int i12, int i13) {
        }
    }

    public static final class d extends CountDownTimer {
        d() {
            super(5000L, 1000L);
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            BubbleTextView bubbleTextView;
            hp.h mViewBinding = FilmReviewFragment.this.getMViewBinding();
            if (mViewBinding == null || (bubbleTextView = mViewBinding.f64779b) == null) {
                return;
            }
            bubbleTextView.setVisibility(8);
        }

        @Override // android.os.CountDownTimer
        public void onTick(long j11) {
        }
    }

    public FilmReviewFragment() {
        this.underOS33 = Build.VERSION.SDK_INT < 33;
        this.mRunnable = new Runnable() { // from class: com.transsion.publish.ui.x
            @Override // java.lang.Runnable
            public final void run() {
                FilmReviewFragment.mRunnable$lambda$36(this.f50617a);
            }
        };
    }

    private final void backSaveDialog() {
        try {
            TRDialog.a aVar = new TRDialog.a();
            String string = getString(R$string.cover_save_des);
            Intrinsics.g(string, "getString(...)");
            TRDialog.a aVarG = aVar.g(string);
            String string2 = getString(R$string.cover_save_right);
            Intrinsics.g(string2, "getString(...)");
            TRDialog.a aVarE = aVarG.e(string2);
            String string3 = getString(R$string.cover_save_left);
            Intrinsics.g(string3, "getString(...)");
            aVarE.j(string3).h(R$drawable.btn_bg_dialog_edit_selector).c(R$drawable.btn_bg_dialog_edit_selector).i(com.blankj.utilcode.util.h.a(R$color.error_50)).f(this).a().d0(this, "back_save");
            HashMap map = new HashMap();
            map.put("module_name", "back_save_dialog");
            hj.i.f64505a.D(getPageName(), map);
        } catch (Exception unused) {
        }
    }

    private final RequestPostEntity buildRequest() {
        String groupId;
        String name;
        Double lat;
        Double lon;
        EditText editText;
        String subjectId;
        EditText editText2;
        hp.h mViewBinding = getMViewBinding();
        Editable text = null;
        String strQ = StringsKt.Q(StringsKt.Q(String.valueOf((mViewBinding == null || (editText2 = mViewBinding.f64780c) == null) ? null : editText2.getText()), "\\n", "", false, 4, null), "\\t", "", false, 4, null);
        RequestPostEntity requestPostEntity = new RequestPostEntity();
        GroupBean groupBean = this.groupBean;
        String str = "0";
        if (groupBean == null || (groupId = groupBean.getGroupId()) == null) {
            groupId = "0";
        }
        requestPostEntity.setGroupId(groupId);
        requestPostEntity.setScore(String.valueOf(this.postStar));
        requestPostEntity.setLink(this.linkEntity);
        Subject subject = this.mSubject;
        if (subject != null && (subjectId = subject.getSubjectId()) != null) {
            str = subjectId;
        }
        requestPostEntity.setSubjectId(str);
        hp.h mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (editText = mViewBinding2.f64781d) != null) {
            text = editText.getText();
        }
        requestPostEntity.setTitle(String.valueOf(text));
        requestPostEntity.setContent(strQ);
        requestPostEntity.setPublishType(this.sourceType);
        LocationPlace locationPlace = this.locationBean;
        double dDoubleValue = 0.0d;
        requestPostEntity.setLon((locationPlace == null || (lon = locationPlace.getLon()) == null) ? 0.0d : lon.doubleValue());
        LocationPlace locationPlace2 = this.locationBean;
        if (locationPlace2 != null && (lat = locationPlace2.getLat()) != null) {
            dDoubleValue = lat.doubleValue();
        }
        requestPostEntity.setLat(dDoubleValue);
        LocationPlace locationPlace3 = this.locationBean;
        if (locationPlace3 == null || (name = locationPlace3.getName()) == null) {
            name = "";
        }
        requestPostEntity.setPoiName(name);
        detectionSelect(requestPostEntity);
        return requestPostEntity;
    }

    private final void checkBottomMargin() {
    }

    private final void checkCover(RequestPostMediaEntity mediaTypes) {
        Integer height;
        Integer width;
        Long size;
        if (this.coverPath != null) {
            MediaCoverEntity mediaCoverEntity = new MediaCoverEntity();
            CoverEntity coverEntity = this.coverPath;
            mediaCoverEntity.setUrl(coverEntity != null ? coverEntity.getUrl() : null);
            CoverEntity coverEntity2 = this.coverPath;
            mediaCoverEntity.setSize((coverEntity2 == null || (size = coverEntity2.getSize()) == null) ? 0L : size.longValue());
            CoverEntity coverEntity3 = this.coverPath;
            int iIntValue = 0;
            mediaCoverEntity.setWidth((coverEntity3 == null || (width = coverEntity3.getWidth()) == null) ? 0 : width.intValue());
            CoverEntity coverEntity4 = this.coverPath;
            if (coverEntity4 != null && (height = coverEntity4.getHeight()) != null) {
                iIntValue = height.intValue();
            }
            mediaCoverEntity.setHeight(iIntValue);
            mediaTypes.setCover(mediaCoverEntity);
        }
    }

    private final boolean checkLogin() {
        ILoginApi loginApi = getLoginApi();
        if (loginApi == null || loginApi.a()) {
            return true;
        }
        androidx.activity.result.b bVar = this.loginLaunch;
        if (bVar == null) {
            this.isNeedShowLoginActivity = true;
        }
        if (bVar == null) {
            return false;
        }
        Context contextRequireContext = requireContext();
        Intrinsics.g(contextRequireContext, "requireContext(...)");
        Intent intentO = loginApi.o(contextRequireContext);
        intentO.putExtra("title_name", getString(R$string.post_login_title));
        bVar.a(intentO);
        return false;
    }

    private final void checkVideoCover(RequestPostMediaEntity mediaTypes, VsMediaInfo vsMediaInfo) {
        if (TextUtils.isEmpty(vsMediaInfo.getImagePath())) {
            return;
        }
        int[] iArrD = ImageUtils.d(vsMediaInfo.getImagePath());
        MediaCoverEntity mediaCoverEntity = new MediaCoverEntity();
        mediaCoverEntity.setUrl(vsMediaInfo.getImagePath());
        mediaCoverEntity.setSize(iArrD[0] * iArrD[1]);
        mediaCoverEntity.setWidth(iArrD[0]);
        mediaCoverEntity.setHeight(iArrD[1]);
        mediaTypes.setCover(mediaCoverEntity);
    }

    private final void clickPostTrace() {
        HashMap map = new HashMap();
        map.put("module_name", "post");
        hj.i.f64505a.p(getPageName(), map);
    }

    private final void clickTrace(String value) {
        HashMap map = new HashMap();
        map.put("click", value);
        hj.i.f64505a.p(getPageName(), map);
    }

    private final void coverClearDialog() {
        try {
            TRDialog.a aVar = new TRDialog.a();
            String string = getString(R$string.cover_clear_des);
            Intrinsics.g(string, "getString(...)");
            TRDialog.a aVarG = aVar.g(string);
            String string2 = getString(R$string.cover_clear_left);
            Intrinsics.g(string2, "getString(...)");
            TRDialog.a aVarE = aVarG.e(string2);
            String string3 = getString(R$string.cover_clear_right);
            Intrinsics.g(string3, "getString(...)");
            aVarE.j(string3).h(R$drawable.btn_bg_dialog_edit_selector).c(R$drawable.btn_bg_dialog_edit_selector).i(com.blankj.utilcode.util.h.a(com.transsion.baseui.R$color.base_color_black)).f(this).a().d0(this, "clear_cover");
        } catch (Exception unused) {
        }
    }

    private final void deleteAudio() {
        OperationBarView operationBarView;
        RelativeLayout relativeLayout;
        RelativeLayout relativeLayout2;
        LinearLayout linearLayout;
        ImageView imageView;
        ImageView imageView2;
        RelativeLayout relativeLayout3;
        RelativeLayout relativeLayout4;
        this.coverPath = null;
        hp.h mViewBinding = getMViewBinding();
        if (mViewBinding != null && (relativeLayout = mViewBinding.f64792o) != null && relativeLayout.getVisibility() == 0) {
            hp.h mViewBinding2 = getMViewBinding();
            if (mViewBinding2 != null && (relativeLayout4 = mViewBinding2.f64792o) != null) {
                relativeLayout4.setVisibility(8);
            }
            if (this.sourceType == 1) {
                hp.h mViewBinding3 = getMViewBinding();
                if (mViewBinding3 != null && (relativeLayout3 = mViewBinding3.f64794q) != null) {
                    relativeLayout3.setVisibility(0);
                }
            } else {
                hp.h mViewBinding4 = getMViewBinding();
                if (mViewBinding4 != null && (relativeLayout2 = mViewBinding4.f64794q) != null) {
                    relativeLayout2.setVisibility(8);
                }
            }
            hp.h mViewBinding5 = getMViewBinding();
            if (mViewBinding5 != null && (imageView2 = mViewBinding5.f64784g) != null) {
                imageView2.setImageResource(0);
            }
            hp.h mViewBinding6 = getMViewBinding();
            if (mViewBinding6 != null && (imageView = mViewBinding6.f64784g) != null) {
                imageView.setBackgroundResource(0);
            }
            hp.h mViewBinding7 = getMViewBinding();
            if (mViewBinding7 != null && (linearLayout = mViewBinding7.f64787j) != null) {
                linearLayout.requestLayout();
            }
        }
        hp.h mViewBinding8 = getMViewBinding();
        if (mViewBinding8 != null && (operationBarView = mViewBinding8.f64790m) != null) {
            operationBarView.resetItem();
        }
        fp.a aVar = this.operationMenu;
        if (aVar != null) {
            if ((aVar != null ? aVar.a() : null) != null) {
                com.transsion.publish.adapter.r rVar = this.managerAdapter;
                if (rVar != null) {
                    fp.a aVar2 = this.operationMenu;
                    AudioEntity audioEntityA = aVar2 != null ? aVar2.a() : null;
                    Intrinsics.e(audioEntityA);
                    rVar.I(audioEntityA);
                }
                this.operationMenu = null;
            }
        }
        com.transsion.publish.adapter.r rVar2 = this.managerAdapter;
        if (rVar2 != null) {
            rVar2.u();
        }
    }

    private final void deleteLocation() {
        fp.a aVar = this.operationMenu;
        if (aVar != null) {
            if ((aVar != null ? aVar.g() : null) != null) {
                com.transsion.publish.adapter.r rVar = this.managerAdapter;
                if (rVar != null) {
                    fp.a aVar2 = this.operationMenu;
                    LocationPlace locationPlaceG = aVar2 != null ? aVar2.g() : null;
                    Intrinsics.e(locationPlaceG);
                    rVar.I(locationPlaceG);
                }
                this.locationBean = null;
                this.operationMenu = null;
            }
        }
    }

    private final void detectionSelect(RequestPostEntity request) {
        List<in.a> listV;
        List<VsMediaInfo> listM;
        List<PhotoEntity> listM2;
        OperationBarView operationBarView;
        hp.h mViewBinding = getMViewBinding();
        List<Integer> selectItem = (mViewBinding == null || (operationBarView = mViewBinding.f64790m) == null) ? null : operationBarView.getSelectItem();
        RequestPostMediaEntity requestPostMediaEntity = new RequestPostMediaEntity();
        request.setMedia(requestPostMediaEntity);
        if (selectItem != null) {
            Iterator<T> it = selectItem.iterator();
            while (it.hasNext()) {
                int iIntValue = ((Number) it.next()).intValue();
                if (iIntValue == 0) {
                    requestPostMediaEntity.setMediaType(1);
                    ArrayList arrayList = new ArrayList();
                    com.transsion.publish.adapter.g gVar = this.imageAdapter;
                    if (gVar != null && (listM2 = gVar.m()) != null) {
                        for (PhotoEntity photoEntity : listM2) {
                            if (!photoEntity.getIsAdd()) {
                                MediaImageEntity mediaImageEntity = new MediaImageEntity();
                                mediaImageEntity.setUrl(String.valueOf(photoEntity.getLocalPath()));
                                if (photoEntity.getWidth() > 0) {
                                    mediaImageEntity.setWidth(Integer.valueOf(photoEntity.getWidth()));
                                }
                                if (photoEntity.getHeight() > 0) {
                                    mediaImageEntity.setHeight(Integer.valueOf(photoEntity.getHeight()));
                                }
                                if (photoEntity.getImageSize() > 0) {
                                    mediaImageEntity.setSize(Long.valueOf(photoEntity.getImageSize()));
                                }
                                arrayList.add(mediaImageEntity);
                            }
                        }
                    }
                    requestPostMediaEntity.setImage(arrayList);
                } else if (iIntValue == 1) {
                    requestPostMediaEntity.setMediaType(4);
                    requestPostMediaEntity.setVideo(new ArrayList());
                    com.transsion.publish.adapter.v vVar = this.videoAdapter;
                    if (vVar != null && (listM = vVar.m()) != null) {
                        for (VsMediaInfo vsMediaInfo : listM) {
                            if (!vsMediaInfo.getIsAdd()) {
                                MediaVideoEntity mediaVideoEntity = new MediaVideoEntity();
                                mediaVideoEntity.setUrl(String.valueOf(vsMediaInfo.getVideoPath()));
                                mediaVideoEntity.setImagePath(vsMediaInfo.getImagePath());
                                if (vsMediaInfo.getWidth() > 0) {
                                    mediaVideoEntity.setWidth(vsMediaInfo.getWidth());
                                }
                                if (vsMediaInfo.getHeight() > 0) {
                                    mediaVideoEntity.setHeight(vsMediaInfo.getHeight());
                                }
                                if (vsMediaInfo.getVideoDuration() > 0) {
                                    mediaVideoEntity.setDuration(vsMediaInfo.getVideoDuration() / ((long) 1000));
                                }
                                mediaVideoEntity.setSize(vsMediaInfo.getVideoSize());
                                mediaVideoEntity.setFps(0);
                                mediaVideoEntity.setBitrate(0);
                                mediaVideoEntity.setDefinition(0);
                                List<MediaVideoEntity> video = requestPostMediaEntity.getVideo();
                                if (video != null) {
                                    video.add(mediaVideoEntity);
                                }
                                checkVideoCover(requestPostMediaEntity, vsMediaInfo);
                            }
                        }
                    }
                } else if (iIntValue == 2) {
                    requestPostMediaEntity.setMediaType(2);
                    requestPostMediaEntity.setAudio(new ArrayList());
                    com.transsion.publish.adapter.r rVar = this.managerAdapter;
                    if (rVar != null && (listV = rVar.v()) != null) {
                        for (in.a aVar : listV) {
                            if (aVar instanceof AudioEntity) {
                                MediaAudioEntity mediaAudioEntity = new MediaAudioEntity();
                                AudioEntity audioEntity = (AudioEntity) aVar;
                                mediaAudioEntity.setUrl(String.valueOf(audioEntity.getLocalPath()));
                                mediaAudioEntity.setSize(audioEntity.getSize());
                                Long duration = audioEntity.getDuration();
                                if ((duration != null ? duration.longValue() : 0L) > 0) {
                                    Long duration2 = audioEntity.getDuration();
                                    mediaAudioEntity.setDuration(duration2 != null ? duration2.longValue() / ((long) 1000) : 0L);
                                }
                                mediaAudioEntity.setBitrate(0L);
                                List<MediaAudioEntity> audio = requestPostMediaEntity.getAudio();
                                if (audio != null) {
                                    audio.add(mediaAudioEntity);
                                }
                            }
                        }
                    }
                    checkCover(requestPostMediaEntity);
                }
            }
        }
    }

    private final void disposeOperate(fp.a it) {
        Integer numE;
        this.operationMenu = it;
        hideOpertaionDialog();
        Integer numE2 = it.e();
        if (numE2 != null && numE2.intValue() == 0) {
            refreshImage(it);
        } else if (numE2 != null && numE2.intValue() == 1) {
            refreshVideo(it);
        } else if (numE2 != null && numE2.intValue() == 2) {
            refreshAudio(it);
        } else if (numE2 != null && numE2.intValue() == 5) {
            refreshCover(it);
        } else if (numE2 != null && numE2.intValue() == 3) {
            refreshWork(it);
        } else if (numE2 != null && numE2.intValue() == 6) {
            refreshGroup(it);
        } else if (numE2 != null && numE2.intValue() == 4) {
            refreshLink(it);
        } else if (numE2 != null && numE2.intValue() == 8) {
            refreshLocation(it);
        }
        Integer numE3 = it.e();
        if (numE3 != null && numE3.intValue() == 5 && (numE = it.e()) != null && numE.intValue() == 6) {
            return;
        }
        checkBottomMargin();
    }

    private final List<PhotoEntity> getAddImageEntity() {
        ArrayList arrayList = new ArrayList();
        PhotoEntity photoEntity = new PhotoEntity();
        photoEntity.setAdd(true);
        arrayList.add(photoEntity);
        return arrayList;
    }

    private final List<VsMediaInfo> getAddVideoEntity() {
        ArrayList arrayList = new ArrayList();
        VsMediaInfo vsMediaInfo = new VsMediaInfo();
        vsMediaInfo.setAdd(true);
        arrayList.add(vsMediaInfo);
        return arrayList;
    }

    private final void getImageIconView() {
        OperationBarView operationBarView;
        RecyclerView recyclerView;
        hp.h mViewBinding = getMViewBinding();
        if (mViewBinding == null || (operationBarView = mViewBinding.f64790m) == null || (recyclerView = operationBarView.getCom.mbridge.msdk.foundation.entity.CampaignEx.JSON_KEY_REWARD_TEMPLATE java.lang.String()) == null) {
            return;
        }
        recyclerView.post(new Runnable() { // from class: com.transsion.publish.ui.l
            @Override // java.lang.Runnable
            public final void run() {
                FilmReviewFragment.getImageIconView$lambda$11(this.f50585a);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getImageIconView$lambda$11(FilmReviewFragment filmReviewFragment) {
        OperationBarView operationBarView;
        RecyclerView recyclerView;
        hp.h mViewBinding = filmReviewFragment.getMViewBinding();
        RecyclerView.b0 b0VarFindViewHolderForAdapterPosition = (mViewBinding == null || (operationBarView = mViewBinding.f64790m) == null || (recyclerView = operationBarView.getCom.mbridge.msdk.foundation.entity.CampaignEx.JSON_KEY_REWARD_TEMPLATE java.lang.String()) == null) ? null : recyclerView.findViewHolderForAdapterPosition(0);
        if (b0VarFindViewHolderForAdapterPosition instanceof op.f) {
            filmReviewFragment.imageIcon = (ImageView) ((op.f) b0VarFindViewHolderForAdapterPosition).itemView.findViewById(R$id.image);
        }
    }

    private final ILoginApi getLoginApi() {
        return (ILoginApi) this.loginApi.getValue();
    }

    private final IRoomApi getMRoomApi() {
        return (IRoomApi) this.mRoomApi.getValue();
    }

    private final String getPageName() {
        return PAGE_NAME;
    }

    private final kp.b getPublishModel() {
        return (kp.b) this.publishModel.getValue();
    }

    private final void getVideoIconView() {
        OperationBarView operationBarView;
        RecyclerView recyclerView;
        hp.h mViewBinding = getMViewBinding();
        if (mViewBinding == null || (operationBarView = mViewBinding.f64790m) == null || (recyclerView = operationBarView.getCom.mbridge.msdk.foundation.entity.CampaignEx.JSON_KEY_REWARD_TEMPLATE java.lang.String()) == null) {
            return;
        }
        recyclerView.post(new Runnable() { // from class: com.transsion.publish.ui.k
            @Override // java.lang.Runnable
            public final void run() {
                FilmReviewFragment.getVideoIconView$lambda$10(this.f50583a);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getVideoIconView$lambda$10(FilmReviewFragment filmReviewFragment) {
        OperationBarView operationBarView;
        RecyclerView recyclerView;
        hp.h mViewBinding = filmReviewFragment.getMViewBinding();
        RecyclerView.b0 b0VarFindViewHolderForAdapterPosition = (mViewBinding == null || (operationBarView = mViewBinding.f64790m) == null || (recyclerView = operationBarView.getCom.mbridge.msdk.foundation.entity.CampaignEx.JSON_KEY_REWARD_TEMPLATE java.lang.String()) == null) ? null : recyclerView.findViewHolderForAdapterPosition(1);
        if (b0VarFindViewHolderForAdapterPosition instanceof op.f) {
            filmReviewFragment.videoIcon = (ImageView) ((op.f) b0VarFindViewHolderForAdapterPosition).itemView.findViewById(R$id.image);
        }
    }

    private final void hideOpertaionDialog() {
    }

    private final void initImageAdapter() {
        RecyclerView recyclerView;
        RecyclerView recyclerView2;
        RecyclerView recyclerView3;
        if (this.imageAdapter == null) {
            this.imageAdapter = new com.transsion.publish.adapter.g();
            hp.h mViewBinding = getMViewBinding();
            if (mViewBinding != null && (recyclerView3 = mViewBinding.f64796s) != null) {
                recyclerView3.setLayoutManager(new NpaGridLayoutManager(getContext(), 3));
            }
            hp.h mViewBinding2 = getMViewBinding();
            if (mViewBinding2 != null && (recyclerView2 = mViewBinding2.f64796s) != null) {
                recyclerView2.addItemDecoration(new ig.b(com.blankj.utilcode.util.a0.a(2.0f), com.blankj.utilcode.util.a0.a(2.0f), 0, com.blankj.utilcode.util.a0.a(8.0f)));
            }
        }
        hp.h mViewBinding3 = getMViewBinding();
        if (mViewBinding3 == null || (recyclerView = mViewBinding3.f64796s) == null) {
            return;
        }
        recyclerView.setAdapter(this.imageAdapter);
    }

    private final void initManagerAdapter() {
        RecyclerView recyclerView;
        RecyclerView recyclerView2;
        if (this.managerAdapter == null) {
            this.managerAdapter = new com.transsion.publish.adapter.r();
            hp.h mViewBinding = getMViewBinding();
            if (mViewBinding != null && (recyclerView2 = mViewBinding.f64795r) != null) {
                recyclerView2.setLayoutManager(new LinearLayoutManager(getActivity(), 1, false));
            }
            hp.h mViewBinding2 = getMViewBinding();
            if (mViewBinding2 == null || (recyclerView = mViewBinding2.f64795r) == null) {
                return;
            }
            recyclerView.setAdapter(this.managerAdapter);
        }
    }

    private final void initRegisterMediaSelector() {
        if (this.underOS33) {
            return;
        }
        this.videoSelectLauncher = requireActivity().registerForActivityResult(new f.g(), new androidx.activity.result.a() { // from class: com.transsion.publish.ui.t
            @Override // androidx.activity.result.a
            public final void a(Object obj) {
                FilmReviewFragment.initRegisterMediaSelector$lambda$31(this.f50610a, (Uri) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initRegisterMediaSelector$lambda$31(FilmReviewFragment filmReviewFragment, Uri uri) {
        if (uri != null) {
            fp.a aVar = new fp.a();
            aVar.o(1);
            aVar.n(1);
            VsMediaInfo vsMediaInfo = new VsMediaInfo();
            mp.g gVar = mp.g.f69681a;
            Context contextRequireContext = filmReviewFragment.requireContext();
            Intrinsics.g(contextRequireContext, "requireContext(...)");
            gp.a aVarB = gVar.b(contextRequireContext, uri);
            if (aVarB != null) {
                vsMediaInfo.setVideoPath(aVarB.c());
                vsMediaInfo.setVideoTitle(aVarB.e());
                vsMediaInfo.setVideoDuration(aVarB.a());
                vsMediaInfo.setWidth(aVarB.f());
                vsMediaInfo.setHeight(aVarB.b());
                vsMediaInfo.setVideoSize(aVarB.d());
            }
            aVar.u(vsMediaInfo);
            filmReviewFragment.refreshVideo(aVar);
            filmReviewFragment.requireActivity().getContentResolver().takePersistableUriPermission(uri, 1);
        }
    }

    private final void initVideoAdapter() {
        RecyclerView recyclerView;
        RecyclerView recyclerView2;
        RecyclerView recyclerView3;
        if (this.videoAdapter == null) {
            this.videoAdapter = new com.transsion.publish.adapter.v();
            hp.h mViewBinding = getMViewBinding();
            if (mViewBinding != null && (recyclerView3 = mViewBinding.f64796s) != null) {
                recyclerView3.setLayoutManager(new NpaGridLayoutManager(getContext(), 3));
            }
            hp.h mViewBinding2 = getMViewBinding();
            if (mViewBinding2 != null && (recyclerView2 = mViewBinding2.f64796s) != null) {
                recyclerView2.addItemDecoration(new ig.b(com.blankj.utilcode.util.a0.a(2.0f), com.blankj.utilcode.util.a0.a(2.0f), 0, com.blankj.utilcode.util.a0.a(8.0f)));
            }
        }
        hp.h mViewBinding3 = getMViewBinding();
        if (mViewBinding3 == null || (recyclerView = mViewBinding3.f64796s) == null) {
            return;
        }
        recyclerView.setAdapter(this.videoAdapter);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initView$lambda$3(FilmReviewFragment filmReviewFragment, RatingBar ratingBar, float f11, boolean z10) {
        filmReviewFragment.postStar = (int) f11;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initView$lambda$4(FilmReviewFragment filmReviewFragment, View view) {
        SelectImageActivity.Companion companion = SelectImageActivity.INSTANCE;
        Context contextRequireContext = filmReviewFragment.requireContext();
        Intrinsics.g(contextRequireContext, "requireContext(...)");
        com.transsion.publish.adapter.g gVar = filmReviewFragment.imageAdapter;
        companion.a(contextRequireContext, 5, 1, gVar != null ? gVar.m() : null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initView$lambda$5(FilmReviewFragment filmReviewFragment, ActivityResult it) {
        Intrinsics.h(it, "it");
        if (it.getResultCode() != -1) {
            lg.a.C0828a.f(lg.a.f68839a, "loginStatus", "登录失败或者取消", false, 4, null);
            return;
        }
        lg.a.C0828a.f(lg.a.f68839a, "loginStatus", "登录成功", false, 4, null);
        com.tn.lib.widget.toast.core.h hVar = com.tn.lib.widget.toast.core.h.f41479a;
        ILoginApi loginApi = filmReviewFragment.getLoginApi();
        hVar.l(loginApi != null ? loginApi.b() : null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initView$lambda$6(FilmReviewFragment filmReviewFragment, View view, boolean z10) {
        view.dispatchWindowFocusChanged(z10);
        filmReviewFragment.hasFocus = z10;
        if (z10) {
            filmReviewFragment.hideOpertaionDialog();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initView$lambda$8(final FilmReviewFragment filmReviewFragment, View view, boolean z10) {
        hp.h mViewBinding;
        EditText editText;
        EditText editText2;
        view.dispatchWindowFocusChanged(z10);
        if (z10) {
            filmReviewFragment.hideOpertaionDialog();
            hp.h mViewBinding2 = filmReviewFragment.getMViewBinding();
            if (!TextUtils.isEmpty((mViewBinding2 == null || (editText2 = mViewBinding2.f64780c) == null) ? null : editText2.getText()) || (mViewBinding = filmReviewFragment.getMViewBinding()) == null || (editText = mViewBinding.f64780c) == null) {
                return;
            }
            editText.post(new Runnable() { // from class: com.transsion.publish.ui.v
                @Override // java.lang.Runnable
                public final void run() {
                    FilmReviewFragment.initView$lambda$8$lambda$7(this.f50614a);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initView$lambda$8$lambda$7(FilmReviewFragment filmReviewFragment) {
        EditText editText;
        EditText editText2;
        EditText editText3;
        hp.h mViewBinding = filmReviewFragment.getMViewBinding();
        if (mViewBinding != null && (editText3 = mViewBinding.f64780c) != null) {
            editText3.setText("");
        }
        hp.h mViewBinding2 = filmReviewFragment.getMViewBinding();
        if (mViewBinding2 != null && (editText2 = mViewBinding2.f64780c) != null) {
            editText2.setSelection(0);
        }
        hp.h mViewBinding3 = filmReviewFragment.getMViewBinding();
        if (mViewBinding3 == null || (editText = mViewBinding3.f64780c) == null) {
            return;
        }
        editText.requestFocus();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initView$lambda$9(int i11) {
    }

    @SuppressLint({"InflateParams"})
    private final void initViewModel() {
        observe();
    }

    private final boolean isMoreThanADay(long timestamp1, long timestamp2) {
        return timestamp1 - timestamp2 > ((long) MiniAppConfigHelper.DEFAULT_MINI_SCOPE_REQUEST_DIFF);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ILoginApi loginApi_delegate$lambda$1() {
        return (ILoginApi) TheRouter.d(ILoginApi.class, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final IRoomApi mRoomApi_delegate$lambda$0() {
        return (IRoomApi) TheRouter.d(IRoomApi.class, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void mRunnable$lambda$36(FilmReviewFragment filmReviewFragment) {
        EditText editText;
        hp.h mViewBinding = filmReviewFragment.getMViewBinding();
        if (mViewBinding == null || (editText = mViewBinding.f64780c) == null) {
            return;
        }
        editText.clearFocus();
        editText.requestFocus();
        KeyboardUtils.i(editText);
    }

    private final void observe() {
        Function1 function1 = new Function1() { // from class: com.transsion.publish.ui.n
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return FilmReviewFragment.observe$lambda$23(this.f50592a, (fp.a) obj);
            }
        };
        AppScopeVMlProvider appScopeVMlProvider = AppScopeVMlProvider.INSTANCE;
        FlowEventBus flowEventBus = (FlowEventBus) appScopeVMlProvider.getApplicationScopeViewModel(FlowEventBus.class);
        String name = fp.a.class.getName();
        Intrinsics.g(name, "getName(...)");
        Lifecycle.State state = Lifecycle.State.CREATED;
        flowEventBus.observeEvent(this, name, state, kotlinx.coroutines.y0.c().q(), false, function1);
        Function1 function2 = new Function1() { // from class: com.transsion.publish.ui.o
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return FilmReviewFragment.observe$lambda$24(this.f50595a, (BigImageBean) obj);
            }
        };
        FlowEventBus flowEventBus2 = (FlowEventBus) appScopeVMlProvider.getApplicationScopeViewModel(FlowEventBus.class);
        String name2 = BigImageBean.class.getName();
        Intrinsics.g(name2, "getName(...)");
        flowEventBus2.observeEvent(this, name2, state, kotlinx.coroutines.y0.c().q(), false, function2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit observe$lambda$23(FilmReviewFragment filmReviewFragment, fp.a it) {
        Intrinsics.h(it, "it");
        filmReviewFragment.disposeOperate(it);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit observe$lambda$24(FilmReviewFragment filmReviewFragment, BigImageBean it) {
        Intrinsics.h(it, "it");
        Integer from = it.getFrom();
        if (from == null || from.intValue() != 2) {
            return Unit.f67061a;
        }
        Integer operator = it.getOperator();
        if (operator != null && operator.intValue() == 1) {
            filmReviewFragment.selectPhotosDispose(it.getSelect());
        }
        return Unit.f67061a;
    }

    private final void openRoomList() {
        Navigator.x(TheRouter.c("/room/list").z("is_select_room", true).F("index", 1), requireContext(), null, 2, null);
    }

    private final void postService(RequestPostEntity request, int source) {
        PublishService.Companion companion = PublishService.INSTANCE;
        Context contextRequireContext = requireContext();
        Intrinsics.g(contextRequireContext, "requireContext(...)");
        companion.a(contextRequireContext, request, this.sourceType);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final kp.b publishModel_delegate$lambda$2() {
        return new kp.b();
    }

    private final void refreshAudio(fp.a it) {
        RelativeLayout relativeLayout;
        RelativeLayout relativeLayout2;
        RelativeLayout relativeLayout3;
        OperationBarView operationBarView;
        Integer numD = it.d();
        if (numD == null || numD.intValue() != 1) {
            if (numD != null && numD.intValue() == 2) {
                if (this.coverPath != null) {
                    coverClearDialog();
                    return;
                } else {
                    deleteAudio();
                    return;
                }
            }
            return;
        }
        if (it.a() == null) {
            return;
        }
        hp.h mViewBinding = getMViewBinding();
        if (mViewBinding != null && (operationBarView = mViewBinding.f64790m) != null) {
            operationBarView.selectItem(2);
        }
        initManagerAdapter();
        AudioEntity audioEntityA = it.a();
        if (audioEntityA != null) {
            audioEntityA.setType(2);
        }
        com.transsion.publish.adapter.r rVar = this.managerAdapter;
        if (rVar != null) {
            rVar.J(it.a());
        }
        hp.h mViewBinding2 = getMViewBinding();
        if (mViewBinding2 == null || (relativeLayout3 = mViewBinding2.f64792o) == null || relativeLayout3.getVisibility() != 0) {
            hp.h mViewBinding3 = getMViewBinding();
            if (mViewBinding3 != null && (relativeLayout2 = mViewBinding3.f64792o) != null) {
                relativeLayout2.setVisibility(0);
            }
            hp.h mViewBinding4 = getMViewBinding();
            if (mViewBinding4 == null || (relativeLayout = mViewBinding4.f64794q) == null) {
                return;
            }
            relativeLayout.setVisibility(8);
        }
    }

    private final void refreshCover(fp.a it) {
        ImageView imageView;
        if (it.b() == null) {
            return;
        }
        if (this.coverPath == null) {
            this.coverPath = new CoverEntity();
        }
        CoverEntity coverEntity = this.coverPath;
        if (coverEntity != null) {
            PhotoEntity photoEntityB = it.b();
            coverEntity.setUrl(photoEntityB != null ? photoEntityB.getLocalPath() : null);
        }
        CoverEntity coverEntity2 = this.coverPath;
        if (coverEntity2 != null) {
            PhotoEntity photoEntityB2 = it.b();
            coverEntity2.setSize(photoEntityB2 != null ? Long.valueOf(photoEntityB2.getImageSize()) : null);
        }
        CoverEntity coverEntity3 = this.coverPath;
        if (coverEntity3 != null) {
            PhotoEntity photoEntityB3 = it.b();
            coverEntity3.setWidth(photoEntityB3 != null ? Integer.valueOf(photoEntityB3.getWidth()) : null);
        }
        CoverEntity coverEntity4 = this.coverPath;
        if (coverEntity4 != null) {
            PhotoEntity photoEntityB4 = it.b();
            coverEntity4.setHeight(photoEntityB4 != null ? Integer.valueOf(photoEntityB4.getHeight()) : null);
        }
        hp.h mViewBinding = getMViewBinding();
        if (mViewBinding != null && (imageView = mViewBinding.f64784g) != null) {
            imageView.setVisibility(0);
        }
        ej.f.a aVar = ej.f.f61882a;
        Context contextRequireContext = requireContext();
        Intrinsics.g(contextRequireContext, "requireContext(...)");
        ej.f.b bVarM = aVar.m(contextRequireContext);
        PhotoEntity photoEntityB5 = it.b();
        ej.f.b bVarI = bVarM.g(photoEntityB5 != null ? photoEntityB5.getLocalPath() : null).i(com.transsion.publish.R$color.color_ff999999);
        hp.h mViewBinding2 = getMViewBinding();
        ImageView imageView2 = mViewBinding2 != null ? mViewBinding2.f64784g : null;
        Intrinsics.e(imageView2);
        bVarI.d(imageView2);
    }

    private final void refreshGroup(fp.a it) {
        this.groupBean = it.c();
        Integer numD = it.d();
        if (numD != null && numD.intValue() == 1) {
            GroupBean groupBeanC = it.c();
            if (groupBeanC != null) {
                setGroup(groupBeanC);
            }
        } else if (numD != null && numD.intValue() == 2) {
            fp.a aVar = this.operationMenu;
            if (aVar != null) {
                if ((aVar != null ? aVar.c() : null) != null) {
                    com.transsion.publish.adapter.r rVar = this.managerAdapter;
                    if (rVar != null) {
                        fp.a aVar2 = this.operationMenu;
                        GroupBean groupBeanC2 = aVar2 != null ? aVar2.c() : null;
                        Intrinsics.e(groupBeanC2);
                        rVar.I(groupBeanC2);
                    }
                    this.operationMenu = null;
                }
            }
            this.groupBean = null;
        }
        HashMap map = new HashMap();
        GroupBean groupBean = this.groupBean;
        map.put("group_id", String.valueOf(groupBean != null ? groupBean.getGroupId() : null));
        hj.i.f64505a.p(getPageName(), map);
    }

    /* JADX WARN: Code duplicated, block: B:67:0x00bd  */
    private final void refreshImage(fp.a it) {
        hp.h mViewBinding;
        OperationBarView operationBarView;
        hp.h mViewBinding2;
        OperationBarView operationBarView2;
        List listL;
        List listL2;
        PhotoEntity photoEntity;
        List listL3;
        List listL4;
        List listL5;
        Integer numD = it.d();
        int size = 0;
        if (numD != null && numD.intValue() == 1) {
            com.transsion.publish.adapter.g gVar = this.imageAdapter;
            if (gVar != null && (listL5 = gVar.l()) != null) {
                size = listL5.size();
            }
            if (size < 9) {
                com.transsion.publish.adapter.g gVar2 = this.imageAdapter;
                if (gVar2 != null) {
                    List listH = it.h();
                    if (listH == null) {
                        listH = new ArrayList();
                    }
                    listH.addAll(gVar2.l());
                    it.r(listH);
                }
                selectPhotosDispose(it.h());
            }
        } else {
            Integer numD2 = it.d();
            if (numD2 != null && numD2.intValue() == 2) {
                com.transsion.publish.adapter.g gVar3 = this.imageAdapter;
                if ((gVar3 == null || (listL4 = gVar3.l()) == null || listL4.size() != 0) ? false : true) {
                    mViewBinding = getMViewBinding();
                    if (mViewBinding != null && (operationBarView = mViewBinding.f64790m) != null) {
                        operationBarView.resetItem();
                    }
                } else {
                    com.transsion.publish.adapter.g gVar4 = this.imageAdapter;
                    if ((gVar4 == null || (listL3 = gVar4.l()) == null || listL3.size() != 1) ? false : true) {
                        com.transsion.publish.adapter.g gVar5 = this.imageAdapter;
                        if ((gVar5 == null || (listL2 = gVar5.l()) == null || (photoEntity = (PhotoEntity) listL2.get(0)) == null || !photoEntity.getIsAdd()) ? false : true) {
                            mViewBinding = getMViewBinding();
                            if (mViewBinding != null) {
                                operationBarView.resetItem();
                            }
                        }
                    }
                    com.transsion.publish.adapter.g gVar6 = this.imageAdapter;
                    if (((gVar6 == null || (listL = gVar6.l()) == null) ? 0 : listL.size()) < 9 && (mViewBinding2 = getMViewBinding()) != null && (operationBarView2 = mViewBinding2.f64790m) != null) {
                        operationBarView2.selectItem(0);
                    }
                }
            }
        }
        FragmentActivity activity = getActivity();
        Intrinsics.f(activity, "null cannot be cast to non-null type com.transsion.publish.ui.FilmReviewActivity");
        ((FilmReviewActivity) activity).m0(isPostEnable());
    }

    private final void refreshLink(fp.a it) {
        hp.h mViewBinding;
        OperationBarView operationBarView;
        OperationBarView operationBarView2;
        Integer numD = it.d();
        if (numD == null || numD.intValue() != 1) {
            if (numD == null || numD.intValue() != 2 || (mViewBinding = getMViewBinding()) == null || (operationBarView = mViewBinding.f64790m) == null) {
                return;
            }
            operationBarView.resetItem(true);
            return;
        }
        if (it.f() == null) {
            return;
        }
        hp.h mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (operationBarView2 = mViewBinding2.f64790m) != null) {
            operationBarView2.selectItem(4);
        }
        initManagerAdapter();
        com.transsion.publish.adapter.r rVar = this.managerAdapter;
        if (rVar != null) {
            rVar.J(it.f());
        }
        LinkEntity linkEntityF = it.f();
        this.linkEntity = new MediaLinkEntity(linkEntityF != null ? linkEntityF.getUrl() : null, linkEntityF != null ? linkEntityF.getTitle() : null, linkEntityF != null ? linkEntityF.getCover() : null);
        LinkEntity linkEntityF2 = it.f();
        if (linkEntityF2 == null || !linkEntityF2.getLoading()) {
            return;
        }
        com.tn.lib.widget.toast.core.h.f41479a.k(R$string.postint_state_added);
    }

    private final void refreshLocation(fp.a it) {
        OperationBarView operationBarView;
        this.locationBean = it.g();
        Integer numD = it.d();
        if (numD == null || numD.intValue() != 1) {
            if (numD != null && numD.intValue() == 2) {
                deleteLocation();
                return;
            }
            return;
        }
        if (it.g() == null) {
            return;
        }
        hp.h mViewBinding = getMViewBinding();
        if (mViewBinding != null && (operationBarView = mViewBinding.f64790m) != null) {
            operationBarView.selectItem(8);
        }
        initManagerAdapter();
        LocationPlace locationPlaceG = it.g();
        if (locationPlaceG != null) {
            locationPlaceG.setType(8);
        }
        com.transsion.publish.adapter.r rVar = this.managerAdapter;
        if (rVar != null) {
            rVar.J(it.g());
        }
    }

    private final void refreshVideo(fp.a it) {
        OperationBarView operationBarView;
        ImageView imageView;
        List listL;
        OperationBarView operationBarView2;
        Integer numD = it.d();
        if (numD != null && numD.intValue() == 1) {
            if (it.j() == null) {
                return;
            }
            VsMediaInfo vsMediaInfoJ = it.j();
            if ((vsMediaInfoJ != null ? vsMediaInfoJ.getVideoDuration() : 0L) > 600000) {
                com.tn.lib.widget.toast.core.h.f41479a.l(getString(R$string.publish_video_limit));
                return;
            }
            initVideoAdapter();
            ArrayList arrayList = new ArrayList();
            VsMediaInfo vsMediaInfoJ2 = it.j();
            Intrinsics.e(vsMediaInfoJ2);
            arrayList.add(vsMediaInfoJ2);
            com.transsion.publish.adapter.v vVar = this.videoAdapter;
            if (vVar != null) {
                vVar.setData(arrayList);
            }
            hp.h mViewBinding = getMViewBinding();
            if (mViewBinding != null && (operationBarView2 = mViewBinding.f64790m) != null) {
                operationBarView2.selectItem(1);
            }
            com.transsion.publish.adapter.v vVar2 = this.videoAdapter;
            if (((vVar2 == null || (listL = vVar2.l()) == null) ? 0 : listL.size()) >= 1 && (imageView = this.videoIcon) != null) {
                imageView.postDelayed(new Runnable() { // from class: com.transsion.publish.ui.p
                    @Override // java.lang.Runnable
                    public final void run() {
                        FilmReviewFragment.refreshVideo$lambda$27(this.f50599a);
                    }
                }, 200L);
            }
        } else if (numD != null && numD.intValue() == 2) {
            this.coverPath = null;
            com.transsion.publish.adapter.v vVar3 = this.videoAdapter;
            if (vVar3 != null) {
                vVar3.t();
            }
            hp.h mViewBinding2 = getMViewBinding();
            if (mViewBinding2 != null && (operationBarView = mViewBinding2.f64790m) != null) {
                operationBarView.resetItem();
            }
        }
        FragmentActivity activity = getActivity();
        Intrinsics.f(activity, "null cannot be cast to non-null type com.transsion.publish.ui.FilmReviewActivity");
        ((FilmReviewActivity) activity).m0(isPostEnable());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void refreshVideo$lambda$27(FilmReviewFragment filmReviewFragment) {
        ImageView imageView = filmReviewFragment.videoIcon;
        if (imageView != null) {
            imageView.setImageResource(R$drawable.icon_post_video_unable);
        }
    }

    private final void refreshWork(fp.a it) {
        com.transsion.publish.adapter.g gVar;
        com.transsion.publish.adapter.v vVar;
        hp.h mViewBinding;
        OperationBarView operationBarView;
        String subjectId;
        this.mSubject = it.i();
        Integer numD = it.d();
        if (numD != null && numD.intValue() == 1) {
            Subject subjectI = it.i();
            if (subjectI != null) {
                setSubject(subjectI);
            }
            HashMap map = new HashMap();
            Subject subjectI2 = it.i();
            if (subjectI2 == null || (subjectId = subjectI2.getSubjectId()) == null) {
                subjectId = "";
            }
            map.put("subject_id", subjectId);
            hj.i.f64505a.p(getPageName(), map);
            return;
        }
        if (numD == null || numD.intValue() != 2 || (gVar = this.imageAdapter) == null || !gVar.n() || (vVar = this.videoAdapter) == null || !vVar.n() || (mViewBinding = getMViewBinding()) == null || (operationBarView = mViewBinding.f64790m) == null) {
            return;
        }
        operationBarView.resetItem();
    }

    private final void requestCurrentLocation() {
        IRoomApi mRoomApi;
        FragmentActivity activity = getActivity();
        if (activity == null || !ye.c.f78993a.f(activity, "android.permission.ACCESS_FINE_LOCATION") || (mRoomApi = getMRoomApi()) == null) {
            return;
        }
        mRoomApi.b(activity, new Function1() { // from class: com.transsion.publish.ui.z
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return FilmReviewFragment.requestCurrentLocation$lambda$15(this.f50621a, (LocationPlace) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit requestCurrentLocation$lambda$15(FilmReviewFragment filmReviewFragment, LocationPlace locationPlace) {
        String name = locationPlace != null ? locationPlace.getName() : null;
        if (name == null || name.length() == 0) {
            return Unit.f67061a;
        }
        filmReviewFragment.setLocation(locationPlace);
        return Unit.f67061a;
    }

    private final void selectPhotosDispose(List<PhotoEntity> photoEntity) {
        OperationBarView operationBarView;
        ImageView imageView;
        List listL;
        OperationBarView operationBarView2;
        com.transsion.publish.adapter.g gVar;
        List<PhotoEntity> list = photoEntity;
        if (list == null || list.isEmpty()) {
            com.transsion.publish.adapter.g gVar2 = this.imageAdapter;
            if (gVar2 == null) {
                initImageAdapter();
                return;
            }
            if (gVar2 != null) {
                gVar2.u();
            }
            hp.h mViewBinding = getMViewBinding();
            if (mViewBinding == null || (operationBarView = mViewBinding.f64790m) == null) {
                return;
            }
            operationBarView.resetItem();
            return;
        }
        initImageAdapter();
        com.transsion.publish.adapter.g gVar3 = this.imageAdapter;
        if (gVar3 != null) {
            if (photoEntity == null) {
                photoEntity = new ArrayList<>();
            }
            gVar3.setData(photoEntity);
        }
        com.transsion.publish.adapter.g gVar4 = this.imageAdapter;
        if ((gVar4 != null ? gVar4.getItemCount() : 0) < 9 && (gVar = this.imageAdapter) != null) {
            gVar.addData(getAddImageEntity());
        }
        hp.h mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (operationBarView2 = mViewBinding2.f64790m) != null) {
            operationBarView2.selectItem(0);
        }
        com.transsion.publish.adapter.g gVar5 = this.imageAdapter;
        Integer numValueOf = (gVar5 == null || (listL = gVar5.l()) == null) ? null : Integer.valueOf(listL.size());
        Intrinsics.e(numValueOf);
        if (numValueOf.intValue() < 9 || (imageView = this.imageIcon) == null) {
            return;
        }
        imageView.postDelayed(new Runnable() { // from class: com.transsion.publish.ui.u
            @Override // java.lang.Runnable
            public final void run() {
                FilmReviewFragment.selectPhotosDispose$lambda$26(this.f50612a);
            }
        }, 200L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void selectPhotosDispose$lambda$26(FilmReviewFragment filmReviewFragment) {
        ImageView imageView = filmReviewFragment.imageIcon;
        if (imageView != null) {
            imageView.setImageResource(R$drawable.icon_post_select_image_unable);
        }
    }

    private final void setGroup(GroupBean groupBean) {
        if (groupBean == null) {
            return;
        }
        initManagerAdapter();
        groupBean.setType(6);
        com.transsion.publish.adapter.r rVar = this.managerAdapter;
        if (rVar != null) {
            rVar.J(groupBean);
        }
    }

    private final void setLocation(LocationPlace location) {
        this.locationBean = location;
        this.curLocationBean = location;
        initManagerAdapter();
        if (location != null) {
            location.setType(8);
        }
        com.transsion.publish.adapter.r rVar = this.managerAdapter;
        if (rVar != null) {
            rVar.J(location);
        }
    }

    private final void setStarTips(int text) {
        TextView textView;
        hp.h mViewBinding = getMViewBinding();
        if (mViewBinding == null || (textView = mViewBinding.f64799v) == null) {
            return;
        }
        textView.setText(text);
    }

    private final void setSubject(Subject subject) {
        if (subject == null) {
            return;
        }
        initManagerAdapter();
        subject.setType(3);
        if (this.sourceType == 1) {
            subject.setCorrelation(true);
        }
        com.transsion.publish.adapter.r rVar = this.managerAdapter;
        if (rVar != null) {
            rVar.J(subject);
        }
    }

    private final void showActivityTips() {
        BubbleTextView bubbleTextView;
        hp.h mViewBinding = getMViewBinding();
        if (mViewBinding == null || (bubbleTextView = mViewBinding.f64779b) == null) {
            return;
        }
        bubbleTextView.postDelayed(new Runnable() { // from class: com.transsion.publish.ui.r
            @Override // java.lang.Runnable
            public final void run() {
                FilmReviewFragment.showActivityTips$lambda$14(this.f50606a);
            }
        }, 800L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showActivityTips$lambda$14(final FilmReviewFragment filmReviewFragment) {
        OperationBarView operationBarView;
        RecyclerView recyclerView;
        if (filmReviewFragment.isMoreThanADay(System.currentTimeMillis(), com.transsion.baselib.report.launch.b.f43370a.b().getLong("publish_show_guide_time", 0L))) {
            if (filmReviewFragment.groupBean == null && filmReviewFragment.mSubject == null && filmReviewFragment.locationBean != null) {
                return;
            }
            if (filmReviewFragment.mSubject != null || filmReviewFragment.locationBean == null) {
                final d dVar = filmReviewFragment.new d();
                hp.h mViewBinding = filmReviewFragment.getMViewBinding();
                if (mViewBinding == null || (operationBarView = mViewBinding.f64790m) == null || (recyclerView = operationBarView.getCom.mbridge.msdk.foundation.entity.CampaignEx.JSON_KEY_REWARD_TEMPLATE java.lang.String()) == null) {
                    return;
                }
                recyclerView.post(new Runnable() { // from class: com.transsion.publish.ui.m
                    @Override // java.lang.Runnable
                    public final void run() {
                        FilmReviewFragment.showActivityTips$lambda$14$lambda$13(this.f50588a, dVar);
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showActivityTips$lambda$14$lambda$13(FilmReviewFragment filmReviewFragment, d dVar) {
        float f11;
        BubbleTextView bubbleTextView;
        OperationBarView operationBarView;
        RecyclerView recyclerView;
        if (!filmReviewFragment.isAdded() || filmReviewFragment.isDetached() || filmReviewFragment.isRemoving()) {
            return;
        }
        String string = filmReviewFragment.getString(R$string.publish_tip_text);
        Intrinsics.g(string, "getString(...)");
        GroupBean groupBean = filmReviewFragment.groupBean;
        int i11 = 3;
        if (groupBean == null && filmReviewFragment.mSubject == null) {
            string = filmReviewFragment.getString(R$string.publish_tip_text);
            Intrinsics.g(string, "getString(...)");
            f11 = 30.0f;
        } else {
            if (filmReviewFragment.mSubject == null) {
                string = filmReviewFragment.getString(R$string.publish_tip_text_no_subject);
                Intrinsics.g(string, "getString(...)");
            } else if (groupBean == null) {
                string = filmReviewFragment.getString(R$string.publish_tip_text_no_group);
                Intrinsics.g(string, "getString(...)");
                i11 = 2;
            } else {
                f11 = 0.0f;
                i11 = 0;
            }
            f11 = 6.0f;
        }
        hp.h mViewBinding = filmReviewFragment.getMViewBinding();
        View childAt = (mViewBinding == null || (operationBarView = mViewBinding.f64790m) == null || (recyclerView = operationBarView.getCom.mbridge.msdk.foundation.entity.CampaignEx.JSON_KEY_REWARD_TEMPLATE java.lang.String()) == null) ? null : recyclerView.getChildAt(i11);
        int[] iArr = new int[2];
        if (childAt != null) {
            childAt.getLocationOnScreen(iArr);
        }
        hp.h mViewBinding2 = filmReviewFragment.getMViewBinding();
        if (mViewBinding2 == null || (bubbleTextView = mViewBinding2.f64779b) == null) {
            return;
        }
        dVar.start();
        bubbleTextView.setVisibility(0);
        com.transsion.baselib.report.launch.b.f43370a.b().putLong("publish_show_guide_time", System.currentTimeMillis());
        bubbleTextView.setText(string);
        int i12 = iArr[0];
        oh.h hVar = oh.h.f71021a;
        Context context = bubbleTextView.getContext();
        Intrinsics.g(context, "getContext(...)");
        bubbleTextView.setArrowPosition(i12 + hVar.a(context, f11));
    }

    private final void showLinkEditInputDialog(Context context) {
        clickTrace("url");
        ip.b.a aVar = new ip.b.a(context);
        hp.h mViewBinding = getMViewBinding();
        ip.b bVarA = aVar.a(this, mViewBinding != null ? mViewBinding.f64793p : null);
        bVarA.show();
        bVarA.setCancelable(true);
        bVarA.setCanceledOnTouchOutside(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit startLocation$lambda$33(Context context, FilmReviewFragment filmReviewFragment, boolean z10) {
        if (z10) {
            Intent intent = new Intent(context, (Class<?>) SelectLocationActivity.class);
            LocationPlace locationPlace = filmReviewFragment.curLocationBean;
            if (locationPlace != null) {
                intent.putExtra("location_data", locationPlace);
            }
            intent.setFlags(ASTNode.DEOP);
            context.startActivity(intent);
        }
        return Unit.f67061a;
    }

    private final void userGrade() {
        com.transsion.publish.adapter.r rVar;
        com.transsion.publish.adapter.g gVar;
        com.transsion.publish.adapter.v vVar;
        RatingBar ratingBar;
        EditText editText;
        Editable text;
        this.publishType = 2;
        hp.h mViewBinding = getMViewBinding();
        Float fValueOf = null;
        if (TextUtils.isEmpty((mViewBinding == null || (editText = mViewBinding.f64780c) == null || (text = editText.getText()) == null) ? null : StringsKt.n1(text)) && (rVar = this.managerAdapter) != null && rVar.B() && (((gVar = this.imageAdapter) == null || (gVar != null && gVar.n())) && ((vVar = this.videoAdapter) == null || (vVar != null && vVar.n())))) {
            hp.h mViewBinding2 = getMViewBinding();
            if (mViewBinding2 != null && (ratingBar = mViewBinding2.f64791n) != null) {
                fValueOf = Float.valueOf(ratingBar.getRating());
            }
            Intrinsics.e(fValueOf);
            if (fValueOf.floatValue() > 0.0f && this.coverPath == null) {
                postService(buildRequest(), 2);
                FragmentActivity activity = getActivity();
                if (activity != null) {
                    activity.finish();
                    return;
                }
                return;
            }
        }
        if (checkLogin()) {
            postService(buildRequest(), 2);
            FragmentActivity activity2 = getActivity();
            if (activity2 != null) {
                activity2.finish();
            }
        }
    }

    private final void userPost() {
        this.publishType = 1;
        if (checkLogin()) {
            postService(buildRequest(), 1);
            FragmentActivity activity = getActivity();
            if (activity != null) {
                activity.finish();
            }
        }
    }

    public final void checkPost() {
        String strW;
        if (!nh.m.f70474a.e()) {
            com.tn.lib.widget.toast.core.h.f41479a.k(com.transsion.baseui.R$string.base_network_fail);
            return;
        }
        clickPostTrace();
        KeyboardUtils.d(requireActivity());
        com.transsion.publish.adapter.r rVar = this.managerAdapter;
        if (rVar != null && (strW = rVar.w()) != null) {
            ty.b.f76417a.a().i(1, strW);
        }
        int i11 = this.sourceType;
        if (i11 == 1) {
            userGrade();
        } else {
            if (i11 != 2) {
                return;
            }
            userPost();
        }
    }

    public final void closeAffirm() {
        EditText editText;
        Editable text;
        hp.h mViewBinding = getMViewBinding();
        boolean zIsEmpty = TextUtils.isEmpty((mViewBinding == null || (editText = mViewBinding.f64780c) == null || (text = editText.getText()) == null) ? null : StringsKt.n1(text));
        com.transsion.publish.adapter.r rVar = this.managerAdapter;
        boolean z10 = (rVar == null || rVar.A()) ? false : true;
        com.transsion.publish.adapter.g gVar = this.imageAdapter;
        boolean z11 = (gVar == null || gVar.n()) ? false : true;
        com.transsion.publish.adapter.v vVar = this.videoAdapter;
        boolean z12 = (vVar == null || vVar.n()) ? false : true;
        if (!zIsEmpty || z10 || z11 || z12) {
            backSaveDialog();
            return;
        }
        KeyboardUtils.d(requireActivity());
        FragmentActivity activity = getActivity();
        if (activity != null) {
            activity.finish();
        }
    }

    @Override // ip.b.InterfaceC0793b
    public void completeLoad() {
        hp.h mViewBinding;
        OperationBarView operationBarView;
        OperationBarView operationBarView2;
        hp.h mViewBinding2 = getMViewBinding();
        if ((mViewBinding2 != null && (operationBarView2 = mViewBinding2.f64790m) != null && operationBarView2.getVisibility() == 0) || (mViewBinding = getMViewBinding()) == null || (operationBarView = mViewBinding.f64790m) == null) {
            return;
        }
        jg.c.k(operationBarView);
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public hp.h getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        hp.h hVarC = hp.h.c(inflater);
        Intrinsics.g(hVarC, "inflate(...)");
        return hVarC;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [T, android.graphics.Typeface] */
    /* JADX WARN: Type inference failed for: r6v3, types: [T, android.graphics.Typeface] */
    @Override // com.transsion.baseui.fragment.BaseFragment
    public void initView(View view, Bundle savedInstanceState) {
        RelativeLayout relativeLayout;
        RatingBar ratingBar;
        TextView textView;
        RatingBar ratingBar2;
        ObservableScrollView observableScrollView;
        EditText editText;
        EditText editText2;
        EditText editText3;
        EditText editText4;
        EditText editText5;
        EditText editText6;
        EditText editText7;
        OperationBarView operationBarView;
        OperationBarView operationBarView2;
        RelativeLayout relativeLayout2;
        RelativeLayout relativeLayout3;
        RatingBar ratingBar3;
        TextView textView2;
        Intrinsics.h(view, "view");
        int i11 = this.sourceType;
        if (i11 == 1) {
            hp.h mViewBinding = getMViewBinding();
            if (mViewBinding != null && (ratingBar2 = mViewBinding.f64791n) != null) {
                ratingBar2.setOnRatingBarChangeListener(new RatingBar.OnRatingBarChangeListener() { // from class: com.transsion.publish.ui.a0
                    @Override // android.widget.RatingBar.OnRatingBarChangeListener
                    public final void onRatingChanged(RatingBar ratingBar4, float f11, boolean z10) {
                        FilmReviewFragment.initView$lambda$3(this.f50558a, ratingBar4, f11, z10);
                    }
                });
            }
            hp.h mViewBinding2 = getMViewBinding();
            if (mViewBinding2 != null && (textView = mViewBinding2.f64798u) != null) {
                textView.setVisibility(0);
            }
            hp.h mViewBinding3 = getMViewBinding();
            if (mViewBinding3 != null && (ratingBar = mViewBinding3.f64791n) != null) {
                ratingBar.setVisibility(0);
            }
            hp.h mViewBinding4 = getMViewBinding();
            if (mViewBinding4 != null && (relativeLayout = mViewBinding4.f64794q) != null) {
                relativeLayout.setVisibility(0);
            }
        } else if (i11 == 2) {
            hp.h mViewBinding5 = getMViewBinding();
            if (mViewBinding5 != null && (textView2 = mViewBinding5.f64798u) != null) {
                textView2.setVisibility(8);
            }
            hp.h mViewBinding6 = getMViewBinding();
            if (mViewBinding6 != null && (ratingBar3 = mViewBinding6.f64791n) != null) {
                ratingBar3.setVisibility(8);
            }
            hp.h mViewBinding7 = getMViewBinding();
            if (mViewBinding7 != null && (relativeLayout3 = mViewBinding7.f64794q) != null) {
                relativeLayout3.setVisibility(8);
            }
            hp.h mViewBinding8 = getMViewBinding();
            if (mViewBinding8 != null && (relativeLayout2 = mViewBinding8.f64792o) != null) {
                relativeLayout2.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.publish.ui.b0
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        FilmReviewFragment.initView$lambda$4(this.f50561a, view2);
                    }
                });
            }
        }
        hp.h mViewBinding9 = getMViewBinding();
        if (mViewBinding9 != null && (operationBarView2 = mViewBinding9.f64790m) != null) {
            operationBarView2.setClickListener(this);
        }
        hp.h mViewBinding10 = getMViewBinding();
        if (mViewBinding10 != null && (operationBarView = mViewBinding10.f64790m) != null) {
            operationBarView.init(this.sourceType, this.groupBean, this.mSubject);
        }
        this.loginLaunch = registerForActivityResult(new f.j(), new androidx.activity.result.a() { // from class: com.transsion.publish.ui.c0
            @Override // androidx.activity.result.a
            public final void a(Object obj) {
                FilmReviewFragment.initView$lambda$5(this.f50564a, (ActivityResult) obj);
            }
        });
        Ref.ObjectRef objectRef = new Ref.ObjectRef();
        hp.h mViewBinding11 = getMViewBinding();
        Typeface typeface = null;
        objectRef.element = Typeface.create((mViewBinding11 == null || (editText7 = mViewBinding11.f64781d) == null) ? null : editText7.getTypeface(), 1);
        Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
        hp.h mViewBinding12 = getMViewBinding();
        if (mViewBinding12 != null && (editText6 = mViewBinding12.f64781d) != null) {
            typeface = editText6.getTypeface();
        }
        objectRef2.element = Typeface.create(typeface, 0);
        hp.h mViewBinding13 = getMViewBinding();
        if (mViewBinding13 != null && (editText5 = mViewBinding13.f64781d) != null) {
            editText5.addTextChangedListener(new b(objectRef, objectRef2));
        }
        hp.h mViewBinding14 = getMViewBinding();
        if (mViewBinding14 != null && (editText4 = mViewBinding14.f64781d) != null) {
            editText4.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.transsion.publish.ui.d0
                @Override // android.view.View.OnFocusChangeListener
                public final void onFocusChange(View view2, boolean z10) {
                    FilmReviewFragment.initView$lambda$6(this.f50566a, view2, z10);
                }
            });
        }
        hp.h mViewBinding15 = getMViewBinding();
        if (mViewBinding15 != null && (editText3 = mViewBinding15.f64780c) != null) {
            editText3.addTextChangedListener(new c());
        }
        hp.h mViewBinding16 = getMViewBinding();
        if (mViewBinding16 != null && (editText2 = mViewBinding16.f64780c) != null) {
            editText2.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.transsion.publish.ui.i
                @Override // android.view.View.OnFocusChangeListener
                public final void onFocusChange(View view2, boolean z10) {
                    FilmReviewFragment.initView$lambda$8(this.f50579a, view2, z10);
                }
            });
        }
        hp.h mViewBinding17 = getMViewBinding();
        if (mViewBinding17 != null && (editText = mViewBinding17.f64780c) != null) {
            editText.postDelayed(this.mRunnable, 500L);
        }
        hp.h mViewBinding18 = getMViewBinding();
        if (mViewBinding18 != null && (observableScrollView = mViewBinding18.f64797t) != null) {
            observableScrollView.setScrollListener(new ObservableScrollView.a() { // from class: com.transsion.publish.ui.j
                @Override // com.transsion.publish.view.ObservableScrollView.a
                public final void a(int i12) {
                    FilmReviewFragment.initView$lambda$9(i12);
                }
            });
        }
        requestCurrentLocation();
        showActivityTips();
        getVideoIconView();
        getImageIconView();
    }

    public final boolean isPostEnable() {
        com.transsion.publish.adapter.v vVar;
        hp.h mViewBinding;
        EditText editText;
        Editable text;
        com.transsion.publish.adapter.g gVar = this.imageAdapter;
        return ((gVar == null || gVar.n()) && ((vVar = this.videoAdapter) == null || vVar.n()) && ((mViewBinding = getMViewBinding()) == null || (editText = mViewBinding.f64780c) == null || (text = editText.getText()) == null || text.length() == 0)) ? false : true;
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public void lazyLoadData() {
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public hj.b newLogViewConfig() {
        return new hj.b(PAGE_NAME, false, 2, null);
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        com.transsion.publish.adapter.r rVar = this.managerAdapter;
        if (rVar != null) {
            rVar.u();
        }
        MMKV mmkvI = MMKV.I("kv_link_record");
        Intrinsics.g(mmkvI, "mmkvWithID(...)");
        mmkvI.putString("link", "");
        lg.a.C0828a.f(lg.a.f68839a, this.TAG, "FilmReviewFragment onDestroy", false, 4, null);
    }

    @Override // com.tn.lib.widget.dialog.TRDialogListener
    public void onLeftButtonClick(TRDialog dialog) {
        Intrinsics.h(dialog, "dialog");
    }

    @Override // com.transsion.baseui.fragment.BaseFragment, androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        System.currentTimeMillis();
    }

    @Override // com.transsion.baseui.fragment.BaseFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
    }

    @Override // com.tn.lib.widget.dialog.TRDialogListener
    public void onRightButtonClick(TRDialog dialog) {
        FragmentActivity activity;
        Intrinsics.h(dialog, "dialog");
        String tag = dialog.getTag();
        if (tag != null) {
            int iHashCode = tag.hashCode();
            if (iHashCode == -1257717947) {
                if (tag.equals("clear_cover")) {
                    deleteAudio();
                }
            } else if (iHashCode == 1335127509 && tag.equals("back_save") && (activity = getActivity()) != null) {
                activity.finish();
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
        com.transsion.publish.adapter.r rVar = this.managerAdapter;
        if (rVar != null) {
            rVar.H();
        }
    }

    @Override // com.transsion.baseui.fragment.BaseFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
        Bundle arguments = getArguments();
        Integer numValueOf = arguments != null ? Integer.valueOf(arguments.getInt("sourceType", 2)) : null;
        Intrinsics.e(numValueOf);
        this.sourceType = numValueOf.intValue();
        Bundle arguments2 = getArguments();
        Integer numValueOf2 = arguments2 != null ? Integer.valueOf(arguments2.getInt("sourceMode", 0)) : null;
        Intrinsics.e(numValueOf2);
        this.sourceMode = numValueOf2.intValue();
        Bundle arguments3 = getArguments();
        if (arguments3 != null && arguments3.containsKey("subject")) {
            Bundle arguments4 = getArguments();
            Serializable serializable = arguments4 != null ? arguments4.getSerializable("subject") : null;
            if (serializable != null && (serializable instanceof Subject)) {
                this.mSubject = (Subject) serializable;
            }
        }
        Bundle arguments5 = getArguments();
        if (arguments5 != null && arguments5.containsKey("group")) {
            Bundle arguments6 = getArguments();
            Serializable serializable2 = arguments6 != null ? arguments6.getSerializable("group") : null;
            if (serializable2 != null && (serializable2 instanceof GroupBean)) {
                this.groupBean = (GroupBean) serializable2;
            }
        }
        super.onViewCreated(view, savedInstanceState);
        initViewModel();
        initRegisterMediaSelector();
        this.showTime = System.currentTimeMillis();
        lg.a.C0828a.f(lg.a.f68839a, this.TAG, "FilmReviewFragment onViewCreated", false, 4, null);
    }

    @Override // com.transsion.publish.adapter.a
    public void put(Context context) {
        EditText editText;
        Intrinsics.h(context, "context");
        hp.h mViewBinding = getMViewBinding();
        if (mViewBinding == null || (editText = mViewBinding.f64780c) == null) {
            return;
        }
        KeyboardUtils.e(editText);
    }

    @Override // com.transsion.publish.adapter.a
    public void startAudio(Context context) {
        Intrinsics.h(context, "context");
        clickTrace(MimeTypes.BASE_TYPE_AUDIO);
        SelectMusicActivity.INSTANCE.a(context);
    }

    @Override // com.transsion.publish.adapter.a
    public void startGroup(Context context) {
        Intrinsics.h(context, "context");
        openRoomList();
    }

    @Override // com.transsion.publish.adapter.a
    public void startLink(Context context) {
        OperationVerticalBarView operationVerticalBarView;
        EditText editText;
        OperationBarView operationBarView;
        Intrinsics.h(context, "context");
        hp.h mViewBinding = getMViewBinding();
        if (mViewBinding == null || (operationVerticalBarView = mViewBinding.f64789l) == null || operationVerticalBarView.getVisibility() != 0) {
            showLinkEditInputDialog(context);
            return;
        }
        hp.h mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (operationBarView = mViewBinding2.f64790m) != null) {
            jg.c.g(operationBarView);
        }
        hideOpertaionDialog();
        showLinkEditInputDialog(context);
        hp.h mViewBinding3 = getMViewBinding();
        if (mViewBinding3 == null || (editText = mViewBinding3.f64780c) == null) {
            return;
        }
        editText.postDelayed(new Runnable() { // from class: com.transsion.publish.ui.y
            @Override // java.lang.Runnable
            public final void run() {
                this.f50619a.completeLoad();
            }
        }, 2000L);
    }

    @Override // com.transsion.publish.adapter.a
    public void startLocation(final Context context) {
        Intrinsics.h(context, "context");
        FragmentActivity activity = getActivity();
        if (activity == null || !isAdded() || isDetached() || isRemoving()) {
            return;
        }
        if (!ye.c.f78993a.f(activity, "android.permission.ACCESS_FINE_LOCATION")) {
            IRoomApi mRoomApi = getMRoomApi();
            if (mRoomApi != null) {
                mRoomApi.a(activity, true, new Function1() { // from class: com.transsion.publish.ui.q
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return FilmReviewFragment.startLocation$lambda$33(context, this, ((Boolean) obj).booleanValue());
                    }
                });
                return;
            }
            return;
        }
        Intent intent = new Intent(context, (Class<?>) SelectLocationActivity.class);
        LocationPlace locationPlace = this.curLocationBean;
        if (locationPlace != null) {
            intent.putExtra("location_data", locationPlace);
        }
        intent.setFlags(ASTNode.DEOP);
        context.startActivity(intent);
    }

    @Override // com.transsion.publish.adapter.a
    public void startPhoto(Context context) {
        List listL;
        String string;
        List listL2;
        Intrinsics.h(context, "context");
        com.transsion.publish.adapter.g gVar = this.imageAdapter;
        if (((gVar == null || (listL2 = gVar.l()) == null) ? 0 : listL2.size()) < 9) {
            clickTrace("image");
            SelectImageActivity.Companion companion = SelectImageActivity.INSTANCE;
            com.transsion.publish.adapter.g gVar2 = this.imageAdapter;
            companion.a(context, 0, 9 - ((gVar2 == null || (listL = gVar2.l()) == null) ? 0 : listL.size()), new ArrayList());
            return;
        }
        FragmentActivity activity = getActivity();
        if (activity == null || (string = activity.getString(R$string.add_img_max_tips)) == null) {
            string = "";
        }
        StringCompanionObject stringCompanionObject = StringCompanionObject.f67289a;
        String str = String.format(string, Arrays.copyOf(new Object[]{9}, 1));
        Intrinsics.g(str, "format(...)");
        com.tn.lib.widget.toast.core.h.f41479a.l(str);
    }

    @Override // com.transsion.publish.adapter.a
    public void startVideo(Context context) {
        String string;
        List listL;
        Intrinsics.h(context, "context");
        com.transsion.publish.adapter.v vVar = this.videoAdapter;
        if (((vVar == null || (listL = vVar.l()) == null) ? 0 : listL.size()) >= 1) {
            FragmentActivity activity = getActivity();
            if (activity == null || (string = activity.getString(R$string.add_video_max_tips)) == null) {
                string = "";
            }
            StringCompanionObject stringCompanionObject = StringCompanionObject.f67289a;
            String str = String.format(string, Arrays.copyOf(new Object[]{1}, 1));
            Intrinsics.g(str, "format(...)");
            com.tn.lib.widget.toast.core.h.f41479a.l(str);
            return;
        }
        clickTrace("vidio");
        if (this.underOS33) {
            Intent intent = new Intent(context, (Class<?>) SelectVideoActivity.class);
            intent.setFlags(ASTNode.DEOP);
            startActivity(intent);
        } else {
            androidx.activity.result.b bVar = this.videoSelectLauncher;
            if (bVar != null) {
                bVar.a(androidx.activity.result.f.b(f.g.e.f62118a, 0, false, null, 14, null));
            }
        }
    }

    @Override // com.transsion.publish.adapter.a
    public void startWork(Context context) {
        Intrinsics.h(context, "context");
        clickTrace("choose a subject");
        yj.b bVar = (yj.b) yj.a.f79022a.a(yj.b.class);
        if (bVar != null) {
            Context contextRequireContext = requireContext();
            Intrinsics.g(contextRequireContext, "requireContext(...)");
            bVar.e(contextRequireContext);
        }
    }
}
