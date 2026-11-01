package androidx.compose.ui.platform;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Build;
import android.os.SystemClock;
import android.os.Trace;
import android.util.LongSparseArray;
import android.util.SparseArray;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.ScrollCaptureTarget;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewStructure;
import android.view.ViewTreeObserver;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.AnimationUtils;
import android.view.autofill.AutofillValue;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.translation.ViewTranslationRequest;
import android.view.translation.ViewTranslationResponse;
import androidx.compose.ui.SessionMutex;
import androidx.compose.ui.contentcapture.AndroidContentCaptureManager;
import androidx.compose.ui.focus.FocusOwner$CC;
import androidx.compose.ui.focus.FocusOwnerImpl;
import androidx.compose.ui.focus.FocusTargetNode;
import androidx.compose.ui.focus.FocusTransactionsKt;
import androidx.compose.ui.graphics.a4;
import androidx.compose.ui.graphics.i4;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.graphics.u4;
import androidx.compose.ui.layout.PlaceableKt;
import androidx.compose.ui.layout.RootMeasurePolicy;
import androidx.compose.ui.modifier.ModifierLocalManager;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.OwnerSnapshotObserver;
import androidx.compose.ui.scrollcapture.ScrollCapture;
import androidx.compose.ui.semantics.EmptySemanticsElement;
import androidx.compose.ui.text.input.TextInputServiceAndroid;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.viewinterop.AndroidViewHolder;
import androidx.core.app.NotificationCompat;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewConfigurationCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.p009lifecycle.Lifecycle;
import androidx.p009lifecycle.ViewTreeLifecycleOwner;
import androidx.p010savedstate.ViewTreeSavedStateRegistryOwner;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;
import java.util.function.Consumer;
import kotlin.Deprecated;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.ULong;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.MutablePropertyReference0Impl;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.TypeIntrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000È\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0001\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u001b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0016\n\u0000\n\u0002\u0010\u0015\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0018\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010!\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b#\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n*\u0002É\u0004\b\u0000\u0018\u0000 \u0083\u00052\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u0005:\u0004\u0094\u0002\u0084\u0001B\u0017\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bJ9\u0010\u0012\u001a\u00020\u000f2'\u0010\u0011\u001a#\b\u0001\u0012\u0004\u0012\u00020\r\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000f0\u000e\u0012\u0006\u0012\u0004\u0018\u00010\r0\f¢\u0006\u0002\b\u0010H\u0096@¢\u0006\u0004\b\u0012\u0010\u0013J\u0017\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\u0017\u0010\u001b\u001a\u00020\u00162\u0006\u0010\u001a\u001a\u00020\u0019H\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ-\u0010#\u001a\u00020\u00162\u0006\u0010\u001d\u001a\u00020\u00142\u0006\u0010\u001f\u001a\u00020\u001e2\f\u0010\"\u001a\b\u0012\u0004\u0012\u00020!0 H\u0016¢\u0006\u0004\b#\u0010$J\u0017\u0010'\u001a\u00020\u00162\u0006\u0010&\u001a\u00020%H\u0016¢\u0006\u0004\b'\u0010(J#\u0010-\u001a\u0004\u0018\u00010)2\b\u0010*\u001a\u0004\u0018\u00010)2\u0006\u0010,\u001a\u00020+H\u0016¢\u0006\u0004\b-\u0010.J!\u00101\u001a\u0002002\u0006\u0010,\u001a\u00020+2\b\u0010/\u001a\u0004\u0018\u00010\u0014H\u0016¢\u0006\u0004\b1\u00102J)\u00104\u001a\u00020\u00162\u0006\u00103\u001a\u0002002\u0006\u0010,\u001a\u00020+2\b\u0010/\u001a\u0004\u0018\u00010\u0014H\u0014¢\u0006\u0004\b4\u00105J\u0017\u00107\u001a\u00020\u00162\u0006\u00106\u001a\u000200H\u0016¢\u0006\u0004\b7\u00108J\u001a\u0010=\u001a\u0002002\u0006\u0010:\u001a\u000209H\u0016ø\u0001\u0000¢\u0006\u0004\b;\u0010<J\u0017\u0010@\u001a\u0002002\u0006\u0010?\u001a\u00020>H\u0016¢\u0006\u0004\b@\u0010<J\u0017\u0010A\u001a\u0002002\u0006\u0010?\u001a\u00020>H\u0016¢\u0006\u0004\bA\u0010<J\u0017\u0010C\u001a\u00020\u00162\u0006\u0010B\u001a\u000200H\u0016¢\u0006\u0004\bC\u00108J\u0017\u0010F\u001a\u00020\u00162\u0006\u0010E\u001a\u00020DH\u0016¢\u0006\u0004\bF\u0010GJ\u0017\u0010J\u001a\u00020\u00162\u0006\u0010I\u001a\u00020HH\u0016¢\u0006\u0004\bJ\u0010KJ\u0017\u0010L\u001a\u00020\u00162\u0006\u0010I\u001a\u00020HH\u0016¢\u0006\u0004\bL\u0010KJ\r\u0010M\u001a\u00020\u0016¢\u0006\u0004\bM\u0010NJ\u000f\u0010O\u001a\u00020\u0016H\u0016¢\u0006\u0004\bO\u0010NJ\u001d\u0010R\u001a\u00020\u00162\f\u0010Q\u001a\b\u0012\u0004\u0012\u00020\u00160PH\u0016¢\u0006\u0004\bR\u0010SJ\u0019\u0010U\u001a\u00020\u00162\b\u0010T\u001a\u0004\u0018\u00010)H\u0016¢\u0006\u0004\bU\u0010VJ!\u0010U\u001a\u00020\u00162\b\u0010T\u001a\u0004\u0018\u00010)2\u0006\u0010W\u001a\u00020+H\u0016¢\u0006\u0004\bU\u0010XJ)\u0010U\u001a\u00020\u00162\b\u0010T\u001a\u0004\u0018\u00010)2\u0006\u0010Y\u001a\u00020+2\u0006\u0010Z\u001a\u00020+H\u0016¢\u0006\u0004\bU\u0010[J#\u0010U\u001a\u00020\u00162\b\u0010T\u001a\u0004\u0018\u00010)2\b\u0010]\u001a\u0004\u0018\u00010\\H\u0016¢\u0006\u0004\bU\u0010^J+\u0010U\u001a\u00020\u00162\b\u0010T\u001a\u0004\u0018\u00010)2\u0006\u0010W\u001a\u00020+2\b\u0010]\u001a\u0004\u0018\u00010\\H\u0016¢\u0006\u0004\bU\u0010_J\u001d\u0010c\u001a\u00020\u00162\u0006\u0010a\u001a\u00020`2\u0006\u0010b\u001a\u00020H¢\u0006\u0004\bc\u0010dJ\u0015\u0010e\u001a\u00020\u00162\u0006\u0010a\u001a\u00020`¢\u0006\u0004\be\u0010fJ\u001d\u0010i\u001a\u00020\u00162\u0006\u0010a\u001a\u00020`2\u0006\u0010h\u001a\u00020g¢\u0006\u0004\bi\u0010jJ\u0017\u0010l\u001a\u00020\u00162\u0006\u0010k\u001a\u000200H\u0016¢\u0006\u0004\bl\u00108J\"\u0010l\u001a\u00020\u00162\u0006\u0010b\u001a\u00020H2\u0006\u0010n\u001a\u00020mH\u0016ø\u0001\u0000¢\u0006\u0004\bo\u0010pJ\u001f\u0010r\u001a\u00020\u00162\u0006\u0010b\u001a\u00020H2\u0006\u0010q\u001a\u000200H\u0016¢\u0006\u0004\br\u0010sJ/\u0010v\u001a\u00020\u00162\u0006\u0010b\u001a\u00020H2\u0006\u0010q\u001a\u0002002\u0006\u0010t\u001a\u0002002\u0006\u0010u\u001a\u000200H\u0016¢\u0006\u0004\bv\u0010wJ'\u0010x\u001a\u00020\u00162\u0006\u0010b\u001a\u00020H2\u0006\u0010q\u001a\u0002002\u0006\u0010t\u001a\u000200H\u0016¢\u0006\u0004\bx\u0010yJ\u0017\u0010z\u001a\u00020\u00162\u0006\u0010b\u001a\u00020HH\u0016¢\u0006\u0004\bz\u0010KJ\u000f\u0010{\u001a\u00020\u0016H\u0016¢\u0006\u0004\b{\u0010NJ\u001f\u0010~\u001a\u00020\u00162\u0006\u0010|\u001a\u00020+2\u0006\u0010}\u001a\u00020+H\u0014¢\u0006\u0004\b~\u0010\u007fJ?\u0010\u0085\u0001\u001a\u00020\u00162\u0007\u0010\u0080\u0001\u001a\u0002002\u0007\u0010\u0081\u0001\u001a\u00020+2\u0007\u0010\u0082\u0001\u001a\u00020+2\u0007\u0010\u0083\u0001\u001a\u00020+2\u0007\u0010\u0084\u0001\u001a\u00020+H\u0014¢\u0006\u0006\b\u0085\u0001\u0010\u0086\u0001J\u001a\u0010\u0087\u0001\u001a\u00020\u00162\u0006\u0010h\u001a\u00020gH\u0014¢\u0006\u0006\b\u0087\u0001\u0010\u0088\u0001Jp\u0010\u0092\u0001\u001a\u00030\u0091\u00012@\u0010\u008e\u0001\u001a;\u0012\u0016\u0012\u00140\u0089\u0001¢\u0006\u000e\b\u008a\u0001\u0012\t\b\u008b\u0001\u0012\u0004\b\b(h\u0012\u0019\u0012\u0017\u0018\u00010\u008c\u0001¢\u0006\u000f\b\u008a\u0001\u0012\n\b\u008b\u0001\u0012\u0005\b\b(\u008d\u0001\u0012\u0004\u0012\u00020\u00160\f2\r\u0010\u008f\u0001\u001a\b\u0012\u0004\u0012\u00020\u00160P2\n\u0010\u0090\u0001\u001a\u0005\u0018\u00010\u008c\u0001H\u0016¢\u0006\u0006\b\u0092\u0001\u0010\u0093\u0001J\u001c\u0010\u0097\u0001\u001a\u0002002\b\u0010\u0094\u0001\u001a\u00030\u0091\u0001H\u0000¢\u0006\u0006\b\u0095\u0001\u0010\u0096\u0001J\u0011\u0010\u0098\u0001\u001a\u00020\u0016H\u0016¢\u0006\u0005\b\u0098\u0001\u0010NJ\u0019\u0010\u0099\u0001\u001a\u00020\u00162\u0006\u0010b\u001a\u00020HH\u0016¢\u0006\u0005\b\u0099\u0001\u0010KJ\u001e\u0010\u009b\u0001\u001a\u00020\u00162\u000b\u0010a\u001a\u00070)j\u0003`\u009a\u0001H\u0016¢\u0006\u0005\b\u009b\u0001\u0010VJ\u001b\u0010\u009d\u0001\u001a\u00020\u00162\u0007\u0010Q\u001a\u00030\u009c\u0001H\u0016¢\u0006\u0006\b\u009d\u0001\u0010\u009e\u0001J \u0010¢\u0001\u001a\u0005\u0018\u00010\u009f\u00012\u0006\u0010:\u001a\u000209H\u0016ø\u0001\u0000¢\u0006\u0006\b \u0001\u0010¡\u0001J\u001a\u0010£\u0001\u001a\u00020\u00162\u0006\u0010h\u001a\u00020gH\u0014¢\u0006\u0006\b£\u0001\u0010\u0088\u0001J%\u0010§\u0001\u001a\u00020\u00162\b\u0010\u0094\u0001\u001a\u00030\u0091\u00012\u0007\u0010¤\u0001\u001a\u000200H\u0000¢\u0006\u0006\b¥\u0001\u0010¦\u0001J'\u0010«\u0001\u001a\u00020\u00162\u0015\u0010ª\u0001\u001a\u0010\u0012\u0005\u0012\u00030©\u0001\u0012\u0004\u0012\u00020\u00160¨\u0001¢\u0006\u0006\b«\u0001\u0010¬\u0001J\u0013\u0010\u00ad\u0001\u001a\u00020\u0016H\u0086@¢\u0006\u0006\b\u00ad\u0001\u0010®\u0001J\u0013\u0010¯\u0001\u001a\u00020\u0016H\u0086@¢\u0006\u0006\b¯\u0001\u0010®\u0001J\u0011\u0010°\u0001\u001a\u00020\u0016H\u0016¢\u0006\u0005\b°\u0001\u0010NJ\u0011\u0010±\u0001\u001a\u00020\u0016H\u0014¢\u0006\u0005\b±\u0001\u0010NJ\u0011\u0010²\u0001\u001a\u00020\u0016H\u0014¢\u0006\u0005\b²\u0001\u0010NJ%\u0010´\u0001\u001a\u00020\u00162\b\u0010\u001a\u001a\u0004\u0018\u00010\u00192\u0007\u0010³\u0001\u001a\u00020+H\u0016¢\u0006\u0006\b´\u0001\u0010µ\u0001J#\u0010¹\u0001\u001a\u00020\u00162\u000f\u0010¸\u0001\u001a\n\u0012\u0005\u0012\u00030·\u00010¶\u0001H\u0016¢\u0006\u0006\b¹\u0001\u0010º\u0001J8\u0010Á\u0001\u001a\u00020\u00162\b\u0010¼\u0001\u001a\u00030»\u00012\b\u0010¾\u0001\u001a\u00030½\u00012\u0010\u0010À\u0001\u001a\u000b\u0012\u0007\u0012\u0005\u0018\u00010¿\u00010 H\u0017¢\u0006\u0006\bÁ\u0001\u0010Â\u0001J%\u0010Æ\u0001\u001a\u00020\u00162\u0011\u0010Å\u0001\u001a\f\u0012\u0007\u0012\u0005\u0018\u00010Ä\u00010Ã\u0001H\u0017¢\u0006\u0006\bÆ\u0001\u0010Ç\u0001J\u001c\u0010Ê\u0001\u001a\u0002002\b\u0010É\u0001\u001a\u00030È\u0001H\u0016¢\u0006\u0006\bÊ\u0001\u0010Ë\u0001J\u001c\u0010Ì\u0001\u001a\u0002002\b\u0010É\u0001\u001a\u00030È\u0001H\u0016¢\u0006\u0006\bÌ\u0001\u0010Ë\u0001J\u001a\u0010Í\u0001\u001a\u0002002\u0006\u0010,\u001a\u00020+H\u0016¢\u0006\u0006\bÍ\u0001\u0010Î\u0001J\u001a\u0010Ï\u0001\u001a\u0002002\u0006\u0010,\u001a\u00020+H\u0016¢\u0006\u0006\bÏ\u0001\u0010Î\u0001J \u0010Ô\u0001\u001a\u00030Ð\u00012\b\u0010Ñ\u0001\u001a\u00030Ð\u0001H\u0016ø\u0001\u0000¢\u0006\u0006\bÒ\u0001\u0010Ó\u0001J\u001f\u0010Ô\u0001\u001a\u00020\u00162\b\u0010Ö\u0001\u001a\u00030Õ\u0001H\u0016ø\u0001\u0000¢\u0006\u0006\b×\u0001\u0010Ø\u0001J \u0010Û\u0001\u001a\u00030Ð\u00012\b\u0010Ù\u0001\u001a\u00030Ð\u0001H\u0016ø\u0001\u0000¢\u0006\u0006\bÚ\u0001\u0010Ó\u0001J\u0012\u0010Ü\u0001\u001a\u000200H\u0016¢\u0006\u0006\bÜ\u0001\u0010Ý\u0001J\u001f\u0010á\u0001\u001a\u0005\u0018\u00010à\u00012\b\u0010ß\u0001\u001a\u00030Þ\u0001H\u0016¢\u0006\u0006\bá\u0001\u0010â\u0001J \u0010å\u0001\u001a\u00030Ð\u00012\b\u0010ã\u0001\u001a\u00030Ð\u0001H\u0016ø\u0001\u0000¢\u0006\u0006\bä\u0001\u0010Ó\u0001J \u0010ç\u0001\u001a\u00030Ð\u00012\b\u0010Ñ\u0001\u001a\u00030Ð\u0001H\u0016ø\u0001\u0000¢\u0006\u0006\bæ\u0001\u0010Ó\u0001J\u001c\u0010ê\u0001\u001a\u00020\u00162\b\u0010é\u0001\u001a\u00030è\u0001H\u0014¢\u0006\u0006\bê\u0001\u0010ë\u0001J\u001b\u0010í\u0001\u001a\u00020\u00162\u0007\u0010ì\u0001\u001a\u00020+H\u0016¢\u0006\u0006\bí\u0001\u0010î\u0001J\u001b\u0010ï\u0001\u001a\u0002002\u0007\u0010?\u001a\u00030È\u0001H\u0016¢\u0006\u0006\bï\u0001\u0010Ë\u0001J\u001b\u0010ñ\u0001\u001a\u0004\u0018\u00010)2\u0007\u0010ð\u0001\u001a\u00020+¢\u0006\u0006\bñ\u0001\u0010ò\u0001J\u0012\u0010ó\u0001\u001a\u000200H\u0016¢\u0006\u0006\bó\u0001\u0010Ý\u0001J\u001f\u0010õ\u0001\u001a\u0002002\b\u0010ô\u0001\u001a\u00030\u009f\u0001H\u0002ø\u0001\u0000¢\u0006\u0006\bõ\u0001\u0010Î\u0001J\u0015\u0010÷\u0001\u001a\u0005\u0018\u00010ö\u0001H\u0002¢\u0006\u0006\b÷\u0001\u0010ø\u0001J\u001c\u0010ù\u0001\u001a\u0004\u0018\u00010)2\u0006\u0010,\u001a\u00020+H\u0002¢\u0006\u0006\bù\u0001\u0010ò\u0001J,\u0010ú\u0001\u001a\u0002002\n\u0010ô\u0001\u001a\u0005\u0018\u00010\u009f\u00012\t\u0010/\u001a\u0005\u0018\u00010ö\u0001H\u0002ø\u0001\u0000¢\u0006\u0006\bú\u0001\u0010û\u0001J\u0011\u0010ü\u0001\u001a\u00020\u0016H\u0002¢\u0006\u0005\bü\u0001\u0010NJE\u0010\u0083\u0002\u001a\u0002002\b\u0010þ\u0001\u001a\u00030ý\u00012\b\u0010\u0080\u0002\u001a\u00030ÿ\u00012\u001a\u0010\u0082\u0002\u001a\u0015\u0012\u0005\u0012\u00030\u0081\u0002\u0012\u0004\u0012\u00020\u00160¨\u0001¢\u0006\u0002\b\u0010H\u0002ø\u0001\u0000¢\u0006\u0006\b\u0083\u0002\u0010\u0084\u0002J\u001b\u0010\u0086\u0002\u001a\u00020\u00162\u0007\u0010\u0085\u0002\u001a\u00020\u0001H\u0002¢\u0006\u0006\b\u0086\u0002\u0010\u0087\u0002J/\u0010\u008d\u0002\u001a\u00020\u00162\u0007\u0010\u0088\u0002\u001a\u00020+2\b\u0010\u008a\u0002\u001a\u00030\u0089\u00022\b\u0010\u008c\u0002\u001a\u00030\u008b\u0002H\u0002¢\u0006\u0006\b\u008d\u0002\u0010\u008e\u0002J\u001e\u0010\u0090\u0002\u001a\u00020\u00162\u000b\b\u0002\u0010\u008f\u0002\u001a\u0004\u0018\u00010HH\u0002¢\u0006\u0005\b\u0090\u0002\u0010KJ\u0016\u0010\u0091\u0002\u001a\u000200*\u00020HH\u0002¢\u0006\u0006\b\u0091\u0002\u0010\u0092\u0002J\u0011\u0010\u0093\u0002\u001a\u00020\u0016H\u0002¢\u0006\u0005\b\u0093\u0002\u0010NJ+\u0010\u0096\u0002\u001a\u00030\u0095\u00022\u0007\u0010\u0094\u0002\u001a\u00020+2\u0007\u0010\u0084\u0001\u001a\u00020+H\u0002ø\u0001\u0001ø\u0001\u0000¢\u0006\u0006\b\u0096\u0002\u0010\u0097\u0002J\"\u0010\u0099\u0002\u001a\u00030\u0095\u00022\u0007\u0010\u0098\u0002\u001a\u00020+H\u0002ø\u0001\u0001ø\u0001\u0000¢\u0006\u0006\b\u0099\u0002\u0010\u009a\u0002J\u0011\u0010\u009b\u0002\u001a\u00020\u0016H\u0002¢\u0006\u0005\b\u009b\u0002\u0010NJ\u0019\u0010\u009c\u0002\u001a\u00020\u00162\u0006\u0010I\u001a\u00020HH\u0002¢\u0006\u0005\b\u009c\u0002\u0010KJ\u0019\u0010\u0083\u0001\u001a\u00020\u00162\u0006\u0010I\u001a\u00020HH\u0002¢\u0006\u0005\b\u0083\u0001\u0010KJ\u001b\u0010\u009d\u0002\u001a\u0002002\u0007\u0010?\u001a\u00030È\u0001H\u0002¢\u0006\u0006\b\u009d\u0002\u0010Ë\u0001J#\u0010\u009f\u0002\u001a\u00030\u009e\u00022\b\u0010É\u0001\u001a\u00030È\u0001H\u0002ø\u0001\u0001ø\u0001\u0000¢\u0006\u0006\b\u009f\u0002\u0010 \u0002J%\u0010¢\u0002\u001a\u0002002\u0007\u0010?\u001a\u00030È\u00012\b\u0010¡\u0002\u001a\u00030È\u0001H\u0002¢\u0006\u0006\b¢\u0002\u0010£\u0002J\u001b\u0010¤\u0002\u001a\u0002002\u0007\u0010?\u001a\u00030È\u0001H\u0002¢\u0006\u0006\b¤\u0002\u0010Ë\u0001J#\u0010¥\u0002\u001a\u00030\u009e\u00022\b\u0010É\u0001\u001a\u00030È\u0001H\u0002ø\u0001\u0001ø\u0001\u0000¢\u0006\u0006\b¥\u0002\u0010 \u0002J9\u0010©\u0002\u001a\u00020\u00162\b\u0010É\u0001\u001a\u00030È\u00012\u0007\u0010¦\u0002\u001a\u00020+2\u0007\u0010§\u0002\u001a\u00020D2\t\b\u0002\u0010¨\u0002\u001a\u000200H\u0002¢\u0006\u0006\b©\u0002\u0010ª\u0002J\u001c\u0010«\u0002\u001a\u0002002\b\u0010É\u0001\u001a\u00030È\u0001H\u0002¢\u0006\u0006\b«\u0002\u0010Ë\u0001J\u0011\u0010¬\u0002\u001a\u00020\u0016H\u0002¢\u0006\u0005\b¬\u0002\u0010NJ\u001c\u0010\u00ad\u0002\u001a\u00020\u00162\b\u0010É\u0001\u001a\u00030È\u0001H\u0002¢\u0006\u0006\b\u00ad\u0002\u0010®\u0002J\u0011\u0010¯\u0002\u001a\u00020\u0016H\u0002¢\u0006\u0005\b¯\u0002\u0010NJ\u0012\u0010°\u0002\u001a\u000200H\u0002¢\u0006\u0006\b°\u0002\u0010Ý\u0001J\u001b\u0010\u0082\u0001\u001a\u0002002\u0007\u0010?\u001a\u00030È\u0001H\u0002¢\u0006\u0006\b\u0082\u0001\u0010Ë\u0001J\u001b\u0010±\u0002\u001a\u0002002\u0007\u0010?\u001a\u00030È\u0001H\u0002¢\u0006\u0006\b±\u0002\u0010Ë\u0001J&\u0010\u0081\u0001\u001a\u0004\u0018\u00010)2\u0007\u0010ð\u0001\u001a\u00020+2\u0007\u0010²\u0002\u001a\u00020)H\u0002¢\u0006\u0006\b\u0081\u0001\u0010³\u0002R \u0010´\u0002\u001a\u00030Ð\u00018\u0002@\u0002X\u0082\u000eø\u0001\u0000ø\u0001\u0001¢\u0006\b\n\u0006\b\u0094\u0002\u0010¥\u0002R\u0019\u0010¶\u0002\u001a\u0002008\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0084\u0001\u0010µ\u0002R \u0010¼\u0002\u001a\u00030·\u00028\u0016X\u0096\u0004¢\u0006\u0010\n\u0006\b¸\u0002\u0010¹\u0002\u001a\u0006\bº\u0002\u0010»\u0002R5\u0010Å\u0002\u001a\u00030½\u00022\b\u0010¾\u0002\u001a\u00030½\u00028V@RX\u0096\u008e\u0002¢\u0006\u0018\n\u0006\b¿\u0002\u0010À\u0002\u001a\u0006\bÁ\u0002\u0010Â\u0002\"\u0006\bÃ\u0002\u0010Ä\u0002R\u0018\u0010È\u0002\u001a\u00030Æ\u00028\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u008d\u0002\u0010Ç\u0002R\u0018\u0010Ë\u0002\u001a\u00030É\u00028\u0002X\u0082\u0004¢\u0006\b\n\u0006\b°\u0002\u0010Ê\u0002R \u0010Ð\u0002\u001a\u00030Ì\u00028\u0016X\u0096\u0004¢\u0006\u0010\n\u0006\b\u0091\u0002\u0010Í\u0002\u001a\u0006\bÎ\u0002\u0010Ï\u0002R\u0018\u0010Ó\u0002\u001a\u00030Ñ\u00028\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u0086\u0002\u0010Ò\u0002R1\u0010\t\u001a\u00020\b2\u0007\u0010Ô\u0002\u001a\u00020\b8\u0016@VX\u0096\u000e¢\u0006\u0018\n\u0006\b\u0099\u0002\u0010Õ\u0002\u001a\u0006\bÖ\u0002\u0010×\u0002\"\u0006\bØ\u0002\u0010Ù\u0002R \u0010Þ\u0002\u001a\u00030Ú\u00028\u0016X\u0096\u0004¢\u0006\u0010\n\u0006\b\u0093\u0002\u0010Û\u0002\u001a\u0006\bÜ\u0002\u0010Ý\u0002R\u0018\u0010á\u0002\u001a\u00030ß\u00028\u0002X\u0082\u0004¢\u0006\b\n\u0006\bù\u0001\u0010à\u0002R\u0018\u0010ä\u0002\u001a\u00030â\u00028\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u0081\u0001\u0010ã\u0002R\u0018\u0010æ\u0002\u001a\u00030â\u00028\u0002X\u0082\u0004¢\u0006\b\n\u0006\bå\u0002\u0010ã\u0002R\u0018\u0010ê\u0002\u001a\u00030ç\u00028\u0002X\u0082\u0004¢\u0006\b\n\u0006\bè\u0002\u0010é\u0002R\u001f\u0010î\u0002\u001a\u00020H8\u0016X\u0096\u0004¢\u0006\u0010\n\u0006\b\u009f\u0002\u0010ë\u0002\u001a\u0006\bì\u0002\u0010í\u0002R \u0010ó\u0002\u001a\u00030ï\u00028\u0016X\u0096\u0004¢\u0006\u0010\n\u0006\b\u009d\u0002\u0010ð\u0002\u001a\u0006\bñ\u0002\u0010ò\u0002R \u0010ø\u0002\u001a\u00030ô\u00028\u0016X\u0096\u0004¢\u0006\u0010\n\u0006\b¢\u0002\u0010õ\u0002\u001a\u0006\bö\u0002\u0010÷\u0002R\u0018\u0010û\u0002\u001a\u00030ù\u00028\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u0083\u0001\u0010ú\u0002R*\u0010\u0082\u0003\u001a\u00030ü\u00028\u0000@\u0000X\u0080\u000e¢\u0006\u0018\n\u0006\b\u009c\u0002\u0010ý\u0002\u001a\u0006\bþ\u0002\u0010ÿ\u0002\"\u0006\b\u0080\u0003\u0010\u0081\u0003R \u0010\u0087\u0003\u001a\u00030\u0083\u00038\u0016X\u0096\u0004¢\u0006\u0010\n\u0006\b\u0082\u0001\u0010\u0084\u0003\u001a\u0006\b\u0085\u0003\u0010\u0086\u0003R \u0010\u008c\u0003\u001a\u00030\u0088\u00038\u0016X\u0096\u0004¢\u0006\u0010\n\u0006\b¤\u0002\u0010\u0089\u0003\u001a\u0006\b\u008a\u0003\u0010\u008b\u0003R \u0010\u0091\u0003\u001a\u00030\u008d\u00038\u0016X\u0096\u0004¢\u0006\u0010\n\u0006\b«\u0002\u0010\u008e\u0003\u001a\u0006\b\u008f\u0003\u0010\u0090\u0003R\u001f\u0010\u0094\u0003\u001a\n\u0012\u0005\u0012\u00030\u0091\u00010\u0092\u00038\u0002X\u0082\u0004¢\u0006\b\n\u0006\b±\u0002\u0010\u0093\u0003R#\u0010\u0095\u0003\u001a\f\u0012\u0005\u0012\u00030\u0091\u0001\u0018\u00010\u0092\u00038\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bü\u0001\u0010\u0093\u0003R\u0019\u0010\u0096\u0003\u001a\u0002008\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b÷\u0001\u0010µ\u0002R\u0019\u0010\u0097\u0003\u001a\u0002008\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bõ\u0001\u0010µ\u0002R\u0018\u0010\u009a\u0003\u001a\u00030\u0098\u00038\u0002X\u0082\u0004¢\u0006\b\n\u0006\bú\u0001\u0010\u0099\u0003R\u0018\u0010\u009d\u0003\u001a\u00030\u009b\u00038\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u0096\u0002\u0010\u009c\u0003R7\u0010¢\u0003\u001a\u0010\u0012\u0005\u0012\u00030è\u0001\u0012\u0004\u0012\u00020\u00160¨\u00018\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\b¬\u0002\u0010\u009e\u0003\u001a\u0006\b\u009f\u0003\u0010 \u0003\"\u0006\b¡\u0003\u0010¬\u0001R\u001a\u0010¥\u0003\u001a\u0005\u0018\u00010£\u00038\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u00ad\u0002\u0010¤\u0003R\u0019\u0010¦\u0003\u001a\u0002008\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¯\u0002\u0010µ\u0002R \u0010«\u0003\u001a\u00030§\u00038\u0016X\u0096\u0004¢\u0006\u0010\n\u0006\b\u0090\u0002\u0010¨\u0003\u001a\u0006\b©\u0003\u0010ª\u0003R \u0010±\u0003\u001a\u00030¬\u00038\u0016X\u0096\u0004¢\u0006\u0010\n\u0006\b\u00ad\u0003\u0010®\u0003\u001a\u0006\b¯\u0003\u0010°\u0003R/\u0010¶\u0003\u001a\u0002008\u0016@\u0016X\u0096\u000e¢\u0006\u001e\n\u0006\b²\u0003\u0010µ\u0002\u0012\u0005\bµ\u0003\u0010N\u001a\u0006\b³\u0003\u0010Ý\u0001\"\u0005\b´\u0003\u00108R\u001c\u0010º\u0003\u001a\u0005\u0018\u00010·\u00038\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¸\u0003\u0010¹\u0003R\u001c\u0010½\u0003\u001a\u0005\u0018\u00010»\u00038\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¥\u0002\u0010¼\u0003R!\u0010¿\u0003\u001a\u0004\u0018\u00010m8\u0002@\u0002X\u0082\u000eø\u0001\u0000ø\u0001\u0001¢\u0006\b\n\u0006\b©\u0002\u0010¾\u0003R\u0019\u0010Á\u0003\u001a\u0002008\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÀ\u0003\u0010µ\u0002R\u0018\u0010Ä\u0003\u001a\u00030Â\u00038\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u0083\u0002\u0010Ã\u0003R \u0010Ê\u0003\u001a\u00030Å\u00038\u0016X\u0096\u0004¢\u0006\u0010\n\u0006\bÆ\u0003\u0010Ç\u0003\u001a\u0006\bÈ\u0003\u0010É\u0003R \u0010Ì\u0003\u001a\u00030Ë\u00038\u0002@\u0002X\u0082\u000eø\u0001\u0000ø\u0001\u0001¢\u0006\b\n\u0006\b\u009b\u0002\u0010¥\u0002R\u0018\u0010Ï\u0003\u001a\u00030½\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\bÍ\u0003\u0010Î\u0003R\u001e\u0010Ò\u0003\u001a\u00030Õ\u00018\u0002X\u0082\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\b\n\u0006\bÐ\u0003\u0010Ñ\u0003R\u001e\u0010Ô\u0003\u001a\u00030Õ\u00018\u0002X\u0082\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\b\n\u0006\bÓ\u0003\u0010Ñ\u0003R\u001e\u0010Ö\u0003\u001a\u00030Õ\u00018\u0002X\u0082\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\b\n\u0006\bÕ\u0003\u0010Ñ\u0003R/\u0010Ü\u0003\u001a\u00020D8\u0000@\u0000X\u0081\u000e¢\u0006\u001e\n\u0006\b×\u0003\u0010¥\u0002\u0012\u0005\bÛ\u0003\u0010N\u001a\u0006\bØ\u0003\u0010Ù\u0003\"\u0005\bÚ\u0003\u0010GR\u0019\u0010Þ\u0003\u001a\u0002008\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÝ\u0003\u0010µ\u0002R \u0010à\u0003\u001a\u00030Ð\u00018\u0002@\u0002X\u0082\u000eø\u0001\u0000ø\u0001\u0001¢\u0006\b\n\u0006\bß\u0003\u0010¥\u0002R\u0019\u0010â\u0003\u001a\u0002008\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bá\u0003\u0010µ\u0002R9\u0010è\u0003\u001a\u0005\u0018\u00010©\u00012\n\u0010¾\u0002\u001a\u0005\u0018\u00010©\u00018B@BX\u0082\u008e\u0002¢\u0006\u0018\n\u0006\bã\u0003\u0010À\u0002\u001a\u0006\bä\u0003\u0010å\u0003\"\u0006\bæ\u0003\u0010ç\u0003R#\u0010ì\u0003\u001a\u0005\u0018\u00010©\u00018FX\u0086\u0084\u0002¢\u0006\u0010\n\u0006\bé\u0003\u0010ê\u0003\u001a\u0006\bë\u0003\u0010å\u0003R)\u0010î\u0003\u001a\u0012\u0012\u0005\u0012\u00030©\u0001\u0012\u0004\u0012\u00020\u0016\u0018\u00010¨\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bí\u0003\u0010\u009e\u0003R\u0018\u0010ò\u0003\u001a\u00030ï\u00038\u0002X\u0082\u0004¢\u0006\b\n\u0006\bð\u0003\u0010ñ\u0003R\u0018\u0010ö\u0003\u001a\u00030ó\u00038\u0002X\u0082\u0004¢\u0006\b\n\u0006\bô\u0003\u0010õ\u0003R\u0018\u0010ú\u0003\u001a\u00030÷\u00038\u0002X\u0082\u0004¢\u0006\b\n\u0006\bø\u0003\u0010ù\u0003R\u0018\u0010þ\u0003\u001a\u00030û\u00038\u0002X\u0082\u0004¢\u0006\b\n\u0006\bü\u0003\u0010ý\u0003R \u0010\u0084\u0004\u001a\u00030ÿ\u00038\u0016X\u0096\u0004¢\u0006\u0010\n\u0006\b\u0080\u0004\u0010\u0081\u0004\u001a\u0006\b\u0082\u0004\u0010\u0083\u0004R%\u0010\u0089\u0004\u001a\n\u0012\u0005\u0012\u00030\u0086\u00040\u0085\u00048\u0002X\u0082\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\b\n\u0006\b\u0087\u0004\u0010\u0088\u0004R \u0010\u008f\u0004\u001a\u00030\u008a\u00048\u0016X\u0096\u0004¢\u0006\u0010\n\u0006\b\u008b\u0004\u0010\u008c\u0004\u001a\u0006\b\u008d\u0004\u0010\u008e\u0004R'\u0010\u0096\u0004\u001a\u00030\u0090\u00048\u0016X\u0097\u0004¢\u0006\u0017\n\u0006\b\u0091\u0004\u0010\u0092\u0004\u0012\u0005\b\u0095\u0004\u0010N\u001a\u0006\b\u0093\u0004\u0010\u0094\u0004R5\u0010\u009d\u0004\u001a\u00030\u0097\u00042\b\u0010¾\u0002\u001a\u00030\u0097\u00048V@RX\u0096\u008e\u0002¢\u0006\u0018\n\u0006\b\u0098\u0004\u0010À\u0002\u001a\u0006\b\u0099\u0004\u0010\u009a\u0004\"\u0006\b\u009b\u0004\u0010\u009c\u0004R\u0019\u0010\u009f\u0004\u001a\u00020+8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009e\u0004\u0010¸\u0003R5\u0010ì\u0001\u001a\u00030 \u00042\b\u0010¾\u0002\u001a\u00030 \u00048V@RX\u0096\u008e\u0002¢\u0006\u0018\n\u0006\b¡\u0004\u0010À\u0002\u001a\u0006\b¢\u0004\u0010£\u0004\"\u0006\b¤\u0004\u0010¥\u0004R \u0010«\u0004\u001a\u00030¦\u00048\u0016X\u0096\u0004¢\u0006\u0010\n\u0006\b§\u0004\u0010¨\u0004\u001a\u0006\b©\u0004\u0010ª\u0004R\u0018\u0010¯\u0004\u001a\u00030¬\u00048\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u00ad\u0004\u0010®\u0004R \u0010µ\u0004\u001a\u00030°\u00048\u0016X\u0096\u0004¢\u0006\u0010\n\u0006\b±\u0004\u0010²\u0004\u001a\u0006\b³\u0004\u0010´\u0004R \u0010»\u0004\u001a\u00030¶\u00048\u0016X\u0096\u0004¢\u0006\u0010\n\u0006\b·\u0004\u0010¸\u0004\u001a\u0006\b¹\u0004\u0010º\u0004R\u001c\u0010¾\u0004\u001a\u0005\u0018\u00010È\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¼\u0004\u0010½\u0004R\u0019\u0010À\u0004\u001a\u00020D8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¿\u0004\u0010¥\u0002R\u001f\u0010Ä\u0004\u001a\n\u0012\u0005\u0012\u00030\u0091\u00010Á\u00048\u0002X\u0082\u0004¢\u0006\b\n\u0006\bÂ\u0004\u0010Ã\u0004R&\u0010È\u0004\u001a\u0011\u0012\f\u0012\n\u0012\u0004\u0012\u00020\u0016\u0018\u00010P0Å\u00048\u0002X\u0082\u0004¢\u0006\b\n\u0006\bÆ\u0004\u0010Ç\u0004R\u0018\u0010Ì\u0004\u001a\u00030É\u00048\u0002X\u0082\u0004¢\u0006\b\n\u0006\bÊ\u0004\u0010Ë\u0004R\u0018\u0010Ð\u0004\u001a\u00030Í\u00048\u0002X\u0082\u0004¢\u0006\b\n\u0006\bÎ\u0004\u0010Ï\u0004R\u0019\u0010Ò\u0004\u001a\u0002008\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÑ\u0004\u0010µ\u0002R\u001d\u0010Õ\u0004\u001a\b\u0012\u0004\u0012\u00020\u00160P8\u0002X\u0082\u0004¢\u0006\b\n\u0006\bÓ\u0004\u0010Ô\u0004R\u0018\u0010Ù\u0004\u001a\u00030Ö\u00048\u0002X\u0082\u0004¢\u0006\b\n\u0006\b×\u0004\u0010Ø\u0004R\u0019\u0010Û\u0004\u001a\u0002008\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÚ\u0004\u0010µ\u0002R\u001a\u0010ß\u0004\u001a\u0005\u0018\u00010Ü\u00048\u0002X\u0082\u0004¢\u0006\b\n\u0006\bÝ\u0004\u0010Þ\u0004R \u0010å\u0004\u001a\u00030à\u00048\u0016X\u0096\u0004¢\u0006\u0010\n\u0006\bá\u0004\u0010â\u0004\u001a\u0006\bã\u0004\u0010ä\u0004R\u0016\u0010a\u001a\u00020)8VX\u0096\u0004¢\u0006\b\u001a\u0006\bæ\u0004\u0010ç\u0004R\u0018\u0010ë\u0004\u001a\u00030è\u00048VX\u0096\u0004¢\u0006\b\u001a\u0006\bé\u0004\u0010ê\u0004R\u001a\u0010¹\u0001\u001a\u0005\u0018\u00010ì\u00048VX\u0096\u0004¢\u0006\b\u001a\u0006\bí\u0004\u0010î\u0004R\u0018\u0010ñ\u0004\u001a\u00030·\u00038@X\u0080\u0004¢\u0006\b\u001a\u0006\bï\u0004\u0010ð\u0004R\u0017\u0010ó\u0004\u001a\u00020D8VX\u0096\u0004¢\u0006\b\u001a\u0006\bò\u0004\u0010Ù\u0003R\u0017\u0010õ\u0004\u001a\u0002008VX\u0096\u0004¢\u0006\b\u001a\u0006\bô\u0004\u0010Ý\u0001R\u0018\u0010ù\u0004\u001a\u00030ö\u00048VX\u0096\u0004¢\u0006\b\u001a\u0006\b÷\u0004\u0010ø\u0004R\u0018\u0010ý\u0004\u001a\u00030ú\u00048VX\u0096\u0004¢\u0006\b\u001a\u0006\bû\u0004\u0010ü\u0004R\u0017\u0010ÿ\u0004\u001a\u0002008@X\u0080\u0004¢\u0006\b\u001a\u0006\bþ\u0004\u0010Ý\u0001R\u0017\u0010\u0080\u0005\u001a\u0002008VX\u0096\u0004¢\u0006\b\u001a\u0006\b\u0080\u0005\u0010Ý\u0001R\u001c\u0010\u0082\u0005\u001a\u00020+*\u00030è\u00018BX\u0082\u0004¢\u0006\b\u001a\u0006\bå\u0002\u0010\u0081\u0005\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006\u0084\u0005"}, d2 = {"Landroidx/compose/ui/platform/AndroidComposeView;", "Landroid/view/ViewGroup;", "Landroidx/compose/ui/node/y0;", "Landroidx/compose/ui/platform/t2;", "Landroidx/compose/ui/input/pointer/i0;", "Landroidx/lifecycle/f;", "Landroid/content/Context;", "context", "Lkotlin/coroutines/CoroutineContext;", "coroutineContext", "<init>", "(Landroid/content/Context;Lkotlin/coroutines/CoroutineContext;)V", "Lkotlin/Function2;", "", "Lkotlin/coroutines/Continuation;", "", "Lkotlin/ExtensionFunctionType;", "session", "textInputSession", "(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Landroid/graphics/Rect;", "rect", "", "getFocusedRect", "(Landroid/graphics/Rect;)V", "Landroid/view/ViewStructure;", "structure", "dispatchProvideStructure", "(Landroid/view/ViewStructure;)V", "localVisibleRect", "Landroid/graphics/Point;", "windowOffset", "Ljava/util/function/Consumer;", "Landroid/view/ScrollCaptureTarget;", "targets", "onScrollCaptureSearch", "(Landroid/graphics/Rect;Landroid/graphics/Point;Ljava/util/function/Consumer;)V", "Landroidx/lifecycle/u;", "owner", "onResume", "(Landroidx/lifecycle/u;)V", "Landroid/view/View;", "focused", "", "direction", "focusSearch", "(Landroid/view/View;I)Landroid/view/View;", "previouslyFocusedRect", "", "requestFocus", "(ILandroid/graphics/Rect;)Z", "gainFocus", "onFocusChanged", "(ZILandroid/graphics/Rect;)V", "hasWindowFocus", "onWindowFocusChanged", "(Z)V", "Ld0/b;", "keyEvent", "sendKeyEvent-ZmokQxo", "(Landroid/view/KeyEvent;)Z", "sendKeyEvent", "Landroid/view/KeyEvent;", NotificationCompat.CATEGORY_EVENT, "dispatchKeyEvent", "dispatchKeyEventPreIme", OfflineConstantsKt.OFFLINE_CONFIG_ENABLE, "forceAccessibilityForTesting", "", "intervalMillis", "setAccessibilityEventBatchIntervalMillis", "(J)V", "Landroidx/compose/ui/node/LayoutNode;", "node", "onAttach", "(Landroidx/compose/ui/node/LayoutNode;)V", "onDetach", "requestClearInvalidObservations", "()V", "onEndApplyChanges", "Lkotlin/Function0;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "registerOnEndApplyChangesListener", "(Lkotlin/jvm/functions/Function0;)V", "child", "addView", "(Landroid/view/View;)V", "index", "(Landroid/view/View;I)V", "width", "height", "(Landroid/view/View;II)V", "Landroid/view/ViewGroup$LayoutParams;", "params", "(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V", "(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V", "Landroidx/compose/ui/viewinterop/AndroidViewHolder;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "layoutNode", "addAndroidView", "(Landroidx/compose/ui/viewinterop/AndroidViewHolder;Landroidx/compose/ui/node/LayoutNode;)V", "removeAndroidView", "(Landroidx/compose/ui/viewinterop/AndroidViewHolder;)V", "Landroid/graphics/Canvas;", "canvas", "drawAndroidView", "(Landroidx/compose/ui/viewinterop/AndroidViewHolder;Landroid/graphics/Canvas;)V", "sendPointerUpdate", "measureAndLayout", "Lo0/b;", "constraints", "measureAndLayout-0kLqBqw", "(Landroidx/compose/ui/node/LayoutNode;J)V", "affectsLookahead", "forceMeasureTheSubtree", "(Landroidx/compose/ui/node/LayoutNode;Z)V", "forceRequest", "scheduleMeasureAndLayout", "onRequestMeasure", "(Landroidx/compose/ui/node/LayoutNode;ZZZ)V", "onRequestRelayout", "(Landroidx/compose/ui/node/LayoutNode;ZZ)V", "requestOnPositionedCallback", "measureAndLayoutForTest", "widthMeasureSpec", "heightMeasureSpec", "onMeasure", "(II)V", "changed", "l", "t", CampaignEx.JSON_KEY_AD_R, DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "onLayout", "(ZIIII)V", "onDraw", "(Landroid/graphics/Canvas;)V", "Landroidx/compose/ui/graphics/m1;", "Lkotlin/ParameterName;", "name", "Landroidx/compose/ui/graphics/layer/GraphicsLayer;", "parentLayer", "drawBlock", "invalidateParentLayer", "explicitLayer", "Landroidx/compose/ui/node/w0;", "createLayer", "(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)Landroidx/compose/ui/node/w0;", "layer", "recycle$ui_release", "(Landroidx/compose/ui/node/w0;)Z", "recycle", "onSemanticsChange", "onLayoutChange", "Landroidx/compose/ui/viewinterop/InteropView;", "onInteropViewLayoutChange", "Landroidx/compose/ui/node/y0$b;", "registerOnLayoutCompletedListener", "(Landroidx/compose/ui/node/y0$b;)V", "Landroidx/compose/ui/focus/b;", "getFocusDirection-P8AzH3I", "(Landroid/view/KeyEvent;)Landroidx/compose/ui/focus/b;", "getFocusDirection", "dispatchDraw", "isDirty", "notifyLayerIsDirty$ui_release", "(Landroidx/compose/ui/node/w0;Z)V", "notifyLayerIsDirty", "Lkotlin/Function1;", "Landroidx/compose/ui/platform/AndroidComposeView$b;", "callback", "setOnViewTreeOwnersAvailable", "(Lkotlin/jvm/functions/Function1;)V", "boundsUpdatesContentCaptureEventLoop", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "boundsUpdatesAccessibilityEventLoop", "invalidateDescendants", "onAttachedToWindow", "onDetachedFromWindow", "flags", "onProvideAutofillVirtualStructure", "(Landroid/view/ViewStructure;I)V", "Landroid/util/SparseArray;", "Landroid/view/autofill/AutofillValue;", "values", "autofill", "(Landroid/util/SparseArray;)V", "", "virtualIds", "", "supportedFormats", "Landroid/view/translation/ViewTranslationRequest;", "requestsCollector", "onCreateVirtualViewTranslationRequests", "([J[ILjava/util/function/Consumer;)V", "Landroid/util/LongSparseArray;", "Landroid/view/translation/ViewTranslationResponse;", "response", "onVirtualViewTranslationResponses", "(Landroid/util/LongSparseArray;)V", "Landroid/view/MotionEvent;", "motionEvent", "dispatchGenericMotionEvent", "(Landroid/view/MotionEvent;)Z", "dispatchTouchEvent", "canScrollHorizontally", "(I)Z", "canScrollVertically", "Ly/g;", "localPosition", "localToScreen-MK-Hz9U", "(J)J", "localToScreen", "Landroidx/compose/ui/graphics/i4;", "localTransform", "localToScreen-58bKbWc", "([F)V", "positionOnScreen", "screenToLocal-MK-Hz9U", "screenToLocal", "onCheckIsTextEditor", "()Z", "Landroid/view/inputmethod/EditorInfo;", "outAttrs", "Landroid/view/inputmethod/InputConnection;", "onCreateInputConnection", "(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;", "positionInWindow", "calculateLocalPosition-MK-Hz9U", "calculateLocalPosition", "calculatePositionInWindow-MK-Hz9U", "calculatePositionInWindow", "Landroid/content/res/Configuration;", "newConfig", "onConfigurationChanged", "(Landroid/content/res/Configuration;)V", "layoutDirection", "onRtlPropertiesChanged", "(I)V", "dispatchHoverEvent", "accessibilityId", "findViewByAccessibilityIdTraversal", "(I)Landroid/view/View;", "shouldDelayChildPressedState", "focusDirection", "z", "Ly/i;", "y", "()Ly/i;", CampaignEx.JSON_KEY_AD_K, "A", "(Landroidx/compose/ui/focus/b;Ly/i;)Z", "x", "Landroidx/compose/ui/draganddrop/g;", "transferData", "Ly/m;", "decorationSize", "Lz/g;", "drawDragDecoration", "M", "(Landroidx/compose/ui/draganddrop/g;JLkotlin/jvm/functions/Function1;)Z", "viewGroup", "h", "(Landroid/view/ViewGroup;)V", "virtualViewId", "Landroid/view/accessibility/AccessibilityNodeInfo;", "info", "", "extraDataKey", "e", "(ILandroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)V", "nodeToRemeasure", "F", "g", "(Landroidx/compose/ui/node/LayoutNode;)Z", "j", "a", "Lkotlin/ULong;", "B", "(II)J", "measureSpec", "i", "(I)J", "O", "s", TtmlNode.TAG_P, "Landroidx/compose/ui/input/pointer/j0;", "o", "(Landroid/view/MotionEvent;)I", "lastEvent", CampaignEx.JSON_KEY_AD_Q, "(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z", TmcStartParams.KEY_URL_SHORT, "J", EventConstants.KEY_ACTION, "eventTime", "forceHover", "K", "(Landroid/view/MotionEvent;IJZ)V", "v", "C", "D", "(Landroid/view/MotionEvent;)V", "E", "f", "w", "currentView", "(ILandroid/view/View;)Landroid/view/View;", "lastDownPointerPosition", "Z", "superclassInitComplete", "Landroidx/compose/ui/node/d0;", "c", "Landroidx/compose/ui/node/d0;", "getSharedDrawScope", "()Landroidx/compose/ui/node/d0;", "sharedDrawScope", "Lo0/e;", "<set-?>", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Landroidx/compose/runtime/i1;", "getDensity", "()Lo0/e;", "setDensity", "(Lo0/e;)V", "density", "Landroidx/compose/ui/semantics/d;", "Landroidx/compose/ui/semantics/d;", "rootSemanticsNode", "Landroidx/compose/ui/semantics/EmptySemanticsElement;", "Landroidx/compose/ui/semantics/EmptySemanticsElement;", "semanticsModifier", "Landroidx/compose/ui/focus/i;", "Landroidx/compose/ui/focus/i;", "getFocusOwner", "()Landroidx/compose/ui/focus/i;", "focusOwner", "Landroidx/compose/ui/platform/DragAndDropModifierOnDragListener;", "Landroidx/compose/ui/platform/DragAndDropModifierOnDragListener;", "dragAndDropModifierOnDragListener", AppMeasurementSdk.ConditionalUserProperty.VALUE, "Lkotlin/coroutines/CoroutineContext;", "getCoroutineContext", "()Lkotlin/coroutines/CoroutineContext;", "setCoroutineContext", "(Lkotlin/coroutines/CoroutineContext;)V", "Landroidx/compose/ui/draganddrop/c;", "Landroidx/compose/ui/draganddrop/c;", "getDragAndDropManager", "()Landroidx/compose/ui/draganddrop/c;", "dragAndDropManager", "Landroidx/compose/ui/platform/w2;", "Landroidx/compose/ui/platform/w2;", "_windowInfo", "Landroidx/compose/ui/f;", "Landroidx/compose/ui/f;", "keyInputModifier", "m", "rotaryInputModifier", "Landroidx/compose/ui/graphics/n1;", "n", "Landroidx/compose/ui/graphics/n1;", "canvasHolder", "Landroidx/compose/ui/node/LayoutNode;", "getRoot", "()Landroidx/compose/ui/node/LayoutNode;", "root", "Landroidx/compose/ui/node/g1;", "Landroidx/compose/ui/node/g1;", "getRootForTest", "()Landroidx/compose/ui/node/g1;", "rootForTest", "Landroidx/compose/ui/semantics/m;", "Landroidx/compose/ui/semantics/m;", "getSemanticsOwner", "()Landroidx/compose/ui/semantics/m;", "semanticsOwner", "Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;", "Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;", "composeAccessibilityDelegate", "Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;", "Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;", "getContentCaptureManager$ui_release", "()Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;", "setContentCaptureManager$ui_release", "(Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;)V", "contentCaptureManager", "Landroidx/compose/ui/platform/i;", "Landroidx/compose/ui/platform/i;", "getAccessibilityManager", "()Landroidx/compose/ui/platform/i;", "accessibilityManager", "Landroidx/compose/ui/graphics/a4;", "Landroidx/compose/ui/graphics/a4;", "getGraphicsContext", "()Landroidx/compose/ui/graphics/a4;", "graphicsContext", "Lx/w;", "Lx/w;", "getAutofillTree", "()Lx/w;", "autofillTree", "", "Ljava/util/List;", "dirtyLayers", "postponedDirtyLayers", "isDrawingContent", "isPendingInteropViewLayoutChangeDispatch", "Landroidx/compose/ui/input/pointer/h;", "Landroidx/compose/ui/input/pointer/h;", "motionEventAdapter", "Landroidx/compose/ui/input/pointer/a0;", "Landroidx/compose/ui/input/pointer/a0;", "pointerInputEventProcessor", "Lkotlin/jvm/functions/Function1;", "getConfigurationChangeObserver", "()Lkotlin/jvm/functions/Function1;", "setConfigurationChangeObserver", "configurationChangeObserver", "Lx/d;", "Lx/d;", "_autofill", "observationClearRequested", "Landroidx/compose/ui/platform/j;", "Landroidx/compose/ui/platform/j;", "getClipboardManager", "()Landroidx/compose/ui/platform/j;", "clipboardManager", "Landroidx/compose/ui/node/OwnerSnapshotObserver;", "G", "Landroidx/compose/ui/node/OwnerSnapshotObserver;", "getSnapshotObserver", "()Landroidx/compose/ui/node/OwnerSnapshotObserver;", "snapshotObserver", "H", "getShowLayoutBounds", "setShowLayoutBounds", "getShowLayoutBounds$annotations", "showLayoutBounds", "Landroidx/compose/ui/platform/AndroidViewsHandler;", "I", "Landroidx/compose/ui/platform/AndroidViewsHandler;", "_androidViewsHandler", "Landroidx/compose/ui/platform/DrawChildContainer;", "Landroidx/compose/ui/platform/DrawChildContainer;", "viewLayersContainer", "Lo0/b;", "onMeasureConstraints", "L", "wasMeasuredWithMultipleConstraints", "Landroidx/compose/ui/node/k0;", "Landroidx/compose/ui/node/k0;", "measureAndLayoutDelegate", "Landroidx/compose/ui/platform/o2;", "N", "Landroidx/compose/ui/platform/o2;", "getViewConfiguration", "()Landroidx/compose/ui/platform/o2;", "viewConfiguration", "Lo0/p;", "globalPosition", "P", "[I", "tmpPositionArray", "Q", "[F", "tmpMatrix", "R", "viewToWindowMatrix", "S", "windowToViewMatrix", "T", "getLastMatrixRecalculationAnimationTime$ui_release", "()J", "setLastMatrixRecalculationAnimationTime$ui_release", "getLastMatrixRecalculationAnimationTime$ui_release$annotations", "lastMatrixRecalculationAnimationTime", "U", "forceUseMatrixCache", "V", "windowPosition", "W", "isRenderNodeCompatible", "a0", "get_viewTreeOwners", "()Landroidx/compose/ui/platform/AndroidComposeView$b;", "set_viewTreeOwners", "(Landroidx/compose/ui/platform/AndroidComposeView$b;)V", "_viewTreeOwners", "b0", "Landroidx/compose/runtime/a3;", "getViewTreeOwners", "viewTreeOwners", "c0", "onViewTreeOwnersAvailable", "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;", "d0", "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;", "globalLayoutListener", "Landroid/view/ViewTreeObserver$OnScrollChangedListener;", "e0", "Landroid/view/ViewTreeObserver$OnScrollChangedListener;", "scrollChangedListener", "Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;", "f0", "Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;", "touchModeChangeListener", "Landroidx/compose/ui/text/input/TextInputServiceAndroid;", "g0", "Landroidx/compose/ui/text/input/TextInputServiceAndroid;", "legacyTextInputServiceAndroid", "Landroidx/compose/ui/text/input/e0;", "h0", "Landroidx/compose/ui/text/input/e0;", "getTextInputService", "()Landroidx/compose/ui/text/input/e0;", "textInputService", "Landroidx/compose/ui/SessionMutex;", "Landroidx/compose/ui/platform/i0;", "i0", "Ljava/util/concurrent/atomic/AtomicReference;", "textInputSessionMutex", "Landroidx/compose/ui/platform/g2;", "j0", "Landroidx/compose/ui/platform/g2;", "getSoftwareKeyboardController", "()Landroidx/compose/ui/platform/g2;", "softwareKeyboardController", "Landroidx/compose/ui/text/font/g;", "k0", "Landroidx/compose/ui/text/font/g;", "getFontLoader", "()Landroidx/compose/ui/text/font/g;", "getFontLoader$annotations", "fontLoader", "Landroidx/compose/ui/text/font/h$b;", "l0", "getFontFamilyResolver", "()Landroidx/compose/ui/text/font/h$b;", "setFontFamilyResolver", "(Landroidx/compose/ui/text/font/h$b;)V", "fontFamilyResolver", "m0", "currentFontWeightAdjustment", "Landroidx/compose/ui/unit/LayoutDirection;", "n0", "getLayoutDirection", "()Landroidx/compose/ui/unit/LayoutDirection;", "setLayoutDirection", "(Landroidx/compose/ui/unit/LayoutDirection;)V", "Lb0/a;", "o0", "Lb0/a;", "getHapticFeedBack", "()Lb0/a;", "hapticFeedBack", "Lc0/c;", "p0", "Lc0/c;", "_inputModeManager", "Landroidx/compose/ui/modifier/ModifierLocalManager;", "q0", "Landroidx/compose/ui/modifier/ModifierLocalManager;", "getModifierLocalManager", "()Landroidx/compose/ui/modifier/ModifierLocalManager;", "modifierLocalManager", "Landroidx/compose/ui/platform/h2;", "r0", "Landroidx/compose/ui/platform/h2;", "getTextToolbar", "()Landroidx/compose/ui/platform/h2;", "textToolbar", "s0", "Landroid/view/MotionEvent;", "previousMotionEvent", "t0", "relayoutTime", "Landroidx/compose/ui/platform/u2;", "u0", "Landroidx/compose/ui/platform/u2;", "layerCache", "Landroidx/compose/runtime/collection/b;", "v0", "Landroidx/compose/runtime/collection/b;", "endApplyChangesListeners", "androidx/compose/ui/platform/AndroidComposeView$resendMotionEventRunnable$1", "w0", "Landroidx/compose/ui/platform/AndroidComposeView$resendMotionEventRunnable$1;", "resendMotionEventRunnable", "Ljava/lang/Runnable;", "x0", "Ljava/lang/Runnable;", "sendHoverExitEvent", "y0", "hoverExitReceived", "z0", "Lkotlin/jvm/functions/Function0;", "resendMotionEventOnLayout", "Landroidx/compose/ui/platform/m0;", "A0", "Landroidx/compose/ui/platform/m0;", "matrixToWindow", "B0", "keyboardModifiersRequireUpdate", "Landroidx/compose/ui/scrollcapture/ScrollCapture;", "C0", "Landroidx/compose/ui/scrollcapture/ScrollCapture;", "scrollCapture", "Landroidx/compose/ui/input/pointer/t;", "D0", "Landroidx/compose/ui/input/pointer/t;", "getPointerIconService", "()Landroidx/compose/ui/input/pointer/t;", "pointerIconService", "getView", "()Landroid/view/View;", "Landroidx/compose/ui/platform/v2;", "getWindowInfo", "()Landroidx/compose/ui/platform/v2;", "windowInfo", "Lx/g;", "getAutofill", "()Lx/g;", "getAndroidViewsHandler$ui_release", "()Landroidx/compose/ui/platform/AndroidViewsHandler;", "androidViewsHandler", "getMeasureIteration", "measureIteration", "getHasPendingMeasureOrLayout", "hasPendingMeasureOrLayout", "Landroidx/compose/ui/layout/g0$a;", "getPlacementScope", "()Landroidx/compose/ui/layout/g0$a;", "placementScope", "Lc0/b;", "getInputModeManager", "()Lc0/b;", "inputModeManager", "getScrollCaptureInProgress$ui_release", "scrollCaptureInProgress", "isLifecycleInResumedState", "(Landroid/content/res/Configuration;)I", "fontWeightAdjustmentCompat", "Companion", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class AndroidComposeView extends ViewGroup implements androidx.compose.ui.node.y0, t2, androidx.compose.ui.input.pointer.i0, androidx.p009lifecycle.f {
    private static Class E0;
    private static Method F0;

    /* JADX INFO: renamed from: A, reason: from kotlin metadata */
    private final androidx.compose.ui.input.pointer.h motionEventAdapter;

    /* JADX INFO: renamed from: A0, reason: from kotlin metadata */
    private final m0 matrixToWindow;

    /* JADX INFO: renamed from: B, reason: from kotlin metadata */
    private final androidx.compose.ui.input.pointer.a0 pointerInputEventProcessor;

    /* JADX INFO: renamed from: B0, reason: from kotlin metadata */
    private boolean keyboardModifiersRequireUpdate;

    /* JADX INFO: renamed from: C, reason: from kotlin metadata */
    private Function1 configurationChangeObserver;

    /* JADX INFO: renamed from: C0, reason: from kotlin metadata */
    private final ScrollCapture scrollCapture;

    /* JADX INFO: renamed from: D, reason: from kotlin metadata */
    private final x.d _autofill;

    /* JADX INFO: renamed from: D0, reason: from kotlin metadata */
    private final androidx.compose.ui.input.pointer.t pointerIconService;

    /* JADX INFO: renamed from: E, reason: from kotlin metadata */
    private boolean observationClearRequested;

    /* JADX INFO: renamed from: F, reason: from kotlin metadata */
    private final j clipboardManager;

    /* JADX INFO: renamed from: G, reason: from kotlin metadata */
    private final OwnerSnapshotObserver snapshotObserver;

    /* JADX INFO: renamed from: H, reason: from kotlin metadata */
    private boolean showLayoutBounds;

    /* JADX INFO: renamed from: I, reason: from kotlin metadata */
    private AndroidViewsHandler _androidViewsHandler;

    /* JADX INFO: renamed from: J, reason: from kotlin metadata */
    private DrawChildContainer viewLayersContainer;

    /* JADX INFO: renamed from: K, reason: from kotlin metadata */
    private o0.b onMeasureConstraints;

    /* JADX INFO: renamed from: L, reason: from kotlin metadata */
    private boolean wasMeasuredWithMultipleConstraints;

    /* JADX INFO: renamed from: M, reason: from kotlin metadata */
    private final androidx.compose.ui.node.k0 measureAndLayoutDelegate;

    /* JADX INFO: renamed from: N, reason: from kotlin metadata */
    private final o2 viewConfiguration;

    /* JADX INFO: renamed from: O, reason: from kotlin metadata */
    private long globalPosition;

    /* JADX INFO: renamed from: P, reason: from kotlin metadata */
    private final int[] tmpPositionArray;

    /* JADX INFO: renamed from: Q, reason: from kotlin metadata */
    private final float[] tmpMatrix;

    /* JADX INFO: renamed from: R, reason: from kotlin metadata */
    private final float[] viewToWindowMatrix;

    /* JADX INFO: renamed from: S, reason: from kotlin metadata */
    private final float[] windowToViewMatrix;

    /* JADX INFO: renamed from: T, reason: from kotlin metadata */
    private long lastMatrixRecalculationAnimationTime;

    /* JADX INFO: renamed from: U, reason: from kotlin metadata */
    private boolean forceUseMatrixCache;

    /* JADX INFO: renamed from: V, reason: from kotlin metadata */
    private long windowPosition;

    /* JADX INFO: renamed from: W, reason: from kotlin metadata */
    private boolean isRenderNodeCompatible;

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private long lastDownPointerPosition;

    /* JADX INFO: renamed from: a0, reason: collision with root package name and from kotlin metadata */
    private final androidx.compose.runtime.i1 _viewTreeOwners;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private boolean superclassInitComplete;

    /* JADX INFO: renamed from: b0, reason: collision with root package name and from kotlin metadata */
    private final androidx.compose.runtime.a3 viewTreeOwners;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private final androidx.compose.ui.node.d0 sharedDrawScope;

    /* JADX INFO: renamed from: c0, reason: collision with root package name and from kotlin metadata */
    private Function1 onViewTreeOwnersAvailable;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private final androidx.compose.runtime.i1 density;

    /* JADX INFO: renamed from: d0, reason: collision with root package name and from kotlin metadata */
    private final ViewTreeObserver.OnGlobalLayoutListener globalLayoutListener;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private final androidx.compose.ui.semantics.d rootSemanticsNode;

    /* JADX INFO: renamed from: e0, reason: collision with root package name and from kotlin metadata */
    private final ViewTreeObserver.OnScrollChangedListener scrollChangedListener;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private final EmptySemanticsElement semanticsModifier;

    /* JADX INFO: renamed from: f0, reason: collision with root package name and from kotlin metadata */
    private final ViewTreeObserver.OnTouchModeChangeListener touchModeChangeListener;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private final androidx.compose.ui.focus.i focusOwner;

    /* JADX INFO: renamed from: g0, reason: collision with root package name and from kotlin metadata */
    private final TextInputServiceAndroid legacyTextInputServiceAndroid;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private final DragAndDropModifierOnDragListener dragAndDropModifierOnDragListener;

    /* JADX INFO: renamed from: h0, reason: collision with root package name and from kotlin metadata */
    private final androidx.compose.ui.text.input.e0 textInputService;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private CoroutineContext coroutineContext;

    /* JADX INFO: renamed from: i0, reason: collision with root package name and from kotlin metadata */
    private final AtomicReference textInputSessionMutex;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private final androidx.compose.ui.draganddrop.c dragAndDropManager;

    /* JADX INFO: renamed from: j0, reason: collision with root package name and from kotlin metadata */
    private final g2 softwareKeyboardController;

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    private final w2 _windowInfo;

    /* JADX INFO: renamed from: k0, reason: collision with root package name and from kotlin metadata */
    private final androidx.compose.ui.text.font.g fontLoader;

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    private final androidx.compose.ui.f keyInputModifier;

    /* JADX INFO: renamed from: l0, reason: collision with root package name and from kotlin metadata */
    private final androidx.compose.runtime.i1 fontFamilyResolver;

    /* JADX INFO: renamed from: m, reason: collision with root package name and from kotlin metadata */
    private final androidx.compose.ui.f rotaryInputModifier;

    /* JADX INFO: renamed from: m0, reason: collision with root package name and from kotlin metadata */
    private int currentFontWeightAdjustment;

    /* JADX INFO: renamed from: n, reason: collision with root package name and from kotlin metadata */
    private final androidx.compose.ui.graphics.n1 canvasHolder;

    /* JADX INFO: renamed from: n0, reason: collision with root package name and from kotlin metadata */
    private final androidx.compose.runtime.i1 layoutDirection;

    /* JADX INFO: renamed from: o, reason: collision with root package name and from kotlin metadata */
    private final LayoutNode root;

    /* JADX INFO: renamed from: o0, reason: collision with root package name and from kotlin metadata */
    private final b0.a hapticFeedBack;

    /* JADX INFO: renamed from: p, reason: collision with root package name and from kotlin metadata */
    private final androidx.compose.ui.node.g1 rootForTest;

    /* JADX INFO: renamed from: p0, reason: collision with root package name and from kotlin metadata */
    private final c0.c _inputModeManager;

    /* JADX INFO: renamed from: q, reason: collision with root package name and from kotlin metadata */
    private final androidx.compose.ui.semantics.m semanticsOwner;

    /* JADX INFO: renamed from: q0, reason: collision with root package name and from kotlin metadata */
    private final ModifierLocalManager modifierLocalManager;

    /* JADX INFO: renamed from: r, reason: collision with root package name and from kotlin metadata */
    private final AndroidComposeViewAccessibilityDelegateCompat composeAccessibilityDelegate;

    /* JADX INFO: renamed from: r0, reason: collision with root package name and from kotlin metadata */
    private final h2 textToolbar;

    /* JADX INFO: renamed from: s, reason: collision with root package name and from kotlin metadata */
    private AndroidContentCaptureManager contentCaptureManager;

    /* JADX INFO: renamed from: s0, reason: collision with root package name and from kotlin metadata */
    private MotionEvent previousMotionEvent;

    /* JADX INFO: renamed from: t, reason: collision with root package name and from kotlin metadata */
    private final i accessibilityManager;

    /* JADX INFO: renamed from: t0, reason: collision with root package name and from kotlin metadata */
    private long relayoutTime;

    /* JADX INFO: renamed from: u, reason: collision with root package name and from kotlin metadata */
    private final a4 graphicsContext;

    /* JADX INFO: renamed from: u0, reason: collision with root package name and from kotlin metadata */
    private final u2 layerCache;

    /* JADX INFO: renamed from: v, reason: collision with root package name and from kotlin metadata */
    private final x.w autofillTree;

    /* JADX INFO: renamed from: v0, reason: collision with root package name and from kotlin metadata */
    private final androidx.compose.runtime.collection.b endApplyChangesListeners;

    /* JADX INFO: renamed from: w, reason: collision with root package name and from kotlin metadata */
    private final List dirtyLayers;

    /* JADX INFO: renamed from: w0, reason: collision with root package name and from kotlin metadata */
    private final AndroidComposeView$resendMotionEventRunnable$1 resendMotionEventRunnable;

    /* JADX INFO: renamed from: x, reason: collision with root package name and from kotlin metadata */
    private List postponedDirtyLayers;

    /* JADX INFO: renamed from: x0, reason: collision with root package name and from kotlin metadata */
    private final Runnable sendHoverExitEvent;

    /* JADX INFO: renamed from: y, reason: collision with root package name and from kotlin metadata */
    private boolean isDrawingContent;

    /* JADX INFO: renamed from: y0, reason: collision with root package name and from kotlin metadata */
    private boolean hoverExitReceived;

    /* JADX INFO: renamed from: z, reason: collision with root package name and from kotlin metadata */
    private boolean isPendingInteropViewLayoutChangeDispatch;

    /* JADX INFO: renamed from: z0, reason: collision with root package name and from kotlin metadata */
    private final Function0 resendMotionEventOnLayout;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final int $stable = 8;

    /* JADX INFO: renamed from: androidx.compose.ui.platform.AndroidComposeView$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final boolean b() {
            try {
                if (AndroidComposeView.E0 == null) {
                    AndroidComposeView.E0 = Class.forName("android.os.SystemProperties");
                    Class cls = AndroidComposeView.E0;
                    AndroidComposeView.F0 = cls != null ? cls.getDeclaredMethod("getBoolean", String.class, Boolean.TYPE) : null;
                }
                Method method = AndroidComposeView.F0;
                Object objInvoke = method != null ? method.invoke(null, "debug.layout", Boolean.FALSE) : null;
                Boolean bool = objInvoke instanceof Boolean ? (Boolean) objInvoke : null;
                if (bool != null) {
                    return bool.booleanValue();
                }
                return false;
            } catch (Exception unused) {
                return false;
            }
        }
    }

    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final androidx.p009lifecycle.u f5527a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final androidx.p010savedstate.e f5528b;

        public b(androidx.p009lifecycle.u uVar, androidx.p010savedstate.e eVar) {
            this.f5527a = uVar;
            this.f5528b = eVar;
        }

        public final androidx.p009lifecycle.u a() {
            return this.f5527a;
        }

        public final androidx.p010savedstate.e b() {
            return this.f5528b;
        }
    }

    public static final class c implements androidx.compose.ui.input.pointer.t {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private androidx.compose.ui.input.pointer.s f5529a = androidx.compose.ui.input.pointer.s.f5031a.a();

        c() {
        }
    }

    /* JADX INFO: renamed from: androidx.compose.ui.platform.AndroidComposeView$textInputSession$1, reason: invalid class name and case insensitive filesystem */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    @DebugMetadata(c = "androidx.compose.ui.platform.AndroidComposeView", f = "AndroidComposeView.android.kt", l = {592}, m = "textInputSession")
    static final class C09861 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        C09861(Continuation<? super C09861> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return AndroidComposeView.this.textInputSession(null, this);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r14v13, types: [androidx.compose.ui.platform.AndroidComposeView$resendMotionEventRunnable$1] */
    public AndroidComposeView(Context context, CoroutineContext coroutineContext) {
        super(context);
        y.g.a aVar = y.g.f78470b;
        this.lastDownPointerPosition = aVar.b();
        this.superclassInitComplete = true;
        Object[] objArr = 0;
        Object[] objArr2 = 0;
        this.sharedDrawScope = new androidx.compose.ui.node.d0(0 == true ? 1 : 0, 1, 0 == true ? 1 : 0);
        this.density = androidx.compose.runtime.r2.e(o0.a.a(context), androidx.compose.runtime.r2.h());
        androidx.compose.ui.semantics.d dVar = new androidx.compose.ui.semantics.d();
        this.rootSemanticsNode = dVar;
        EmptySemanticsElement emptySemanticsElement = new EmptySemanticsElement(dVar);
        this.semanticsModifier = emptySemanticsElement;
        this.focusOwner = new FocusOwnerImpl(new AndroidComposeView$focusOwner$1(this), new AndroidComposeView$focusOwner$2(this), new AndroidComposeView$focusOwner$3(this), new AndroidComposeView$focusOwner$4(this), new AndroidComposeView$focusOwner$5(this), new MutablePropertyReference0Impl(this) { // from class: androidx.compose.ui.platform.AndroidComposeView$focusOwner$6
            @Override // kotlin.jvm.internal.MutablePropertyReference0Impl, kotlin.jvm.internal.MutablePropertyReference0
            public Object get() {
                return ((AndroidComposeView) this.receiver).getLayoutDirection();
            }

            @Override // kotlin.jvm.internal.MutablePropertyReference0Impl, kotlin.jvm.internal.MutablePropertyReference0
            public void set(Object obj) {
                ((AndroidComposeView) this.receiver).setLayoutDirection((LayoutDirection) obj);
            }
        });
        DragAndDropModifierOnDragListener dragAndDropModifierOnDragListener = new DragAndDropModifierOnDragListener(new AndroidComposeView$dragAndDropModifierOnDragListener$1(this));
        this.dragAndDropModifierOnDragListener = dragAndDropModifierOnDragListener;
        this.coroutineContext = coroutineContext;
        this.dragAndDropManager = dragAndDropModifierOnDragListener;
        this._windowInfo = new w2();
        androidx.compose.ui.f.a aVar2 = androidx.compose.ui.f.f4178a;
        androidx.compose.ui.f fVarA = androidx.compose.ui.input.key.a.a(aVar2, new Function1<d0.b, Boolean>() { // from class: androidx.compose.ui.platform.AndroidComposeView$keyInputModifier$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                return m155invokeZmokQxo(((d0.b) obj).f());
            }

            /* JADX INFO: renamed from: invoke-ZmokQxo, reason: not valid java name */
            public final Boolean m155invokeZmokQxo(KeyEvent keyEvent) {
                final androidx.compose.ui.focus.b bVarM148getFocusDirectionP8AzH3I = this.this$0.m148getFocusDirectionP8AzH3I(keyEvent);
                if (bVarM148getFocusDirectionP8AzH3I == null || !d0.c.e(d0.d.b(keyEvent), d0.c.f61122a.a())) {
                    return Boolean.FALSE;
                }
                y.i iVarY = this.this$0.y();
                Boolean boolE = this.this$0.getFocusOwner().e(bVarM148getFocusDirectionP8AzH3I.o(), iVarY, new Function1<FocusTargetNode, Boolean>() { // from class: androidx.compose.ui.platform.AndroidComposeView$keyInputModifier$1$focusWasMovedOrCancelled$1
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final Boolean invoke(FocusTargetNode focusTargetNode) {
                        Boolean boolK = FocusTransactionsKt.k(focusTargetNode, bVarM148getFocusDirectionP8AzH3I.o());
                        return Boolean.valueOf(boolK != null ? boolK.booleanValue() : true);
                    }
                });
                if (boolE != null ? boolE.booleanValue() : true) {
                    return Boolean.TRUE;
                }
                if (!androidx.compose.ui.focus.j.a(bVarM148getFocusDirectionP8AzH3I.o())) {
                    return Boolean.FALSE;
                }
                Integer numC = androidx.compose.ui.focus.f.c(bVarM148getFocusDirectionP8AzH3I.o());
                if (numC == null) {
                    throw new IllegalStateException("Invalid focus direction");
                }
                int iIntValue = numC.intValue();
                Rect rectB = iVarY != null ? u4.b(iVarY) : null;
                if (rectB == null) {
                    throw new IllegalStateException("Invalid rect");
                }
                View viewK = this.this$0.k(iIntValue);
                if (Intrinsics.c(viewK, this.this$0)) {
                    viewK = null;
                }
                if ((viewK == null || !androidx.compose.ui.focus.f.b(viewK, Integer.valueOf(iIntValue), rectB)) && this.this$0.getFocusOwner().j(false, true, false, bVarM148getFocusDirectionP8AzH3I.o())) {
                    Boolean boolE2 = this.this$0.getFocusOwner().e(bVarM148getFocusDirectionP8AzH3I.o(), null, new Function1<FocusTargetNode, Boolean>() { // from class: androidx.compose.ui.platform.AndroidComposeView$keyInputModifier$1.1
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public final Boolean invoke(FocusTargetNode focusTargetNode) {
                            Boolean boolK = FocusTransactionsKt.k(focusTargetNode, bVarM148getFocusDirectionP8AzH3I.o());
                            return Boolean.valueOf(boolK != null ? boolK.booleanValue() : true);
                        }
                    });
                    return Boolean.valueOf(boolE2 != null ? boolE2.booleanValue() : true);
                }
                return Boolean.TRUE;
            }
        });
        this.keyInputModifier = fVarA;
        androidx.compose.ui.f fVarA2 = androidx.compose.ui.input.rotary.a.a(aVar2, new Function1<f0.b, Boolean>() { // from class: androidx.compose.ui.platform.AndroidComposeView$rotaryInputModifier$1
            @Override // kotlin.jvm.functions.Function1
            public final Boolean invoke(f0.b bVar) {
                return Boolean.FALSE;
            }
        });
        this.rotaryInputModifier = fVarA2;
        this.canvasHolder = new androidx.compose.ui.graphics.n1();
        LayoutNode layoutNode = new LayoutNode(false, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
        layoutNode.g(RootMeasurePolicy.f5150b);
        layoutNode.b(getDensity());
        layoutNode.h(aVar2.e(emptySemanticsElement).e(fVarA2).e(fVarA).e(getFocusOwner().h()).e(dragAndDropModifierOnDragListener.d()));
        this.root = layoutNode;
        this.rootForTest = this;
        this.semanticsOwner = new androidx.compose.ui.semantics.m(getRoot(), dVar);
        AndroidComposeViewAccessibilityDelegateCompat androidComposeViewAccessibilityDelegateCompat = new AndroidComposeViewAccessibilityDelegateCompat(this);
        this.composeAccessibilityDelegate = androidComposeViewAccessibilityDelegateCompat;
        this.contentCaptureManager = new AndroidContentCaptureManager(this, new AndroidComposeView$contentCaptureManager$1(this));
        this.accessibilityManager = new i(context);
        this.graphicsContext = androidx.compose.ui.graphics.m0.a(this);
        this.autofillTree = new x.w();
        this.dirtyLayers = new ArrayList();
        this.motionEventAdapter = new androidx.compose.ui.input.pointer.h();
        this.pointerInputEventProcessor = new androidx.compose.ui.input.pointer.a0(getRoot());
        this.configurationChangeObserver = new Function1<Configuration, Unit>() { // from class: androidx.compose.ui.platform.AndroidComposeView$configurationChangeObserver$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                invoke((Configuration) obj);
                return Unit.f67061a;
            }

            public final void invoke(Configuration configuration) {
            }
        };
        this._autofill = f() ? new x.d(this, getAutofillTree()) : null;
        this.clipboardManager = new j(context);
        this.snapshotObserver = new OwnerSnapshotObserver(new AndroidComposeView$snapshotObserver$1(this));
        this.measureAndLayoutDelegate = new androidx.compose.ui.node.k0(getRoot());
        this.viewConfiguration = new l0(ViewConfiguration.get(context));
        this.globalPosition = o0.q.a(Integer.MAX_VALUE, Integer.MAX_VALUE);
        this.tmpPositionArray = new int[]{0, 0};
        float[] fArrC = i4.c(null, 1, null);
        this.tmpMatrix = fArrC;
        this.viewToWindowMatrix = i4.c(null, 1, null);
        this.windowToViewMatrix = i4.c(null, 1, null);
        this.lastMatrixRecalculationAnimationTime = -1L;
        this.windowPosition = aVar.a();
        this.isRenderNodeCompatible = true;
        this._viewTreeOwners = androidx.compose.runtime.u2.c(null, null, 2, null);
        this.viewTreeOwners = androidx.compose.runtime.r2.c(new Function0<b>() { // from class: androidx.compose.ui.platform.AndroidComposeView$viewTreeOwners$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final AndroidComposeView.b invoke() {
                return this.this$0.get_viewTreeOwners();
            }
        });
        this.globalLayoutListener = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: androidx.compose.ui.platform.m
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public final void onGlobalLayout() {
                AndroidComposeView.n(this.f5842a);
            }
        };
        this.scrollChangedListener = new ViewTreeObserver.OnScrollChangedListener() { // from class: androidx.compose.ui.platform.n
            @Override // android.view.ViewTreeObserver.OnScrollChangedListener
            public final void onScrollChanged() {
                AndroidComposeView.H(this.f5844a);
            }
        };
        this.touchModeChangeListener = new ViewTreeObserver.OnTouchModeChangeListener() { // from class: androidx.compose.ui.platform.o
            @Override // android.view.ViewTreeObserver.OnTouchModeChangeListener
            public final void onTouchModeChanged(boolean z10) {
                AndroidComposeView.N(this.f5847a, z10);
            }
        };
        TextInputServiceAndroid textInputServiceAndroid = new TextInputServiceAndroid(getView(), this);
        this.legacyTextInputServiceAndroid = textInputServiceAndroid;
        this.textInputService = new androidx.compose.ui.text.input.e0((androidx.compose.ui.text.input.y) AndroidComposeView_androidKt.h().invoke(textInputServiceAndroid));
        this.textInputSessionMutex = SessionMutex.a();
        this.softwareKeyboardController = new s0(getTextInputService());
        this.fontLoader = new h0(context);
        this.fontFamilyResolver = androidx.compose.runtime.r2.e(androidx.compose.ui.text.font.k.a(context), androidx.compose.runtime.r2.h());
        this.currentFontWeightAdjustment = m(context.getResources().getConfiguration());
        LayoutDirection layoutDirectionE = androidx.compose.ui.focus.f.e(context.getResources().getConfiguration().getLayoutDirection());
        this.layoutDirection = androidx.compose.runtime.u2.c(layoutDirectionE == null ? LayoutDirection.Ltr : layoutDirectionE, null, 2, null);
        this.hapticFeedBack = new b0.b(this);
        this._inputModeManager = new c0.c(isInTouchMode() ? c0.a.f16967b.b() : c0.a.f16967b.a(), new Function1<c0.a, Boolean>() { // from class: androidx.compose.ui.platform.AndroidComposeView$_inputModeManager$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                return m150invokeiuPiT84(((c0.a) obj).i());
            }

            /* JADX INFO: renamed from: invoke-iuPiT84, reason: not valid java name */
            public final Boolean m150invokeiuPiT84(int i11) {
                boolean zRequestFocusFromTouch;
                c0.a.C0156a c0156a = c0.a.f16967b;
                if (c0.a.f(i11, c0156a.b())) {
                    zRequestFocusFromTouch = this.this$0.isInTouchMode();
                } else if (c0.a.f(i11, c0156a.a())) {
                    zRequestFocusFromTouch = this.this$0.isInTouchMode() ? this.this$0.requestFocusFromTouch() : true;
                } else {
                    zRequestFocusFromTouch = false;
                }
                return Boolean.valueOf(zRequestFocusFromTouch);
            }
        }, objArr2 == true ? 1 : 0);
        this.modifierLocalManager = new ModifierLocalManager(this);
        this.textToolbar = new AndroidTextToolbar(this);
        this.layerCache = new u2();
        this.endApplyChangesListeners = new androidx.compose.runtime.collection.b(new Function0[16], 0);
        this.resendMotionEventRunnable = new Runnable() { // from class: androidx.compose.ui.platform.AndroidComposeView$resendMotionEventRunnable$1
            @Override // java.lang.Runnable
            public void run() {
                this.this$0.removeCallbacks(this);
                MotionEvent motionEvent = this.this$0.previousMotionEvent;
                if (motionEvent != null) {
                    boolean z10 = motionEvent.getToolType(0) == 3;
                    int actionMasked = motionEvent.getActionMasked();
                    if (z10) {
                        if (actionMasked == 10 || actionMasked == 1) {
                            return;
                        }
                    } else if (actionMasked == 1) {
                        return;
                    }
                    int i11 = 7;
                    if (actionMasked != 7 && actionMasked != 9) {
                        i11 = 2;
                    }
                    AndroidComposeView androidComposeView = this.this$0;
                    androidComposeView.K(motionEvent, i11, androidComposeView.relayoutTime, false);
                }
            }
        };
        this.sendHoverExitEvent = new Runnable() { // from class: androidx.compose.ui.platform.p
            @Override // java.lang.Runnable
            public final void run() {
                AndroidComposeView.I(this.f5848a);
            }
        };
        this.resendMotionEventOnLayout = new Function0<Unit>() { // from class: androidx.compose.ui.platform.AndroidComposeView$resendMotionEventOnLayout$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Object invoke() {
                m157invoke();
                return Unit.f67061a;
            }

            /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
            public final void m157invoke() {
                MotionEvent motionEvent = this.this$0.previousMotionEvent;
                if (motionEvent != null) {
                    int actionMasked = motionEvent.getActionMasked();
                    if (actionMasked == 7 || actionMasked == 9) {
                        this.this$0.relayoutTime = SystemClock.uptimeMillis();
                        AndroidComposeView androidComposeView = this.this$0;
                        androidComposeView.post(androidComposeView.resendMotionEventRunnable);
                    }
                }
            }
        };
        int i11 = Build.VERSION.SDK_INT;
        this.matrixToWindow = i11 < 29 ? new n0(fArrC, objArr == true ? 1 : 0) : new p0();
        addOnAttachStateChangeListener(this.contentCaptureManager);
        setWillNotDraw(false);
        setFocusable(true);
        if (i11 >= 26) {
            g0.f5785a.a(this, 1, false);
        }
        setFocusableInTouchMode(true);
        setClipChildren(false);
        ViewCompat.setAccessibilityDelegate(this, androidComposeViewAccessibilityDelegateCompat);
        Function1 function1A = t2.f5859f1.a();
        if (function1A != null) {
            function1A.invoke(this);
        }
        setOnDragListener(dragAndDropModifierOnDragListener);
        getRoot().r(this);
        if (i11 >= 29) {
            x.f5876a.a(this);
        }
        this.scrollCapture = i11 >= 31 ? new ScrollCapture() : null;
        this.pointerIconService = new c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean A(androidx.compose.ui.focus.b focusDirection, y.i previouslyFocusedRect) {
        Integer numC;
        if (isFocused() || hasFocus()) {
            return true;
        }
        return super.requestFocus((focusDirection == null || (numC = androidx.compose.ui.focus.f.c(focusDirection.o())) == null) ? 130 : numC.intValue(), previouslyFocusedRect != null ? u4.b(previouslyFocusedRect) : null);
    }

    private final long B(int a11, int b11) {
        return ULong.b(ULong.b(b11) | ULong.b(ULong.b(a11) << 32));
    }

    private final void C() {
        if (this.forceUseMatrixCache) {
            return;
        }
        long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        if (jCurrentAnimationTimeMillis != this.lastMatrixRecalculationAnimationTime) {
            this.lastMatrixRecalculationAnimationTime = jCurrentAnimationTimeMillis;
            E();
            ViewParent parent = getParent();
            View view = this;
            while (parent instanceof ViewGroup) {
                view = (View) parent;
                parent = ((ViewGroup) view).getParent();
            }
            view.getLocationOnScreen(this.tmpPositionArray);
            int[] iArr = this.tmpPositionArray;
            float f11 = iArr[0];
            float f12 = iArr[1];
            view.getLocationInWindow(iArr);
            int[] iArr2 = this.tmpPositionArray;
            this.windowPosition = y.h.a(f11 - iArr2[0], f12 - iArr2[1]);
        }
    }

    private final void D(MotionEvent motionEvent) {
        this.lastMatrixRecalculationAnimationTime = AnimationUtils.currentAnimationTimeMillis();
        E();
        long jF = i4.f(this.viewToWindowMatrix, y.h.a(motionEvent.getX(), motionEvent.getY()));
        this.windowPosition = y.h.a(motionEvent.getRawX() - y.g.m(jF), motionEvent.getRawY() - y.g.n(jF));
    }

    private final void E() {
        this.matrixToWindow.a(this, this.viewToWindowMatrix);
        b1.a(this.viewToWindowMatrix, this.windowToViewMatrix);
    }

    private final void F(LayoutNode nodeToRemeasure) {
        if (isLayoutRequested() || !isAttachedToWindow()) {
            return;
        }
        if (nodeToRemeasure != null) {
            while (nodeToRemeasure != null && nodeToRemeasure.a0() == LayoutNode.UsageByParent.InMeasureBlock && g(nodeToRemeasure)) {
                nodeToRemeasure = nodeToRemeasure.h0();
            }
            if (nodeToRemeasure == getRoot()) {
                requestLayout();
                return;
            }
        }
        if (getWidth() == 0 || getHeight() == 0) {
            requestLayout();
        } else {
            invalidate();
        }
    }

    static /* synthetic */ void G(AndroidComposeView androidComposeView, LayoutNode layoutNode, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            layoutNode = null;
        }
        androidComposeView.F(layoutNode);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void H(AndroidComposeView androidComposeView) {
        androidComposeView.O();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void I(AndroidComposeView androidComposeView) {
        androidComposeView.hoverExitReceived = false;
        MotionEvent motionEvent = androidComposeView.previousMotionEvent;
        Intrinsics.e(motionEvent);
        if (motionEvent.getActionMasked() != 10) {
            throw new IllegalStateException("The ACTION_HOVER_EXIT event was not cleared.");
        }
        androidComposeView.J(motionEvent);
    }

    private final int J(MotionEvent motionEvent) {
        Object obj;
        if (this.keyboardModifiersRequireUpdate) {
            this.keyboardModifiersRequireUpdate = false;
            this._windowInfo.a(androidx.compose.ui.input.pointer.g0.b(motionEvent.getMetaState()));
        }
        androidx.compose.ui.input.pointer.y yVarC = this.motionEventAdapter.c(motionEvent, this);
        if (yVarC == null) {
            this.pointerInputEventProcessor.c();
            return androidx.compose.ui.input.pointer.b0.a(false, false);
        }
        List listB = yVarC.b();
        int size = listB.size() - 1;
        if (size < 0) {
            obj = null;
            break;
        }
        while (true) {
            int i11 = size - 1;
            obj = listB.get(size);
            if (((androidx.compose.ui.input.pointer.z) obj).b()) {
                break;
            }
            if (i11 < 0) {
                obj = null;
                break;
            }
            size = i11;
        }
        androidx.compose.ui.input.pointer.z zVar = (androidx.compose.ui.input.pointer.z) obj;
        if (zVar != null) {
            this.lastDownPointerPosition = zVar.f();
        }
        int iB = this.pointerInputEventProcessor.b(yVarC, this, v(motionEvent));
        int actionMasked = motionEvent.getActionMasked();
        if ((actionMasked != 0 && actionMasked != 5) || androidx.compose.ui.input.pointer.j0.c(iB)) {
            return iB;
        }
        this.motionEventAdapter.e(motionEvent.getPointerId(motionEvent.getActionIndex()));
        return iB;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void K(MotionEvent motionEvent, int action, long eventTime, boolean forceHover) {
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = -1;
        if (actionMasked != 1) {
            if (actionMasked == 6) {
                actionIndex = motionEvent.getActionIndex();
            }
        } else if (action != 9 && action != 10) {
            actionIndex = 0;
        }
        int pointerCount = motionEvent.getPointerCount() - (actionIndex >= 0 ? 1 : 0);
        if (pointerCount == 0) {
            return;
        }
        MotionEvent.PointerProperties[] pointerPropertiesArr = new MotionEvent.PointerProperties[pointerCount];
        for (int i11 = 0; i11 < pointerCount; i11++) {
            pointerPropertiesArr[i11] = new MotionEvent.PointerProperties();
        }
        MotionEvent.PointerCoords[] pointerCoordsArr = new MotionEvent.PointerCoords[pointerCount];
        for (int i12 = 0; i12 < pointerCount; i12++) {
            pointerCoordsArr[i12] = new MotionEvent.PointerCoords();
        }
        int i13 = 0;
        while (i13 < pointerCount) {
            int i14 = ((actionIndex < 0 || i13 < actionIndex) ? 0 : 1) + i13;
            motionEvent.getPointerProperties(i14, pointerPropertiesArr[i13]);
            MotionEvent.PointerCoords pointerCoords = pointerCoordsArr[i13];
            motionEvent.getPointerCoords(i14, pointerCoords);
            long jMo116localToScreenMKHz9U = mo116localToScreenMKHz9U(y.h.a(pointerCoords.x, pointerCoords.y));
            pointerCoords.x = y.g.m(jMo116localToScreenMKHz9U);
            pointerCoords.y = y.g.n(jMo116localToScreenMKHz9U);
            i13++;
        }
        MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent.getDownTime() == motionEvent.getEventTime() ? eventTime : motionEvent.getDownTime(), eventTime, action, pointerCount, pointerPropertiesArr, pointerCoordsArr, motionEvent.getMetaState(), forceHover ? 0 : motionEvent.getButtonState(), motionEvent.getXPrecision(), motionEvent.getYPrecision(), motionEvent.getDeviceId(), motionEvent.getEdgeFlags(), motionEvent.getSource(), motionEvent.getFlags());
        androidx.compose.ui.input.pointer.y yVarC = this.motionEventAdapter.c(motionEventObtain, this);
        Intrinsics.e(yVarC);
        this.pointerInputEventProcessor.b(yVarC, this, true);
        motionEventObtain.recycle();
    }

    static /* synthetic */ void L(AndroidComposeView androidComposeView, MotionEvent motionEvent, int i11, long j11, boolean z10, int i12, Object obj) {
        if ((i12 & 8) != 0) {
            z10 = true;
        }
        androidComposeView.K(motionEvent, i11, j11, z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean M(androidx.compose.ui.draganddrop.g transferData, long decorationSize, Function1 drawDragDecoration) {
        Resources resources = getContext().getResources();
        androidx.compose.ui.draganddrop.a aVar = new androidx.compose.ui.draganddrop.a(o0.g.a(resources.getDisplayMetrics().density, resources.getConfiguration().fontScale), decorationSize, drawDragDecoration, null);
        if (Build.VERSION.SDK_INT >= 24) {
            return y.f5880a.a(this, transferData, aVar);
        }
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void N(AndroidComposeView androidComposeView, boolean z10) {
        androidComposeView._inputModeManager.b(z10 ? c0.a.f16967b.b() : c0.a.f16967b.a());
    }

    private final void O() {
        getLocationOnScreen(this.tmpPositionArray);
        long j11 = this.globalPosition;
        int iH = o0.p.h(j11);
        int i11 = o0.p.i(j11);
        int[] iArr = this.tmpPositionArray;
        boolean z10 = false;
        int i12 = iArr[0];
        if (iH != i12 || i11 != iArr[1]) {
            this.globalPosition = o0.q.a(i12, iArr[1]);
            if (iH != Integer.MAX_VALUE && i11 != Integer.MAX_VALUE) {
                getRoot().P().I().l1();
                z10 = true;
            }
        }
        this.measureAndLayoutDelegate.c(z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void e(int virtualViewId, AccessibilityNodeInfo info, String extraDataKey) {
        int iE;
        if (Intrinsics.c(extraDataKey, this.composeAccessibilityDelegate.P())) {
            int iE2 = this.composeAccessibilityDelegate.R().e(virtualViewId, -1);
            if (iE2 != -1) {
                info.getExtras().putInt(extraDataKey, iE2);
                return;
            }
            return;
        }
        if (!Intrinsics.c(extraDataKey, this.composeAccessibilityDelegate.O()) || (iE = this.composeAccessibilityDelegate.Q().e(virtualViewId, -1)) == -1) {
            return;
        }
        info.getExtras().putInt(extraDataKey, iE);
    }

    private final boolean f() {
        return Build.VERSION.SDK_INT >= 26;
    }

    private final boolean g(LayoutNode layoutNode) {
        LayoutNode layoutNodeH0;
        return this.wasMeasuredWithMultipleConstraints || !((layoutNodeH0 = layoutNode.h0()) == null || layoutNodeH0.K());
    }

    @Deprecated
    public static /* synthetic */ void getFontLoader$annotations() {
    }

    public static /* synthetic */ void getLastMatrixRecalculationAnimationTime$ui_release$annotations() {
    }

    public static /* synthetic */ void getShowLayoutBounds$annotations() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final b get_viewTreeOwners() {
        return (b) this._viewTreeOwners.getValue();
    }

    private final void h(ViewGroup viewGroup) {
        int childCount = viewGroup.getChildCount();
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = viewGroup.getChildAt(i11);
            if (childAt instanceof AndroidComposeView) {
                ((AndroidComposeView) childAt).onEndApplyChanges();
            } else if (childAt instanceof ViewGroup) {
                h((ViewGroup) childAt);
            }
        }
    }

    private final long i(int measureSpec) {
        int mode = View.MeasureSpec.getMode(measureSpec);
        int size = View.MeasureSpec.getSize(measureSpec);
        if (mode == Integer.MIN_VALUE) {
            return B(0, size);
        }
        if (mode == 0) {
            return B(0, Integer.MAX_VALUE);
        }
        if (mode == 1073741824) {
            return B(size, size);
        }
        throw new IllegalStateException();
    }

    private final void j() {
        if (this.isPendingInteropViewLayoutChangeDispatch) {
            getViewTreeObserver().dispatchOnGlobalLayout();
            this.isPendingInteropViewLayoutChangeDispatch = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final View k(int direction) {
        View viewFindNextFocus = this;
        while (viewFindNextFocus != null) {
            FocusFinder focusFinder = FocusFinder.getInstance();
            View rootView = getRootView();
            Intrinsics.f(rootView, "null cannot be cast to non-null type android.view.ViewGroup");
            viewFindNextFocus = focusFinder.findNextFocus((ViewGroup) rootView, viewFindNextFocus, direction);
            if (viewFindNextFocus != null && !AndroidComposeView_androidKt.e(this, viewFindNextFocus)) {
                return viewFindNextFocus;
            }
        }
        return null;
    }

    private final View l(int accessibilityId, View currentView) throws NoSuchMethodException {
        if (Build.VERSION.SDK_INT < 29) {
            Method declaredMethod = View.class.getDeclaredMethod("getAccessibilityViewId", null);
            declaredMethod.setAccessible(true);
            if (Intrinsics.c(declaredMethod.invoke(currentView, null), Integer.valueOf(accessibilityId))) {
                return currentView;
            }
            if (currentView instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) currentView;
                int childCount = viewGroup.getChildCount();
                for (int i11 = 0; i11 < childCount; i11++) {
                    View viewL = l(accessibilityId, viewGroup.getChildAt(i11));
                    if (viewL != null) {
                        return viewL;
                    }
                }
            }
        }
        return null;
    }

    private final int m(Configuration configuration) {
        if (Build.VERSION.SDK_INT >= 31) {
            return configuration.fontWeightAdjustment;
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n(AndroidComposeView androidComposeView) {
        androidComposeView.O();
    }

    private final int o(MotionEvent motionEvent) {
        removeCallbacks(this.resendMotionEventRunnable);
        try {
            D(motionEvent);
            this.forceUseMatrixCache = true;
            measureAndLayout(false);
            Trace.beginSection("AndroidOwner:onTouch");
            try {
                int actionMasked = motionEvent.getActionMasked();
                MotionEvent motionEvent2 = this.previousMotionEvent;
                boolean z10 = motionEvent2 != null && motionEvent2.getToolType(0) == 3;
                if (motionEvent2 != null && q(motionEvent, motionEvent2)) {
                    if (u(motionEvent2)) {
                        this.pointerInputEventProcessor.c();
                    } else if (motionEvent2.getActionMasked() != 10 && z10) {
                        L(this, motionEvent2, 10, motionEvent2.getEventTime(), false, 8, null);
                    }
                }
                boolean z11 = motionEvent.getToolType(0) == 3;
                if (!z10 && z11 && actionMasked != 3 && actionMasked != 9 && v(motionEvent)) {
                    L(this, motionEvent, 9, motionEvent.getEventTime(), false, 8, null);
                }
                if (motionEvent2 != null) {
                    motionEvent2.recycle();
                }
                MotionEvent motionEvent3 = this.previousMotionEvent;
                if (motionEvent3 != null && motionEvent3.getAction() == 10) {
                    MotionEvent motionEvent4 = this.previousMotionEvent;
                    int pointerId = motionEvent4 != null ? motionEvent4.getPointerId(0) : -1;
                    if (motionEvent.getAction() == 9 && motionEvent.getHistorySize() == 0) {
                        if (pointerId >= 0) {
                            this.motionEventAdapter.e(pointerId);
                        }
                    } else if (motionEvent.getAction() == 0 && motionEvent.getHistorySize() == 0) {
                        MotionEvent motionEvent5 = this.previousMotionEvent;
                        float x10 = motionEvent5 != null ? motionEvent5.getX() : Float.NaN;
                        MotionEvent motionEvent6 = this.previousMotionEvent;
                        boolean z12 = (x10 == motionEvent.getX() && (motionEvent6 != null ? motionEvent6.getY() : Float.NaN) == motionEvent.getY()) ? false : true;
                        MotionEvent motionEvent7 = this.previousMotionEvent;
                        boolean z13 = (motionEvent7 != null ? motionEvent7.getEventTime() : -1L) != motionEvent.getEventTime();
                        if (z12 || z13) {
                            if (pointerId >= 0) {
                                this.motionEventAdapter.e(pointerId);
                            }
                            this.pointerInputEventProcessor.a();
                        }
                    }
                }
                this.previousMotionEvent = MotionEvent.obtainNoHistory(motionEvent);
                int iJ = J(motionEvent);
                Trace.endSection();
                this.forceUseMatrixCache = false;
                return iJ;
            } catch (Throwable th2) {
                Trace.endSection();
                throw th2;
            }
        } catch (Throwable th3) {
            this.forceUseMatrixCache = false;
            throw th3;
        }
    }

    private final boolean p(MotionEvent event) {
        ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
        float f11 = -event.getAxisValue(26);
        return getFocusOwner().f(new f0.b(f11 * ViewConfigurationCompat.getScaledVerticalScrollFactor(viewConfiguration, getContext()), f11 * ViewConfigurationCompat.getScaledHorizontalScrollFactor(viewConfiguration, getContext()), event.getEventTime(), event.getDeviceId()));
    }

    private final boolean q(MotionEvent event, MotionEvent lastEvent) {
        return (lastEvent.getSource() == event.getSource() && lastEvent.getToolType(0) == event.getToolType(0)) ? false : true;
    }

    private final void r(LayoutNode node) {
        node.x0();
        androidx.compose.runtime.collection.b bVarP0 = node.p0();
        int iN = bVarP0.n();
        if (iN > 0) {
            Object[] objArrM = bVarP0.m();
            int i11 = 0;
            do {
                r((LayoutNode) objArrM[i11]);
                i11++;
            } while (i11 < iN);
        }
    }

    private final void s(LayoutNode node) {
        int i11 = 0;
        androidx.compose.ui.node.k0.H(this.measureAndLayoutDelegate, node, false, 2, null);
        androidx.compose.runtime.collection.b bVarP0 = node.p0();
        int iN = bVarP0.n();
        if (iN > 0) {
            Object[] objArrM = bVarP0.m();
            do {
                s((LayoutNode) objArrM[i11]);
                i11++;
            } while (i11 < iN);
        }
    }

    private void setDensity(o0.e eVar) {
        this.density.setValue(eVar);
    }

    private void setFontFamilyResolver(androidx.compose.ui.text.font.h.b bVar) {
        this.fontFamilyResolver.setValue(bVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setLayoutDirection(LayoutDirection layoutDirection) {
        this.layoutDirection.setValue(layoutDirection);
    }

    private final void set_viewTreeOwners(b bVar) {
        this._viewTreeOwners.setValue(bVar);
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0044  */
    /* JADX WARN: Code duplicated, block: B:37:0x007f  */
    private final boolean t(MotionEvent event) {
        boolean z10;
        float x10 = event.getX();
        if (Float.isInfinite(x10) || Float.isNaN(x10)) {
            z10 = true;
        } else {
            float y10 = event.getY();
            if (Float.isInfinite(y10) || Float.isNaN(y10)) {
                z10 = true;
            } else {
                float rawX = event.getRawX();
                if (Float.isInfinite(rawX) || Float.isNaN(rawX)) {
                    z10 = true;
                } else {
                    float rawY = event.getRawY();
                    if (Float.isInfinite(rawY) || Float.isNaN(rawY)) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                }
            }
        }
        if (!z10) {
            int pointerCount = event.getPointerCount();
            for (int i11 = 1; i11 < pointerCount; i11++) {
                float x11 = event.getX(i11);
                if (Float.isInfinite(x11) || Float.isNaN(x11)) {
                    z10 = true;
                } else {
                    float y11 = event.getY(i11);
                    if (Float.isInfinite(y11) || Float.isNaN(y11) || (Build.VERSION.SDK_INT >= 29 && !f1.f5780a.a(event, i11))) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                }
                if (z10) {
                    break;
                }
            }
        }
        return z10;
    }

    private final boolean u(MotionEvent event) {
        int actionMasked;
        return event.getButtonState() != 0 || (actionMasked = event.getActionMasked()) == 0 || actionMasked == 2 || actionMasked == 6;
    }

    private final boolean v(MotionEvent motionEvent) {
        float x10 = motionEvent.getX();
        float y10 = motionEvent.getY();
        return 0.0f <= x10 && x10 <= ((float) getWidth()) && 0.0f <= y10 && y10 <= ((float) getHeight());
    }

    private final boolean w(MotionEvent event) {
        MotionEvent motionEvent;
        return (event.getPointerCount() == 1 && (motionEvent = this.previousMotionEvent) != null && motionEvent.getPointerCount() == event.getPointerCount() && event.getRawX() == motionEvent.getRawX() && event.getRawY() == motionEvent.getRawY()) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void x() {
        if (isFocused() || hasFocus()) {
            super.clearFocus();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final y.i y() {
        if (isFocused()) {
            return getFocusOwner().m();
        }
        View viewFindFocus = findFocus();
        if (viewFindFocus != null) {
            return androidx.compose.ui.focus.f.a(viewFindFocus);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean z(int focusDirection) {
        androidx.compose.ui.focus.b.a aVar = androidx.compose.ui.focus.b.f4237b;
        if (androidx.compose.ui.focus.b.l(focusDirection, aVar.b()) || androidx.compose.ui.focus.b.l(focusDirection, aVar.c())) {
            return false;
        }
        Integer numC = androidx.compose.ui.focus.f.c(focusDirection);
        if (numC == null) {
            throw new IllegalStateException("Invalid focus direction");
        }
        int iIntValue = numC.intValue();
        y.i iVarY = y();
        Rect rectB = iVarY != null ? u4.b(iVarY) : null;
        FocusFinder focusFinder = FocusFinder.getInstance();
        View viewFindNextFocus = rectB == null ? focusFinder.findNextFocus(this, findFocus(), iIntValue) : focusFinder.findNextFocusFromRect(this, rectB, iIntValue);
        if (viewFindNextFocus != null) {
            return androidx.compose.ui.focus.f.b(viewFindNextFocus, Integer.valueOf(iIntValue), rectB);
        }
        return false;
    }

    public final void addAndroidView(AndroidViewHolder view, final LayoutNode layoutNode) {
        getAndroidViewsHandler$ui_release().getHolderToLayoutNode().put(view, layoutNode);
        getAndroidViewsHandler$ui_release().addView(view);
        getAndroidViewsHandler$ui_release().getLayoutNodeToHolder().put(layoutNode, view);
        view.setImportantForAccessibility(1);
        ViewCompat.setAccessibilityDelegate(view, new AccessibilityDelegateCompat() { // from class: androidx.compose.ui.platform.AndroidComposeView.addAndroidView.1
            /* JADX WARN: Code duplicated, block: B:13:0x003e  */
            @Override // androidx.core.view.AccessibilityDelegateCompat
            public void onInitializeAccessibilityNodeInfo(View view2, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
                super.onInitializeAccessibilityNodeInfo(view2, accessibilityNodeInfoCompat);
                if (AndroidComposeView.this.composeAccessibilityDelegate.c0()) {
                    accessibilityNodeInfoCompat.setVisibleToUser(false);
                }
                LayoutNode layoutNodeF = androidx.compose.ui.semantics.l.f(layoutNode, new Function1<LayoutNode, Boolean>() { // from class: androidx.compose.ui.platform.AndroidComposeView$addAndroidView$1$onInitializeAccessibilityNodeInfo$parentId$1
                    @Override // kotlin.jvm.functions.Function1
                    public final Boolean invoke(LayoutNode layoutNode2) {
                        return Boolean.valueOf(layoutNode2.e0().q(androidx.compose.ui.node.s0.a(8)));
                    }
                });
                Integer numValueOf = layoutNodeF != null ? Integer.valueOf(layoutNodeF.j0()) : null;
                if (numValueOf != null) {
                    if (numValueOf.intValue() == AndroidComposeView.this.getSemanticsOwner().a().o()) {
                        numValueOf = -1;
                    }
                } else {
                    numValueOf = -1;
                }
                accessibilityNodeInfoCompat.setParent(this, numValueOf.intValue());
                int iJ0 = layoutNode.j0();
                int iE = AndroidComposeView.this.composeAccessibilityDelegate.R().e(iJ0, -1);
                if (iE != -1) {
                    View viewG = e2.g(AndroidComposeView.this.getAndroidViewsHandler$ui_release(), iE);
                    if (viewG != null) {
                        accessibilityNodeInfoCompat.setTraversalBefore(viewG);
                    } else {
                        accessibilityNodeInfoCompat.setTraversalBefore(this, iE);
                    }
                    AndroidComposeView.this.e(iJ0, accessibilityNodeInfoCompat.unwrap(), AndroidComposeView.this.composeAccessibilityDelegate.P());
                }
                int iE2 = AndroidComposeView.this.composeAccessibilityDelegate.Q().e(iJ0, -1);
                if (iE2 != -1) {
                    View viewG2 = e2.g(AndroidComposeView.this.getAndroidViewsHandler$ui_release(), iE2);
                    if (viewG2 != null) {
                        accessibilityNodeInfoCompat.setTraversalAfter(viewG2);
                    } else {
                        accessibilityNodeInfoCompat.setTraversalAfter(this, iE2);
                    }
                    AndroidComposeView.this.e(iJ0, accessibilityNodeInfoCompat.unwrap(), AndroidComposeView.this.composeAccessibilityDelegate.O());
                }
            }
        });
    }

    @Override // android.view.ViewGroup
    public void addView(View child) {
        addView(child, -1);
    }

    @Override // android.view.ViewGroup
    public void addView(View child, int index) {
        Intrinsics.e(child);
        ViewGroup.LayoutParams layoutParams = child.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = generateDefaultLayoutParams();
        }
        addView(child, index, layoutParams);
    }

    @Override // android.view.ViewGroup
    public void addView(View child, int width, int height) {
        ViewGroup.LayoutParams layoutParamsGenerateDefaultLayoutParams = generateDefaultLayoutParams();
        layoutParamsGenerateDefaultLayoutParams.width = width;
        layoutParamsGenerateDefaultLayoutParams.height = height;
        Unit unit = Unit.f67061a;
        addView(child, -1, layoutParamsGenerateDefaultLayoutParams);
    }

    @Override // android.view.ViewGroup
    public void addView(View child, int index, ViewGroup.LayoutParams params) {
        addViewInLayout(child, index, params, true);
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void addView(View child, ViewGroup.LayoutParams params) {
        addView(child, -1, params);
    }

    @Override // android.view.View
    public void autofill(SparseArray<AutofillValue> values) {
        x.d dVar;
        if (!f() || (dVar = this._autofill) == null) {
            return;
        }
        x.f.a(dVar, values);
    }

    public final Object boundsUpdatesAccessibilityEventLoop(Continuation<? super Unit> continuation) {
        Object objZ = this.composeAccessibilityDelegate.z(continuation);
        return objZ == IntrinsicsKt.f() ? objZ : Unit.f67061a;
    }

    public final Object boundsUpdatesContentCaptureEventLoop(Continuation<? super Unit> continuation) throws Throwable {
        Object objB = this.contentCaptureManager.b(continuation);
        return objB == IntrinsicsKt.f() ? objB : Unit.f67061a;
    }

    /* JADX INFO: renamed from: calculateLocalPosition-MK-Hz9U, reason: not valid java name */
    public long m147calculateLocalPositionMKHz9U(long positionInWindow) {
        C();
        return i4.f(this.windowToViewMatrix, positionInWindow);
    }

    @Override // androidx.compose.ui.node.y0
    /* JADX INFO: renamed from: calculatePositionInWindow-MK-Hz9U */
    public long mo142calculatePositionInWindowMKHz9U(long localPosition) {
        C();
        return i4.f(this.viewToWindowMatrix, localPosition);
    }

    @Override // android.view.View
    public boolean canScrollHorizontally(int direction) {
        return this.composeAccessibilityDelegate.A(false, direction, this.lastDownPointerPosition);
    }

    @Override // android.view.View
    public boolean canScrollVertically(int direction) {
        return this.composeAccessibilityDelegate.A(true, direction, this.lastDownPointerPosition);
    }

    @Override // androidx.compose.ui.node.y0
    public androidx.compose.ui.node.w0 createLayer(Function2<? super androidx.compose.ui.graphics.m1, ? super GraphicsLayer, Unit> drawBlock, Function0<Unit> invalidateParentLayer, GraphicsLayer explicitLayer) {
        if (explicitLayer != null) {
            return new GraphicsLayerOwnerLayer(explicitLayer, null, this, drawBlock, invalidateParentLayer);
        }
        androidx.compose.ui.node.w0 w0Var = (androidx.compose.ui.node.w0) this.layerCache.b();
        if (w0Var != null) {
            w0Var.reuseLayer(drawBlock, invalidateParentLayer);
            return w0Var;
        }
        if (isHardwareAccelerated() && Build.VERSION.SDK_INT != 28) {
            return new GraphicsLayerOwnerLayer(getGraphicsContext().a(), getGraphicsContext(), this, drawBlock, invalidateParentLayer);
        }
        if (isHardwareAccelerated() && this.isRenderNodeCompatible) {
            try {
                return new RenderNodeLayer(this, drawBlock, invalidateParentLayer);
            } catch (Throwable unused) {
                this.isRenderNodeCompatible = false;
            }
        }
        if (this.viewLayersContainer == null) {
            ViewLayer.Companion bVar = ViewLayer.INSTANCE;
            if (!bVar.a()) {
                bVar.d(new View(getContext()));
            }
            DrawChildContainer drawChildContainer = bVar.b() ? new DrawChildContainer(getContext()) : new ViewLayerContainer(getContext());
            this.viewLayersContainer = drawChildContainer;
            addView(drawChildContainer);
        }
        DrawChildContainer drawChildContainer2 = this.viewLayersContainer;
        Intrinsics.e(drawChildContainer2);
        return new ViewLayer(this, drawChildContainer2, drawBlock, invalidateParentLayer);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        if (!isAttachedToWindow()) {
            r(getRoot());
        }
        androidx.compose.ui.node.x0.c(this, false, 1, null);
        androidx.compose.runtime.snapshots.j.f4004e.n();
        this.isDrawingContent = true;
        androidx.compose.ui.graphics.n1 n1Var = this.canvasHolder;
        Canvas canvasV = n1Var.a().v();
        n1Var.a().w(canvas);
        getRoot().y(n1Var.a(), null);
        n1Var.a().w(canvasV);
        if (!this.dirtyLayers.isEmpty()) {
            int size = this.dirtyLayers.size();
            for (int i11 = 0; i11 < size; i11++) {
                ((androidx.compose.ui.node.w0) this.dirtyLayers.get(i11)).updateDisplayList();
            }
        }
        if (ViewLayer.INSTANCE.b()) {
            int iSave = canvas.save();
            canvas.clipRect(0.0f, 0.0f, 0.0f, 0.0f);
            super.dispatchDraw(canvas);
            canvas.restoreToCount(iSave);
        }
        this.dirtyLayers.clear();
        this.isDrawingContent = false;
        List list = this.postponedDirtyLayers;
        if (list != null) {
            Intrinsics.e(list);
            this.dirtyLayers.addAll(list);
            list.clear();
        }
    }

    @Override // android.view.View
    public boolean dispatchGenericMotionEvent(MotionEvent motionEvent) {
        if (this.hoverExitReceived) {
            removeCallbacks(this.sendHoverExitEvent);
            if (motionEvent.getActionMasked() == 8) {
                this.hoverExitReceived = false;
            } else {
                this.sendHoverExitEvent.run();
            }
        }
        if (motionEvent.getActionMasked() != 8) {
            return super.dispatchGenericMotionEvent(motionEvent);
        }
        if (t(motionEvent) || !isAttachedToWindow()) {
            return super.dispatchGenericMotionEvent(motionEvent);
        }
        return motionEvent.isFromSource(4194304) ? p(motionEvent) : androidx.compose.ui.input.pointer.j0.c(o(motionEvent));
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchHoverEvent(MotionEvent event) {
        if (this.hoverExitReceived) {
            removeCallbacks(this.sendHoverExitEvent);
            this.sendHoverExitEvent.run();
        }
        if (t(event) || !isAttachedToWindow()) {
            return false;
        }
        this.composeAccessibilityDelegate.I(event);
        int actionMasked = event.getActionMasked();
        if (actionMasked != 7) {
            if (actionMasked == 10 && v(event)) {
                if (event.getToolType(0) == 3 && event.getButtonState() != 0) {
                    return false;
                }
                MotionEvent motionEvent = this.previousMotionEvent;
                if (motionEvent != null) {
                    motionEvent.recycle();
                }
                this.previousMotionEvent = MotionEvent.obtainNoHistory(event);
                this.hoverExitReceived = true;
                postDelayed(this.sendHoverExitEvent, 8L);
                return false;
            }
        } else if (!w(event)) {
            return false;
        }
        return androidx.compose.ui.input.pointer.j0.c(o(event));
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(final KeyEvent event) {
        if (!isFocused()) {
            return getFocusOwner().i(d0.b.b(event), new Function0<Boolean>() { // from class: androidx.compose.ui.platform.AndroidComposeView.dispatchKeyEvent.1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final Boolean invoke() {
                    return Boolean.valueOf(AndroidComposeView.super.dispatchKeyEvent(event));
                }
            });
        }
        this._windowInfo.a(androidx.compose.ui.input.pointer.g0.b(event.getMetaState()));
        return FocusOwner$CC.a(getFocusOwner(), d0.b.b(event), null, 2, null) || super.dispatchKeyEvent(event);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEventPreIme(KeyEvent event) {
        return (isFocused() && getFocusOwner().d(d0.b.b(event))) || super.dispatchKeyEventPreIme(event);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchProvideStructure(ViewStructure structure) {
        if (Build.VERSION.SDK_INT < 28) {
            v.f5867a.a(structure, getView());
        } else {
            super.dispatchProvideStructure(structure);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (this.hoverExitReceived) {
            removeCallbacks(this.sendHoverExitEvent);
            MotionEvent motionEvent2 = this.previousMotionEvent;
            Intrinsics.e(motionEvent2);
            if (motionEvent.getActionMasked() != 0 || q(motionEvent, motionEvent2)) {
                this.sendHoverExitEvent.run();
            } else {
                this.hoverExitReceived = false;
            }
        }
        if (t(motionEvent) || !isAttachedToWindow()) {
            return false;
        }
        if (motionEvent.getActionMasked() == 2 && !w(motionEvent)) {
            return false;
        }
        int iO = o(motionEvent);
        if (androidx.compose.ui.input.pointer.j0.b(iO)) {
            getParent().requestDisallowInterceptTouchEvent(true);
        }
        return androidx.compose.ui.input.pointer.j0.c(iO);
    }

    public final void drawAndroidView(AndroidViewHolder view, Canvas canvas) {
        getAndroidViewsHandler$ui_release().drawView(view, canvas);
    }

    public final View findViewByAccessibilityIdTraversal(int accessibilityId) throws IllegalAccessException, InvocationTargetException {
        View viewL = null;
        try {
            if (Build.VERSION.SDK_INT >= 29) {
                Method declaredMethod = View.class.getDeclaredMethod("findViewByAccessibilityIdTraversal", Integer.TYPE);
                declaredMethod.setAccessible(true);
                Object objInvoke = declaredMethod.invoke(this, Integer.valueOf(accessibilityId));
                if (objInvoke instanceof View) {
                    viewL = (View) objInvoke;
                }
            } else {
                viewL = l(accessibilityId, this);
            }
        } catch (NoSuchMethodException unused) {
        }
        return viewL;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public View focusSearch(View focused, int direction) {
        if (focused != null) {
            y.i iVarA = androidx.compose.ui.focus.f.a(focused);
            androidx.compose.ui.focus.b bVarD = androidx.compose.ui.focus.f.d(direction);
            if (Intrinsics.c(getFocusOwner().e(bVarD != null ? bVarD.o() : androidx.compose.ui.focus.b.f4237b.a(), iVarA, new Function1<FocusTargetNode, Boolean>() { // from class: androidx.compose.ui.platform.AndroidComposeView.focusSearch.1
                @Override // kotlin.jvm.functions.Function1
                public final Boolean invoke(FocusTargetNode focusTargetNode) {
                    return Boolean.TRUE;
                }
            }), Boolean.TRUE)) {
                return this;
            }
        }
        return super.focusSearch(focused, direction);
    }

    public void forceAccessibilityForTesting(boolean enable) {
        this.composeAccessibilityDelegate.C0(enable);
    }

    @Override // androidx.compose.ui.node.y0
    public void forceMeasureTheSubtree(LayoutNode layoutNode, boolean affectsLookahead) {
        this.measureAndLayoutDelegate.i(layoutNode, affectsLookahead);
    }

    @Override // androidx.compose.ui.node.y0
    public i getAccessibilityManager() {
        return this.accessibilityManager;
    }

    public final AndroidViewsHandler getAndroidViewsHandler$ui_release() {
        if (this._androidViewsHandler == null) {
            AndroidViewsHandler androidViewsHandler = new AndroidViewsHandler(getContext());
            this._androidViewsHandler = androidViewsHandler;
            addView(androidViewsHandler);
            requestLayout();
        }
        AndroidViewsHandler androidViewsHandler2 = this._androidViewsHandler;
        Intrinsics.e(androidViewsHandler2);
        return androidViewsHandler2;
    }

    @Override // androidx.compose.ui.node.y0
    public x.g getAutofill() {
        return this._autofill;
    }

    @Override // androidx.compose.ui.node.y0
    public x.w getAutofillTree() {
        return this.autofillTree;
    }

    @Override // androidx.compose.ui.node.y0
    public j getClipboardManager() {
        return this.clipboardManager;
    }

    public final Function1<Configuration, Unit> getConfigurationChangeObserver() {
        return this.configurationChangeObserver;
    }

    /* JADX INFO: renamed from: getContentCaptureManager$ui_release, reason: from getter */
    public final AndroidContentCaptureManager getContentCaptureManager() {
        return this.contentCaptureManager;
    }

    @Override // androidx.compose.ui.node.y0
    public CoroutineContext getCoroutineContext() {
        return this.coroutineContext;
    }

    @Override // androidx.compose.ui.node.y0
    public o0.e getDensity() {
        return (o0.e) this.density.getValue();
    }

    @Override // androidx.compose.ui.node.y0
    public androidx.compose.ui.draganddrop.c getDragAndDropManager() {
        return this.dragAndDropManager;
    }

    /* JADX INFO: renamed from: getFocusDirection-P8AzH3I, reason: not valid java name */
    public androidx.compose.ui.focus.b m148getFocusDirectionP8AzH3I(KeyEvent keyEvent) {
        long jA = d0.d.a(keyEvent);
        d0.a.C0728a c0728a = d0.a.f60970b;
        if (d0.a.p(jA, c0728a.l())) {
            return androidx.compose.ui.focus.b.i(d0.d.d(keyEvent) ? androidx.compose.ui.focus.b.f4237b.f() : androidx.compose.ui.focus.b.f4237b.e());
        }
        if (d0.a.p(jA, c0728a.e())) {
            return androidx.compose.ui.focus.b.i(androidx.compose.ui.focus.b.f4237b.g());
        }
        if (d0.a.p(jA, c0728a.d())) {
            return androidx.compose.ui.focus.b.i(androidx.compose.ui.focus.b.f4237b.d());
        }
        if (d0.a.p(jA, c0728a.f()) ? true : d0.a.p(jA, c0728a.k())) {
            return androidx.compose.ui.focus.b.i(androidx.compose.ui.focus.b.f4237b.h());
        }
        if (d0.a.p(jA, c0728a.c()) ? true : d0.a.p(jA, c0728a.j())) {
            return androidx.compose.ui.focus.b.i(androidx.compose.ui.focus.b.f4237b.a());
        }
        if (d0.a.p(jA, c0728a.b()) ? true : d0.a.p(jA, c0728a.g()) ? true : d0.a.p(jA, c0728a.i())) {
            return androidx.compose.ui.focus.b.i(androidx.compose.ui.focus.b.f4237b.b());
        }
        if (d0.a.p(jA, c0728a.a()) ? true : d0.a.p(jA, c0728a.h())) {
            return androidx.compose.ui.focus.b.i(androidx.compose.ui.focus.b.f4237b.c());
        }
        return null;
    }

    @Override // androidx.compose.ui.node.y0
    public androidx.compose.ui.focus.i getFocusOwner() {
        return this.focusOwner;
    }

    @Override // android.view.View
    public void getFocusedRect(Rect rect) {
        Unit unit;
        y.i iVarY = y();
        if (iVarY != null) {
            rect.left = Math.round(iVarY.f());
            rect.top = Math.round(iVarY.i());
            rect.right = Math.round(iVarY.g());
            rect.bottom = Math.round(iVarY.c());
            unit = Unit.f67061a;
        } else {
            unit = null;
        }
        if (unit == null) {
            super.getFocusedRect(rect);
        }
    }

    @Override // androidx.compose.ui.node.y0
    public androidx.compose.ui.text.font.h.b getFontFamilyResolver() {
        return (androidx.compose.ui.text.font.h.b) this.fontFamilyResolver.getValue();
    }

    @Override // androidx.compose.ui.node.y0
    public androidx.compose.ui.text.font.g getFontLoader() {
        return this.fontLoader;
    }

    @Override // androidx.compose.ui.node.y0
    public a4 getGraphicsContext() {
        return this.graphicsContext;
    }

    @Override // androidx.compose.ui.node.y0
    public b0.a getHapticFeedBack() {
        return this.hapticFeedBack;
    }

    public boolean getHasPendingMeasureOrLayout() {
        return this.measureAndLayoutDelegate.m();
    }

    @Override // androidx.compose.ui.node.y0
    public c0.b getInputModeManager() {
        return this._inputModeManager;
    }

    /* JADX INFO: renamed from: getLastMatrixRecalculationAnimationTime$ui_release, reason: from getter */
    public final long getLastMatrixRecalculationAnimationTime() {
        return this.lastMatrixRecalculationAnimationTime;
    }

    @Override // android.view.View, android.view.ViewParent, androidx.compose.ui.node.y0
    public LayoutDirection getLayoutDirection() {
        return (LayoutDirection) this.layoutDirection.getValue();
    }

    public long getMeasureIteration() {
        return this.measureAndLayoutDelegate.q();
    }

    @Override // androidx.compose.ui.node.y0
    public ModifierLocalManager getModifierLocalManager() {
        return this.modifierLocalManager;
    }

    @Override // androidx.compose.ui.node.y0
    public androidx.compose.ui.layout.g0.a getPlacementScope() {
        return PlaceableKt.b(this);
    }

    @Override // androidx.compose.ui.node.y0
    public androidx.compose.ui.input.pointer.t getPointerIconService() {
        return this.pointerIconService;
    }

    @Override // androidx.compose.ui.node.y0
    public LayoutNode getRoot() {
        return this.root;
    }

    public androidx.compose.ui.node.g1 getRootForTest() {
        return this.rootForTest;
    }

    public final boolean getScrollCaptureInProgress$ui_release() {
        ScrollCapture scrollCapture;
        if (Build.VERSION.SDK_INT < 31 || (scrollCapture = this.scrollCapture) == null) {
            return false;
        }
        return scrollCapture.c();
    }

    public androidx.compose.ui.semantics.m getSemanticsOwner() {
        return this.semanticsOwner;
    }

    @Override // androidx.compose.ui.node.y0
    public androidx.compose.ui.node.d0 getSharedDrawScope() {
        return this.sharedDrawScope;
    }

    @Override // androidx.compose.ui.node.y0
    public boolean getShowLayoutBounds() {
        return this.showLayoutBounds;
    }

    @Override // androidx.compose.ui.node.y0
    public OwnerSnapshotObserver getSnapshotObserver() {
        return this.snapshotObserver;
    }

    @Override // androidx.compose.ui.node.y0
    public g2 getSoftwareKeyboardController() {
        return this.softwareKeyboardController;
    }

    @Override // androidx.compose.ui.node.y0
    public androidx.compose.ui.text.input.e0 getTextInputService() {
        return this.textInputService;
    }

    @Override // androidx.compose.ui.node.y0
    public h2 getTextToolbar() {
        return this.textToolbar;
    }

    public View getView() {
        return this;
    }

    @Override // androidx.compose.ui.node.y0
    public o2 getViewConfiguration() {
        return this.viewConfiguration;
    }

    public final b getViewTreeOwners() {
        return (b) this.viewTreeOwners.getValue();
    }

    @Override // androidx.compose.ui.node.y0
    public v2 getWindowInfo() {
        return this._windowInfo;
    }

    public void invalidateDescendants() {
        r(getRoot());
    }

    public boolean isLifecycleInResumedState() {
        androidx.p009lifecycle.u uVarA;
        Lifecycle lifecycle;
        b viewTreeOwners = getViewTreeOwners();
        return ((viewTreeOwners == null || (uVarA = viewTreeOwners.a()) == null || (lifecycle = uVarA.getLifecycle()) == null) ? null : lifecycle.b()) == Lifecycle.State.RESUMED;
    }

    @Override // androidx.compose.ui.input.pointer.i0
    /* JADX INFO: renamed from: localToScreen-58bKbWc */
    public void mo115localToScreen58bKbWc(float[] localTransform) {
        C();
        i4.n(localTransform, this.viewToWindowMatrix);
        AndroidComposeView_androidKt.j(localTransform, y.g.m(this.windowPosition), y.g.n(this.windowPosition), this.tmpMatrix);
    }

    @Override // androidx.compose.ui.input.pointer.i0
    /* JADX INFO: renamed from: localToScreen-MK-Hz9U */
    public long mo116localToScreenMKHz9U(long localPosition) {
        C();
        long jF = i4.f(this.viewToWindowMatrix, localPosition);
        return y.h.a(y.g.m(jF) + y.g.m(this.windowPosition), y.g.n(jF) + y.g.n(this.windowPosition));
    }

    @Override // androidx.compose.ui.node.y0
    public void measureAndLayout(boolean sendPointerUpdate) {
        Function0 function0;
        if (this.measureAndLayoutDelegate.m() || this.measureAndLayoutDelegate.n()) {
            Trace.beginSection("AndroidOwner:measureAndLayout");
            if (sendPointerUpdate) {
                try {
                    function0 = this.resendMotionEventOnLayout;
                } finally {
                    Trace.endSection();
                }
            } else {
                function0 = null;
            }
            if (this.measureAndLayoutDelegate.r(function0)) {
                requestLayout();
            }
            androidx.compose.ui.node.k0.d(this.measureAndLayoutDelegate, false, 1, null);
            j();
            Unit unit = Unit.f67061a;
        }
    }

    @Override // androidx.compose.ui.node.y0
    /* JADX INFO: renamed from: measureAndLayout-0kLqBqw */
    public void mo143measureAndLayout0kLqBqw(LayoutNode layoutNode, long constraints) {
        Trace.beginSection("AndroidOwner:measureAndLayout");
        try {
            this.measureAndLayoutDelegate.s(layoutNode, constraints);
            if (!this.measureAndLayoutDelegate.m()) {
                androidx.compose.ui.node.k0.d(this.measureAndLayoutDelegate, false, 1, null);
                j();
            }
            Unit unit = Unit.f67061a;
        } finally {
            Trace.endSection();
        }
    }

    public void measureAndLayoutForTest() {
        androidx.compose.ui.node.x0.c(this, false, 1, null);
    }

    public final void notifyLayerIsDirty$ui_release(androidx.compose.ui.node.w0 layer, boolean isDirty) {
        if (!isDirty) {
            if (this.isDrawingContent) {
                return;
            }
            this.dirtyLayers.remove(layer);
            List list = this.postponedDirtyLayers;
            if (list != null) {
                list.remove(layer);
                return;
            }
            return;
        }
        if (!this.isDrawingContent) {
            this.dirtyLayers.add(layer);
            return;
        }
        List arrayList = this.postponedDirtyLayers;
        if (arrayList == null) {
            arrayList = new ArrayList();
            this.postponedDirtyLayers = arrayList;
        }
        arrayList.add(layer);
    }

    @Override // androidx.compose.ui.node.y0
    public void onAttach(LayoutNode node) {
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        androidx.p009lifecycle.u uVarA;
        Lifecycle lifecycle;
        androidx.p009lifecycle.u uVarA2;
        x.d dVar;
        super.onAttachedToWindow();
        this._windowInfo.b(hasWindowFocus());
        s(getRoot());
        r(getRoot());
        getSnapshotObserver().k();
        if (f() && (dVar = this._autofill) != null) {
            x.v.f77997a.a(dVar);
        }
        androidx.p009lifecycle.u uVarA3 = ViewTreeLifecycleOwner.a(this);
        androidx.p010savedstate.e eVarA = ViewTreeSavedStateRegistryOwner.a(this);
        b viewTreeOwners = getViewTreeOwners();
        Lifecycle lifecycle2 = null;
        if (viewTreeOwners == null || (uVarA3 != null && eVarA != null && (uVarA3 != viewTreeOwners.a() || eVarA != viewTreeOwners.a()))) {
            if (uVarA3 == null) {
                throw new IllegalStateException("Composed into the View which doesn't propagate ViewTreeLifecycleOwner!");
            }
            if (eVarA == null) {
                throw new IllegalStateException("Composed into the View which doesn't propagateViewTreeSavedStateRegistryOwner!");
            }
            if (viewTreeOwners != null && (uVarA = viewTreeOwners.a()) != null && (lifecycle = uVarA.getLifecycle()) != null) {
                lifecycle.d(this);
            }
            uVarA3.getLifecycle().a(this);
            b bVar = new b(uVarA3, eVarA);
            set_viewTreeOwners(bVar);
            Function1 function1 = this.onViewTreeOwnersAvailable;
            if (function1 != null) {
                function1.invoke(bVar);
            }
            this.onViewTreeOwnersAvailable = null;
        }
        this._inputModeManager.b(isInTouchMode() ? c0.a.f16967b.b() : c0.a.f16967b.a());
        b viewTreeOwners2 = getViewTreeOwners();
        if (viewTreeOwners2 != null && (uVarA2 = viewTreeOwners2.a()) != null) {
            lifecycle2 = uVarA2.getLifecycle();
        }
        if (lifecycle2 == null) {
            g0.a.c("No lifecycle owner exists");
            throw new KotlinNothingValueException();
        }
        lifecycle2.a(this);
        lifecycle2.a(this.contentCaptureManager);
        getViewTreeObserver().addOnGlobalLayoutListener(this.globalLayoutListener);
        getViewTreeObserver().addOnScrollChangedListener(this.scrollChangedListener);
        getViewTreeObserver().addOnTouchModeChangeListener(this.touchModeChangeListener);
        if (Build.VERSION.SDK_INT >= 31) {
            d0.f5765a.b(this);
        }
    }

    @Override // android.view.View
    public boolean onCheckIsTextEditor() {
        i0 i0Var = (i0) SessionMutex.c(this.textInputSessionMutex);
        return i0Var == null ? this.legacyTextInputServiceAndroid.i() : i0Var.b();
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
        setDensity(o0.a.a(getContext()));
        if (m(newConfig) != this.currentFontWeightAdjustment) {
            this.currentFontWeightAdjustment = m(newConfig);
            setFontFamilyResolver(androidx.compose.ui.text.font.k.a(getContext()));
        }
        this.configurationChangeObserver.invoke(newConfig);
    }

    @Override // androidx.p009lifecycle.f
    public /* bridge */ /* synthetic */ void onCreate(androidx.p009lifecycle.u uVar) {
        androidx.p009lifecycle.e.a(this, uVar);
    }

    @Override // android.view.View
    public InputConnection onCreateInputConnection(EditorInfo outAttrs) {
        i0 i0Var = (i0) SessionMutex.c(this.textInputSessionMutex);
        return i0Var == null ? this.legacyTextInputServiceAndroid.f(outAttrs) : i0Var.a(outAttrs);
    }

    @Override // android.view.View
    public void onCreateVirtualViewTranslationRequests(long[] virtualIds, int[] supportedFormats, Consumer<ViewTranslationRequest> requestsCollector) {
        this.contentCaptureManager.o(virtualIds, supportedFormats, requestsCollector);
    }

    @Override // androidx.p009lifecycle.f
    public /* bridge */ /* synthetic */ void onDestroy(androidx.p009lifecycle.u uVar) {
        androidx.p009lifecycle.e.b(this, uVar);
    }

    @Override // androidx.compose.ui.node.y0
    public void onDetach(LayoutNode node) {
        this.measureAndLayoutDelegate.v(node);
        requestClearInvalidObservations();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        x.d dVar;
        androidx.p009lifecycle.u uVarA;
        super.onDetachedFromWindow();
        getSnapshotObserver().l();
        b viewTreeOwners = getViewTreeOwners();
        Lifecycle lifecycle = (viewTreeOwners == null || (uVarA = viewTreeOwners.a()) == null) ? null : uVarA.getLifecycle();
        if (lifecycle == null) {
            g0.a.c("No lifecycle owner exists");
            throw new KotlinNothingValueException();
        }
        lifecycle.d(this.contentCaptureManager);
        lifecycle.d(this);
        if (f() && (dVar = this._autofill) != null) {
            x.v.f77997a.b(dVar);
        }
        getViewTreeObserver().removeOnGlobalLayoutListener(this.globalLayoutListener);
        getViewTreeObserver().removeOnScrollChangedListener(this.scrollChangedListener);
        getViewTreeObserver().removeOnTouchModeChangeListener(this.touchModeChangeListener);
        if (Build.VERSION.SDK_INT >= 31) {
            d0.f5765a.a(this);
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
    }

    @Override // androidx.compose.ui.node.y0
    public void onEndApplyChanges() {
        if (this.observationClearRequested) {
            getSnapshotObserver().b();
            this.observationClearRequested = false;
        }
        AndroidViewsHandler androidViewsHandler = this._androidViewsHandler;
        if (androidViewsHandler != null) {
            h(androidViewsHandler);
        }
        while (this.endApplyChangesListeners.q()) {
            int iN = this.endApplyChangesListeners.n();
            for (int i11 = 0; i11 < iN; i11++) {
                Function0 function0 = (Function0) this.endApplyChangesListeners.m()[i11];
                this.endApplyChangesListeners.y(i11, null);
                if (function0 != null) {
                    function0.invoke();
                }
            }
            this.endApplyChangesListeners.w(0, iN);
        }
    }

    @Override // android.view.View
    protected void onFocusChanged(boolean gainFocus, int direction, Rect previouslyFocusedRect) {
        super.onFocusChanged(gainFocus, direction, previouslyFocusedRect);
        if (gainFocus || hasFocus()) {
            return;
        }
        getFocusOwner().n();
    }

    @Override // androidx.compose.ui.node.y0
    public void onInteropViewLayoutChange(View view) {
        this.isPendingInteropViewLayoutChangeDispatch = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean changed, int l11, int t11, int r11, int b11) {
        this.measureAndLayoutDelegate.r(this.resendMotionEventOnLayout);
        this.onMeasureConstraints = null;
        O();
        if (this._androidViewsHandler != null) {
            getAndroidViewsHandler$ui_release().layout(0, 0, r11 - l11, b11 - t11);
        }
    }

    @Override // androidx.compose.ui.node.y0
    public void onLayoutChange(LayoutNode layoutNode) {
        this.composeAccessibilityDelegate.g0(layoutNode);
        this.contentCaptureManager.q(layoutNode);
    }

    @Override // android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        Trace.beginSection("AndroidOwner:onMeasure");
        try {
            if (!isAttachedToWindow()) {
                s(getRoot());
            }
            long jI = i(widthMeasureSpec);
            int iB = (int) ULong.b(jI >>> 32);
            int iB2 = (int) ULong.b(jI & 4294967295L);
            long jI2 = i(heightMeasureSpec);
            long jA = o0.b.f70596b.a(iB, iB2, (int) ULong.b(jI2 >>> 32), (int) ULong.b(4294967295L & jI2));
            o0.b bVar = this.onMeasureConstraints;
            boolean zF = false;
            if (bVar == null) {
                this.onMeasureConstraints = o0.b.a(jA);
                this.wasMeasuredWithMultipleConstraints = false;
            } else {
                if (bVar != null) {
                    zF = o0.b.f(bVar.r(), jA);
                }
                if (!zF) {
                    this.wasMeasuredWithMultipleConstraints = true;
                }
            }
            this.measureAndLayoutDelegate.I(jA);
            this.measureAndLayoutDelegate.t();
            setMeasuredDimension(getRoot().m0(), getRoot().L());
            if (this._androidViewsHandler != null) {
                getAndroidViewsHandler$ui_release().measure(View.MeasureSpec.makeMeasureSpec(getRoot().m0(), 1073741824), View.MeasureSpec.makeMeasureSpec(getRoot().L(), 1073741824));
            }
            Unit unit = Unit.f67061a;
        } finally {
            Trace.endSection();
        }
    }

    @Override // androidx.p009lifecycle.f
    public /* bridge */ /* synthetic */ void onPause(androidx.p009lifecycle.u uVar) {
        androidx.p009lifecycle.e.c(this, uVar);
    }

    @Override // android.view.View
    public void onProvideAutofillVirtualStructure(ViewStructure structure, int flags) {
        x.d dVar;
        if (!f() || structure == null || (dVar = this._autofill) == null) {
            return;
        }
        x.f.b(dVar, structure);
    }

    @Override // androidx.compose.ui.node.y0
    public void onRequestMeasure(LayoutNode layoutNode, boolean affectsLookahead, boolean forceRequest, boolean scheduleMeasureAndLayout) {
        if (affectsLookahead) {
            if (this.measureAndLayoutDelegate.D(layoutNode, forceRequest) && scheduleMeasureAndLayout) {
                F(layoutNode);
                return;
            }
            return;
        }
        if (this.measureAndLayoutDelegate.G(layoutNode, forceRequest) && scheduleMeasureAndLayout) {
            F(layoutNode);
        }
    }

    @Override // androidx.compose.ui.node.y0
    public void onRequestRelayout(LayoutNode layoutNode, boolean affectsLookahead, boolean forceRequest) {
        if (affectsLookahead) {
            if (this.measureAndLayoutDelegate.C(layoutNode, forceRequest)) {
                G(this, null, 1, null);
            }
        } else if (this.measureAndLayoutDelegate.F(layoutNode, forceRequest)) {
            G(this, null, 1, null);
        }
    }

    @Override // androidx.p009lifecycle.f
    public void onResume(androidx.p009lifecycle.u owner) {
        setShowLayoutBounds(INSTANCE.b());
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int layoutDirection) {
        if (this.superclassInitComplete) {
            LayoutDirection layoutDirectionE = androidx.compose.ui.focus.f.e(layoutDirection);
            if (layoutDirectionE == null) {
                layoutDirectionE = LayoutDirection.Ltr;
            }
            setLayoutDirection(layoutDirectionE);
        }
    }

    @Override // android.view.View
    public void onScrollCaptureSearch(Rect localVisibleRect, Point windowOffset, Consumer<ScrollCaptureTarget> targets) {
        ScrollCapture scrollCapture;
        if (Build.VERSION.SDK_INT < 31 || (scrollCapture = this.scrollCapture) == null) {
            return;
        }
        scrollCapture.d(this, getSemanticsOwner(), getCoroutineContext(), targets);
    }

    @Override // androidx.compose.ui.node.y0
    public void onSemanticsChange() {
        this.composeAccessibilityDelegate.h0();
        this.contentCaptureManager.r();
    }

    @Override // androidx.p009lifecycle.f
    public /* bridge */ /* synthetic */ void onStart(androidx.p009lifecycle.u uVar) {
        androidx.p009lifecycle.e.e(this, uVar);
    }

    @Override // androidx.p009lifecycle.f
    public /* bridge */ /* synthetic */ void onStop(androidx.p009lifecycle.u uVar) {
        androidx.p009lifecycle.e.f(this, uVar);
    }

    @Override // android.view.View
    public void onVirtualViewTranslationResponses(LongSparseArray<ViewTranslationResponse> response) {
        AndroidContentCaptureManager androidContentCaptureManager = this.contentCaptureManager;
        androidContentCaptureManager.t(androidContentCaptureManager, response);
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean hasWindowFocus) {
        boolean zB;
        this._windowInfo.b(hasWindowFocus);
        this.keyboardModifiersRequireUpdate = true;
        super.onWindowFocusChanged(hasWindowFocus);
        if (!hasWindowFocus || getShowLayoutBounds() == (zB = INSTANCE.b())) {
            return;
        }
        setShowLayoutBounds(zB);
        invalidateDescendants();
    }

    public final boolean recycle$ui_release(androidx.compose.ui.node.w0 layer) {
        if (this.viewLayersContainer != null) {
            ViewLayer.INSTANCE.b();
        }
        this.layerCache.c(layer);
        return true;
    }

    @Override // androidx.compose.ui.node.y0
    public void registerOnEndApplyChangesListener(Function0<Unit> listener) {
        if (this.endApplyChangesListeners.i(listener)) {
            return;
        }
        this.endApplyChangesListeners.b(listener);
    }

    public void registerOnLayoutCompletedListener(androidx.compose.ui.node.y0.b listener) {
        this.measureAndLayoutDelegate.x(listener);
        G(this, null, 1, null);
    }

    public final void removeAndroidView(final AndroidViewHolder view) {
        registerOnEndApplyChangesListener(new Function0<Unit>() { // from class: androidx.compose.ui.platform.AndroidComposeView.removeAndroidView.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Object invoke() {
                m156invoke();
                return Unit.f67061a;
            }

            /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
            public final void m156invoke() {
                AndroidComposeView.this.getAndroidViewsHandler$ui_release().removeViewInLayout(view);
                HashMap<LayoutNode, AndroidViewHolder> layoutNodeToHolder = AndroidComposeView.this.getAndroidViewsHandler$ui_release().getLayoutNodeToHolder();
                TypeIntrinsics.d(layoutNodeToHolder).remove(AndroidComposeView.this.getAndroidViewsHandler$ui_release().getHolderToLayoutNode().remove(view));
                view.setImportantForAccessibility(0);
            }
        });
    }

    public final void requestClearInvalidObservations() {
        this.observationClearRequested = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean requestFocus(int direction, Rect previouslyFocusedRect) {
        if (isFocused()) {
            return true;
        }
        if (getFocusOwner().k().getHasFocus()) {
            return super.requestFocus(direction, previouslyFocusedRect);
        }
        androidx.compose.ui.focus.b bVarD = androidx.compose.ui.focus.f.d(direction);
        final int iO = bVarD != null ? bVarD.o() : androidx.compose.ui.focus.b.f4237b.b();
        Boolean boolE = getFocusOwner().e(iO, previouslyFocusedRect != null ? u4.e(previouslyFocusedRect) : null, new Function1<FocusTargetNode, Boolean>() { // from class: androidx.compose.ui.platform.AndroidComposeView.requestFocus.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Boolean invoke(FocusTargetNode focusTargetNode) {
                Boolean boolK = FocusTransactionsKt.k(focusTargetNode, iO);
                return Boolean.valueOf(boolK != null ? boolK.booleanValue() : false);
            }
        });
        if (boolE != null) {
            return boolE.booleanValue();
        }
        return false;
    }

    @Override // androidx.compose.ui.node.y0
    public void requestOnPositionedCallback(LayoutNode layoutNode) {
        this.measureAndLayoutDelegate.E(layoutNode);
        G(this, null, 1, null);
    }

    @Override // androidx.compose.ui.input.pointer.i0
    /* JADX INFO: renamed from: screenToLocal-MK-Hz9U */
    public long mo117screenToLocalMKHz9U(long positionOnScreen) {
        C();
        return i4.f(this.windowToViewMatrix, y.h.a(y.g.m(positionOnScreen) - y.g.m(this.windowPosition), y.g.n(positionOnScreen) - y.g.n(this.windowPosition)));
    }

    /* JADX INFO: renamed from: sendKeyEvent-ZmokQxo, reason: not valid java name */
    public boolean m149sendKeyEventZmokQxo(KeyEvent keyEvent) {
        return getFocusOwner().d(keyEvent) || FocusOwner$CC.a(getFocusOwner(), keyEvent, null, 2, null);
    }

    public void setAccessibilityEventBatchIntervalMillis(long intervalMillis) {
        this.composeAccessibilityDelegate.G0(intervalMillis);
    }

    public final void setConfigurationChangeObserver(Function1<? super Configuration, Unit> function1) {
        this.configurationChangeObserver = function1;
    }

    public final void setContentCaptureManager$ui_release(AndroidContentCaptureManager androidContentCaptureManager) {
        this.contentCaptureManager = androidContentCaptureManager;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v10, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r4v11 */
    /* JADX WARN: Type inference failed for: r4v12 */
    /* JADX WARN: Type inference failed for: r4v13 */
    /* JADX WARN: Type inference failed for: r4v14 */
    /* JADX WARN: Type inference failed for: r4v15 */
    /* JADX WARN: Type inference failed for: r4v16 */
    /* JADX WARN: Type inference failed for: r4v4 */
    /* JADX WARN: Type inference failed for: r4v5, types: [androidx.compose.ui.f$c] */
    /* JADX WARN: Type inference failed for: r4v8 */
    /* JADX WARN: Type inference failed for: r4v9, types: [androidx.compose.ui.f$c] */
    /* JADX WARN: Type inference failed for: r6v0 */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v10 */
    /* JADX WARN: Type inference failed for: r6v11 */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v3, types: [androidx.compose.runtime.collection.b] */
    /* JADX WARN: Type inference failed for: r6v4 */
    /* JADX WARN: Type inference failed for: r6v5 */
    /* JADX WARN: Type inference failed for: r6v6, types: [androidx.compose.runtime.collection.b] */
    /* JADX WARN: Type inference failed for: r6v8 */
    /* JADX WARN: Type inference failed for: r6v9 */
    /* JADX WARN: Type inference failed for: r7v5 */
    public void setCoroutineContext(CoroutineContext coroutineContext) {
        this.coroutineContext = coroutineContext;
        androidx.compose.ui.node.f fVarK = getRoot().e0().k();
        if (fVarK instanceof androidx.compose.ui.input.pointer.n0) {
            ((androidx.compose.ui.input.pointer.n0) fVarK).j0();
        }
        int iA = androidx.compose.ui.node.s0.a(16);
        if (!fVarK.getNode().k1()) {
            g0.a.b("visitSubtree called on an unattached node");
        }
        androidx.compose.ui.f.c cVarB1 = fVarK.getNode().b1();
        LayoutNode layoutNodeM = androidx.compose.ui.node.g.m(fVarK);
        androidx.compose.ui.node.p0 p0Var = new androidx.compose.ui.node.p0();
        while (layoutNodeM != null) {
            if (cVarB1 == null) {
                cVarB1 = layoutNodeM.e0().k();
            }
            if ((cVarB1.a1() & iA) != 0) {
                while (cVarB1 != null) {
                    if ((cVarB1.f1() & iA) != 0) {
                        ?? G = cVarB1;
                        ?? bVar = 0;
                        while (G != 0) {
                            if (G instanceof androidx.compose.ui.node.e1) {
                                androidx.compose.ui.node.e1 e1Var = (androidx.compose.ui.node.e1) G;
                                if (e1Var instanceof androidx.compose.ui.input.pointer.n0) {
                                    ((androidx.compose.ui.input.pointer.n0) e1Var).j0();
                                }
                            } else if ((G.f1() & iA) != 0 && (G instanceof androidx.compose.ui.node.i)) {
                                androidx.compose.ui.f.c cVarE1 = ((androidx.compose.ui.node.i) G).E1();
                                int i11 = 0;
                                G = G;
                                bVar = bVar;
                                while (cVarE1 != null) {
                                    if ((cVarE1.f1() & iA) != 0) {
                                        i11++;
                                        if (i11 == 1) {
                                            bVar = bVar;
                                            G = cVarE1;
                                        } else {
                                            if (bVar == 0) {
                                                bVar = new androidx.compose.runtime.collection.b(new androidx.compose.ui.f.c[16], 0);
                                            }
                                            if (G != 0) {
                                                bVar.b(G);
                                                G = 0;
                                            }
                                            bVar.b(cVarE1);
                                        }
                                    }
                                    cVarE1 = cVarE1.b1();
                                    G = G;
                                    bVar = bVar;
                                }
                                if (i11 == 1) {
                                }
                            }
                            G = androidx.compose.ui.node.g.g(bVar);
                        }
                    }
                    cVarB1 = cVarB1.b1();
                }
            }
            p0Var.c(layoutNodeM.p0());
            layoutNodeM = p0Var.a() ? (LayoutNode) p0Var.b() : null;
            cVarB1 = null;
        }
    }

    public final void setLastMatrixRecalculationAnimationTime$ui_release(long j11) {
        this.lastMatrixRecalculationAnimationTime = j11;
    }

    public final void setOnViewTreeOwnersAvailable(Function1<? super b, Unit> callback) {
        b viewTreeOwners = getViewTreeOwners();
        if (viewTreeOwners != null) {
            callback.invoke(viewTreeOwners);
        }
        if (isAttachedToWindow()) {
            return;
        }
        this.onViewTreeOwnersAvailable = callback;
    }

    @Override // androidx.compose.ui.node.y0
    public void setShowLayoutBounds(boolean z10) {
        this.showLayoutBounds = z10;
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public Object textInputSession(Function2<Object, ? super Continuation<?>, ? extends Object> function2, Continuation<?> continuation) throws Throwable {
        C09861 c09861;
        if (continuation instanceof C09861) {
            c09861 = (C09861) continuation;
            int i11 = c09861.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                c09861.label = i11 - Integer.MIN_VALUE;
            } else {
                c09861 = new C09861(continuation);
            }
        } else {
            c09861 = new C09861(continuation);
        }
        Object obj = c09861.result;
        Object objF = IntrinsicsKt.f();
        int i12 = c09861.label;
        if (i12 == 0) {
            ResultKt.b(obj);
            AtomicReference atomicReference = this.textInputSessionMutex;
            Function1<kotlinx.coroutines.n0, i0> function1 = new Function1<kotlinx.coroutines.n0, i0>() { // from class: androidx.compose.ui.platform.AndroidComposeView.textInputSession.2
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final i0 invoke(kotlinx.coroutines.n0 n0Var) {
                    AndroidComposeView androidComposeView = AndroidComposeView.this;
                    return new i0(androidComposeView, androidComposeView.getTextInputService(), n0Var);
                }
            };
            c09861.label = 1;
            if (SessionMutex.d(atomicReference, function1, function2, c09861) == objF) {
                return objF;
            }
        } else {
            if (i12 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        throw new KotlinNothingValueException();
    }
}
