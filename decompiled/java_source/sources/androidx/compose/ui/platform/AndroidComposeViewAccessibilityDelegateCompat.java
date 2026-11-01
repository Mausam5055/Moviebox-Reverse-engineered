package androidx.compose.ui.platform;

import android.R;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcelable;
import android.os.SystemClock;
import android.os.Trace;
import android.text.SpannableString;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import androidx.compose.ui.R$id;
import androidx.compose.ui.R$string;
import androidx.compose.ui.graphics.u4;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.platform.accessibility.CollectionInfo_androidKt;
import androidx.compose.ui.semantics.SemanticsConfigurationKt;
import androidx.compose.ui.semantics.SemanticsNode;
import androidx.compose.ui.semantics.SemanticsProperties;
import androidx.compose.ui.semantics.SemanticsPropertiesAndroid;
import androidx.compose.ui.semantics.SemanticsPropertyKey;
import androidx.compose.ui.state.ToggleableState;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.viewinterop.AndroidViewHolder;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityNodeProviderCompat;
import androidx.p009lifecycle.Lifecycle;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ogg.DefaultOggSeeker;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.List;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.ClosedFloatingPointRange;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes.dex */
public final class AndroidComposeViewAccessibilityDelegateCompat extends AccessibilityDelegateCompat {
    public static final d L = new d(null);
    public static final int M = 8;
    private static final androidx.collection.m N = androidx.collection.n.a(R$id.accessibility_custom_action_0, R$id.accessibility_custom_action_1, R$id.accessibility_custom_action_2, R$id.accessibility_custom_action_3, R$id.accessibility_custom_action_4, R$id.accessibility_custom_action_5, R$id.accessibility_custom_action_6, R$id.accessibility_custom_action_7, R$id.accessibility_custom_action_8, R$id.accessibility_custom_action_9, R$id.accessibility_custom_action_10, R$id.accessibility_custom_action_11, R$id.accessibility_custom_action_12, R$id.accessibility_custom_action_13, R$id.accessibility_custom_action_14, R$id.accessibility_custom_action_15, R$id.accessibility_custom_action_16, R$id.accessibility_custom_action_17, R$id.accessibility_custom_action_18, R$id.accessibility_custom_action_19, R$id.accessibility_custom_action_20, R$id.accessibility_custom_action_21, R$id.accessibility_custom_action_22, R$id.accessibility_custom_action_23, R$id.accessibility_custom_action_24, R$id.accessibility_custom_action_25, R$id.accessibility_custom_action_26, R$id.accessibility_custom_action_27, R$id.accessibility_custom_action_28, R$id.accessibility_custom_action_29, R$id.accessibility_custom_action_30, R$id.accessibility_custom_action_31);
    private androidx.collection.c0 A;
    private androidx.collection.c0 B;
    private final String C;
    private final String D;
    private final androidx.compose.ui.text.platform.r E;
    private androidx.collection.e0 F;
    private c2 G;
    private boolean H;
    private final Runnable I;
    private final List J;
    private final Function1 K;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final AndroidComposeView f5531a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f5532b = Integer.MIN_VALUE;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Function1 f5533c = new Function1<AccessibilityEvent, Boolean>() { // from class: androidx.compose.ui.platform.AndroidComposeViewAccessibilityDelegateCompat$onSendAccessibilityEvent$1
        {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Boolean invoke(AccessibilityEvent accessibilityEvent) {
            return Boolean.valueOf(this.this$0.Y().getParent().requestSendAccessibilityEvent(this.this$0.Y(), accessibilityEvent));
        }
    };

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final AccessibilityManager f5534d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f5535e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f5536f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final AccessibilityManager.AccessibilityStateChangeListener f5537g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final AccessibilityManager.TouchExplorationStateChangeListener f5538h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private List f5539i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final Handler f5540j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private e f5541k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f5542l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private AccessibilityNodeInfoCompat f5543m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f5544n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final androidx.collection.e0 f5545o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final androidx.collection.e0 f5546p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private androidx.collection.y0 f5547q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private androidx.collection.y0 f5548r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f5549s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private Integer f5550t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final androidx.collection.b f5551u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final kotlinx.coroutines.channels.d f5552v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private boolean f5553w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private f f5554x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private androidx.collection.o f5555y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private androidx.collection.f0 f5556z;

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\bÂ\u0002\u0018\u00002\u0012\u0012\u0004\u0012\u00020\u00020\u0001j\b\u0012\u0004\u0012\u00020\u0002`\u0003B\u0007\b\u0002¢\u0006\u0002\u0010\u0004J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0002H\u0016¨\u0006\t"}, d2 = {"Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$LtrBoundsComparator;", "Ljava/util/Comparator;", "Landroidx/compose/ui/semantics/SemanticsNode;", "Lkotlin/Comparator;", "()V", "compare", "", "a", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "ui_release"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    private static final class LtrBoundsComparator implements Comparator<SemanticsNode> {
        public static final LtrBoundsComparator INSTANCE = new LtrBoundsComparator();

        private LtrBoundsComparator() {
        }

        @Override // java.util.Comparator
        public int compare(SemanticsNode a11, SemanticsNode b11) {
            y.i iVarJ = a11.j();
            y.i iVarJ2 = b11.j();
            int iCompare = Float.compare(iVarJ.f(), iVarJ2.f());
            if (iCompare != 0) {
                return iCompare;
            }
            int iCompare2 = Float.compare(iVarJ.i(), iVarJ2.i());
            if (iCompare2 != 0) {
                return iCompare2;
            }
            int iCompare3 = Float.compare(iVarJ.c(), iVarJ2.c());
            return iCompare3 != 0 ? iCompare3 : Float.compare(iVarJ.g(), iVarJ2.g());
        }
    }

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\bÂ\u0002\u0018\u00002\u0012\u0012\u0004\u0012\u00020\u00020\u0001j\b\u0012\u0004\u0012\u00020\u0002`\u0003B\u0007\b\u0002¢\u0006\u0002\u0010\u0004J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0002H\u0016¨\u0006\t"}, d2 = {"Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$RtlBoundsComparator;", "Ljava/util/Comparator;", "Landroidx/compose/ui/semantics/SemanticsNode;", "Lkotlin/Comparator;", "()V", "compare", "", "a", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "ui_release"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    private static final class RtlBoundsComparator implements Comparator<SemanticsNode> {
        public static final RtlBoundsComparator INSTANCE = new RtlBoundsComparator();

        private RtlBoundsComparator() {
        }

        @Override // java.util.Comparator
        public int compare(SemanticsNode a11, SemanticsNode b11) {
            y.i iVarJ = a11.j();
            y.i iVarJ2 = b11.j();
            int iCompare = Float.compare(iVarJ2.g(), iVarJ.g());
            if (iCompare != 0) {
                return iCompare;
            }
            int iCompare2 = Float.compare(iVarJ.i(), iVarJ2.i());
            if (iCompare2 != 0) {
                return iCompare2;
            }
            int iCompare3 = Float.compare(iVarJ.c(), iVarJ2.c());
            return iCompare3 != 0 ? iCompare3 : Float.compare(iVarJ2.f(), iVarJ.f());
        }
    }

    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0003\bÂ\u0002\u0018\u000026\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u0003\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u00040\u00020\u0001j\u001a\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u0003\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u00040\u0002`\u0006B\t\b\u0002¢\u0006\u0004\b\u0007\u0010\bJC\u0010\f\u001a\u00020\u000b2\u0018\u0010\t\u001a\u0014\u0012\u0004\u0012\u00020\u0003\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u00040\u00022\u0018\u0010\n\u001a\u0014\u0012\u0004\u0012\u00020\u0003\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u00040\u0002H\u0016¢\u0006\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$TopBottomBoundsComparator;", "Ljava/util/Comparator;", "Lkotlin/Pair;", "Ly/i;", "", "Landroidx/compose/ui/semantics/SemanticsNode;", "Lkotlin/Comparator;", "<init>", "()V", "a", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "", "compare", "(Lkotlin/Pair;Lkotlin/Pair;)I", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    private static final class TopBottomBoundsComparator implements Comparator<Pair<? extends y.i, ? extends List<SemanticsNode>>> {
        public static final TopBottomBoundsComparator INSTANCE = new TopBottomBoundsComparator();

        private TopBottomBoundsComparator() {
        }

        @Override // java.util.Comparator
        public /* bridge */ /* synthetic */ int compare(Pair<? extends y.i, ? extends List<SemanticsNode>> pair, Pair<? extends y.i, ? extends List<SemanticsNode>> pair2) {
            return compare2((Pair<y.i, ? extends List<SemanticsNode>>) pair, (Pair<y.i, ? extends List<SemanticsNode>>) pair2);
        }

        /* JADX INFO: renamed from: compare, reason: avoid collision after fix types in other method */
        public int compare2(Pair<y.i, ? extends List<SemanticsNode>> a11, Pair<y.i, ? extends List<SemanticsNode>> b11) {
            int iCompare = Float.compare(a11.getFirst().i(), b11.getFirst().i());
            return iCompare != 0 ? iCompare : Float.compare(a11.getFirst().c(), b11.getFirst().c());
        }
    }

    public static final class a implements View.OnAttachStateChangeListener {
        a() {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            AccessibilityManager accessibilityManager = AndroidComposeViewAccessibilityDelegateCompat.this.f5534d;
            AndroidComposeViewAccessibilityDelegateCompat androidComposeViewAccessibilityDelegateCompat = AndroidComposeViewAccessibilityDelegateCompat.this;
            accessibilityManager.addAccessibilityStateChangeListener(androidComposeViewAccessibilityDelegateCompat.f5537g);
            accessibilityManager.addTouchExplorationStateChangeListener(androidComposeViewAccessibilityDelegateCompat.f5538h);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            AndroidComposeViewAccessibilityDelegateCompat.this.f5540j.removeCallbacks(AndroidComposeViewAccessibilityDelegateCompat.this.I);
            AccessibilityManager accessibilityManager = AndroidComposeViewAccessibilityDelegateCompat.this.f5534d;
            AndroidComposeViewAccessibilityDelegateCompat androidComposeViewAccessibilityDelegateCompat = AndroidComposeViewAccessibilityDelegateCompat.this;
            accessibilityManager.removeAccessibilityStateChangeListener(androidComposeViewAccessibilityDelegateCompat.f5537g);
            accessibilityManager.removeTouchExplorationStateChangeListener(androidComposeViewAccessibilityDelegateCompat.f5538h);
        }
    }

    private static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final b f5558a = new b();

        private b() {
        }

        @JvmStatic
        public static final void a(AccessibilityNodeInfoCompat accessibilityNodeInfoCompat, SemanticsNode semanticsNode) {
            androidx.compose.ui.semantics.a aVar;
            if (!AndroidComposeViewAccessibilityDelegateCompat_androidKt.i(semanticsNode) || (aVar = (androidx.compose.ui.semantics.a) SemanticsConfigurationKt.a(semanticsNode.w(), androidx.compose.ui.semantics.h.f5976a.v())) == null) {
                return;
            }
            accessibilityNodeInfoCompat.addAction(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(R.id.accessibilityActionSetProgress, aVar.b()));
        }
    }

    private static final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final c f5559a = new c();

        private c() {
        }

        @JvmStatic
        public static final void a(AccessibilityNodeInfoCompat accessibilityNodeInfoCompat, SemanticsNode semanticsNode) {
            if (AndroidComposeViewAccessibilityDelegateCompat_androidKt.i(semanticsNode)) {
                androidx.compose.ui.semantics.i iVarW = semanticsNode.w();
                androidx.compose.ui.semantics.h hVar = androidx.compose.ui.semantics.h.f5976a;
                androidx.compose.ui.semantics.a aVar = (androidx.compose.ui.semantics.a) SemanticsConfigurationKt.a(iVarW, hVar.p());
                if (aVar != null) {
                    accessibilityNodeInfoCompat.addAction(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(R.id.accessibilityActionPageUp, aVar.b()));
                }
                androidx.compose.ui.semantics.a aVar2 = (androidx.compose.ui.semantics.a) SemanticsConfigurationKt.a(semanticsNode.w(), hVar.m());
                if (aVar2 != null) {
                    accessibilityNodeInfoCompat.addAction(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(R.id.accessibilityActionPageDown, aVar2.b()));
                }
                androidx.compose.ui.semantics.a aVar3 = (androidx.compose.ui.semantics.a) SemanticsConfigurationKt.a(semanticsNode.w(), hVar.n());
                if (aVar3 != null) {
                    accessibilityNodeInfoCompat.addAction(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(R.id.accessibilityActionPageLeft, aVar3.b()));
                }
                androidx.compose.ui.semantics.a aVar4 = (androidx.compose.ui.semantics.a) SemanticsConfigurationKt.a(semanticsNode.w(), hVar.o());
                if (aVar4 != null) {
                    accessibilityNodeInfoCompat.addAction(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(R.id.accessibilityActionPageRight, aVar4.b()));
                }
            }
        }
    }

    public static final class d {
        private d() {
        }

        public /* synthetic */ d(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    private final class e extends AccessibilityNodeProviderCompat {
        public e() {
        }

        @Override // androidx.core.view.accessibility.AccessibilityNodeProviderCompat
        public void addExtraDataToAccessibilityNodeInfo(int i11, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat, String str, Bundle bundle) {
            AndroidComposeViewAccessibilityDelegateCompat.this.x(i11, accessibilityNodeInfoCompat, str, bundle);
        }

        @Override // androidx.core.view.accessibility.AccessibilityNodeProviderCompat
        public AccessibilityNodeInfoCompat createAccessibilityNodeInfo(int i11) {
            AccessibilityNodeInfoCompat accessibilityNodeInfoCompatF = AndroidComposeViewAccessibilityDelegateCompat.this.F(i11);
            AndroidComposeViewAccessibilityDelegateCompat androidComposeViewAccessibilityDelegateCompat = AndroidComposeViewAccessibilityDelegateCompat.this;
            if (androidComposeViewAccessibilityDelegateCompat.f5544n && i11 == androidComposeViewAccessibilityDelegateCompat.f5542l) {
                androidComposeViewAccessibilityDelegateCompat.f5543m = accessibilityNodeInfoCompatF;
            }
            return accessibilityNodeInfoCompatF;
        }

        @Override // androidx.core.view.accessibility.AccessibilityNodeProviderCompat
        public AccessibilityNodeInfoCompat findFocus(int i11) {
            return createAccessibilityNodeInfo(AndroidComposeViewAccessibilityDelegateCompat.this.f5542l);
        }

        @Override // androidx.core.view.accessibility.AccessibilityNodeProviderCompat
        public boolean performAction(int i11, int i12, Bundle bundle) {
            return AndroidComposeViewAccessibilityDelegateCompat.this.i0(i11, i12, bundle);
        }
    }

    private static final class f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final SemanticsNode f5561a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f5562b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final int f5563c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final int f5564d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final int f5565e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final long f5566f;

        public f(SemanticsNode semanticsNode, int i11, int i12, int i13, int i14, long j11) {
            this.f5561a = semanticsNode;
            this.f5562b = i11;
            this.f5563c = i12;
            this.f5564d = i13;
            this.f5565e = i14;
            this.f5566f = j11;
        }

        public final int a() {
            return this.f5562b;
        }

        public final int b() {
            return this.f5564d;
        }

        public final int c() {
            return this.f5563c;
        }

        public final SemanticsNode d() {
            return this.f5561a;
        }

        public final int e() {
            return this.f5565e;
        }

        public final long f() {
            return this.f5566f;
        }
    }

    public /* synthetic */ class g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f5567a;

        static {
            int[] iArr = new int[ToggleableState.values().length];
            try {
                iArr[ToggleableState.On.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ToggleableState.Off.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ToggleableState.Indeterminate.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f5567a = iArr;
        }
    }

    public AndroidComposeViewAccessibilityDelegateCompat(AndroidComposeView androidComposeView) {
        this.f5531a = androidComposeView;
        Object systemService = androidComposeView.getContext().getSystemService("accessibility");
        Intrinsics.f(systemService, "null cannot be cast to non-null type android.view.accessibility.AccessibilityManager");
        AccessibilityManager accessibilityManager = (AccessibilityManager) systemService;
        this.f5534d = accessibilityManager;
        this.f5536f = 100L;
        this.f5537g = new AccessibilityManager.AccessibilityStateChangeListener() { // from class: androidx.compose.ui.platform.s
            @Override // android.view.accessibility.AccessibilityManager.AccessibilityStateChangeListener
            public final void onAccessibilityStateChanged(boolean z10) {
                AndroidComposeViewAccessibilityDelegateCompat.J(this.f5856a, z10);
            }
        };
        this.f5538h = new AccessibilityManager.TouchExplorationStateChangeListener() { // from class: androidx.compose.ui.platform.t
            @Override // android.view.accessibility.AccessibilityManager.TouchExplorationStateChangeListener
            public final void onTouchExplorationStateChanged(boolean z10) {
                AndroidComposeViewAccessibilityDelegateCompat.Q0(this.f5858a, z10);
            }
        };
        this.f5539i = accessibilityManager.getEnabledAccessibilityServiceList(-1);
        this.f5540j = new Handler(Looper.getMainLooper());
        this.f5541k = new e();
        this.f5542l = Integer.MIN_VALUE;
        this.f5545o = new androidx.collection.e0(0, 1, null);
        this.f5546p = new androidx.collection.e0(0, 1, null);
        this.f5547q = new androidx.collection.y0(0, 1, null);
        this.f5548r = new androidx.collection.y0(0, 1, null);
        this.f5549s = -1;
        this.f5551u = new androidx.collection.b(0, 1, null);
        this.f5552v = kotlinx.coroutines.channels.g.b(1, null, null, 6, null);
        this.f5553w = true;
        this.f5555y = androidx.collection.p.a();
        this.f5556z = new androidx.collection.f0(0, 1, null);
        this.A = new androidx.collection.c0(0, 1, null);
        this.B = new androidx.collection.c0(0, 1, null);
        this.C = "android.view.accessibility.extra.EXTRA_DATA_TEST_TRAVERSALBEFORE_VAL";
        this.D = "android.view.accessibility.extra.EXTRA_DATA_TEST_TRAVERSALAFTER_VAL";
        this.E = new androidx.compose.ui.text.platform.r();
        this.F = androidx.collection.p.b();
        this.G = new c2(androidComposeView.getSemanticsOwner().a(), androidx.collection.p.a());
        androidComposeView.addOnAttachStateChangeListener(new a());
        this.I = new Runnable() { // from class: androidx.compose.ui.platform.u
            @Override // java.lang.Runnable
            public final void run() {
                AndroidComposeViewAccessibilityDelegateCompat.r0(this.f5862a);
            }
        };
        this.J = new ArrayList();
        this.K = new Function1<b2, Unit>() { // from class: androidx.compose.ui.platform.AndroidComposeViewAccessibilityDelegateCompat$scheduleScrollEventIfNeededLambda$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                invoke((b2) obj);
                return Unit.f67061a;
            }

            public final void invoke(b2 b2Var) {
                this.this$0.q0(b2Var);
            }
        };
    }

    private final void A0(LayoutNode layoutNode, androidx.collection.f0 f0Var) {
        androidx.compose.ui.semantics.i iVarF;
        LayoutNode layoutNodeK;
        if (layoutNode.D0() && !this.f5531a.getAndroidViewsHandler$ui_release().getLayoutNodeToHolder().containsKey(layoutNode)) {
            if (!layoutNode.e0().q(androidx.compose.ui.node.s0.a(8))) {
                layoutNode = AndroidComposeViewAccessibilityDelegateCompat_androidKt.k(layoutNode, new Function1<LayoutNode, Boolean>() { // from class: androidx.compose.ui.platform.AndroidComposeViewAccessibilityDelegateCompat$sendSubtreeChangeAccessibilityEvents$semanticsNode$1
                    @Override // kotlin.jvm.functions.Function1
                    public final Boolean invoke(LayoutNode layoutNode2) {
                        return Boolean.valueOf(layoutNode2.e0().q(androidx.compose.ui.node.s0.a(8)));
                    }
                });
            }
            if (layoutNode == null || (iVarF = layoutNode.F()) == null) {
                return;
            }
            if (!iVarF.o() && (layoutNodeK = AndroidComposeViewAccessibilityDelegateCompat_androidKt.k(layoutNode, new Function1<LayoutNode, Boolean>() { // from class: androidx.compose.ui.platform.AndroidComposeViewAccessibilityDelegateCompat$sendSubtreeChangeAccessibilityEvents$1
                @Override // kotlin.jvm.functions.Function1
                public final Boolean invoke(LayoutNode layoutNode2) {
                    androidx.compose.ui.semantics.i iVarF2 = layoutNode2.F();
                    boolean z10 = false;
                    if (iVarF2 != null && iVarF2.o()) {
                        z10 = true;
                    }
                    return Boolean.valueOf(z10);
                }
            })) != null) {
                layoutNode = layoutNodeK;
            }
            int iJ0 = layoutNode.j0();
            if (f0Var.f(iJ0)) {
                w0(this, s0(iJ0), 2048, 1, null, 8, null);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:38:0x00af  */
    private final boolean B(androidx.collection.o oVar, boolean z10, int i11, long j11) {
        SemanticsPropertyKey semanticsPropertyKeyK;
        boolean z11;
        androidx.compose.ui.semantics.g gVar;
        if (y.g.j(j11, y.g.f78470b.b()) || !y.g.p(j11)) {
            return false;
        }
        if (z10) {
            semanticsPropertyKeyK = SemanticsProperties.f5919a.H();
        } else {
            if (z10) {
                throw new NoWhenBranchMatchedException();
            }
            semanticsPropertyKeyK = SemanticsProperties.f5919a.k();
        }
        Object[] objArr = oVar.f2305c;
        long[] jArr = oVar.f2303a;
        int length = jArr.length - 2;
        if (length >= 0) {
            int i12 = 0;
            boolean z12 = false;
            while (true) {
                long j12 = jArr[i12];
                if ((((~j12) << 7) & j12 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i13 = 8 - ((~(i12 - length)) >>> 31);
                    for (int i14 = 0; i14 < i13; i14++) {
                        if ((j12 & 255) < 128) {
                            d2 d2Var = (d2) objArr[(i12 << 3) + i14];
                            if (u4.e(d2Var.a()).b(j11) && (gVar = (androidx.compose.ui.semantics.g) SemanticsConfigurationKt.a(d2Var.b().w(), semanticsPropertyKeyK)) != null) {
                                int i15 = gVar.b() ? -i11 : i11;
                                if (i11 == 0 && gVar.b()) {
                                    i15 = -1;
                                }
                                if (i15 < 0) {
                                    if (((Number) gVar.c().invoke()).floatValue() > 0.0f) {
                                        z12 = true;
                                    }
                                } else if (((Number) gVar.c().invoke()).floatValue() < ((Number) gVar.a().invoke()).floatValue()) {
                                    z12 = true;
                                }
                            }
                        }
                        j12 >>= 8;
                    }
                    if (i13 != 8) {
                        return z12;
                    }
                }
                if (i12 != length) {
                    i12++;
                } else {
                    z11 = z12;
                }
            }
        } else {
            z11 = false;
        }
        return z11;
    }

    private final void B0(LayoutNode layoutNode) {
        if (layoutNode.D0() && !this.f5531a.getAndroidViewsHandler$ui_release().getLayoutNodeToHolder().containsKey(layoutNode)) {
            int iJ0 = layoutNode.j0();
            androidx.compose.ui.semantics.g gVar = (androidx.compose.ui.semantics.g) this.f5545o.c(iJ0);
            androidx.compose.ui.semantics.g gVar2 = (androidx.compose.ui.semantics.g) this.f5546p.c(iJ0);
            if (gVar == null && gVar2 == null) {
                return;
            }
            AccessibilityEvent accessibilityEventE = E(iJ0, 4096);
            if (gVar != null) {
                accessibilityEventE.setScrollX((int) ((Number) gVar.c().invoke()).floatValue());
                accessibilityEventE.setMaxScrollX((int) ((Number) gVar.a().invoke()).floatValue());
            }
            if (gVar2 != null) {
                accessibilityEventE.setScrollY((int) ((Number) gVar2.c().invoke()).floatValue());
                accessibilityEventE.setMaxScrollY((int) ((Number) gVar2.a().invoke()).floatValue());
            }
            u0(accessibilityEventE);
        }
    }

    private final void C() {
        Trace.beginSection("sendAccessibilitySemanticsStructureChangeEvents");
        try {
            if (c0()) {
                t0(this.f5531a.getSemanticsOwner().a(), this.G);
            }
            Unit unit = Unit.f67061a;
            Trace.endSection();
            Trace.beginSection("sendSemanticsPropertyChangeEvents");
            try {
                z0(N());
                Trace.endSection();
                Trace.beginSection("updateSemanticsNodesCopyAndPanes");
                try {
                    U0();
                } finally {
                    Trace.endSection();
                }
            } catch (Throwable th2) {
                Trace.endSection();
                throw th2;
            }
        } catch (Throwable th3) {
            Trace.endSection();
            throw th3;
        }
    }

    private final boolean D(int i11) {
        if (!a0(i11)) {
            return false;
        }
        this.f5542l = Integer.MIN_VALUE;
        this.f5543m = null;
        this.f5531a.invalidate();
        w0(this, i11, 65536, null, null, 12, null);
        return true;
    }

    private final boolean D0(SemanticsNode semanticsNode, int i11, int i12, boolean z10) {
        String strV;
        androidx.compose.ui.semantics.i iVarW = semanticsNode.w();
        androidx.compose.ui.semantics.h hVar = androidx.compose.ui.semantics.h.f5976a;
        if (iVarW.e(hVar.w()) && AndroidComposeViewAccessibilityDelegateCompat_androidKt.i(semanticsNode)) {
            Function3 function3 = (Function3) ((androidx.compose.ui.semantics.a) semanticsNode.w().j(hVar.w())).a();
            if (function3 != null) {
                return ((Boolean) function3.invoke(Integer.valueOf(i11), Integer.valueOf(i12), Boolean.valueOf(z10))).booleanValue();
            }
            return false;
        }
        if ((i11 == i12 && i12 == this.f5549s) || (strV = V(semanticsNode)) == null) {
            return false;
        }
        if (i11 < 0 || i11 != i12 || i12 > strV.length()) {
            i11 = -1;
        }
        this.f5549s = i11;
        boolean z11 = strV.length() > 0;
        u0(H(s0(semanticsNode.o()), z11 ? Integer.valueOf(this.f5549s) : null, z11 ? Integer.valueOf(this.f5549s) : null, z11 ? Integer.valueOf(strV.length()) : null, strV));
        y0(semanticsNode.o());
        return true;
    }

    private final AccessibilityEvent E(int i11, int i12) {
        d2 d2Var;
        AccessibilityEvent accessibilityEventObtain = AccessibilityEvent.obtain(i12);
        accessibilityEventObtain.setEnabled(true);
        accessibilityEventObtain.setClassName("android.view.View");
        accessibilityEventObtain.setPackageName(this.f5531a.getContext().getPackageName());
        accessibilityEventObtain.setSource(this.f5531a, i11);
        if (c0() && (d2Var = (d2) N().c(i11)) != null) {
            accessibilityEventObtain.setPassword(d2Var.b().w().e(SemanticsProperties.f5919a.v()));
        }
        return accessibilityEventObtain;
    }

    private final void E0(SemanticsNode semanticsNode, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        androidx.compose.ui.semantics.i iVarW = semanticsNode.w();
        SemanticsProperties semanticsProperties = SemanticsProperties.f5919a;
        if (iVarW.e(semanticsProperties.h())) {
            accessibilityNodeInfoCompat.setContentInvalid(true);
            accessibilityNodeInfoCompat.setError((CharSequence) SemanticsConfigurationKt.a(semanticsNode.w(), semanticsProperties.h()));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public final AccessibilityNodeInfoCompat F(int i11) {
        androidx.p009lifecycle.u uVarA;
        Lifecycle lifecycle;
        AndroidComposeView.b viewTreeOwners = this.f5531a.getViewTreeOwners();
        if (((viewTreeOwners == null || (uVarA = viewTreeOwners.a()) == null || (lifecycle = uVarA.getLifecycle()) == null) ? null : lifecycle.b()) == Lifecycle.State.DESTROYED) {
            return null;
        }
        AccessibilityNodeInfoCompat accessibilityNodeInfoCompatObtain = AccessibilityNodeInfoCompat.obtain();
        d2 d2Var = (d2) N().c(i11);
        if (d2Var == null) {
            return null;
        }
        SemanticsNode semanticsNodeB = d2Var.b();
        if (i11 == -1) {
            ViewParent parentForAccessibility = this.f5531a.getParentForAccessibility();
            accessibilityNodeInfoCompatObtain.setParent(parentForAccessibility instanceof View ? (View) parentForAccessibility : null);
        } else {
            SemanticsNode semanticsNodeR = semanticsNodeB.r();
            Integer numValueOf = semanticsNodeR != null ? Integer.valueOf(semanticsNodeR.o()) : null;
            if (numValueOf == null) {
                g0.a.c("semanticsNode " + i11 + " has null parent");
                throw new KotlinNothingValueException();
            }
            int iIntValue = numValueOf.intValue();
            accessibilityNodeInfoCompatObtain.setParent(this.f5531a, iIntValue != this.f5531a.getSemanticsOwner().a().o() ? iIntValue : -1);
        }
        accessibilityNodeInfoCompatObtain.setSource(this.f5531a, i11);
        accessibilityNodeInfoCompatObtain.setBoundsInScreen(y(d2Var));
        l0(i11, accessibilityNodeInfoCompatObtain, semanticsNodeB);
        return accessibilityNodeInfoCompatObtain;
    }

    private final void F0(SemanticsNode semanticsNode, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        accessibilityNodeInfoCompat.setCheckable(S(semanticsNode));
    }

    private final String G(SemanticsNode semanticsNode) {
        Collection collection;
        CharSequence charSequence;
        androidx.compose.ui.semantics.i iVarN = semanticsNode.a().n();
        SemanticsProperties semanticsProperties = SemanticsProperties.f5919a;
        Collection collection2 = (Collection) SemanticsConfigurationKt.a(iVarN, semanticsProperties.d());
        if ((collection2 == null || collection2.isEmpty()) && (((collection = (Collection) SemanticsConfigurationKt.a(iVarN, semanticsProperties.C())) == null || collection.isEmpty()) && ((charSequence = (CharSequence) SemanticsConfigurationKt.a(iVarN, semanticsProperties.g())) == null || charSequence.length() == 0))) {
            return this.f5531a.getContext().getResources().getString(R$string.state_empty);
        }
        return null;
    }

    private final AccessibilityEvent H(int i11, Integer num, Integer num2, Integer num3, CharSequence charSequence) {
        AccessibilityEvent accessibilityEventE = E(i11, 8192);
        if (num != null) {
            accessibilityEventE.setFromIndex(num.intValue());
        }
        if (num2 != null) {
            accessibilityEventE.setToIndex(num2.intValue());
        }
        if (num3 != null) {
            accessibilityEventE.setItemCount(num3.intValue());
        }
        if (charSequence != null) {
            accessibilityEventE.getText().add(charSequence);
        }
        return accessibilityEventE;
    }

    private final void H0(SemanticsNode semanticsNode, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        accessibilityNodeInfoCompat.setStateDescription(T(semanticsNode));
    }

    private final void I0(SemanticsNode semanticsNode, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        AnnotatedString annotatedStringU = U(semanticsNode);
        accessibilityNodeInfoCompat.setText(annotatedStringU != null ? P0(annotatedStringU) : null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void J(AndroidComposeViewAccessibilityDelegateCompat androidComposeViewAccessibilityDelegateCompat, boolean z10) {
        androidComposeViewAccessibilityDelegateCompat.f5539i = z10 ? androidComposeViewAccessibilityDelegateCompat.f5534d.getEnabledAccessibilityServiceList(-1) : CollectionsKt.l();
    }

    private final void J0() {
        this.A.i();
        this.B.i();
        d2 d2Var = (d2) N().c(-1);
        SemanticsNode semanticsNodeB = d2Var != null ? d2Var.b() : null;
        Intrinsics.e(semanticsNodeB);
        List listN0 = N0(AndroidComposeViewAccessibilityDelegateCompat_androidKt.l(semanticsNodeB), CollectionsKt.q(semanticsNodeB));
        int iN = CollectionsKt.n(listN0);
        if (1 > iN) {
            return;
        }
        int i11 = 1;
        while (true) {
            int iO = ((SemanticsNode) listN0.get(i11 - 1)).o();
            int iO2 = ((SemanticsNode) listN0.get(i11)).o();
            this.A.q(iO, iO2);
            this.B.q(iO2, iO);
            if (i11 == iN) {
                return;
            } else {
                i11++;
            }
        }
    }

    private final void K(SemanticsNode semanticsNode, ArrayList arrayList, androidx.collection.e0 e0Var) {
        boolean zL = AndroidComposeViewAccessibilityDelegateCompat_androidKt.l(semanticsNode);
        boolean zBooleanValue = ((Boolean) semanticsNode.w().l(SemanticsProperties.f5919a.r(), new Function0<Boolean>() { // from class: androidx.compose.ui.platform.AndroidComposeViewAccessibilityDelegateCompat$geometryDepthFirstSearch$isTraversalGroup$1
            @Override // kotlin.jvm.functions.Function0
            public final Boolean invoke() {
                return Boolean.FALSE;
            }
        })).booleanValue();
        if ((zBooleanValue || d0(semanticsNode)) && N().b(semanticsNode.o())) {
            arrayList.add(semanticsNode);
        }
        if (zBooleanValue) {
            e0Var.t(semanticsNode.o(), N0(zL, CollectionsKt.U0(semanticsNode.k())));
            return;
        }
        List listK = semanticsNode.k();
        int size = listK.size();
        for (int i11 = 0; i11 < size; i11++) {
            K((SemanticsNode) listK.get(i11), arrayList, e0Var);
        }
    }

    private final List K0(boolean z10, ArrayList arrayList, androidx.collection.e0 e0Var) {
        ArrayList arrayList2 = new ArrayList();
        int iN = CollectionsKt.n(arrayList);
        int size = 0;
        if (iN >= 0) {
            int i11 = 0;
            while (true) {
                SemanticsNode semanticsNode = (SemanticsNode) arrayList.get(i11);
                if (i11 == 0 || !M0(arrayList2, semanticsNode)) {
                    arrayList2.add(new Pair(semanticsNode.j(), CollectionsKt.q(semanticsNode)));
                }
                if (i11 == iN) {
                    break;
                }
                i11++;
            }
        }
        CollectionsKt.A(arrayList2, TopBottomBoundsComparator.INSTANCE);
        ArrayList arrayList3 = new ArrayList();
        int size2 = arrayList2.size();
        for (int i12 = 0; i12 < size2; i12++) {
            Pair pair = (Pair) arrayList2.get(i12);
            List list = (List) pair.getSecond();
            final Comparator comparator = z10 ? RtlBoundsComparator.INSTANCE : LtrBoundsComparator.INSTANCE;
            final Comparator comparatorB = LayoutNode.K.b();
            final Comparator comparator2 = new Comparator() { // from class: androidx.compose.ui.platform.AndroidComposeViewAccessibilityDelegateCompat$semanticComparator$$inlined$thenBy$1
                /* JADX WARN: Multi-variable type inference failed */
                @Override // java.util.Comparator
                public final int compare(T t11, T t12) {
                    int iCompare = comparator.compare(t11, t12);
                    return iCompare != 0 ? iCompare : comparatorB.compare(((SemanticsNode) t11).q(), ((SemanticsNode) t12).q());
                }
            };
            CollectionsKt.A(list, new Comparator() { // from class: androidx.compose.ui.platform.AndroidComposeViewAccessibilityDelegateCompat$semanticComparator$$inlined$thenBy$2
                /* JADX WARN: Multi-variable type inference failed */
                @Override // java.util.Comparator
                public final int compare(T t11, T t12) {
                    int iCompare = comparator2.compare(t11, t12);
                    return iCompare != 0 ? iCompare : ComparisonsKt.d(Integer.valueOf(((SemanticsNode) t11).o()), Integer.valueOf(((SemanticsNode) t12).o()));
                }
            });
            arrayList3.addAll((Collection) pair.getSecond());
        }
        final AndroidComposeViewAccessibilityDelegateCompat$sortByGeometryGroupings$2 androidComposeViewAccessibilityDelegateCompat$sortByGeometryGroupings$2 = new Function2<SemanticsNode, SemanticsNode, Integer>() { // from class: androidx.compose.ui.platform.AndroidComposeViewAccessibilityDelegateCompat$sortByGeometryGroupings$2
            @Override // kotlin.jvm.functions.Function2
            public final Integer invoke(SemanticsNode semanticsNode2, SemanticsNode semanticsNode3) {
                androidx.compose.ui.semantics.i iVarW = semanticsNode2.w();
                SemanticsProperties semanticsProperties = SemanticsProperties.f5919a;
                return Integer.valueOf(Float.compare(((Number) iVarW.l(semanticsProperties.G(), new Function0<Float>() { // from class: androidx.compose.ui.platform.AndroidComposeViewAccessibilityDelegateCompat$sortByGeometryGroupings$2.1
                    @Override // kotlin.jvm.functions.Function0
                    public final Float invoke() {
                        return Float.valueOf(0.0f);
                    }
                })).floatValue(), ((Number) semanticsNode3.w().l(semanticsProperties.G(), new Function0<Float>() { // from class: androidx.compose.ui.platform.AndroidComposeViewAccessibilityDelegateCompat$sortByGeometryGroupings$2.2
                    @Override // kotlin.jvm.functions.Function0
                    public final Float invoke() {
                        return Float.valueOf(0.0f);
                    }
                })).floatValue()));
            }
        };
        CollectionsKt.A(arrayList3, new Comparator() { // from class: androidx.compose.ui.platform.r
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return AndroidComposeViewAccessibilityDelegateCompat.L0(androidComposeViewAccessibilityDelegateCompat$sortByGeometryGroupings$2, obj, obj2);
            }
        });
        while (size <= CollectionsKt.n(arrayList3)) {
            List list2 = (List) e0Var.c(((SemanticsNode) arrayList3.get(size)).o());
            if (list2 != null) {
                if (d0((SemanticsNode) arrayList3.get(size))) {
                    size++;
                } else {
                    arrayList3.remove(size);
                }
                arrayList3.addAll(size, list2);
                size += list2.size();
            } else {
                size++;
            }
        }
        return arrayList3;
    }

    private final int L(SemanticsNode semanticsNode) {
        androidx.compose.ui.semantics.i iVarW = semanticsNode.w();
        SemanticsProperties semanticsProperties = SemanticsProperties.f5919a;
        return (iVarW.e(semanticsProperties.d()) || !semanticsNode.w().e(semanticsProperties.D())) ? this.f5549s : androidx.compose.ui.text.b0.g(((androidx.compose.ui.text.b0) semanticsNode.w().j(semanticsProperties.D())).n());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int L0(Function2 function2, Object obj, Object obj2) {
        return ((Number) function2.invoke(obj, obj2)).intValue();
    }

    private final int M(SemanticsNode semanticsNode) {
        androidx.compose.ui.semantics.i iVarW = semanticsNode.w();
        SemanticsProperties semanticsProperties = SemanticsProperties.f5919a;
        return (iVarW.e(semanticsProperties.d()) || !semanticsNode.w().e(semanticsProperties.D())) ? this.f5549s : androidx.compose.ui.text.b0.k(((androidx.compose.ui.text.b0) semanticsNode.w().j(semanticsProperties.D())).n());
    }

    private static final boolean M0(ArrayList arrayList, SemanticsNode semanticsNode) {
        float fI = semanticsNode.j().i();
        float fC = semanticsNode.j().c();
        boolean z10 = fI >= fC;
        int iN = CollectionsKt.n(arrayList);
        if (iN >= 0) {
            int i11 = 0;
            while (true) {
                y.i iVar = (y.i) ((Pair) arrayList.get(i11)).getFirst();
                boolean z11 = iVar.i() >= iVar.c();
                if (!z10 && !z11 && Math.max(fI, iVar.i()) < Math.min(fC, iVar.c())) {
                    arrayList.set(i11, new Pair(iVar.l(0.0f, fI, Float.POSITIVE_INFINITY, fC), ((Pair) arrayList.get(i11)).getSecond()));
                    ((List) ((Pair) arrayList.get(i11)).getSecond()).add(semanticsNode);
                    return true;
                }
                if (i11 != iN) {
                    i11++;
                }
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final androidx.collection.o N() {
        if (this.f5553w) {
            this.f5553w = false;
            this.f5555y = e2.b(this.f5531a.getSemanticsOwner());
            if (c0()) {
                J0();
            }
        }
        return this.f5555y;
    }

    private final List N0(boolean z10, List list) {
        androidx.collection.e0 e0VarB = androidx.collection.p.b();
        ArrayList arrayList = new ArrayList();
        int size = list.size();
        for (int i11 = 0; i11 < size; i11++) {
            K((SemanticsNode) list.get(i11), arrayList, e0VarB);
        }
        return K0(z10, arrayList, e0VarB);
    }

    private final RectF O0(SemanticsNode semanticsNode, y.i iVar) {
        if (semanticsNode == null) {
            return null;
        }
        y.i iVarQ = iVar.q(semanticsNode.s());
        y.i iVarI = semanticsNode.i();
        y.i iVarM = iVarQ.o(iVarI) ? iVarQ.m(iVarI) : null;
        if (iVarM == null) {
            return null;
        }
        long jMo116localToScreenMKHz9U = this.f5531a.mo116localToScreenMKHz9U(y.h.a(iVarM.f(), iVarM.i()));
        long jMo116localToScreenMKHz9U2 = this.f5531a.mo116localToScreenMKHz9U(y.h.a(iVarM.g(), iVarM.c()));
        return new RectF(y.g.m(jMo116localToScreenMKHz9U), y.g.n(jMo116localToScreenMKHz9U), y.g.m(jMo116localToScreenMKHz9U2), y.g.n(jMo116localToScreenMKHz9U2));
    }

    private final SpannableString P0(AnnotatedString annotatedString) {
        return (SpannableString) S0(androidx.compose.ui.text.platform.a.b(annotatedString, this.f5531a.getDensity(), this.f5531a.getFontFamilyResolver(), this.E), DefaultOggSeeker.MATCH_BYTE_RANGE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void Q0(AndroidComposeViewAccessibilityDelegateCompat androidComposeViewAccessibilityDelegateCompat, boolean z10) {
        androidComposeViewAccessibilityDelegateCompat.f5539i = androidComposeViewAccessibilityDelegateCompat.f5534d.getEnabledAccessibilityServiceList(-1);
    }

    private final boolean R0(SemanticsNode semanticsNode, int i11, boolean z10, boolean z11) {
        int iM;
        int i12;
        int iO = semanticsNode.o();
        Integer num = this.f5550t;
        if (num == null || iO != num.intValue()) {
            this.f5549s = -1;
            this.f5550t = Integer.valueOf(semanticsNode.o());
        }
        String strV = V(semanticsNode);
        boolean z12 = false;
        if (strV != null && strV.length() != 0) {
            androidx.compose.ui.platform.f fVarW = W(semanticsNode, i11);
            if (fVarW == null) {
                return false;
            }
            int iL = L(semanticsNode);
            if (iL == -1) {
                iL = z10 ? 0 : strV.length();
            }
            int[] iArrA = z10 ? fVarW.a(iL) : fVarW.b(iL);
            if (iArrA == null) {
                return false;
            }
            int i13 = iArrA[0];
            z12 = true;
            int i14 = iArrA[1];
            if (z11 && b0(semanticsNode)) {
                iM = M(semanticsNode);
                if (iM == -1) {
                    iM = z10 ? i13 : i14;
                }
                i12 = z10 ? i14 : i13;
            } else {
                iM = z10 ? i14 : i13;
                i12 = iM;
            }
            this.f5554x = new f(semanticsNode, z10 ? 256 : 512, i11, i13, i14, SystemClock.uptimeMillis());
            D0(semanticsNode, iM, i12, true);
        }
        return z12;
    }

    private final boolean S(SemanticsNode semanticsNode) {
        androidx.compose.ui.semantics.i iVarW = semanticsNode.w();
        SemanticsProperties semanticsProperties = SemanticsProperties.f5919a;
        ToggleableState toggleableState = (ToggleableState) SemanticsConfigurationKt.a(iVarW, semanticsProperties.F());
        androidx.compose.ui.semantics.f fVar = (androidx.compose.ui.semantics.f) SemanticsConfigurationKt.a(semanticsNode.w(), semanticsProperties.x());
        boolean z10 = toggleableState != null;
        if (((Boolean) SemanticsConfigurationKt.a(semanticsNode.w(), semanticsProperties.z())) != null) {
            return fVar != null ? androidx.compose.ui.semantics.f.k(fVar.n(), androidx.compose.ui.semantics.f.f5964b.g()) : false ? z10 : true;
        }
        return z10;
    }

    private final CharSequence S0(CharSequence charSequence, int i11) {
        if (i11 <= 0) {
            throw new IllegalArgumentException("size should be greater than 0");
        }
        if (charSequence == null || charSequence.length() == 0 || charSequence.length() <= i11) {
            return charSequence;
        }
        int i12 = i11 - 1;
        if (Character.isHighSurrogate(charSequence.charAt(i12)) && Character.isLowSurrogate(charSequence.charAt(i11))) {
            i11 = i12;
        }
        CharSequence charSequenceSubSequence = charSequence.subSequence(0, i11);
        Intrinsics.f(charSequenceSubSequence, "null cannot be cast to non-null type T of androidx.compose.ui.platform.AndroidComposeViewAccessibilityDelegateCompat.trimToSize");
        return charSequenceSubSequence;
    }

    private final String T(SemanticsNode semanticsNode) {
        int iM;
        androidx.compose.ui.semantics.i iVarW = semanticsNode.w();
        SemanticsProperties semanticsProperties = SemanticsProperties.f5919a;
        Object objA = SemanticsConfigurationKt.a(iVarW, semanticsProperties.A());
        ToggleableState toggleableState = (ToggleableState) SemanticsConfigurationKt.a(semanticsNode.w(), semanticsProperties.F());
        androidx.compose.ui.semantics.f fVar = (androidx.compose.ui.semantics.f) SemanticsConfigurationKt.a(semanticsNode.w(), semanticsProperties.x());
        if (toggleableState != null) {
            int i11 = g.f5567a[toggleableState.ordinal()];
            if (i11 == 1) {
                if ((fVar == null ? false : androidx.compose.ui.semantics.f.k(fVar.n(), androidx.compose.ui.semantics.f.f5964b.f())) && objA == null) {
                    objA = this.f5531a.getContext().getResources().getString(R$string.state_on);
                }
            } else if (i11 == 2) {
                if ((fVar == null ? false : androidx.compose.ui.semantics.f.k(fVar.n(), androidx.compose.ui.semantics.f.f5964b.f())) && objA == null) {
                    objA = this.f5531a.getContext().getResources().getString(R$string.state_off);
                }
            } else if (i11 == 3 && objA == null) {
                objA = this.f5531a.getContext().getResources().getString(R$string.indeterminate);
            }
        }
        Boolean bool = (Boolean) SemanticsConfigurationKt.a(semanticsNode.w(), semanticsProperties.z());
        if (bool != null) {
            boolean zBooleanValue = bool.booleanValue();
            if (!(fVar == null ? false : androidx.compose.ui.semantics.f.k(fVar.n(), androidx.compose.ui.semantics.f.f5964b.g())) && objA == null) {
                objA = zBooleanValue ? this.f5531a.getContext().getResources().getString(R$string.selected) : this.f5531a.getContext().getResources().getString(R$string.not_selected);
            }
        }
        androidx.compose.ui.semantics.e eVar = (androidx.compose.ui.semantics.e) SemanticsConfigurationKt.a(semanticsNode.w(), semanticsProperties.w());
        if (eVar != null) {
            if (eVar != androidx.compose.ui.semantics.e.f5959d.a()) {
                if (objA == null) {
                    ClosedFloatingPointRange closedFloatingPointRangeC = eVar.c();
                    float fB = ((((Number) closedFloatingPointRangeC.e()).floatValue() - ((Number) closedFloatingPointRangeC.j()).floatValue()) > 0.0f ? 1 : ((((Number) closedFloatingPointRangeC.e()).floatValue() - ((Number) closedFloatingPointRangeC.j()).floatValue()) == 0.0f ? 0 : -1)) == 0 ? 0.0f : (eVar.b() - ((Number) closedFloatingPointRangeC.j()).floatValue()) / (((Number) closedFloatingPointRangeC.e()).floatValue() - ((Number) closedFloatingPointRangeC.j()).floatValue());
                    if (fB < 0.0f) {
                        fB = 0.0f;
                    }
                    if (fB > 1.0f) {
                        fB = 1.0f;
                    }
                    if (fB == 0.0f) {
                        iM = 0;
                    } else {
                        iM = 100;
                        if (!(fB == 1.0f)) {
                            iM = RangesKt.m(Math.round(fB * 100), 1, 99);
                        }
                    }
                    objA = this.f5531a.getContext().getResources().getString(R$string.template_percent, Integer.valueOf(iM));
                }
            } else if (objA == null) {
                objA = this.f5531a.getContext().getResources().getString(R$string.in_progress);
            }
        }
        if (semanticsNode.w().e(semanticsProperties.g())) {
            objA = G(semanticsNode);
        }
        return (String) objA;
    }

    private final void T0(int i11) {
        int i12 = this.f5532b;
        if (i12 == i11) {
            return;
        }
        this.f5532b = i11;
        w0(this, i11, 128, null, null, 12, null);
        w0(this, i12, 256, null, null, 12, null);
    }

    private final AnnotatedString U(SemanticsNode semanticsNode) {
        AnnotatedString annotatedStringX = X(semanticsNode.w());
        List list = (List) SemanticsConfigurationKt.a(semanticsNode.w(), SemanticsProperties.f5919a.C());
        return annotatedStringX == null ? list != null ? (AnnotatedString) CollectionsKt.k0(list) : null : annotatedStringX;
    }

    /* JADX WARN: Code duplicated, block: B:27:0x009a A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:28:0x009c A[LOOP:0: B:5:0x0024->B:28:0x009c, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:54:0x00a7 A[EDGE_INSN: B:54:0x00a7->B:29:0x00a7 BREAK  A[LOOP:0: B:5:0x0024->B:28:0x009c], SYNTHETIC] */
    private final void U0() {
        androidx.compose.ui.semantics.i iVarB;
        androidx.collection.f0 f0Var = new androidx.collection.f0(0, 1, null);
        androidx.collection.f0 f0Var2 = this.f5556z;
        int[] iArr = f0Var2.f2320b;
        long[] jArr = f0Var2.f2319a;
        int length = jArr.length - 2;
        long j11 = 128;
        long j12 = 255;
        char c11 = 7;
        long j13 = -9187201950435737472L;
        if (length >= 0) {
            int i11 = 0;
            while (true) {
                long j14 = jArr[i11];
                long[] jArr2 = jArr;
                if ((((~j14) << 7) & j14 & (-9187201950435737472L)) == -9187201950435737472L) {
                    if (i11 != length) {
                        break;
                        break;
                    }
                    i11++;
                    jArr = jArr2;
                    j11 = 128;
                    j12 = 255;
                } else {
                    int i12 = 8 - ((~(i11 - length)) >>> 31);
                    int i13 = 0;
                    while (i13 < i12) {
                        if ((j14 & j12) < j11) {
                            int i14 = iArr[(i11 << 3) + i13];
                            d2 d2Var = (d2) N().c(i14);
                            SemanticsNode semanticsNodeB = d2Var != null ? d2Var.b() : null;
                            if (semanticsNodeB == null || !semanticsNodeB.w().e(SemanticsProperties.f5919a.u())) {
                                f0Var.f(i14);
                                c2 c2Var = (c2) this.F.c(i14);
                                x0(i14, 32, (c2Var == null || (iVarB = c2Var.b()) == null) ? null : (String) SemanticsConfigurationKt.a(iVarB, SemanticsProperties.f5919a.u()));
                            }
                        }
                        j14 >>= 8;
                        i13++;
                        j11 = 128;
                        j12 = 255;
                    }
                    if (i12 != 8) {
                        break;
                    }
                    if (i11 != length) {
                        break;
                    }
                    i11++;
                    jArr = jArr2;
                    j11 = 128;
                    j12 = 255;
                }
            }
        }
        this.f5556z.r(f0Var);
        this.F.i();
        androidx.collection.o oVarN = N();
        int[] iArr2 = oVarN.f2304b;
        Object[] objArr = oVarN.f2305c;
        long[] jArr3 = oVarN.f2303a;
        int length2 = jArr3.length - 2;
        if (length2 >= 0) {
            int i15 = 0;
            while (true) {
                long j15 = jArr3[i15];
                if ((((~j15) << c11) & j15 & j13) != j13) {
                    int i16 = 8 - ((~(i15 - length2)) >>> 31);
                    for (int i17 = 0; i17 < i16; i17++) {
                        if ((j15 & 255) < 128) {
                            int i18 = (i15 << 3) + i17;
                            int i19 = iArr2[i18];
                            d2 d2Var2 = (d2) objArr[i18];
                            androidx.compose.ui.semantics.i iVarW = d2Var2.b().w();
                            SemanticsProperties semanticsProperties = SemanticsProperties.f5919a;
                            if (iVarW.e(semanticsProperties.u()) && this.f5556z.f(i19)) {
                                x0(i19, 16, (String) d2Var2.b().w().j(semanticsProperties.u()));
                            }
                            this.F.t(i19, new c2(d2Var2.b(), N()));
                        }
                        j15 >>= 8;
                    }
                    if (i16 != 8) {
                        break;
                    }
                }
                if (i15 == length2) {
                    break;
                }
                i15++;
                c11 = 7;
                j13 = -9187201950435737472L;
            }
        }
        this.G = new c2(this.f5531a.getSemanticsOwner().a(), N());
    }

    private final String V(SemanticsNode semanticsNode) {
        AnnotatedString annotatedString;
        if (semanticsNode == null) {
            return null;
        }
        androidx.compose.ui.semantics.i iVarW = semanticsNode.w();
        SemanticsProperties semanticsProperties = SemanticsProperties.f5919a;
        if (iVarW.e(semanticsProperties.d())) {
            return q0.a.d((List) semanticsNode.w().j(semanticsProperties.d()), ",", null, null, 0, null, null, 62, null);
        }
        if (semanticsNode.w().e(semanticsProperties.g())) {
            AnnotatedString annotatedStringX = X(semanticsNode.w());
            if (annotatedStringX != null) {
                return annotatedStringX.i();
            }
            return null;
        }
        List list = (List) SemanticsConfigurationKt.a(semanticsNode.w(), semanticsProperties.C());
        if (list == null || (annotatedString = (AnnotatedString) CollectionsKt.k0(list)) == null) {
            return null;
        }
        return annotatedString.i();
    }

    private final androidx.compose.ui.platform.f W(SemanticsNode semanticsNode, int i11) {
        String strV;
        androidx.compose.ui.text.z zVarE;
        if (semanticsNode == null || (strV = V(semanticsNode)) == null || strV.length() == 0) {
            return null;
        }
        if (i11 == 1) {
            androidx.compose.ui.platform.b bVarA = androidx.compose.ui.platform.b.f5734d.a(this.f5531a.getContext().getResources().getConfiguration().locale);
            bVarA.e(strV);
            return bVarA;
        }
        if (i11 == 2) {
            androidx.compose.ui.platform.g gVarA = androidx.compose.ui.platform.g.f5781d.a(this.f5531a.getContext().getResources().getConfiguration().locale);
            gVarA.e(strV);
            return gVarA;
        }
        if (i11 != 4) {
            if (i11 == 8) {
                androidx.compose.ui.platform.e eVarA = androidx.compose.ui.platform.e.f5776c.a();
                eVarA.e(strV);
                return eVarA;
            }
            if (i11 != 16) {
                return null;
            }
        }
        if (!semanticsNode.w().e(androidx.compose.ui.semantics.h.f5976a.i()) || (zVarE = e2.e(semanticsNode.w())) == null) {
            return null;
        }
        if (i11 == 4) {
            androidx.compose.ui.platform.c cVarA = androidx.compose.ui.platform.c.f5745d.a();
            cVarA.j(strV, zVarE);
            return cVarA;
        }
        androidx.compose.ui.platform.d dVarA = androidx.compose.ui.platform.d.f5757f.a();
        dVarA.j(strV, zVarE, semanticsNode);
        return dVarA;
    }

    private final AnnotatedString X(androidx.compose.ui.semantics.i iVar) {
        return (AnnotatedString) SemanticsConfigurationKt.a(iVar, SemanticsProperties.f5919a.g());
    }

    private final boolean a0(int i11) {
        return this.f5542l == i11;
    }

    private final boolean b0(SemanticsNode semanticsNode) {
        androidx.compose.ui.semantics.i iVarW = semanticsNode.w();
        SemanticsProperties semanticsProperties = SemanticsProperties.f5919a;
        return !iVarW.e(semanticsProperties.d()) && semanticsNode.w().e(semanticsProperties.g());
    }

    private final boolean d0(SemanticsNode semanticsNode) {
        List list = (List) SemanticsConfigurationKt.a(semanticsNode.w(), SemanticsProperties.f5919a.d());
        boolean z10 = ((list != null ? (String) CollectionsKt.k0(list) : null) == null && U(semanticsNode) == null && T(semanticsNode) == null && !S(semanticsNode)) ? false : true;
        if (semanticsNode.w().o()) {
            return true;
        }
        return semanticsNode.A() && z10;
    }

    private final boolean e0() {
        return this.f5535e || (this.f5534d.isEnabled() && this.f5534d.isTouchExplorationEnabled());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void f0(LayoutNode layoutNode) {
        if (this.f5551u.add(layoutNode)) {
            this.f5552v.c(Unit.f67061a);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:88:0x018d -> B:89:0x018e). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Not found exit edge by exit block: B:89:0x018e
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.checkLoopExits(LoopRegionMaker.java:272)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.makeLoopRegion(LoopRegionMaker.java:237)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.process(LoopRegionMaker.java:80)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:92)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.addCases(SwitchRegionMaker.java:127)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.process(SwitchRegionMaker.java:75)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:115)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:111)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:111)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:111)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:111)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:111)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:111)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeMthRegion(RegionMaker.java:49)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:25)
        */
    public final boolean i0(int r18, int r19, android.os.Bundle r20) {
        /*
            Method dump skipped, instruction units count: 1838
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.platform.AndroidComposeViewAccessibilityDelegateCompat.i0(int, int, android.os.Bundle):boolean");
    }

    private static final boolean j0(androidx.compose.ui.semantics.g gVar, float f11) {
        return (f11 < 0.0f && ((Number) gVar.c().invoke()).floatValue() > 0.0f) || (f11 > 0.0f && ((Number) gVar.c().invoke()).floatValue() < ((Number) gVar.a().invoke()).floatValue());
    }

    private static final float k0(float f11, float f12) {
        if (Math.signum(f11) == Math.signum(f12)) {
            return Math.abs(f11) < Math.abs(f12) ? f11 : f12;
        }
        return 0.0f;
    }

    /* JADX WARN: Code duplicated, block: B:110:0x0304  */
    private final void l0(int i11, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat, SemanticsNode semanticsNode) {
        View viewG;
        boolean z10;
        boolean zBooleanValue;
        accessibilityNodeInfoCompat.setClassName("android.view.View");
        androidx.compose.ui.semantics.i iVarW = semanticsNode.w();
        SemanticsProperties semanticsProperties = SemanticsProperties.f5919a;
        if (iVarW.e(semanticsProperties.g())) {
            accessibilityNodeInfoCompat.setClassName("android.widget.EditText");
        }
        if (semanticsNode.w().e(semanticsProperties.C())) {
            accessibilityNodeInfoCompat.setClassName("android.widget.TextView");
        }
        androidx.compose.ui.semantics.f fVar = (androidx.compose.ui.semantics.f) SemanticsConfigurationKt.a(semanticsNode.w(), semanticsProperties.x());
        if (fVar != null) {
            fVar.n();
            if (semanticsNode.x() || semanticsNode.t().isEmpty()) {
                androidx.compose.ui.semantics.f.a aVar = androidx.compose.ui.semantics.f.f5964b;
                if (androidx.compose.ui.semantics.f.k(fVar.n(), aVar.g())) {
                    accessibilityNodeInfoCompat.setRoleDescription(this.f5531a.getContext().getResources().getString(R$string.tab));
                } else if (androidx.compose.ui.semantics.f.k(fVar.n(), aVar.f())) {
                    accessibilityNodeInfoCompat.setRoleDescription(this.f5531a.getContext().getResources().getString(R$string.switch_role));
                } else {
                    String strH = e2.h(fVar.n());
                    if (!androidx.compose.ui.semantics.f.k(fVar.n(), aVar.d()) || semanticsNode.A() || semanticsNode.w().o()) {
                        accessibilityNodeInfoCompat.setClassName(strH);
                    }
                }
            }
            Unit unit = Unit.f67061a;
        }
        accessibilityNodeInfoCompat.setPackageName(this.f5531a.getContext().getPackageName());
        accessibilityNodeInfoCompat.setImportantForAccessibility(e2.f(semanticsNode));
        List listT = semanticsNode.t();
        int size = listT.size();
        for (int i12 = 0; i12 < size; i12++) {
            SemanticsNode semanticsNode2 = (SemanticsNode) listT.get(i12);
            if (N().a(semanticsNode2.o())) {
                AndroidViewHolder androidViewHolder = this.f5531a.getAndroidViewsHandler$ui_release().getLayoutNodeToHolder().get(semanticsNode2.q());
                if (semanticsNode2.o() != -1) {
                    if (androidViewHolder != null) {
                        accessibilityNodeInfoCompat.addChild(androidViewHolder);
                    } else {
                        accessibilityNodeInfoCompat.addChild(this.f5531a, semanticsNode2.o());
                    }
                }
            }
        }
        if (i11 == this.f5542l) {
            accessibilityNodeInfoCompat.setAccessibilityFocused(true);
            accessibilityNodeInfoCompat.addAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS);
        } else {
            accessibilityNodeInfoCompat.setAccessibilityFocused(false);
            accessibilityNodeInfoCompat.addAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_ACCESSIBILITY_FOCUS);
        }
        I0(semanticsNode, accessibilityNodeInfoCompat);
        E0(semanticsNode, accessibilityNodeInfoCompat);
        H0(semanticsNode, accessibilityNodeInfoCompat);
        F0(semanticsNode, accessibilityNodeInfoCompat);
        androidx.compose.ui.semantics.i iVarW2 = semanticsNode.w();
        SemanticsProperties semanticsProperties2 = SemanticsProperties.f5919a;
        ToggleableState toggleableState = (ToggleableState) SemanticsConfigurationKt.a(iVarW2, semanticsProperties2.F());
        if (toggleableState != null) {
            if (toggleableState == ToggleableState.On) {
                accessibilityNodeInfoCompat.setChecked(true);
            } else if (toggleableState == ToggleableState.Off) {
                accessibilityNodeInfoCompat.setChecked(false);
            }
            Unit unit2 = Unit.f67061a;
        }
        Boolean bool = (Boolean) SemanticsConfigurationKt.a(semanticsNode.w(), semanticsProperties2.z());
        if (bool != null) {
            boolean zBooleanValue2 = bool.booleanValue();
            if (fVar == null ? false : androidx.compose.ui.semantics.f.k(fVar.n(), androidx.compose.ui.semantics.f.f5964b.g())) {
                accessibilityNodeInfoCompat.setSelected(zBooleanValue2);
            } else {
                accessibilityNodeInfoCompat.setChecked(zBooleanValue2);
            }
            Unit unit3 = Unit.f67061a;
        }
        if (!semanticsNode.w().o() || semanticsNode.t().isEmpty()) {
            List list = (List) SemanticsConfigurationKt.a(semanticsNode.w(), semanticsProperties2.d());
            accessibilityNodeInfoCompat.setContentDescription(list != null ? (String) CollectionsKt.k0(list) : null);
        }
        String str = (String) SemanticsConfigurationKt.a(semanticsNode.w(), semanticsProperties2.B());
        if (str != null) {
            SemanticsNode semanticsNodeR = semanticsNode;
            while (true) {
                if (semanticsNodeR == null) {
                    zBooleanValue = false;
                    break;
                }
                androidx.compose.ui.semantics.i iVarW3 = semanticsNodeR.w();
                SemanticsPropertiesAndroid semanticsPropertiesAndroid = SemanticsPropertiesAndroid.f5945a;
                if (iVarW3.e(semanticsPropertiesAndroid.a())) {
                    zBooleanValue = ((Boolean) semanticsNodeR.w().j(semanticsPropertiesAndroid.a())).booleanValue();
                    break;
                }
                semanticsNodeR = semanticsNodeR.r();
            }
            if (zBooleanValue) {
                accessibilityNodeInfoCompat.setViewIdResourceName(str);
            }
        }
        androidx.compose.ui.semantics.i iVarW4 = semanticsNode.w();
        SemanticsProperties semanticsProperties3 = SemanticsProperties.f5919a;
        if (((Unit) SemanticsConfigurationKt.a(iVarW4, semanticsProperties3.j())) != null) {
            accessibilityNodeInfoCompat.setHeading(true);
            Unit unit4 = Unit.f67061a;
        }
        accessibilityNodeInfoCompat.setPassword(semanticsNode.w().e(semanticsProperties3.v()));
        accessibilityNodeInfoCompat.setEditable(semanticsNode.w().e(semanticsProperties3.p()));
        Integer num = (Integer) SemanticsConfigurationKt.a(semanticsNode.w(), semanticsProperties3.t());
        accessibilityNodeInfoCompat.setMaxTextLength(num != null ? num.intValue() : -1);
        accessibilityNodeInfoCompat.setEnabled(AndroidComposeViewAccessibilityDelegateCompat_androidKt.i(semanticsNode));
        accessibilityNodeInfoCompat.setFocusable(semanticsNode.w().e(semanticsProperties3.i()));
        if (accessibilityNodeInfoCompat.isFocusable()) {
            accessibilityNodeInfoCompat.setFocused(((Boolean) semanticsNode.w().j(semanticsProperties3.i())).booleanValue());
            if (accessibilityNodeInfoCompat.isFocused()) {
                accessibilityNodeInfoCompat.addAction(2);
            } else {
                accessibilityNodeInfoCompat.addAction(1);
            }
        }
        accessibilityNodeInfoCompat.setVisibleToUser(AndroidComposeViewAccessibilityDelegateCompat_androidKt.m(semanticsNode));
        android.support.v4.media.session.c.a(SemanticsConfigurationKt.a(semanticsNode.w(), semanticsProperties3.s()));
        accessibilityNodeInfoCompat.setClickable(false);
        androidx.compose.ui.semantics.i iVarW5 = semanticsNode.w();
        androidx.compose.ui.semantics.h hVar = androidx.compose.ui.semantics.h.f5976a;
        androidx.compose.ui.semantics.a aVar2 = (androidx.compose.ui.semantics.a) SemanticsConfigurationKt.a(iVarW5, hVar.j());
        if (aVar2 != null) {
            boolean zC = Intrinsics.c(SemanticsConfigurationKt.a(semanticsNode.w(), semanticsProperties3.z()), Boolean.TRUE);
            androidx.compose.ui.semantics.f.a aVar3 = androidx.compose.ui.semantics.f.f5964b;
            if (fVar == null ? false : androidx.compose.ui.semantics.f.k(fVar.n(), aVar3.g())) {
                z10 = true;
            } else if (fVar == null ? false : androidx.compose.ui.semantics.f.k(fVar.n(), aVar3.e())) {
                z10 = true;
            } else {
                z10 = false;
            }
            accessibilityNodeInfoCompat.setClickable(!z10 || (z10 && !zC));
            if (AndroidComposeViewAccessibilityDelegateCompat_androidKt.i(semanticsNode) && accessibilityNodeInfoCompat.isClickable()) {
                accessibilityNodeInfoCompat.addAction(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(16, aVar2.b()));
            }
            Unit unit5 = Unit.f67061a;
        }
        accessibilityNodeInfoCompat.setLongClickable(false);
        androidx.compose.ui.semantics.a aVar4 = (androidx.compose.ui.semantics.a) SemanticsConfigurationKt.a(semanticsNode.w(), hVar.l());
        if (aVar4 != null) {
            accessibilityNodeInfoCompat.setLongClickable(true);
            if (AndroidComposeViewAccessibilityDelegateCompat_androidKt.i(semanticsNode)) {
                accessibilityNodeInfoCompat.addAction(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(32, aVar4.b()));
            }
            Unit unit6 = Unit.f67061a;
        }
        androidx.compose.ui.semantics.a aVar5 = (androidx.compose.ui.semantics.a) SemanticsConfigurationKt.a(semanticsNode.w(), hVar.c());
        if (aVar5 != null) {
            accessibilityNodeInfoCompat.addAction(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(16384, aVar5.b()));
            Unit unit7 = Unit.f67061a;
        }
        if (AndroidComposeViewAccessibilityDelegateCompat_androidKt.i(semanticsNode)) {
            androidx.compose.ui.semantics.a aVar6 = (androidx.compose.ui.semantics.a) SemanticsConfigurationKt.a(semanticsNode.w(), hVar.x());
            if (aVar6 != null) {
                accessibilityNodeInfoCompat.addAction(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(2097152, aVar6.b()));
                Unit unit8 = Unit.f67061a;
            }
            androidx.compose.ui.semantics.a aVar7 = (androidx.compose.ui.semantics.a) SemanticsConfigurationKt.a(semanticsNode.w(), hVar.k());
            if (aVar7 != null) {
                accessibilityNodeInfoCompat.addAction(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(R.id.accessibilityActionImeEnter, aVar7.b()));
                Unit unit9 = Unit.f67061a;
            }
            androidx.compose.ui.semantics.a aVar8 = (androidx.compose.ui.semantics.a) SemanticsConfigurationKt.a(semanticsNode.w(), hVar.e());
            if (aVar8 != null) {
                accessibilityNodeInfoCompat.addAction(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(65536, aVar8.b()));
                Unit unit10 = Unit.f67061a;
            }
            androidx.compose.ui.semantics.a aVar9 = (androidx.compose.ui.semantics.a) SemanticsConfigurationKt.a(semanticsNode.w(), hVar.q());
            if (aVar9 != null) {
                if (accessibilityNodeInfoCompat.isFocused() && this.f5531a.getClipboardManager().b()) {
                    accessibilityNodeInfoCompat.addAction(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(32768, aVar9.b()));
                }
                Unit unit11 = Unit.f67061a;
            }
        }
        String strV = V(semanticsNode);
        if (!(strV == null || strV.length() == 0)) {
            accessibilityNodeInfoCompat.setTextSelection(M(semanticsNode), L(semanticsNode));
            androidx.compose.ui.semantics.a aVar10 = (androidx.compose.ui.semantics.a) SemanticsConfigurationKt.a(semanticsNode.w(), hVar.w());
            accessibilityNodeInfoCompat.addAction(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(131072, aVar10 != null ? aVar10.b() : null));
            accessibilityNodeInfoCompat.addAction(256);
            accessibilityNodeInfoCompat.addAction(512);
            accessibilityNodeInfoCompat.setMovementGranularities(11);
            List list2 = (List) SemanticsConfigurationKt.a(semanticsNode.w(), semanticsProperties3.d());
            if ((list2 == null || list2.isEmpty()) && semanticsNode.w().e(hVar.i()) && !AndroidComposeViewAccessibilityDelegateCompat_androidKt.j(semanticsNode)) {
                accessibilityNodeInfoCompat.setMovementGranularities(accessibilityNodeInfoCompat.getMovementGranularities() | 20);
            }
        }
        int i13 = Build.VERSION.SDK_INT;
        if (i13 >= 26) {
            ArrayList arrayList = new ArrayList();
            arrayList.add("androidx.compose.ui.semantics.id");
            CharSequence text = accessibilityNodeInfoCompat.getText();
            if (!(text == null || text.length() == 0) && semanticsNode.w().e(hVar.i())) {
                arrayList.add(AccessibilityNodeInfoCompat.EXTRA_DATA_TEXT_CHARACTER_LOCATION_KEY);
            }
            if (semanticsNode.w().e(semanticsProperties3.B())) {
                arrayList.add("androidx.compose.ui.semantics.testTag");
            }
            accessibilityNodeInfoCompat.setAvailableExtraData(arrayList);
        }
        androidx.compose.ui.semantics.e eVar = (androidx.compose.ui.semantics.e) SemanticsConfigurationKt.a(semanticsNode.w(), semanticsProperties3.w());
        if (eVar != null) {
            if (semanticsNode.w().e(hVar.v())) {
                accessibilityNodeInfoCompat.setClassName("android.widget.SeekBar");
            } else {
                accessibilityNodeInfoCompat.setClassName("android.widget.ProgressBar");
            }
            if (eVar != androidx.compose.ui.semantics.e.f5959d.a()) {
                accessibilityNodeInfoCompat.setRangeInfo(AccessibilityNodeInfoCompat.RangeInfoCompat.obtain(1, ((Number) eVar.c().j()).floatValue(), ((Number) eVar.c().e()).floatValue(), eVar.b()));
            }
            if (semanticsNode.w().e(hVar.v()) && AndroidComposeViewAccessibilityDelegateCompat_androidKt.i(semanticsNode)) {
                if (eVar.b() < RangesKt.e(((Number) eVar.c().e()).floatValue(), ((Number) eVar.c().j()).floatValue())) {
                    accessibilityNodeInfoCompat.addAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_FORWARD);
                }
                if (eVar.b() > RangesKt.h(((Number) eVar.c().j()).floatValue(), ((Number) eVar.c().e()).floatValue())) {
                    accessibilityNodeInfoCompat.addAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_BACKWARD);
                }
            }
        }
        if (i13 >= 24) {
            b.a(accessibilityNodeInfoCompat, semanticsNode);
        }
        CollectionInfo_androidKt.d(semanticsNode, accessibilityNodeInfoCompat);
        CollectionInfo_androidKt.e(semanticsNode, accessibilityNodeInfoCompat);
        androidx.compose.ui.semantics.g gVar = (androidx.compose.ui.semantics.g) SemanticsConfigurationKt.a(semanticsNode.w(), semanticsProperties3.k());
        androidx.compose.ui.semantics.a aVar11 = (androidx.compose.ui.semantics.a) SemanticsConfigurationKt.a(semanticsNode.w(), hVar.s());
        if (gVar != null && aVar11 != null) {
            if (!CollectionInfo_androidKt.b(semanticsNode)) {
                accessibilityNodeInfoCompat.setClassName("android.widget.HorizontalScrollView");
            }
            if (((Number) gVar.a().invoke()).floatValue() > 0.0f) {
                accessibilityNodeInfoCompat.setScrollable(true);
            }
            if (AndroidComposeViewAccessibilityDelegateCompat_androidKt.i(semanticsNode)) {
                if (n0(gVar)) {
                    accessibilityNodeInfoCompat.addAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_FORWARD);
                    accessibilityNodeInfoCompat.addAction(!AndroidComposeViewAccessibilityDelegateCompat_androidKt.l(semanticsNode) ? AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_RIGHT : AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_LEFT);
                }
                if (m0(gVar)) {
                    accessibilityNodeInfoCompat.addAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_BACKWARD);
                    accessibilityNodeInfoCompat.addAction(!AndroidComposeViewAccessibilityDelegateCompat_androidKt.l(semanticsNode) ? AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_LEFT : AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_RIGHT);
                }
            }
        }
        androidx.compose.ui.semantics.g gVar2 = (androidx.compose.ui.semantics.g) SemanticsConfigurationKt.a(semanticsNode.w(), semanticsProperties3.H());
        if (gVar2 != null && aVar11 != null) {
            if (!CollectionInfo_androidKt.b(semanticsNode)) {
                accessibilityNodeInfoCompat.setClassName("android.widget.ScrollView");
            }
            if (((Number) gVar2.a().invoke()).floatValue() > 0.0f) {
                accessibilityNodeInfoCompat.setScrollable(true);
            }
            if (AndroidComposeViewAccessibilityDelegateCompat_androidKt.i(semanticsNode)) {
                if (n0(gVar2)) {
                    accessibilityNodeInfoCompat.addAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_FORWARD);
                    accessibilityNodeInfoCompat.addAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_DOWN);
                }
                if (m0(gVar2)) {
                    accessibilityNodeInfoCompat.addAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_BACKWARD);
                    accessibilityNodeInfoCompat.addAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_UP);
                }
            }
        }
        if (i13 >= 29) {
            c.a(accessibilityNodeInfoCompat, semanticsNode);
        }
        accessibilityNodeInfoCompat.setPaneTitle((CharSequence) SemanticsConfigurationKt.a(semanticsNode.w(), semanticsProperties3.u()));
        if (AndroidComposeViewAccessibilityDelegateCompat_androidKt.i(semanticsNode)) {
            androidx.compose.ui.semantics.a aVar12 = (androidx.compose.ui.semantics.a) SemanticsConfigurationKt.a(semanticsNode.w(), hVar.g());
            if (aVar12 != null) {
                accessibilityNodeInfoCompat.addAction(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(262144, aVar12.b()));
                Unit unit12 = Unit.f67061a;
            }
            androidx.compose.ui.semantics.a aVar13 = (androidx.compose.ui.semantics.a) SemanticsConfigurationKt.a(semanticsNode.w(), hVar.b());
            if (aVar13 != null) {
                accessibilityNodeInfoCompat.addAction(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(524288, aVar13.b()));
                Unit unit13 = Unit.f67061a;
            }
            androidx.compose.ui.semantics.a aVar14 = (androidx.compose.ui.semantics.a) SemanticsConfigurationKt.a(semanticsNode.w(), hVar.f());
            if (aVar14 != null) {
                accessibilityNodeInfoCompat.addAction(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(1048576, aVar14.b()));
                Unit unit14 = Unit.f67061a;
            }
            if (semanticsNode.w().e(hVar.d())) {
                List list3 = (List) semanticsNode.w().j(hVar.d());
                int size2 = list3.size();
                androidx.collection.m mVar = N;
                if (size2 >= mVar.b()) {
                    throw new IllegalStateException("Can't have more than " + mVar.b() + " custom actions for one widget");
                }
                androidx.collection.y0 y0Var = new androidx.collection.y0(0, 1, null);
                androidx.collection.k0 k0VarB = androidx.collection.q0.b();
                if (this.f5548r.d(i11)) {
                    androidx.collection.k0 k0Var = (androidx.collection.k0) this.f5548r.f(i11);
                    androidx.collection.d0 d0Var = new androidx.collection.d0(0, 1, null);
                    int[] iArr = mVar.f2298a;
                    int i14 = mVar.f2299b;
                    for (int i15 = 0; i15 < i14; i15++) {
                        d0Var.e(iArr[i15]);
                    }
                    ArrayList arrayList2 = new ArrayList();
                    if (list3.size() > 0) {
                        android.support.v4.media.session.c.a(list3.get(0));
                        Intrinsics.e(k0Var);
                        throw null;
                    }
                    if (arrayList2.size() > 0) {
                        android.support.v4.media.session.c.a(arrayList2.get(0));
                        d0Var.a(0);
                        throw null;
                    }
                } else if (list3.size() > 0) {
                    android.support.v4.media.session.c.a(list3.get(0));
                    mVar.a(0);
                    throw null;
                }
                this.f5547q.l(i11, y0Var);
                this.f5548r.l(i11, k0VarB);
            }
        }
        accessibilityNodeInfoCompat.setScreenReaderFocusable(d0(semanticsNode));
        int iE = this.A.e(i11, -1);
        if (iE != -1) {
            View viewG2 = e2.g(this.f5531a.getAndroidViewsHandler$ui_release(), iE);
            if (viewG2 != null) {
                accessibilityNodeInfoCompat.setTraversalBefore(viewG2);
            } else {
                accessibilityNodeInfoCompat.setTraversalBefore(this.f5531a, iE);
            }
            x(i11, accessibilityNodeInfoCompat, this.C, null);
        }
        int iE2 = this.B.e(i11, -1);
        if (iE2 == -1 || (viewG = e2.g(this.f5531a.getAndroidViewsHandler$ui_release(), iE2)) == null) {
            return;
        }
        accessibilityNodeInfoCompat.setTraversalAfter(viewG);
        x(i11, accessibilityNodeInfoCompat, this.D, null);
    }

    private static final boolean m0(androidx.compose.ui.semantics.g gVar) {
        return (((Number) gVar.c().invoke()).floatValue() > 0.0f && !gVar.b()) || (((Number) gVar.c().invoke()).floatValue() < ((Number) gVar.a().invoke()).floatValue() && gVar.b());
    }

    private static final boolean n0(androidx.compose.ui.semantics.g gVar) {
        return (((Number) gVar.c().invoke()).floatValue() < ((Number) gVar.a().invoke()).floatValue() && !gVar.b()) || (((Number) gVar.c().invoke()).floatValue() > 0.0f && gVar.b());
    }

    private final boolean o0(int i11, List list) {
        boolean z10;
        b2 b2VarA = e2.a(list, i11);
        if (b2VarA != null) {
            z10 = false;
        } else {
            b2VarA = new b2(i11, this.J, null, null, null, null);
            z10 = true;
        }
        this.J.add(b2VarA);
        return z10;
    }

    private final boolean p0(int i11) {
        if (!e0() || a0(i11)) {
            return false;
        }
        int i12 = this.f5542l;
        if (i12 != Integer.MIN_VALUE) {
            w0(this, i12, 65536, null, null, 12, null);
        }
        this.f5542l = i11;
        this.f5531a.invalidate();
        w0(this, i11, 32768, null, null, 12, null);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void q0(final b2 b2Var) {
        if (b2Var.isValidOwnerScope()) {
            this.f5531a.getSnapshotObserver().i(b2Var, this.K, new Function0<Unit>() { // from class: androidx.compose.ui.platform.AndroidComposeViewAccessibilityDelegateCompat$scheduleScrollEventIfNeeded$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Object invoke() {
                    m158invoke();
                    return Unit.f67061a;
                }

                /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
                public final void m158invoke() {
                    SemanticsNode semanticsNodeB;
                    LayoutNode layoutNodeQ;
                    androidx.compose.ui.semantics.g gVarA = b2Var.a();
                    androidx.compose.ui.semantics.g gVarE = b2Var.e();
                    Float fB = b2Var.b();
                    Float fC = b2Var.c();
                    float fFloatValue = (gVarA == null || fB == null) ? 0.0f : ((Number) gVarA.c().invoke()).floatValue() - fB.floatValue();
                    float fFloatValue2 = (gVarE == null || fC == null) ? 0.0f : ((Number) gVarE.c().invoke()).floatValue() - fC.floatValue();
                    if (fFloatValue != 0.0f || fFloatValue2 != 0.0f) {
                        int iS0 = this.s0(b2Var.d());
                        d2 d2Var = (d2) this.N().c(this.f5542l);
                        if (d2Var != null) {
                            AndroidComposeViewAccessibilityDelegateCompat androidComposeViewAccessibilityDelegateCompat = this;
                            try {
                                AccessibilityNodeInfoCompat accessibilityNodeInfoCompat = androidComposeViewAccessibilityDelegateCompat.f5543m;
                                if (accessibilityNodeInfoCompat != null) {
                                    accessibilityNodeInfoCompat.setBoundsInScreen(androidComposeViewAccessibilityDelegateCompat.y(d2Var));
                                    Unit unit = Unit.f67061a;
                                }
                            } catch (IllegalStateException unused) {
                                Unit unit2 = Unit.f67061a;
                            }
                        }
                        this.Y().invalidate();
                        d2 d2Var2 = (d2) this.N().c(iS0);
                        if (d2Var2 != null && (semanticsNodeB = d2Var2.b()) != null && (layoutNodeQ = semanticsNodeB.q()) != null) {
                            AndroidComposeViewAccessibilityDelegateCompat androidComposeViewAccessibilityDelegateCompat2 = this;
                            if (gVarA != null) {
                                androidComposeViewAccessibilityDelegateCompat2.f5545o.t(iS0, gVarA);
                            }
                            if (gVarE != null) {
                                androidComposeViewAccessibilityDelegateCompat2.f5546p.t(iS0, gVarE);
                            }
                            androidComposeViewAccessibilityDelegateCompat2.f0(layoutNodeQ);
                        }
                    }
                    if (gVarA != null) {
                        b2Var.g((Float) gVarA.c().invoke());
                    }
                    if (gVarE != null) {
                        b2Var.h((Float) gVarE.c().invoke());
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r0(AndroidComposeViewAccessibilityDelegateCompat androidComposeViewAccessibilityDelegateCompat) {
        Trace.beginSection("measureAndLayout");
        try {
            androidx.compose.ui.node.x0.c(androidComposeViewAccessibilityDelegateCompat.f5531a, false, 1, null);
            Unit unit = Unit.f67061a;
            Trace.endSection();
            Trace.beginSection("checkForSemanticsChanges");
            try {
                androidComposeViewAccessibilityDelegateCompat.C();
                Trace.endSection();
                androidComposeViewAccessibilityDelegateCompat.H = false;
            } catch (Throwable th2) {
                Trace.endSection();
                throw th2;
            }
        } catch (Throwable th3) {
            Trace.endSection();
            throw th3;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int s0(int i11) {
        if (i11 == this.f5531a.getSemanticsOwner().a().o()) {
            return -1;
        }
        return i11;
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0092 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:28:0x0094 A[LOOP:1: B:15:0x0054->B:28:0x0094, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:42:0x0097 A[EDGE_INSN: B:42:0x0097->B:29:0x0097 BREAK  A[LOOP:1: B:15:0x0054->B:28:0x0094], SYNTHETIC] */
    private final void t0(SemanticsNode semanticsNode, c2 c2Var) {
        androidx.collection.f0 f0VarB = androidx.collection.r.b();
        List listT = semanticsNode.t();
        int size = listT.size();
        for (int i11 = 0; i11 < size; i11++) {
            SemanticsNode semanticsNode2 = (SemanticsNode) listT.get(i11);
            if (N().a(semanticsNode2.o())) {
                if (!c2Var.a().a(semanticsNode2.o())) {
                    f0(semanticsNode.q());
                    return;
                }
                f0VarB.f(semanticsNode2.o());
            }
        }
        androidx.collection.f0 f0VarA = c2Var.a();
        int[] iArr = f0VarA.f2320b;
        long[] jArr = f0VarA.f2319a;
        int length = jArr.length - 2;
        if (length >= 0) {
            int i12 = 0;
            while (true) {
                long j11 = jArr[i12];
                if ((((~j11) << 7) & j11 & (-9187201950435737472L)) == -9187201950435737472L) {
                    if (i12 != length) {
                        break;
                        break;
                    }
                    i12++;
                } else {
                    int i13 = 8 - ((~(i12 - length)) >>> 31);
                    for (int i14 = 0; i14 < i13; i14++) {
                        if ((255 & j11) < 128 && !f0VarB.a(iArr[(i12 << 3) + i14])) {
                            f0(semanticsNode.q());
                            return;
                        }
                        j11 >>= 8;
                    }
                    if (i13 != 8) {
                        break;
                    } else if (i12 != length) {
                        break;
                    } else {
                        i12++;
                    }
                }
            }
        }
        List listT2 = semanticsNode.t();
        int size2 = listT2.size();
        for (int i15 = 0; i15 < size2; i15++) {
            SemanticsNode semanticsNode3 = (SemanticsNode) listT2.get(i15);
            if (N().a(semanticsNode3.o())) {
                Object objC = this.F.c(semanticsNode3.o());
                Intrinsics.e(objC);
                t0(semanticsNode3, (c2) objC);
            }
        }
    }

    private final boolean u0(AccessibilityEvent accessibilityEvent) {
        if (!c0()) {
            return false;
        }
        if (accessibilityEvent.getEventType() == 2048 || accessibilityEvent.getEventType() == 32768) {
            this.f5544n = true;
        }
        try {
            return ((Boolean) this.f5533c.invoke(accessibilityEvent)).booleanValue();
        } finally {
            this.f5544n = false;
        }
    }

    private final boolean v0(int i11, int i12, Integer num, List list) {
        if (i11 == Integer.MIN_VALUE || !c0()) {
            return false;
        }
        AccessibilityEvent accessibilityEventE = E(i11, i12);
        if (num != null) {
            accessibilityEventE.setContentChangeTypes(num.intValue());
        }
        if (list != null) {
            accessibilityEventE.setContentDescription(q0.a.d(list, ",", null, null, 0, null, null, 62, null));
        }
        Trace.beginSection("sendEvent");
        try {
            return u0(accessibilityEventE);
        } finally {
            Trace.endSection();
        }
    }

    static /* synthetic */ boolean w0(AndroidComposeViewAccessibilityDelegateCompat androidComposeViewAccessibilityDelegateCompat, int i11, int i12, Integer num, List list, int i13, Object obj) {
        if ((i13 & 4) != 0) {
            num = null;
        }
        if ((i13 & 8) != 0) {
            list = null;
        }
        return androidComposeViewAccessibilityDelegateCompat.v0(i11, i12, num, list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void x(int i11, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat, String str, Bundle bundle) {
        SemanticsNode semanticsNodeB;
        d2 d2Var = (d2) N().c(i11);
        if (d2Var == null || (semanticsNodeB = d2Var.b()) == null) {
            return;
        }
        String strV = V(semanticsNodeB);
        if (Intrinsics.c(str, this.C)) {
            int iE = this.A.e(i11, -1);
            if (iE != -1) {
                accessibilityNodeInfoCompat.getExtras().putInt(str, iE);
                return;
            }
            return;
        }
        if (Intrinsics.c(str, this.D)) {
            int iE2 = this.B.e(i11, -1);
            if (iE2 != -1) {
                accessibilityNodeInfoCompat.getExtras().putInt(str, iE2);
                return;
            }
            return;
        }
        if (!semanticsNodeB.w().e(androidx.compose.ui.semantics.h.f5976a.i()) || bundle == null || !Intrinsics.c(str, AccessibilityNodeInfoCompat.EXTRA_DATA_TEXT_CHARACTER_LOCATION_KEY)) {
            androidx.compose.ui.semantics.i iVarW = semanticsNodeB.w();
            SemanticsProperties semanticsProperties = SemanticsProperties.f5919a;
            if (!iVarW.e(semanticsProperties.B()) || bundle == null || !Intrinsics.c(str, "androidx.compose.ui.semantics.testTag")) {
                if (Intrinsics.c(str, "androidx.compose.ui.semantics.id")) {
                    accessibilityNodeInfoCompat.getExtras().putInt(str, semanticsNodeB.o());
                    return;
                }
                return;
            } else {
                String str2 = (String) SemanticsConfigurationKt.a(semanticsNodeB.w(), semanticsProperties.B());
                if (str2 != null) {
                    accessibilityNodeInfoCompat.getExtras().putCharSequence(str, str2);
                    return;
                }
                return;
            }
        }
        int i12 = bundle.getInt(AccessibilityNodeInfoCompat.EXTRA_DATA_TEXT_CHARACTER_LOCATION_ARG_START_INDEX, -1);
        int i13 = bundle.getInt(AccessibilityNodeInfoCompat.EXTRA_DATA_TEXT_CHARACTER_LOCATION_ARG_LENGTH, -1);
        if (i13 > 0 && i12 >= 0) {
            if (i12 < (strV != null ? strV.length() : Integer.MAX_VALUE)) {
                androidx.compose.ui.text.z zVarE = e2.e(semanticsNodeB.w());
                if (zVarE == null) {
                    return;
                }
                ArrayList arrayList = new ArrayList();
                for (int i14 = 0; i14 < i13; i14++) {
                    int i15 = i12 + i14;
                    if (i15 >= zVarE.k().j().length()) {
                        arrayList.add(null);
                    } else {
                        arrayList.add(O0(semanticsNodeB, zVarE.d(i15)));
                    }
                }
                accessibilityNodeInfoCompat.getExtras().putParcelableArray(str, (Parcelable[]) arrayList.toArray(new RectF[0]));
                return;
            }
        }
        Log.e("AccessibilityDelegate", "Invalid arguments for accessibility character locations");
    }

    private final void x0(int i11, int i12, String str) {
        AccessibilityEvent accessibilityEventE = E(s0(i11), 32);
        accessibilityEventE.setContentChangeTypes(i12);
        if (str != null) {
            accessibilityEventE.getText().add(str);
        }
        u0(accessibilityEventE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Rect y(d2 d2Var) {
        Rect rectA = d2Var.a();
        long jMo116localToScreenMKHz9U = this.f5531a.mo116localToScreenMKHz9U(y.h.a(rectA.left, rectA.top));
        long jMo116localToScreenMKHz9U2 = this.f5531a.mo116localToScreenMKHz9U(y.h.a(rectA.right, rectA.bottom));
        return new Rect((int) Math.floor(y.g.m(jMo116localToScreenMKHz9U)), (int) Math.floor(y.g.n(jMo116localToScreenMKHz9U)), (int) Math.ceil(y.g.m(jMo116localToScreenMKHz9U2)), (int) Math.ceil(y.g.n(jMo116localToScreenMKHz9U2)));
    }

    private final void y0(int i11) {
        f fVar = this.f5554x;
        if (fVar != null) {
            if (i11 != fVar.d().o()) {
                return;
            }
            if (SystemClock.uptimeMillis() - fVar.f() <= 1000) {
                AccessibilityEvent accessibilityEventE = E(s0(fVar.d().o()), 131072);
                accessibilityEventE.setFromIndex(fVar.b());
                accessibilityEventE.setToIndex(fVar.e());
                accessibilityEventE.setAction(fVar.a());
                accessibilityEventE.setMovementGranularity(fVar.c());
                accessibilityEventE.getText().add(V(fVar.d()));
                u0(accessibilityEventE);
            }
        }
        this.f5554x = null;
    }

    /* JADX WARN: Code duplicated, block: B:159:0x0563  */
    /* JADX WARN: Code duplicated, block: B:183:0x060b  */
    /*  JADX ERROR: NullPointerException in pass: ProcessVariables
        java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.SSAVar.getUseList()" because "ssaVar" is null
        	at jadx.core.dex.visitors.regions.variables.ProcessVariables$1.processBlock(ProcessVariables.java:96)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:93)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:27)
        	at jadx.core.dex.visitors.regions.variables.ProcessVariables.removeUnusedResults(ProcessVariables.java:73)
        	at jadx.core.dex.visitors.regions.variables.ProcessVariables.visit(ProcessVariables.java:48)
        */
    private final void z0(androidx.collection.o r37) {
        /*
            Method dump skipped, instruction units count: 1620
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.platform.AndroidComposeViewAccessibilityDelegateCompat.z0(androidx.collection.o):void");
    }

    public final boolean A(boolean z10, int i11, long j11) {
        if (Intrinsics.c(Looper.getMainLooper().getThread(), Thread.currentThread())) {
            return B(N(), z10, i11, j11);
        }
        return false;
    }

    public final void C0(boolean z10) {
        this.f5535e = z10;
        this.f5553w = true;
    }

    public final void G0(long j11) {
        this.f5536f = j11;
    }

    public final boolean I(MotionEvent motionEvent) {
        if (!e0()) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action == 7 || action == 9) {
            int iZ = Z(motionEvent.getX(), motionEvent.getY());
            boolean zDispatchGenericMotionEvent = this.f5531a.getAndroidViewsHandler$ui_release().dispatchGenericMotionEvent(motionEvent);
            T0(iZ);
            if (iZ == Integer.MIN_VALUE) {
                return zDispatchGenericMotionEvent;
            }
            return true;
        }
        if (action != 10) {
            return false;
        }
        if (this.f5532b == Integer.MIN_VALUE) {
            return this.f5531a.getAndroidViewsHandler$ui_release().dispatchGenericMotionEvent(motionEvent);
        }
        T0(Integer.MIN_VALUE);
        return true;
    }

    public final String O() {
        return this.D;
    }

    public final String P() {
        return this.C;
    }

    public final androidx.collection.c0 Q() {
        return this.B;
    }

    public final androidx.collection.c0 R() {
        return this.A;
    }

    public final AndroidComposeView Y() {
        return this.f5531a;
    }

    public final int Z(float f11, float f12) {
        androidx.compose.ui.node.q0 q0VarE0;
        androidx.compose.ui.node.x0.c(this.f5531a, false, 1, null);
        androidx.compose.ui.node.q qVar = new androidx.compose.ui.node.q();
        this.f5531a.getRoot().s0(y.h.a(f11, f12), qVar, (12 & 4) != 0, (12 & 8) != 0);
        androidx.compose.ui.f.c cVar = (androidx.compose.ui.f.c) CollectionsKt.v0(qVar);
        LayoutNode layoutNodeM = cVar != null ? androidx.compose.ui.node.g.m(cVar) : null;
        if (layoutNodeM != null && (q0VarE0 = layoutNodeM.e0()) != null && q0VarE0.q(androidx.compose.ui.node.s0.a(8)) && AndroidComposeViewAccessibilityDelegateCompat_androidKt.m(androidx.compose.ui.semantics.l.a(layoutNodeM, false)) && this.f5531a.getAndroidViewsHandler$ui_release().getLayoutNodeToHolder().get(layoutNodeM) == null) {
            return s0(layoutNodeM.j0());
        }
        return Integer.MIN_VALUE;
    }

    public final boolean c0() {
        return this.f5535e || (this.f5534d.isEnabled() && !this.f5539i.isEmpty());
    }

    public final void g0(LayoutNode layoutNode) {
        this.f5553w = true;
        if (c0()) {
            f0(layoutNode);
        }
    }

    @Override // androidx.core.view.AccessibilityDelegateCompat
    public AccessibilityNodeProviderCompat getAccessibilityNodeProvider(View view) {
        return this.f5541k;
    }

    public final void h0() {
        this.f5553w = true;
        if (!c0() || this.H) {
            return;
        }
        this.H = true;
        this.f5540j.post(this.I);
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0073 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:28:0x0074  */
    /* JADX WARN: Code duplicated, block: B:31:0x007f A[Catch: all -> 0x003a, TryCatch #0 {all -> 0x003a, blocks: (B:13:0x0035, B:25:0x0065, B:29:0x0077, B:31:0x007f, B:33:0x0088, B:35:0x0091, B:36:0x00a2, B:38:0x00a9, B:39:0x00b2, B:20:0x0051), top: B:49:0x0023 }] */
    /* JADX WARN: Code duplicated, block: B:33:0x0088 A[Catch: all -> 0x003a, TryCatch #0 {all -> 0x003a, blocks: (B:13:0x0035, B:25:0x0065, B:29:0x0077, B:31:0x007f, B:33:0x0088, B:35:0x0091, B:36:0x00a2, B:38:0x00a9, B:39:0x00b2, B:20:0x0051), top: B:49:0x0023 }] */
    /* JADX WARN: Code duplicated, block: B:35:0x0091 A[Catch: all -> 0x003a, LOOP:0: B:34:0x008f->B:35:0x0091, LOOP_END, TryCatch #0 {all -> 0x003a, blocks: (B:13:0x0035, B:25:0x0065, B:29:0x0077, B:31:0x007f, B:33:0x0088, B:35:0x0091, B:36:0x00a2, B:38:0x00a9, B:39:0x00b2, B:20:0x0051), top: B:49:0x0023 }] */
    /* JADX WARN: Code duplicated, block: B:38:0x00a9 A[Catch: all -> 0x003a, TryCatch #0 {all -> 0x003a, blocks: (B:13:0x0035, B:25:0x0065, B:29:0x0077, B:31:0x007f, B:33:0x0088, B:35:0x0091, B:36:0x00a2, B:38:0x00a9, B:39:0x00b2, B:20:0x0051), top: B:49:0x0023 }] */
    /* JADX WARN: Code duplicated, block: B:41:0x00d1 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:43:0x00d4  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x0086 -> B:42:0x00d2). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:40:0x00cf -> B:42:0x00d2). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public final java.lang.Object z(kotlin.coroutines.Continuation r12) {
        /*
            Method dump skipped, instruction units count: 228
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.platform.AndroidComposeViewAccessibilityDelegateCompat.z(kotlin.coroutines.Continuation):java.lang.Object");
    }
}
