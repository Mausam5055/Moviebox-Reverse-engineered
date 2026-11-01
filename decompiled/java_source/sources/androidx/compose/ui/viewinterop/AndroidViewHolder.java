package androidx.compose.ui.viewinterop;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.Region;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.compose.runtime.h;
import androidx.compose.runtime.m;
import androidx.compose.ui.f;
import androidx.compose.ui.graphics.h0;
import androidx.compose.ui.graphics.m1;
import androidx.compose.ui.input.nestedscroll.NestedScrollDispatcher;
import androidx.compose.ui.input.pointer.PointerInteropFilter_androidKt;
import androidx.compose.ui.layout.c0;
import androidx.compose.ui.layout.g0;
import androidx.compose.ui.layout.l;
import androidx.compose.ui.layout.t;
import androidx.compose.ui.layout.v;
import androidx.compose.ui.layout.w;
import androidx.compose.ui.layout.x;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.OwnerSnapshotObserver;
import androidx.compose.ui.node.y0;
import androidx.compose.ui.node.z0;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.compose.ui.platform.WindowRecomposer_androidKt;
import androidx.compose.ui.platform.h1;
import androidx.compose.ui.semantics.k;
import androidx.compose.ui.semantics.n;
import androidx.core.view.NestedScrollingParent3;
import androidx.core.view.NestedScrollingParentHelper;
import androidx.p009lifecycle.ViewTreeLifecycleOwner;
import androidx.p009lifecycle.u;
import androidx.p010savedstate.ViewTreeSavedStateRegistryOwner;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.n0;
import o0.a0;
import o0.e;
import o0.g;
import o0.z;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000Î\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\r\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0015\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u001b\n\u0002\u0010\u0007\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0010\u0018\u0000 Ï\u00012\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0001kB9\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b\u0011\u0010\u0012J'\u0010\u0016\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00020\t2\u0006\u0010\u0014\u001a\u00020\t2\u0006\u0010\u0015\u001a\u00020\tH\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\u0015\u0010\u0019\u001a\n\u0018\u00010\rj\u0004\u0018\u0001`\u0018¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001c\u001a\u00020\u001bH\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ\u000f\u0010\u001f\u001a\u00020\u001eH\u0016¢\u0006\u0004\b\u001f\u0010 J\u000f\u0010!\u001a\u00020\u001eH\u0016¢\u0006\u0004\b!\u0010 J\u000f\u0010\"\u001a\u00020\u001eH\u0016¢\u0006\u0004\b\"\u0010 J\u001f\u0010%\u001a\u00020\u001e2\u0006\u0010#\u001a\u00020\t2\u0006\u0010$\u001a\u00020\tH\u0014¢\u0006\u0004\b%\u0010&J\r\u0010'\u001a\u00020\u001e¢\u0006\u0004\b'\u0010 J7\u0010.\u001a\u00020\u001e2\u0006\u0010)\u001a\u00020(2\u0006\u0010*\u001a\u00020\t2\u0006\u0010+\u001a\u00020\t2\u0006\u0010,\u001a\u00020\t2\u0006\u0010-\u001a\u00020\tH\u0014¢\u0006\u0004\b.\u0010/J\u0011\u00101\u001a\u0004\u0018\u000100H\u0016¢\u0006\u0004\b1\u00102J\u0017\u00104\u001a\u00020\u001e2\u0006\u00103\u001a\u00020(H\u0016¢\u0006\u0004\b4\u00105J\u000f\u00106\u001a\u00020\u001eH\u0014¢\u0006\u0004\b6\u0010 J\u000f\u00107\u001a\u00020\u001eH\u0014¢\u0006\u0004\b7\u0010 J%\u0010=\u001a\u0004\u0018\u00010<2\b\u00109\u001a\u0004\u0018\u0001082\b\u0010;\u001a\u0004\u0018\u00010:H\u0016¢\u0006\u0004\b=\u0010>J\u001f\u0010A\u001a\u00020\u001e2\u0006\u0010?\u001a\u00020\r2\u0006\u0010@\u001a\u00020\rH\u0016¢\u0006\u0004\bA\u0010BJ\r\u0010C\u001a\u00020\u001e¢\u0006\u0004\bC\u0010 J\u0017\u0010E\u001a\u00020\u001e2\u0006\u0010D\u001a\u00020\tH\u0014¢\u0006\u0004\bE\u0010FJ\u0019\u0010I\u001a\u00020(2\b\u0010H\u001a\u0004\u0018\u00010GH\u0016¢\u0006\u0004\bI\u0010JJ\u000f\u0010K\u001a\u00020(H\u0016¢\u0006\u0004\bK\u0010LJ/\u0010O\u001a\u00020(2\u0006\u0010?\u001a\u00020\r2\u0006\u0010@\u001a\u00020\r2\u0006\u0010M\u001a\u00020\t2\u0006\u0010N\u001a\u00020\tH\u0016¢\u0006\u0004\bO\u0010PJ\u000f\u0010Q\u001a\u00020\tH\u0016¢\u0006\u0004\bQ\u0010RJ/\u0010S\u001a\u00020\u001e2\u0006\u0010?\u001a\u00020\r2\u0006\u0010@\u001a\u00020\r2\u0006\u0010M\u001a\u00020\t2\u0006\u0010N\u001a\u00020\tH\u0016¢\u0006\u0004\bS\u0010TJ\u001f\u0010U\u001a\u00020\u001e2\u0006\u0010@\u001a\u00020\r2\u0006\u0010N\u001a\u00020\tH\u0016¢\u0006\u0004\bU\u0010VJG\u0010\\\u001a\u00020\u001e2\u0006\u0010@\u001a\u00020\r2\u0006\u0010W\u001a\u00020\t2\u0006\u0010X\u001a\u00020\t2\u0006\u0010Y\u001a\u00020\t2\u0006\u0010Z\u001a\u00020\t2\u0006\u0010N\u001a\u00020\t2\u0006\u0010[\u001a\u000208H\u0016¢\u0006\u0004\b\\\u0010]J?\u0010\\\u001a\u00020\u001e2\u0006\u0010@\u001a\u00020\r2\u0006\u0010W\u001a\u00020\t2\u0006\u0010X\u001a\u00020\t2\u0006\u0010Y\u001a\u00020\t2\u0006\u0010Z\u001a\u00020\t2\u0006\u0010N\u001a\u00020\tH\u0016¢\u0006\u0004\b\\\u0010^J7\u0010a\u001a\u00020\u001e2\u0006\u0010@\u001a\u00020\r2\u0006\u0010_\u001a\u00020\t2\u0006\u0010`\u001a\u00020\t2\u0006\u0010[\u001a\u0002082\u0006\u0010N\u001a\u00020\tH\u0016¢\u0006\u0004\ba\u0010bJ/\u0010f\u001a\u00020(2\u0006\u0010@\u001a\u00020\r2\u0006\u0010d\u001a\u00020c2\u0006\u0010e\u001a\u00020c2\u0006\u0010[\u001a\u00020(H\u0016¢\u0006\u0004\bf\u0010gJ'\u0010h\u001a\u00020(2\u0006\u0010@\u001a\u00020\r2\u0006\u0010d\u001a\u00020c2\u0006\u0010e\u001a\u00020cH\u0016¢\u0006\u0004\bh\u0010iJ\u000f\u0010j\u001a\u00020(H\u0016¢\u0006\u0004\bj\u0010LR\u0014\u0010\n\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bk\u0010lR\u0014\u0010\f\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b-\u0010mR\u0017\u0010\u000e\u001a\u00020\r8\u0006¢\u0006\f\n\u0004\b\u0016\u0010n\u001a\u0004\bo\u0010\u001aR\u0014\u0010\u0010\u001a\u00020\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bp\u0010qR6\u0010z\u001a\b\u0012\u0004\u0012\u00020\u001e0r2\f\u0010s\u001a\b\u0012\u0004\u0012\u00020\u001e0r8\u0006@DX\u0086\u000e¢\u0006\u0012\n\u0004\bt\u0010u\u001a\u0004\bv\u0010w\"\u0004\bx\u0010yR\u0016\u0010}\u001a\u00020(8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b{\u0010|R9\u0010\u0082\u0001\u001a\b\u0012\u0004\u0012\u00020\u001e0r2\f\u0010~\u001a\b\u0012\u0004\u0012\u00020\u001e0r8\u0006@DX\u0086\u000e¢\u0006\u0014\n\u0004\b\u007f\u0010u\u001a\u0005\b\u0080\u0001\u0010w\"\u0005\b\u0081\u0001\u0010yR:\u0010\u0086\u0001\u001a\b\u0012\u0004\u0012\u00020\u001e0r2\f\u0010~\u001a\b\u0012\u0004\u0012\u00020\u001e0r8\u0006@DX\u0086\u000e¢\u0006\u0015\n\u0005\b\u0083\u0001\u0010u\u001a\u0005\b\u0084\u0001\u0010w\"\u0005\b\u0085\u0001\u0010yR3\u0010\u008e\u0001\u001a\u00030\u0087\u00012\u0007\u0010s\u001a\u00030\u0087\u00018\u0006@FX\u0086\u000e¢\u0006\u0018\n\u0006\b\u0088\u0001\u0010\u0089\u0001\u001a\u0006\b\u008a\u0001\u0010\u008b\u0001\"\u0006\b\u008c\u0001\u0010\u008d\u0001R9\u0010\u0096\u0001\u001a\u0012\u0012\u0005\u0012\u00030\u0087\u0001\u0012\u0004\u0012\u00020\u001e\u0018\u00010\u008f\u00018\u0000@\u0000X\u0080\u000e¢\u0006\u0018\n\u0006\b\u0090\u0001\u0010\u0091\u0001\u001a\u0006\b\u0092\u0001\u0010\u0093\u0001\"\u0006\b\u0094\u0001\u0010\u0095\u0001R3\u0010\u009e\u0001\u001a\u00030\u0097\u00012\u0007\u0010s\u001a\u00030\u0097\u00018\u0006@FX\u0086\u000e¢\u0006\u0018\n\u0006\b\u0098\u0001\u0010\u0099\u0001\u001a\u0006\b\u009a\u0001\u0010\u009b\u0001\"\u0006\b\u009c\u0001\u0010\u009d\u0001R8\u0010¡\u0001\u001a\u0012\u0012\u0005\u0012\u00030\u0097\u0001\u0012\u0004\u0012\u00020\u001e\u0018\u00010\u008f\u00018\u0000@\u0000X\u0080\u000e¢\u0006\u0017\n\u0005\b*\u0010\u0091\u0001\u001a\u0006\b\u009f\u0001\u0010\u0093\u0001\"\u0006\b \u0001\u0010\u0095\u0001R7\u0010©\u0001\u001a\u0005\u0018\u00010¢\u00012\t\u0010s\u001a\u0005\u0018\u00010¢\u00018\u0006@FX\u0086\u000e¢\u0006\u0018\n\u0006\b£\u0001\u0010¤\u0001\u001a\u0006\b¥\u0001\u0010¦\u0001\"\u0006\b§\u0001\u0010¨\u0001R7\u0010±\u0001\u001a\u0005\u0018\u00010ª\u00012\t\u0010s\u001a\u0005\u0018\u00010ª\u00018\u0006@FX\u0086\u000e¢\u0006\u0018\n\u0006\b«\u0001\u0010¬\u0001\u001a\u0006\b\u00ad\u0001\u0010®\u0001\"\u0006\b¯\u0001\u0010°\u0001R\u001c\u0010³\u0001\u001a\b\u0012\u0004\u0012\u00020\u001e0r8\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\b²\u0001\u0010uR\u001c\u0010µ\u0001\u001a\b\u0012\u0004\u0012\u00020\u001e0r8\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\b´\u0001\u0010uR8\u0010¹\u0001\u001a\u0011\u0012\u0004\u0012\u00020(\u0012\u0004\u0012\u00020\u001e\u0018\u00010\u008f\u00018\u0000@\u0000X\u0080\u000e¢\u0006\u0018\n\u0006\b¶\u0001\u0010\u0091\u0001\u001a\u0006\b·\u0001\u0010\u0093\u0001\"\u0006\b¸\u0001\u0010\u0095\u0001R\u0015\u00109\u001a\u0002088\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\b,\u0010º\u0001R\u0018\u0010¼\u0001\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b»\u0001\u0010lR\u0017\u0010½\u0001\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b+\u0010lR\u0018\u0010Á\u0001\u001a\u00030¾\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b¿\u0001\u0010À\u0001R\u0018\u0010Ã\u0001\u001a\u00020(8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bÂ\u0001\u0010|R\u001d\u0010É\u0001\u001a\u00030Ä\u00018\u0006¢\u0006\u0010\n\u0006\bÅ\u0001\u0010Æ\u0001\u001a\u0006\bÇ\u0001\u0010È\u0001R\u0018\u0010Í\u0001\u001a\u00030Ê\u00018BX\u0082\u0004¢\u0006\b\u001a\u0006\bË\u0001\u0010Ì\u0001R\u0016\u0010Î\u0001\u001a\u00020(8VX\u0096\u0004¢\u0006\u0007\u001a\u0005\bÎ\u0001\u0010L¨\u0006Ð\u0001"}, d2 = {"Landroidx/compose/ui/viewinterop/AndroidViewHolder;", "Landroid/view/ViewGroup;", "Landroidx/core/view/NestedScrollingParent3;", "Landroidx/compose/runtime/h;", "Landroidx/compose/ui/node/z0;", "Landroid/content/Context;", "context", "Landroidx/compose/runtime/m;", "parentContext", "", "compositeKeyHash", "Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;", "dispatcher", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Landroidx/compose/ui/node/y0;", "owner", "<init>", "(Landroid/content/Context;Landroidx/compose/runtime/m;ILandroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;Landroid/view/View;Landroidx/compose/ui/node/y0;)V", "min", "max", "preferred", "c", "(III)I", "Landroidx/compose/ui/viewinterop/InteropView;", "getInteropView", "()Landroid/view/View;", "", "getAccessibilityClassName", "()Ljava/lang/CharSequence;", "", "onReuse", "()V", "onDeactivate", "onRelease", "widthMeasureSpec", "heightMeasureSpec", "onMeasure", "(II)V", "remeasure", "", "changed", "l", "t", CampaignEx.JSON_KEY_AD_R, DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "onLayout", "(ZIIII)V", "Landroid/view/ViewGroup$LayoutParams;", "getLayoutParams", "()Landroid/view/ViewGroup$LayoutParams;", "disallowIntercept", "requestDisallowInterceptTouchEvent", "(Z)V", "onAttachedToWindow", "onDetachedFromWindow", "", RequestParameters.SUBRESOURCE_LOCATION, "Landroid/graphics/Rect;", "dirty", "Landroid/view/ViewParent;", "invalidateChildInParent", "([ILandroid/graphics/Rect;)Landroid/view/ViewParent;", "child", "target", "onDescendantInvalidated", "(Landroid/view/View;Landroid/view/View;)V", "invalidateOrDefer", "visibility", "onWindowVisibilityChanged", "(I)V", "Landroid/graphics/Region;", TtmlNode.TAG_REGION, "gatherTransparentRegion", "(Landroid/graphics/Region;)Z", "shouldDelayChildPressedState", "()Z", "axes", NativeComponentConstants.KEY_COMPONENT_TYPE, "onStartNestedScroll", "(Landroid/view/View;Landroid/view/View;II)Z", "getNestedScrollAxes", "()I", "onNestedScrollAccepted", "(Landroid/view/View;Landroid/view/View;II)V", "onStopNestedScroll", "(Landroid/view/View;I)V", "dxConsumed", "dyConsumed", "dxUnconsumed", "dyUnconsumed", "consumed", "onNestedScroll", "(Landroid/view/View;IIIII[I)V", "(Landroid/view/View;IIIII)V", "dx", "dy", "onNestedPreScroll", "(Landroid/view/View;II[II)V", "", "velocityX", "velocityY", "onNestedFling", "(Landroid/view/View;FFZ)Z", "onNestedPreFling", "(Landroid/view/View;FF)Z", "isNestedScrollingEnabled", "a", "I", "Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;", "Landroid/view/View;", "getView", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Landroidx/compose/ui/node/y0;", "Lkotlin/Function0;", AppMeasurementSdk.ConditionalUserProperty.VALUE, "e", "Lkotlin/jvm/functions/Function0;", "getUpdate", "()Lkotlin/jvm/functions/Function0;", "setUpdate", "(Lkotlin/jvm/functions/Function0;)V", "update", "f", "Z", "hasUpdateBlock", "<set-?>", "g", "getReset", "setReset", "reset", "h", "getRelease", "setRelease", "release", "Landroidx/compose/ui/f;", "i", "Landroidx/compose/ui/f;", "getModifier", "()Landroidx/compose/ui/f;", "setModifier", "(Landroidx/compose/ui/f;)V", "modifier", "Lkotlin/Function1;", "j", "Lkotlin/jvm/functions/Function1;", "getOnModifierChanged$ui_release", "()Lkotlin/jvm/functions/Function1;", "setOnModifierChanged$ui_release", "(Lkotlin/jvm/functions/Function1;)V", "onModifierChanged", "Lo0/e;", CampaignEx.JSON_KEY_AD_K, "Lo0/e;", "getDensity", "()Lo0/e;", "setDensity", "(Lo0/e;)V", "density", "getOnDensityChanged$ui_release", "setOnDensityChanged$ui_release", "onDensityChanged", "Landroidx/lifecycle/u;", "m", "Landroidx/lifecycle/u;", "getLifecycleOwner", "()Landroidx/lifecycle/u;", "setLifecycleOwner", "(Landroidx/lifecycle/u;)V", "lifecycleOwner", "Landroidx/savedstate/e;", "n", "Landroidx/savedstate/e;", "getSavedStateRegistryOwner", "()Landroidx/savedstate/e;", "setSavedStateRegistryOwner", "(Landroidx/savedstate/e;)V", "savedStateRegistryOwner", "o", "runUpdate", TtmlNode.TAG_P, "runInvalidate", CampaignEx.JSON_KEY_AD_Q, "getOnRequestDisallowInterceptTouchEvent$ui_release", "setOnRequestDisallowInterceptTouchEvent$ui_release", "onRequestDisallowInterceptTouchEvent", "[I", "s", "lastWidthMeasureSpec", "lastHeightMeasureSpec", "Landroidx/core/view/NestedScrollingParentHelper;", TmcStartParams.KEY_URL_SHORT, "Landroidx/core/view/NestedScrollingParentHelper;", "nestedScrollingParentHelper", "v", "isDrawing", "Landroidx/compose/ui/node/LayoutNode;", "w", "Landroidx/compose/ui/node/LayoutNode;", "getLayoutNode", "()Landroidx/compose/ui/node/LayoutNode;", "layoutNode", "Landroidx/compose/ui/node/OwnerSnapshotObserver;", "getSnapshotObserver", "()Landroidx/compose/ui/node/OwnerSnapshotObserver;", "snapshotObserver", "isValidOwnerScope", "Companion", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public class AndroidViewHolder extends ViewGroup implements NestedScrollingParent3, h, z0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private final int compositeKeyHash;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private final NestedScrollDispatcher dispatcher;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private final View view;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private final y0 owner;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private Function0 update;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private boolean hasUpdateBlock;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private Function0 reset;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private Function0 release;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private f modifier;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private Function1 onModifierChanged;

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    private e density;

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    private Function1 onDensityChanged;

    /* JADX INFO: renamed from: m, reason: collision with root package name and from kotlin metadata */
    private u lifecycleOwner;

    /* JADX INFO: renamed from: n, reason: collision with root package name and from kotlin metadata */
    private androidx.p010savedstate.e savedStateRegistryOwner;

    /* JADX INFO: renamed from: o, reason: collision with root package name and from kotlin metadata */
    private final Function0 runUpdate;

    /* JADX INFO: renamed from: p, reason: collision with root package name and from kotlin metadata */
    private final Function0 runInvalidate;

    /* JADX INFO: renamed from: q, reason: collision with root package name and from kotlin metadata */
    private Function1 onRequestDisallowInterceptTouchEvent;

    /* JADX INFO: renamed from: r, reason: collision with root package name and from kotlin metadata */
    private final int[] location;

    /* JADX INFO: renamed from: s, reason: collision with root package name and from kotlin metadata */
    private int lastWidthMeasureSpec;

    /* JADX INFO: renamed from: t, reason: collision with root package name and from kotlin metadata */
    private int lastHeightMeasureSpec;

    /* JADX INFO: renamed from: u, reason: collision with root package name and from kotlin metadata */
    private final NestedScrollingParentHelper nestedScrollingParentHelper;

    /* JADX INFO: renamed from: v, reason: collision with root package name and from kotlin metadata */
    private boolean isDrawing;

    /* JADX INFO: renamed from: w, reason: collision with root package name and from kotlin metadata */
    private final LayoutNode layoutNode;
    public static final int $stable = 8;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static final Function1 f6487x = AndroidViewHolder$Companion$OnCommitAffectingUpdate$1.INSTANCE;

    /* JADX INFO: renamed from: androidx.compose.ui.viewinterop.AndroidViewHolder$onNestedFling$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {1, 8, 0})
    @DebugMetadata(c = "androidx.compose.ui.viewinterop.AndroidViewHolder$onNestedFling$1", f = "AndroidViewHolder.android.kt", l = {565, 570}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        final /* synthetic */ boolean $consumed;
        final /* synthetic */ long $viewVelocity;
        int label;
        final /* synthetic */ AndroidViewHolder this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(boolean z10, AndroidViewHolder androidViewHolder, long j11, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$consumed = z10;
            this.this$0 = androidViewHolder;
            this.$viewVelocity = j11;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$consumed, this.this$0, this.$viewVelocity, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object objF = IntrinsicsKt.f();
            int i11 = this.label;
            if (i11 == 0) {
                ResultKt.b(obj);
                if (this.$consumed) {
                    NestedScrollDispatcher nestedScrollDispatcher = this.this$0.dispatcher;
                    long j11 = this.$viewVelocity;
                    long jA = z.f70637b.a();
                    this.label = 2;
                    if (nestedScrollDispatcher.a(j11, jA, this) == objF) {
                        return objF;
                    }
                } else {
                    NestedScrollDispatcher nestedScrollDispatcher2 = this.this$0.dispatcher;
                    long jA2 = z.f70637b.a();
                    long j12 = this.$viewVelocity;
                    this.label = 1;
                    if (nestedScrollDispatcher2.a(jA2, j12, this) == objF) {
                        return objF;
                    }
                }
            } else {
                if (i11 != 1 && i11 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            return Unit.f67061a;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.ui.viewinterop.AndroidViewHolder$onNestedPreFling$1, reason: invalid class name and case insensitive filesystem */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {1, 8, 0})
    @DebugMetadata(c = "androidx.compose.ui.viewinterop.AndroidViewHolder$onNestedPreFling$1", f = "AndroidViewHolder.android.kt", l = {583}, m = "invokeSuspend")
    static final class C09881 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        final /* synthetic */ long $toBeConsumed;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C09881(long j11, Continuation<? super C09881> continuation) {
            super(2, continuation);
            this.$toBeConsumed = j11;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return AndroidViewHolder.this.new C09881(this.$toBeConsumed, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
            return ((C09881) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object objF = IntrinsicsKt.f();
            int i11 = this.label;
            if (i11 == 0) {
                ResultKt.b(obj);
                NestedScrollDispatcher nestedScrollDispatcher = AndroidViewHolder.this.dispatcher;
                long j11 = this.$toBeConsumed;
                this.label = 1;
                if (nestedScrollDispatcher.c(j11, this) == objF) {
                    return objF;
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

    public AndroidViewHolder(Context context, m mVar, int i11, NestedScrollDispatcher nestedScrollDispatcher, View view, y0 y0Var) {
        super(context);
        this.compositeKeyHash = i11;
        this.dispatcher = nestedScrollDispatcher;
        this.view = view;
        this.owner = y0Var;
        if (mVar != null) {
            WindowRecomposer_androidKt.i(this, mVar);
        }
        setSaveFromParentEnabled(false);
        addView(view);
        this.update = new Function0<Unit>() { // from class: androidx.compose.ui.viewinterop.AndroidViewHolder$update$1
            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Object invoke() {
                m184invoke();
                return Unit.f67061a;
            }

            /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
            public final void m184invoke() {
            }
        };
        this.reset = new Function0<Unit>() { // from class: androidx.compose.ui.viewinterop.AndroidViewHolder$reset$1
            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Object invoke() {
                m181invoke();
                return Unit.f67061a;
            }

            /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
            public final void m181invoke() {
            }
        };
        this.release = new Function0<Unit>() { // from class: androidx.compose.ui.viewinterop.AndroidViewHolder$release$1
            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Object invoke() {
                m180invoke();
                return Unit.f67061a;
            }

            /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
            public final void m180invoke() {
            }
        };
        f.a aVar = f.f4178a;
        this.modifier = aVar;
        this.density = g.b(1.0f, 0.0f, 2, null);
        this.runUpdate = new Function0<Unit>() { // from class: androidx.compose.ui.viewinterop.AndroidViewHolder$runUpdate$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Object invoke() {
                m183invoke();
                return Unit.f67061a;
            }

            /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
            public final void m183invoke() {
                if (this.this$0.hasUpdateBlock && this.this$0.isAttachedToWindow()) {
                    ViewParent parent = this.this$0.getView().getParent();
                    AndroidViewHolder androidViewHolder = this.this$0;
                    if (parent == androidViewHolder) {
                        androidViewHolder.getSnapshotObserver().i(this.this$0, AndroidViewHolder.f6487x, this.this$0.getUpdate());
                    }
                }
            }
        };
        this.runInvalidate = new Function0<Unit>() { // from class: androidx.compose.ui.viewinterop.AndroidViewHolder$runInvalidate$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Object invoke() {
                m182invoke();
                return Unit.f67061a;
            }

            /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
            public final void m182invoke() {
                this.this$0.getLayoutNode().w0();
            }
        };
        this.location = new int[2];
        this.lastWidthMeasureSpec = Integer.MIN_VALUE;
        this.lastHeightMeasureSpec = Integer.MIN_VALUE;
        this.nestedScrollingParentHelper = new NestedScrollingParentHelper(this);
        final LayoutNode layoutNode = new LayoutNode(false, 0, 3, null);
        layoutNode.n1(this);
        final f fVarA = c0.a(androidx.compose.ui.draw.g.b(PointerInteropFilter_androidKt.a(k.b(androidx.compose.ui.input.nestedscroll.c.a(aVar, c.f6518a, nestedScrollDispatcher), true, new Function1<n, Unit>() { // from class: androidx.compose.ui.viewinterop.AndroidViewHolder$layoutNode$1$coreModifier$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                invoke((n) obj);
                return Unit.f67061a;
            }

            public final void invoke(n nVar) {
            }
        }), this), new Function1<z.g, Unit>() { // from class: androidx.compose.ui.viewinterop.AndroidViewHolder$layoutNode$1$coreModifier$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                invoke((z.g) obj);
                return Unit.f67061a;
            }

            public final void invoke(z.g gVar) {
                AndroidViewHolder androidViewHolder = this.$this_run;
                LayoutNode layoutNode2 = layoutNode;
                AndroidViewHolder androidViewHolder2 = this;
                m1 m1VarE = gVar.H0().e();
                if (androidViewHolder.getView().getVisibility() != 8) {
                    androidViewHolder.isDrawing = true;
                    y0 y0VarG0 = layoutNode2.g0();
                    AndroidComposeView androidComposeView = y0VarG0 instanceof AndroidComposeView ? (AndroidComposeView) y0VarG0 : null;
                    if (androidComposeView != null) {
                        androidComposeView.drawAndroidView(androidViewHolder2, h0.d(m1VarE));
                    }
                    androidViewHolder.isDrawing = false;
                }
            }
        }), new Function1<l, Unit>() { // from class: androidx.compose.ui.viewinterop.AndroidViewHolder$layoutNode$1$coreModifier$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                invoke((l) obj);
                return Unit.f67061a;
            }

            public final void invoke(l lVar) {
                c.f(this.$this_run, layoutNode);
                this.$this_run.owner.onInteropViewLayoutChange(this.$this_run);
            }
        });
        layoutNode.c(i11);
        layoutNode.h(this.modifier.e(fVarA));
        this.onModifierChanged = new Function1<f, Unit>() { // from class: androidx.compose.ui.viewinterop.AndroidViewHolder$layoutNode$1$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                invoke((f) obj);
                return Unit.f67061a;
            }

            public final void invoke(f fVar) {
                layoutNode.h(fVar.e(fVarA));
            }
        };
        layoutNode.b(this.density);
        this.onDensityChanged = new Function1<e, Unit>() { // from class: androidx.compose.ui.viewinterop.AndroidViewHolder$layoutNode$1$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                invoke((e) obj);
                return Unit.f67061a;
            }

            public final void invoke(e eVar) {
                layoutNode.b(eVar);
            }
        };
        layoutNode.q1(new Function1<y0, Unit>() { // from class: androidx.compose.ui.viewinterop.AndroidViewHolder$layoutNode$1$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                invoke((y0) obj);
                return Unit.f67061a;
            }

            public final void invoke(y0 y0Var2) {
                AndroidComposeView androidComposeView = y0Var2 instanceof AndroidComposeView ? (AndroidComposeView) y0Var2 : null;
                if (androidComposeView != null) {
                    androidComposeView.addAndroidView(this.$this_run, layoutNode);
                }
                ViewParent parent = this.$this_run.getView().getParent();
                AndroidViewHolder androidViewHolder = this.$this_run;
                if (parent != androidViewHolder) {
                    androidViewHolder.addView(androidViewHolder.getView());
                }
            }
        });
        layoutNode.r1(new Function1<y0, Unit>() { // from class: androidx.compose.ui.viewinterop.AndroidViewHolder$layoutNode$1$4
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                invoke((y0) obj);
                return Unit.f67061a;
            }

            public final void invoke(y0 y0Var2) {
                AndroidComposeView androidComposeView = y0Var2 instanceof AndroidComposeView ? (AndroidComposeView) y0Var2 : null;
                if (androidComposeView != null) {
                    androidComposeView.removeAndroidView(this.$this_run);
                }
                this.$this_run.removeAllViewsInLayout();
            }
        });
        layoutNode.g(new t() { // from class: androidx.compose.ui.viewinterop.AndroidViewHolder$layoutNode$1$5
            @Override // androidx.compose.ui.layout.t
            public v c(x xVar, List list, long j11) {
                if (this.f6511a.getChildCount() == 0) {
                    return w.b(xVar, o0.b.n(j11), o0.b.m(j11), null, new Function1<g0.a, Unit>() { // from class: androidx.compose.ui.viewinterop.AndroidViewHolder$layoutNode$1$5$measure$1
                        @Override // kotlin.jvm.functions.Function1
                        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                            invoke((g0.a) obj);
                            return Unit.f67061a;
                        }

                        public final void invoke(g0.a aVar2) {
                        }
                    }, 4, null);
                }
                if (o0.b.n(j11) != 0) {
                    this.f6511a.getChildAt(0).setMinimumWidth(o0.b.n(j11));
                }
                if (o0.b.m(j11) != 0) {
                    this.f6511a.getChildAt(0).setMinimumHeight(o0.b.m(j11));
                }
                AndroidViewHolder androidViewHolder = this.f6511a;
                int iN = o0.b.n(j11);
                int iL = o0.b.l(j11);
                ViewGroup.LayoutParams layoutParams = this.f6511a.getLayoutParams();
                Intrinsics.e(layoutParams);
                int iC = androidViewHolder.c(iN, iL, layoutParams.width);
                AndroidViewHolder androidViewHolder2 = this.f6511a;
                int iM = o0.b.m(j11);
                int iK = o0.b.k(j11);
                ViewGroup.LayoutParams layoutParams2 = this.f6511a.getLayoutParams();
                Intrinsics.e(layoutParams2);
                androidViewHolder.measure(iC, androidViewHolder2.c(iM, iK, layoutParams2.height));
                int measuredWidth = this.f6511a.getMeasuredWidth();
                int measuredHeight = this.f6511a.getMeasuredHeight();
                final AndroidViewHolder androidViewHolder3 = this.f6511a;
                final LayoutNode layoutNode2 = layoutNode;
                return w.b(xVar, measuredWidth, measuredHeight, null, new Function1<g0.a, Unit>() { // from class: androidx.compose.ui.viewinterop.AndroidViewHolder$layoutNode$1$5$measure$2
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                        invoke((g0.a) obj);
                        return Unit.f67061a;
                    }

                    public final void invoke(g0.a aVar2) {
                        c.f(androidViewHolder3, layoutNode2);
                    }
                }, 4, null);
            }
        });
        this.layoutNode = layoutNode;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(Function0 function0) {
        function0.invoke();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int c(int min, int max, int preferred) {
        if (preferred >= 0 || min == max) {
            return View.MeasureSpec.makeMeasureSpec(RangesKt.m(preferred, min, max), 1073741824);
        }
        if (preferred != -2 || max == Integer.MAX_VALUE) {
            return (preferred != -1 || max == Integer.MAX_VALUE) ? View.MeasureSpec.makeMeasureSpec(0, 0) : View.MeasureSpec.makeMeasureSpec(max, 1073741824);
        }
        return View.MeasureSpec.makeMeasureSpec(max, Integer.MIN_VALUE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final OwnerSnapshotObserver getSnapshotObserver() {
        if (!isAttachedToWindow()) {
            g0.a.b("Expected AndroidViewHolder to be attached when observing reads.");
        }
        return this.owner.getSnapshotObserver();
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean gatherTransparentRegion(Region region) {
        if (region == null) {
            return true;
        }
        getLocationInWindow(this.location);
        int[] iArr = this.location;
        int i11 = iArr[0];
        region.op(i11, iArr[1], i11 + getWidth(), this.location[1] + getHeight(), Region.Op.DIFFERENCE);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        return getClass().getName();
    }

    public final e getDensity() {
        return this.density;
    }

    /* JADX INFO: renamed from: getInteropView, reason: from getter */
    public final View getView() {
        return this.view;
    }

    public final LayoutNode getLayoutNode() {
        return this.layoutNode;
    }

    @Override // android.view.View
    public ViewGroup.LayoutParams getLayoutParams() {
        ViewGroup.LayoutParams layoutParams = this.view.getLayoutParams();
        return layoutParams == null ? new ViewGroup.LayoutParams(-1, -1) : layoutParams;
    }

    public final u getLifecycleOwner() {
        return this.lifecycleOwner;
    }

    public final f getModifier() {
        return this.modifier;
    }

    @Override // android.view.ViewGroup, androidx.core.view.NestedScrollingParent
    public int getNestedScrollAxes() {
        return this.nestedScrollingParentHelper.getNestedScrollAxes();
    }

    public final Function1<e, Unit> getOnDensityChanged$ui_release() {
        return this.onDensityChanged;
    }

    public final Function1<f, Unit> getOnModifierChanged$ui_release() {
        return this.onModifierChanged;
    }

    public final Function1<Boolean, Unit> getOnRequestDisallowInterceptTouchEvent$ui_release() {
        return this.onRequestDisallowInterceptTouchEvent;
    }

    public final Function0<Unit> getRelease() {
        return this.release;
    }

    public final Function0<Unit> getReset() {
        return this.reset;
    }

    public final androidx.p010savedstate.e getSavedStateRegistryOwner() {
        return this.savedStateRegistryOwner;
    }

    public final Function0<Unit> getUpdate() {
        return this.update;
    }

    public final View getView() {
        return this.view;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public ViewParent invalidateChildInParent(int[] location, Rect dirty) {
        super.invalidateChildInParent(location, dirty);
        invalidateOrDefer();
        return null;
    }

    public final void invalidateOrDefer() {
        if (!this.isDrawing) {
            this.layoutNode.w0();
            return;
        }
        View view = this.view;
        final Function0 function0 = this.runInvalidate;
        view.postOnAnimation(new Runnable() { // from class: androidx.compose.ui.viewinterop.a
            @Override // java.lang.Runnable
            public final void run() {
                AndroidViewHolder.b(function0);
            }
        });
    }

    @Override // android.view.View
    public boolean isNestedScrollingEnabled() {
        return this.view.isNestedScrollingEnabled();
    }

    @Override // androidx.compose.ui.node.z0
    public boolean isValidOwnerScope() {
        return isAttachedToWindow();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.runUpdate.invoke();
    }

    @Override // androidx.compose.runtime.h
    public void onDeactivate() {
        this.reset.invoke();
        removeAllViewsInLayout();
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void onDescendantInvalidated(View child, View target) {
        super.onDescendantInvalidated(child, target);
        invalidateOrDefer();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        getSnapshotObserver().a(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean changed, int l11, int t11, int r11, int b11) {
        this.view.layout(0, 0, r11 - l11, b11 - t11);
    }

    @Override // android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        if (this.view.getParent() != this) {
            setMeasuredDimension(View.MeasureSpec.getSize(widthMeasureSpec), View.MeasureSpec.getSize(heightMeasureSpec));
            return;
        }
        if (this.view.getVisibility() == 8) {
            setMeasuredDimension(0, 0);
            return;
        }
        this.view.measure(widthMeasureSpec, heightMeasureSpec);
        setMeasuredDimension(this.view.getMeasuredWidth(), this.view.getMeasuredHeight());
        this.lastWidthMeasureSpec = widthMeasureSpec;
        this.lastHeightMeasureSpec = heightMeasureSpec;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onNestedFling(View target, float velocityX, float velocityY, boolean consumed) {
        if (!isNestedScrollingEnabled()) {
            return false;
        }
        kotlinx.coroutines.k.d(this.dispatcher.e(), null, null, new AnonymousClass1(consumed, this, a0.a(c.h(velocityX), c.h(velocityY)), null), 3, null);
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onNestedPreFling(View target, float velocityX, float velocityY) {
        if (!isNestedScrollingEnabled()) {
            return false;
        }
        kotlinx.coroutines.k.d(this.dispatcher.e(), null, null, new C09881(a0.a(c.h(velocityX), c.h(velocityY)), null), 3, null);
        return false;
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onNestedPreScroll(View target, int dx2, int dy2, int[] consumed, int type) {
        if (isNestedScrollingEnabled()) {
            long jD = this.dispatcher.d(y.h.a(c.g(dx2), c.g(dy2)), c.i(type));
            consumed[0] = h1.b(y.g.m(jD));
            consumed[1] = h1.b(y.g.n(jD));
        }
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onNestedScroll(View target, int dxConsumed, int dyConsumed, int dxUnconsumed, int dyUnconsumed, int type) {
        if (isNestedScrollingEnabled()) {
            this.dispatcher.b(y.h.a(c.g(dxConsumed), c.g(dyConsumed)), y.h.a(c.g(dxUnconsumed), c.g(dyUnconsumed)), c.i(type));
        }
    }

    @Override // androidx.core.view.NestedScrollingParent3
    public void onNestedScroll(View target, int dxConsumed, int dyConsumed, int dxUnconsumed, int dyUnconsumed, int type, int[] consumed) {
        if (isNestedScrollingEnabled()) {
            long jB = this.dispatcher.b(y.h.a(c.g(dxConsumed), c.g(dyConsumed)), y.h.a(c.g(dxUnconsumed), c.g(dyUnconsumed)), c.i(type));
            consumed[0] = h1.b(y.g.m(jB));
            consumed[1] = h1.b(y.g.n(jB));
        }
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onNestedScrollAccepted(View child, View target, int axes, int type) {
        this.nestedScrollingParentHelper.onNestedScrollAccepted(child, target, axes, type);
    }

    @Override // androidx.compose.runtime.h
    public void onRelease() {
        this.release.invoke();
    }

    @Override // androidx.compose.runtime.h
    public void onReuse() {
        if (this.view.getParent() != this) {
            addView(this.view);
        } else {
            this.reset.invoke();
        }
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public boolean onStartNestedScroll(View child, View target, int axes, int type) {
        return ((axes & 2) == 0 && (axes & 1) == 0) ? false : true;
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onStopNestedScroll(View target, int type) {
        this.nestedScrollingParentHelper.onStopNestedScroll(target, type);
    }

    @Override // android.view.View
    protected void onWindowVisibilityChanged(int visibility) {
        super.onWindowVisibilityChanged(visibility);
    }

    public final void remeasure() {
        int i11;
        int i12 = this.lastWidthMeasureSpec;
        if (i12 == Integer.MIN_VALUE || (i11 = this.lastHeightMeasureSpec) == Integer.MIN_VALUE) {
            return;
        }
        measure(i12, i11);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean disallowIntercept) {
        Function1 function1 = this.onRequestDisallowInterceptTouchEvent;
        if (function1 != null) {
            function1.invoke(Boolean.valueOf(disallowIntercept));
        }
        super.requestDisallowInterceptTouchEvent(disallowIntercept);
    }

    public final void setDensity(e eVar) {
        if (eVar != this.density) {
            this.density = eVar;
            Function1 function1 = this.onDensityChanged;
            if (function1 != null) {
                function1.invoke(eVar);
            }
        }
    }

    public final void setLifecycleOwner(u uVar) {
        if (uVar != this.lifecycleOwner) {
            this.lifecycleOwner = uVar;
            ViewTreeLifecycleOwner.b(this, uVar);
        }
    }

    public final void setModifier(f fVar) {
        if (fVar != this.modifier) {
            this.modifier = fVar;
            Function1 function1 = this.onModifierChanged;
            if (function1 != null) {
                function1.invoke(fVar);
            }
        }
    }

    public final void setOnDensityChanged$ui_release(Function1<? super e, Unit> function1) {
        this.onDensityChanged = function1;
    }

    public final void setOnModifierChanged$ui_release(Function1<? super f, Unit> function1) {
        this.onModifierChanged = function1;
    }

    public final void setOnRequestDisallowInterceptTouchEvent$ui_release(Function1<? super Boolean, Unit> function1) {
        this.onRequestDisallowInterceptTouchEvent = function1;
    }

    protected final void setRelease(Function0<Unit> function0) {
        this.release = function0;
    }

    protected final void setReset(Function0<Unit> function0) {
        this.reset = function0;
    }

    public final void setSavedStateRegistryOwner(androidx.p010savedstate.e eVar) {
        if (eVar != this.savedStateRegistryOwner) {
            this.savedStateRegistryOwner = eVar;
            ViewTreeSavedStateRegistryOwner.b(this, eVar);
        }
    }

    protected final void setUpdate(Function0<Unit> function0) {
        this.update = function0;
        this.hasUpdateBlock = true;
        this.runUpdate.invoke();
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return true;
    }
}
