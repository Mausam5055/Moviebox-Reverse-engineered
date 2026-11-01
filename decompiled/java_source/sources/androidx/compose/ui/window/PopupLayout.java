package androidx.compose.ui.window;

import android.R;
import android.annotation.SuppressLint;
import android.graphics.Outline;
import android.graphics.Rect;
import android.os.Build;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.view.WindowManager;
import androidx.compose.runtime.a3;
import androidx.compose.runtime.g2;
import androidx.compose.runtime.i1;
import androidx.compose.runtime.m;
import androidx.compose.runtime.r2;
import androidx.compose.runtime.snapshots.SnapshotStateObserver;
import androidx.compose.runtime.u2;
import androidx.compose.runtime.v1;
import androidx.compose.ui.R$id;
import androidx.compose.ui.R$string;
import androidx.compose.ui.layout.l;
import androidx.compose.ui.platform.AbstractComposeView;
import androidx.compose.ui.platform.s2;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.core.app.NotificationCompat;
import androidx.p009lifecycle.ViewTreeLifecycleOwner;
import androidx.p009lifecycle.ViewTreeViewModelStoreOwner;
import androidx.p010savedstate.ViewTreeSavedStateRegistryOwner;
import com.cloud.tmc.integration.constants.IntegrationConstants;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.google.android.material.card.MaterialCardView;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.transsion.push.PushConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import o0.p;
import o0.q;
import o0.r;
import o0.s;
import o0.t;
import o0.u;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000Â\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\b\u000b\n\u0002\u0010\u0015\n\u0002\b\u0014\b\u0001\u0018\u0000 ¨\u00012\u00020\u00012\u00020\u0002:\u0002©\u0001BQ\u0012\u000e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\b\b\u0002\u0010\u0013\u001a\u00020\u0012¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0018\u0010\u0017J\u0017\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0019\u0010\u001aJ\u0017\u0010\u001d\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\u001bH\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ\u000f\u0010 \u001a\u00020\u001fH\u0002¢\u0006\u0004\b \u0010!J\r\u0010\"\u001a\u00020\u0004¢\u0006\u0004\b\"\u0010\u0017J#\u0010&\u001a\u00020\u00042\u0006\u0010$\u001a\u00020#2\f\u0010%\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0004\b&\u0010'J\u000f\u0010(\u001a\u00020\u0004H\u0017¢\u0006\u0004\b(\u0010)J\u000f\u0010*\u001a\u00020\u0004H\u0014¢\u0006\u0004\b*\u0010\u0017J\u000f\u0010+\u001a\u00020\u0004H\u0014¢\u0006\u0004\b+\u0010\u0017J\u001f\u00101\u001a\u00020\u00042\u0006\u0010-\u001a\u00020,2\u0006\u0010.\u001a\u00020,H\u0010¢\u0006\u0004\b/\u00100J7\u0010:\u001a\u00020\u00042\u0006\u00103\u001a\u0002022\u0006\u00104\u001a\u00020,2\u0006\u00105\u001a\u00020,2\u0006\u00106\u001a\u00020,2\u0006\u00107\u001a\u00020,H\u0010¢\u0006\u0004\b8\u00109J\u0017\u0010=\u001a\u0002022\u0006\u0010<\u001a\u00020;H\u0016¢\u0006\u0004\b=\u0010>J5\u0010?\u001a\u00020\u00042\u000e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00032\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u001c\u001a\u00020\u001b¢\u0006\u0004\b?\u0010@J\u0015\u0010C\u001a\u00020\u00042\u0006\u0010B\u001a\u00020A¢\u0006\u0004\bC\u0010DJ\r\u0010E\u001a\u00020\u0004¢\u0006\u0004\bE\u0010\u0017J\u000f\u0010G\u001a\u00020\u0004H\u0001¢\u0006\u0004\bF\u0010\u0017J\r\u0010H\u001a\u00020\u0004¢\u0006\u0004\bH\u0010\u0017J\r\u0010I\u001a\u00020\u0004¢\u0006\u0004\bI\u0010\u0017J\u0019\u0010K\u001a\u0002022\b\u0010<\u001a\u0004\u0018\u00010JH\u0016¢\u0006\u0004\bK\u0010LJ\u0017\u0010M\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020,H\u0016¢\u0006\u0004\bM\u0010NR\u001e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010OR\"\u0010\t\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0019\u0010P\u001a\u0004\bQ\u0010R\"\u0004\bS\u0010TR\u0014\u0010\u000b\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bU\u0010VR\u0014\u0010\u0013\u001a\u00020\u00128\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bW\u0010XR\u0014\u0010\\\u001a\u00020Y8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bZ\u0010[R \u0010a\u001a\u00020\u001f8\u0000X\u0081\u0004¢\u0006\u0012\n\u0004\b]\u0010^\u0012\u0004\b`\u0010\u0017\u001a\u0004\b_\u0010!R\"\u0010g\u001a\u00020\u001b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bb\u0010c\u001a\u0004\bd\u0010e\"\u0004\bf\u0010\u001eR5\u0010p\u001a\u0004\u0018\u00010h2\b\u0010i\u001a\u0004\u0018\u00010h8F@FX\u0086\u008e\u0002ø\u0001\u0000ø\u0001\u0001¢\u0006\u0012\n\u0004\bj\u0010k\u001a\u0004\bl\u0010m\"\u0004\bn\u0010oR/\u0010B\u001a\u0004\u0018\u00010A2\b\u0010i\u001a\u0004\u0018\u00010A8B@BX\u0082\u008e\u0002¢\u0006\u0012\n\u0004\bq\u0010k\u001a\u0004\br\u0010s\"\u0004\bt\u0010DR\u0018\u0010x\u001a\u0004\u0018\u00010u8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bv\u0010wR\u001b\u0010}\u001a\u0002028FX\u0086\u0084\u0002¢\u0006\f\n\u0004\by\u0010z\u001a\u0004\b{\u0010|R\u001c\u0010\u0081\u0001\u001a\u00020~8\u0002X\u0082\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\u0007\n\u0005\b\u007f\u0010\u0080\u0001R\u0018\u0010\u0085\u0001\u001a\u00030\u0082\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u0083\u0001\u0010\u0084\u0001R\u0018\u0010\u0089\u0001\u001a\u00030\u0086\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u0087\u0001\u0010\u0088\u0001R\u001c\u0010\u008d\u0001\u001a\u0005\u0018\u00010\u008a\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008b\u0001\u0010\u008c\u0001R;\u0010%\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\f\u0010i\u001a\b\u0012\u0004\u0012\u00020\u00040\u00038B@BX\u0082\u008e\u0002¢\u0006\u0016\n\u0005\b\u008e\u0001\u0010k\u001a\u0006\b\u008f\u0001\u0010\u0090\u0001\"\u0005\b&\u0010\u0091\u0001R(\u0010\u0095\u0001\u001a\u0002022\u0006\u0010i\u001a\u0002028\u0014@RX\u0094\u000e¢\u0006\u000f\n\u0006\b\u0092\u0001\u0010\u0093\u0001\u001a\u0005\b\u0094\u0001\u0010|R\u0018\u0010\u0099\u0001\u001a\u00030\u0096\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u0097\u0001\u0010\u0098\u0001R\u0017\u0010\u009c\u0001\u001a\u00020,8BX\u0082\u0004¢\u0006\b\u001a\u0006\b\u009a\u0001\u0010\u009b\u0001R\u0017\u0010\u009e\u0001\u001a\u00020,8BX\u0082\u0004¢\u0006\b\u001a\u0006\b\u009d\u0001\u0010\u009b\u0001R)\u0010\u009f\u0001\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\b\u009f\u0001\u0010 \u0001\u001a\u0006\b¡\u0001\u0010¢\u0001\"\u0006\b£\u0001\u0010¤\u0001R\u0017\u0010§\u0001\u001a\u00020\u00018VX\u0096\u0004¢\u0006\b\u001a\u0006\b¥\u0001\u0010¦\u0001\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006ª\u0001"}, d2 = {"Landroidx/compose/ui/window/PopupLayout;", "Landroidx/compose/ui/platform/AbstractComposeView;", "Landroidx/compose/ui/platform/s2;", "Lkotlin/Function0;", "", "onDismissRequest", "Landroidx/compose/ui/window/j;", "properties", "", "testTag", "Landroid/view/View;", "composeView", "Lo0/e;", "density", "Landroidx/compose/ui/window/i;", "initialPositionProvider", "Ljava/util/UUID;", "popupId", "Landroidx/compose/ui/window/f;", "popupLayoutHelper", "<init>", "(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/j;Ljava/lang/String;Landroid/view/View;Lo0/e;Landroidx/compose/ui/window/i;Ljava/util/UUID;Landroidx/compose/ui/window/f;)V", "g", "()V", "h", "j", "(Landroidx/compose/ui/window/j;)V", "Landroidx/compose/ui/unit/LayoutDirection;", "layoutDirection", "i", "(Landroidx/compose/ui/unit/LayoutDirection;)V", "Landroid/view/WindowManager$LayoutParams;", "f", "()Landroid/view/WindowManager$LayoutParams;", PushConstants.PUSH_SERVICE_TYPE_SHOW, "Landroidx/compose/runtime/m;", "parent", "content", "setContent", "(Landroidx/compose/runtime/m;Lkotlin/jvm/functions/Function2;)V", "Content", "(Landroidx/compose/runtime/i;I)V", "onAttachedToWindow", "onDetachedFromWindow", "", "widthMeasureSpec", "heightMeasureSpec", "internalOnMeasure$ui_release", "(II)V", "internalOnMeasure", "", "changed", TtmlNode.LEFT, IntegrationConstants.TAB_BAR_POSITION_TOP, TtmlNode.RIGHT, IntegrationConstants.TAB_BAR_POSITION_DEFAULT, "internalOnLayout$ui_release", "(ZIIII)V", "internalOnLayout", "Landroid/view/KeyEvent;", NotificationCompat.CATEGORY_EVENT, "dispatchKeyEvent", "(Landroid/view/KeyEvent;)Z", "updateParameters", "(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/j;Ljava/lang/String;Landroidx/compose/ui/unit/LayoutDirection;)V", "Landroidx/compose/ui/layout/l;", "parentLayoutCoordinates", "updateParentLayoutCoordinates", "(Landroidx/compose/ui/layout/l;)V", "pollForLocationOnScreenChange", "updateParentBounds$ui_release", "updateParentBounds", "updatePosition", "dismiss", "Landroid/view/MotionEvent;", "onTouchEvent", "(Landroid/view/MotionEvent;)Z", "setLayoutDirection", "(I)V", "Lkotlin/jvm/functions/Function0;", "Ljava/lang/String;", "getTestTag", "()Ljava/lang/String;", "setTestTag", "(Ljava/lang/String;)V", CampaignEx.JSON_KEY_AD_K, "Landroid/view/View;", "l", "Landroidx/compose/ui/window/f;", "Landroid/view/WindowManager;", "m", "Landroid/view/WindowManager;", "windowManager", "n", "Landroid/view/WindowManager$LayoutParams;", "getParams$ui_release", "getParams$ui_release$annotations", "params", "o", "Landroidx/compose/ui/unit/LayoutDirection;", "getParentLayoutDirection", "()Landroidx/compose/ui/unit/LayoutDirection;", "setParentLayoutDirection", "parentLayoutDirection", "Lo0/t;", "<set-?>", TtmlNode.TAG_P, "Landroidx/compose/runtime/i1;", "getPopupContentSize-bOM6tXw", "()Lo0/t;", "setPopupContentSize-fhxjrPA", "(Lo0/t;)V", "popupContentSize", CampaignEx.JSON_KEY_AD_Q, "getParentLayoutCoordinates", "()Landroidx/compose/ui/layout/l;", "setParentLayoutCoordinates", "Lo0/r;", CampaignEx.JSON_KEY_AD_R, "Lo0/r;", "parentBounds", "s", "Landroidx/compose/runtime/a3;", "getCanCalculatePosition", "()Z", "canCalculatePosition", "Lo0/i;", "t", "F", "maxSupportedElevation", "Landroid/graphics/Rect;", TmcStartParams.KEY_URL_SHORT, "Landroid/graphics/Rect;", "previousWindowVisibleFrame", "Landroidx/compose/runtime/snapshots/SnapshotStateObserver;", "v", "Landroidx/compose/runtime/snapshots/SnapshotStateObserver;", "snapshotStateObserver", "", "w", "Ljava/lang/Object;", "backCallback", "x", "getContent", "()Lkotlin/jvm/functions/Function2;", "(Lkotlin/jvm/functions/Function2;)V", "y", "Z", "getShouldCreateCompositionOnAttachedToWindow", "shouldCreateCompositionOnAttachedToWindow", "", "z", "[I", "locationOnScreen", "getDisplayWidth", "()I", "displayWidth", "getDisplayHeight", "displayHeight", "positionProvider", "Landroidx/compose/ui/window/i;", "getPositionProvider", "()Landroidx/compose/ui/window/i;", "setPositionProvider", "(Landroidx/compose/ui/window/i;)V", "getSubCompositionView", "()Landroidx/compose/ui/platform/AbstractComposeView;", "subCompositionView", "A", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "ui_release"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SuppressLint({"ViewConstructor"})
@SourceDebugExtension
public final class PopupLayout extends AbstractComposeView implements s2 {

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private Function0 onDismissRequest;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private String testTag;

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    private final View composeView;

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    private final f popupLayoutHelper;

    /* JADX INFO: renamed from: m, reason: collision with root package name and from kotlin metadata */
    private final WindowManager windowManager;

    /* JADX INFO: renamed from: n, reason: collision with root package name and from kotlin metadata */
    private final WindowManager.LayoutParams params;

    /* JADX INFO: renamed from: o, reason: collision with root package name and from kotlin metadata */
    private LayoutDirection parentLayoutDirection;

    /* JADX INFO: renamed from: p, reason: collision with root package name and from kotlin metadata */
    private final i1 popupContentSize;

    /* JADX INFO: renamed from: q, reason: collision with root package name and from kotlin metadata */
    private final i1 parentLayoutCoordinates;

    /* JADX INFO: renamed from: r, reason: collision with root package name and from kotlin metadata */
    private r parentBounds;

    /* JADX INFO: renamed from: s, reason: collision with root package name and from kotlin metadata */
    private final a3 canCalculatePosition;

    /* JADX INFO: renamed from: t, reason: collision with root package name and from kotlin metadata */
    private final float maxSupportedElevation;

    /* JADX INFO: renamed from: u, reason: collision with root package name and from kotlin metadata */
    private final Rect previousWindowVisibleFrame;

    /* JADX INFO: renamed from: v, reason: collision with root package name and from kotlin metadata */
    private final SnapshotStateObserver snapshotStateObserver;

    /* JADX INFO: renamed from: w, reason: collision with root package name and from kotlin metadata */
    private Object backCallback;

    /* JADX INFO: renamed from: x, reason: collision with root package name and from kotlin metadata */
    private final i1 content;

    /* JADX INFO: renamed from: y, reason: collision with root package name and from kotlin metadata */
    private boolean shouldCreateCompositionOnAttachedToWindow;

    /* JADX INFO: renamed from: z, reason: collision with root package name and from kotlin metadata */
    private final int[] locationOnScreen;
    private static final b A = new b(null);
    public static final int $stable = 8;
    private static final Function1 B = new Function1<PopupLayout, Unit>() { // from class: androidx.compose.ui.window.PopupLayout$Companion$onCommitAffectingPopupPosition$1
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((PopupLayout) obj);
            return Unit.f67061a;
        }

        public final void invoke(PopupLayout popupLayout) {
            if (popupLayout.isAttachedToWindow()) {
                popupLayout.updatePosition();
            }
        }
    };

    public static final class a extends ViewOutlineProvider {
        a() {
        }

        @Override // android.view.ViewOutlineProvider
        public void getOutline(View view, Outline outline) {
            outline.setRect(0, 0, view.getWidth(), view.getHeight());
            outline.setAlpha(0.0f);
        }
    }

    private static final class b {
        private b() {
        }

        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public /* synthetic */ class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f6555a;

        static {
            int[] iArr = new int[LayoutDirection.values().length];
            try {
                iArr[LayoutDirection.Ltr.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LayoutDirection.Rtl.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f6555a = iArr;
        }
    }

    public PopupLayout(Function0<Unit> function0, j jVar, String str, View view, o0.e eVar, i iVar, UUID uuid, f fVar) {
        super(view.getContext(), null, 0, 6, null);
        this.onDismissRequest = function0;
        this.testTag = str;
        this.composeView = view;
        this.popupLayoutHelper = fVar;
        Object systemService = view.getContext().getSystemService("window");
        Intrinsics.f(systemService, "null cannot be cast to non-null type android.view.WindowManager");
        this.windowManager = (WindowManager) systemService;
        this.params = f();
        this.parentLayoutDirection = LayoutDirection.Ltr;
        this.popupContentSize = u2.c(null, null, 2, null);
        this.parentLayoutCoordinates = u2.c(null, null, 2, null);
        this.canCalculatePosition = r2.c(new Function0<Boolean>() { // from class: androidx.compose.ui.window.PopupLayout$canCalculatePosition$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Boolean invoke() {
                l parentLayoutCoordinates = this.this$0.getParentLayoutCoordinates();
                if (parentLayoutCoordinates == null || !parentLayoutCoordinates.F()) {
                    parentLayoutCoordinates = null;
                }
                return Boolean.valueOf((parentLayoutCoordinates == null || this.this$0.m189getPopupContentSizebOM6tXw() == null) ? false : true);
            }
        });
        float fG = o0.i.g(8);
        this.maxSupportedElevation = fG;
        this.previousWindowVisibleFrame = new Rect();
        this.snapshotStateObserver = new SnapshotStateObserver(new PopupLayout$snapshotStateObserver$1(this));
        setId(R.id.content);
        ViewTreeLifecycleOwner.b(this, ViewTreeLifecycleOwner.a(view));
        ViewTreeViewModelStoreOwner.b(this, ViewTreeViewModelStoreOwner.a(view));
        ViewTreeSavedStateRegistryOwner.b(this, ViewTreeSavedStateRegistryOwner.a(view));
        setTag(R$id.compose_view_saveable_id_tag, "Popup:" + uuid);
        setClipChildren(false);
        setElevation(eVar.E0(fG));
        setOutlineProvider(new a());
        this.content = u2.c(ComposableSingletons$AndroidPopup_androidKt.f6524a.a(), null, 2, null);
        this.locationOnScreen = new int[2];
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ PopupLayout(Function0 function0, j jVar, String str, View view, o0.e eVar, i iVar, UUID uuid, f fVar, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        f gVar;
        if ((i11 & 128) != 0) {
            gVar = Build.VERSION.SDK_INT >= 29 ? new g() : new h();
        } else {
            gVar = fVar;
        }
        this(function0, jVar, str, view, eVar, iVar, uuid, gVar);
    }

    private final WindowManager.LayoutParams f() {
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        layoutParams.gravity = MaterialCardView.CHECKED_ICON_GRAVITY_TOP_START;
        layoutParams.flags = AndroidPopup_androidKt.c(null, AndroidPopup_androidKt.d(this.composeView));
        layoutParams.type = 1002;
        layoutParams.token = this.composeView.getApplicationWindowToken();
        layoutParams.width = -2;
        layoutParams.height = -2;
        layoutParams.format = -3;
        layoutParams.setTitle(this.composeView.getContext().getResources().getString(R$string.default_popup_window_title));
        return layoutParams;
    }

    private final void g() {
        throw null;
    }

    private final Function2<androidx.compose.runtime.i, Integer, Unit> getContent() {
        return (Function2) this.content.getValue();
    }

    private final int getDisplayHeight() {
        return Math.round(getContext().getResources().getConfiguration().screenHeightDp * getContext().getResources().getDisplayMetrics().density);
    }

    private final int getDisplayWidth() {
        return Math.round(getContext().getResources().getConfiguration().screenWidthDp * getContext().getResources().getDisplayMetrics().density);
    }

    public static /* synthetic */ void getParams$ui_release$annotations() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final l getParentLayoutCoordinates() {
        return (l) this.parentLayoutCoordinates.getValue();
    }

    private final void h() {
        if (Build.VERSION.SDK_INT >= 33) {
            androidx.compose.ui.window.b.e(this, this.backCallback);
        }
        this.backCallback = null;
    }

    private final void i(LayoutDirection layoutDirection) {
        int i11 = c.f6555a[layoutDirection.ordinal()];
        int i12 = 1;
        if (i11 == 1) {
            i12 = 0;
        } else if (i11 != 2) {
            throw new NoWhenBranchMatchedException();
        }
        super.setLayoutDirection(i12);
    }

    private final void j(j properties) {
        if (!Intrinsics.c(null, properties)) {
            throw null;
        }
    }

    private final void setContent(Function2<? super androidx.compose.runtime.i, ? super Integer, Unit> function2) {
        this.content.setValue(function2);
    }

    private final void setParentLayoutCoordinates(l lVar) {
        this.parentLayoutCoordinates.setValue(lVar);
    }

    @Override // androidx.compose.ui.platform.AbstractComposeView
    public void Content(androidx.compose.runtime.i iVar, final int i11) {
        int i12;
        androidx.compose.runtime.i iVarG = iVar.g(-857613600);
        if ((i11 & 6) == 0) {
            i12 = (iVarG.A(this) ? 4 : 2) | i11;
        } else {
            i12 = i11;
        }
        if ((i12 & 3) == 2 && iVarG.h()) {
            iVarG.G();
        } else {
            if (androidx.compose.runtime.k.H()) {
                androidx.compose.runtime.k.Q(-857613600, i12, -1, "androidx.compose.ui.window.PopupLayout.Content (AndroidPopup.android.kt:572)");
            }
            getContent().invoke(iVarG, 0);
            if (androidx.compose.runtime.k.H()) {
                androidx.compose.runtime.k.P();
            }
        }
        g2 g2VarJ = iVarG.j();
        if (g2VarJ != null) {
            g2VarJ.a(new Function2<androidx.compose.runtime.i, Integer, Unit>() { // from class: androidx.compose.ui.window.PopupLayout.Content.4
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                    invoke((androidx.compose.runtime.i) obj, ((Number) obj2).intValue());
                    return Unit.f67061a;
                }

                public final void invoke(androidx.compose.runtime.i iVar2, int i13) {
                    PopupLayout.this.Content(iVar2, v1.a(i11 | 1));
                }
            });
        }
    }

    public final void dismiss() {
        ViewTreeLifecycleOwner.b(this, null);
        this.windowManager.removeViewImmediate(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent event) {
        if (event.getKeyCode() != 4) {
            return super.dispatchKeyEvent(event);
        }
        throw null;
    }

    public final boolean getCanCalculatePosition() {
        return ((Boolean) this.canCalculatePosition.getValue()).booleanValue();
    }

    /* JADX INFO: renamed from: getParams$ui_release, reason: from getter */
    public final WindowManager.LayoutParams getParams() {
        return this.params;
    }

    public final LayoutDirection getParentLayoutDirection() {
        return this.parentLayoutDirection;
    }

    /* JADX INFO: renamed from: getPopupContentSize-bOM6tXw, reason: not valid java name */
    public final t m189getPopupContentSizebOM6tXw() {
        return (t) this.popupContentSize.getValue();
    }

    public final i getPositionProvider() {
        return null;
    }

    @Override // androidx.compose.ui.platform.AbstractComposeView
    protected boolean getShouldCreateCompositionOnAttachedToWindow() {
        return this.shouldCreateCompositionOnAttachedToWindow;
    }

    public AbstractComposeView getSubCompositionView() {
        return this;
    }

    public final String getTestTag() {
        return this.testTag;
    }

    public /* bridge */ /* synthetic */ View getViewRoot() {
        return androidx.compose.ui.platform.r2.b(this);
    }

    @Override // androidx.compose.ui.platform.AbstractComposeView
    public void internalOnLayout$ui_release(boolean changed, int left, int top, int right, int bottom) {
        super.internalOnLayout$ui_release(changed, left, top, right, bottom);
        throw null;
    }

    @Override // androidx.compose.ui.platform.AbstractComposeView
    public void internalOnMeasure$ui_release(int widthMeasureSpec, int heightMeasureSpec) {
        throw null;
    }

    @Override // androidx.compose.ui.platform.AbstractComposeView, android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.snapshotStateObserver.s();
        g();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.snapshotStateObserver.t();
        this.snapshotStateObserver.j();
        h();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent event) {
        throw null;
    }

    public final void pollForLocationOnScreenChange() {
        int[] iArr = this.locationOnScreen;
        int i11 = iArr[0];
        int i12 = iArr[1];
        this.composeView.getLocationOnScreen(iArr);
        int[] iArr2 = this.locationOnScreen;
        if (i11 == iArr2[0] && i12 == iArr2[1]) {
            return;
        }
        updateParentBounds$ui_release();
    }

    public final void setContent(m parent, Function2<? super androidx.compose.runtime.i, ? super Integer, Unit> content) {
        setParentCompositionContext(parent);
        setContent(content);
        this.shouldCreateCompositionOnAttachedToWindow = true;
    }

    @Override // android.view.View
    public void setLayoutDirection(int layoutDirection) {
    }

    public final void setParentLayoutDirection(LayoutDirection layoutDirection) {
        this.parentLayoutDirection = layoutDirection;
    }

    /* JADX INFO: renamed from: setPopupContentSize-fhxjrPA, reason: not valid java name */
    public final void m190setPopupContentSizefhxjrPA(t tVar) {
        this.popupContentSize.setValue(tVar);
    }

    public final void setPositionProvider(i iVar) {
    }

    public final void setTestTag(String str) {
        this.testTag = str;
    }

    public final void show() {
        this.windowManager.addView(this, this.params);
    }

    public final void updateParameters(Function0<Unit> onDismissRequest, j properties, String testTag, LayoutDirection layoutDirection) {
        this.onDismissRequest = onDismissRequest;
        this.testTag = testTag;
        j(properties);
        i(layoutDirection);
    }

    public final void updateParentBounds$ui_release() {
        l parentLayoutCoordinates = getParentLayoutCoordinates();
        if (parentLayoutCoordinates != null) {
            if (!parentLayoutCoordinates.F()) {
                parentLayoutCoordinates = null;
            }
            if (parentLayoutCoordinates == null) {
                return;
            }
            long jK = parentLayoutCoordinates.k();
            long jF = androidx.compose.ui.layout.m.f(parentLayoutCoordinates);
            r rVarA = s.a(q.a(Math.round(y.g.m(jF)), Math.round(y.g.n(jF))), jK);
            if (Intrinsics.c(rVarA, this.parentBounds)) {
                return;
            }
            this.parentBounds = rVarA;
            updatePosition();
        }
    }

    public final void updateParentLayoutCoordinates(l parentLayoutCoordinates) {
        setParentLayoutCoordinates(parentLayoutCoordinates);
        updateParentBounds$ui_release();
    }

    public final void updatePosition() {
        t tVarM189getPopupContentSizebOM6tXw;
        final r rVar = this.parentBounds;
        if (rVar == null || (tVarM189getPopupContentSizebOM6tXw = m189getPopupContentSizebOM6tXw()) == null) {
            return;
        }
        final long j11 = tVarM189getPopupContentSizebOM6tXw.j();
        Rect rect = this.previousWindowVisibleFrame;
        this.popupLayoutHelper.a(this.composeView, rect);
        r rVarE = AndroidPopup_androidKt.e(rect);
        final long jA = u.a(rVarE.j(), rVarE.e());
        final Ref.LongRef longRef = new Ref.LongRef();
        longRef.element = p.f70615b.a();
        this.snapshotStateObserver.o(this, B, new Function0<Unit>() { // from class: androidx.compose.ui.window.PopupLayout.updatePosition.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Object invoke() {
                m191invoke();
                return Unit.f67061a;
            }

            /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
            public final void m191invoke() {
                this.getPositionProvider();
                this.getParentLayoutDirection();
                throw null;
            }
        });
        this.params.x = p.h(longRef.element);
        this.params.y = p.i(longRef.element);
        throw null;
    }
}
