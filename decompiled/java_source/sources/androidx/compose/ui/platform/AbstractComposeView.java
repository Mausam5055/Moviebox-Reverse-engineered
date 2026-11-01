package androidx.compose.ui.platform;

import android.content.Context;
import android.os.IBinder;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.compose.runtime.Recomposer;
import com.cloud.tmc.integration.constants.IntegrationConstants;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0014\b'\u0018\u00002\u00020\u0001B'\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u0013\u0010\u000e\u001a\u00020\r*\u00020\rH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\rH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\nH\u0002¢\u0006\u0004\b\u0012\u0010\fJ\u0017\u0010\u0014\u001a\u00020\n2\b\u0010\u0013\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\u0014\u0010\u0015J\u0015\u0010\u0018\u001a\u00020\n2\u0006\u0010\u0017\u001a\u00020\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\nH'¢\u0006\u0004\b\u001a\u0010\u001bJ\r\u0010\u001c\u001a\u00020\n¢\u0006\u0004\b\u001c\u0010\fJ\r\u0010\u001d\u001a\u00020\n¢\u0006\u0004\b\u001d\u0010\fJ\u000f\u0010\u001e\u001a\u00020\nH\u0014¢\u0006\u0004\b\u001e\u0010\fJ\u001f\u0010!\u001a\u00020\n2\u0006\u0010\u001f\u001a\u00020\u00062\u0006\u0010 \u001a\u00020\u0006H\u0004¢\u0006\u0004\b!\u0010\"J\u001f\u0010$\u001a\u00020\n2\u0006\u0010\u001f\u001a\u00020\u00062\u0006\u0010 \u001a\u00020\u0006H\u0010¢\u0006\u0004\b#\u0010\"J7\u0010+\u001a\u00020\n2\u0006\u0010&\u001a\u00020%2\u0006\u0010'\u001a\u00020\u00062\u0006\u0010(\u001a\u00020\u00062\u0006\u0010)\u001a\u00020\u00062\u0006\u0010*\u001a\u00020\u0006H\u0004¢\u0006\u0004\b+\u0010,J7\u0010.\u001a\u00020\n2\u0006\u0010&\u001a\u00020%2\u0006\u0010'\u001a\u00020\u00062\u0006\u0010(\u001a\u00020\u00062\u0006\u0010)\u001a\u00020\u00062\u0006\u0010*\u001a\u00020\u0006H\u0010¢\u0006\u0004\b-\u0010,J\u0017\u00100\u001a\u00020\n2\u0006\u0010/\u001a\u00020\u0006H\u0016¢\u0006\u0004\b0\u00101J\u000f\u00102\u001a\u00020%H\u0016¢\u0006\u0004\b2\u00103J\u0017\u00104\u001a\u00020\n2\u0006\u00102\u001a\u00020%H\u0016¢\u0006\u0004\b4\u00105J\u0019\u00108\u001a\u00020\n2\b\u00107\u001a\u0004\u0018\u000106H\u0016¢\u0006\u0004\b8\u00109J!\u00108\u001a\u00020\n2\b\u00107\u001a\u0004\u0018\u0001062\u0006\u0010:\u001a\u00020\u0006H\u0016¢\u0006\u0004\b8\u0010;J)\u00108\u001a\u00020\n2\b\u00107\u001a\u0004\u0018\u0001062\u0006\u0010<\u001a\u00020\u00062\u0006\u0010=\u001a\u00020\u0006H\u0016¢\u0006\u0004\b8\u0010>J#\u00108\u001a\u00020\n2\b\u00107\u001a\u0004\u0018\u0001062\b\u0010@\u001a\u0004\u0018\u00010?H\u0016¢\u0006\u0004\b8\u0010AJ+\u00108\u001a\u00020\n2\b\u00107\u001a\u0004\u0018\u0001062\u0006\u0010:\u001a\u00020\u00062\b\u0010@\u001a\u0004\u0018\u00010?H\u0016¢\u0006\u0004\b8\u0010BJ+\u0010C\u001a\u00020%2\b\u00107\u001a\u0004\u0018\u0001062\u0006\u0010:\u001a\u00020\u00062\b\u0010@\u001a\u0004\u0018\u00010?H\u0014¢\u0006\u0004\bC\u0010DJ3\u0010C\u001a\u00020%2\b\u00107\u001a\u0004\u0018\u0001062\u0006\u0010:\u001a\u00020\u00062\b\u0010@\u001a\u0004\u0018\u00010?2\u0006\u0010E\u001a\u00020%H\u0014¢\u0006\u0004\bC\u0010FJ\u000f\u0010G\u001a\u00020%H\u0016¢\u0006\u0004\bG\u00103R\u001e\u0010J\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010H8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000e\u0010IR(\u0010P\u001a\u0004\u0018\u00010K2\b\u0010L\u001a\u0004\u0018\u00010K8\u0002@BX\u0082\u000e¢\u0006\f\n\u0004\b\u000b\u0010M\"\u0004\bN\u0010OR\u0018\u0010S\u001a\u0004\u0018\u00010Q8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0012\u0010RR(\u0010W\u001a\u0004\u0018\u00010\r2\b\u0010L\u001a\u0004\u0018\u00010\r8\u0002@BX\u0082\u000e¢\u0006\f\n\u0004\bT\u0010U\"\u0004\bV\u0010\u0015R$\u0010[\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010X8\u0002@\u0002X\u0082\u000e¢\u0006\f\n\u0004\b\u0010\u0010Y\u0012\u0004\bZ\u0010\fR0\u0010a\u001a\u00020%2\u0006\u0010L\u001a\u00020%8F@FX\u0087\u000e¢\u0006\u0018\n\u0004\b\\\u0010]\u0012\u0004\b`\u0010\f\u001a\u0004\b^\u00103\"\u0004\b_\u00105R\u0016\u0010c\u001a\u00020%8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bb\u0010]R\u0016\u0010e\u001a\u00020%8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bd\u0010]R\u0018\u0010g\u001a\u00020%*\u00020\r8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\bT\u0010fR\u0014\u0010i\u001a\u00020%8TX\u0094\u0004¢\u0006\u0006\u001a\u0004\bh\u00103R\u0011\u0010k\u001a\u00020%8F¢\u0006\u0006\u001a\u0004\bj\u00103¨\u0006l"}, d2 = {"Landroidx/compose/ui/platform/AbstractComposeView;", "Landroid/view/ViewGroup;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "()V", "Landroidx/compose/runtime/m;", "a", "(Landroidx/compose/runtime/m;)Landroidx/compose/runtime/m;", "e", "()Landroidx/compose/runtime/m;", "c", "parent", "setParentCompositionContext", "(Landroidx/compose/runtime/m;)V", "Landroidx/compose/ui/platform/ViewCompositionStrategy;", "strategy", "setViewCompositionStrategy", "(Landroidx/compose/ui/platform/ViewCompositionStrategy;)V", "Content", "(Landroidx/compose/runtime/i;I)V", "createComposition", "disposeComposition", "onAttachedToWindow", "widthMeasureSpec", "heightMeasureSpec", "onMeasure", "(II)V", "internalOnMeasure$ui_release", "internalOnMeasure", "", "changed", TtmlNode.LEFT, IntegrationConstants.TAB_BAR_POSITION_TOP, TtmlNode.RIGHT, IntegrationConstants.TAB_BAR_POSITION_DEFAULT, "onLayout", "(ZIIII)V", "internalOnLayout$ui_release", "internalOnLayout", "layoutDirection", "onRtlPropertiesChanged", "(I)V", "isTransitionGroup", "()Z", "setTransitionGroup", "(Z)V", "Landroid/view/View;", "child", "addView", "(Landroid/view/View;)V", "index", "(Landroid/view/View;I)V", "width", "height", "(Landroid/view/View;II)V", "Landroid/view/ViewGroup$LayoutParams;", "params", "(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V", "(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V", "addViewInLayout", "(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z", "preventRequestLayout", "(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z", "shouldDelayChildPressedState", "Ljava/lang/ref/WeakReference;", "Ljava/lang/ref/WeakReference;", "cachedViewTreeCompositionContext", "Landroid/os/IBinder;", AppMeasurementSdk.ConditionalUserProperty.VALUE, "Landroid/os/IBinder;", "setPreviousAttachedWindowToken", "(Landroid/os/IBinder;)V", "previousAttachedWindowToken", "Landroidx/compose/runtime/l;", "Landroidx/compose/runtime/l;", "composition", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Landroidx/compose/runtime/m;", "setParentContext", "parentContext", "Lkotlin/Function0;", "Lkotlin/jvm/functions/Function0;", "getDisposeViewCompositionStrategy$annotations", "disposeViewCompositionStrategy", "f", "Z", "getShowLayoutBounds", "setShowLayoutBounds", "getShowLayoutBounds$annotations", "showLayoutBounds", "g", "creatingComposition", "h", "isTransitionGroupSet", "(Landroidx/compose/runtime/m;)Z", "isAlive", "getShouldCreateCompositionOnAttachedToWindow", "shouldCreateCompositionOnAttachedToWindow", "getHasComposition", "hasComposition", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public abstract class AbstractComposeView extends ViewGroup {
    public static final int $stable = 8;

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private WeakReference cachedViewTreeCompositionContext;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private IBinder previousAttachedWindowToken;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private androidx.compose.runtime.l composition;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private androidx.compose.runtime.m parentContext;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private Function0 disposeViewCompositionStrategy;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private boolean showLayoutBounds;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private boolean creatingComposition;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private boolean isTransitionGroupSet;

    @JvmOverloads
    public AbstractComposeView(Context context) {
        this(context, null, 0, 6, null);
    }

    @JvmOverloads
    public AbstractComposeView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
    }

    @JvmOverloads
    public AbstractComposeView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        setClipChildren(false);
        setClipToPadding(false);
        this.disposeViewCompositionStrategy = ViewCompositionStrategy.f5681a.a().a(this);
    }

    public /* synthetic */ AbstractComposeView(Context context, AttributeSet attributeSet, int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i12 & 2) != 0 ? null : attributeSet, (i12 & 4) != 0 ? 0 : i11);
    }

    private final androidx.compose.runtime.m a(androidx.compose.runtime.m mVar) {
        androidx.compose.runtime.m mVar2 = d(mVar) ? mVar : null;
        if (mVar2 != null) {
            this.cachedViewTreeCompositionContext = new WeakReference(mVar2);
        }
        return mVar;
    }

    private final void b() {
        if (this.creatingComposition) {
            return;
        }
        throw new UnsupportedOperationException("Cannot add views to " + getClass().getSimpleName() + "; only Compose content is supported");
    }

    private final void c() {
        if (this.composition == null) {
            try {
                this.creatingComposition = true;
                this.composition = b3.c(this, e(), androidx.compose.runtime.internal.b.b(-656146368, true, new Function2<androidx.compose.runtime.i, Integer, Unit>() { // from class: androidx.compose.ui.platform.AbstractComposeView$ensureCompositionCreated$1
                    {
                        super(2);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                        invoke((androidx.compose.runtime.i) obj, ((Number) obj2).intValue());
                        return Unit.f67061a;
                    }

                    public final void invoke(androidx.compose.runtime.i iVar, int i11) {
                        if ((i11 & 3) == 2 && iVar.h()) {
                            iVar.G();
                            return;
                        }
                        if (androidx.compose.runtime.k.H()) {
                            androidx.compose.runtime.k.Q(-656146368, i11, -1, "androidx.compose.ui.platform.AbstractComposeView.ensureCompositionCreated.<anonymous> (ComposeView.android.kt:258)");
                        }
                        this.this$0.Content(iVar, 0);
                        if (androidx.compose.runtime.k.H()) {
                            androidx.compose.runtime.k.P();
                        }
                    }
                }));
            } finally {
                this.creatingComposition = false;
            }
        }
    }

    private final boolean d(androidx.compose.runtime.m mVar) {
        return !(mVar instanceof Recomposer) || ((Recomposer.State) ((Recomposer) mVar).d0().getValue()).compareTo(Recomposer.State.ShuttingDown) > 0;
    }

    private final androidx.compose.runtime.m e() {
        androidx.compose.runtime.m mVar;
        androidx.compose.runtime.m mVar2 = this.parentContext;
        if (mVar2 != null) {
            return mVar2;
        }
        androidx.compose.runtime.m mVarD = WindowRecomposer_androidKt.d(this);
        androidx.compose.runtime.m mVar3 = null;
        androidx.compose.runtime.m mVarA = mVarD != null ? a(mVarD) : null;
        if (mVarA != null) {
            return mVarA;
        }
        WeakReference weakReference = this.cachedViewTreeCompositionContext;
        if (weakReference != null && (mVar = (androidx.compose.runtime.m) weakReference.get()) != null && d(mVar)) {
            mVar3 = mVar;
        }
        androidx.compose.runtime.m mVar4 = mVar3;
        return mVar4 == null ? a(WindowRecomposer_androidKt.h(this)) : mVar4;
    }

    private static /* synthetic */ void getDisposeViewCompositionStrategy$annotations() {
    }

    public static /* synthetic */ void getShowLayoutBounds$annotations() {
    }

    private final void setParentContext(androidx.compose.runtime.m mVar) {
        if (this.parentContext != mVar) {
            this.parentContext = mVar;
            if (mVar != null) {
                this.cachedViewTreeCompositionContext = null;
            }
            androidx.compose.runtime.l lVar = this.composition;
            if (lVar != null) {
                lVar.dispose();
                this.composition = null;
                if (isAttachedToWindow()) {
                    c();
                }
            }
        }
    }

    private final void setPreviousAttachedWindowToken(IBinder iBinder) {
        if (this.previousAttachedWindowToken != iBinder) {
            this.previousAttachedWindowToken = iBinder;
            this.cachedViewTreeCompositionContext = null;
        }
    }

    public abstract void Content(androidx.compose.runtime.i iVar, int i11);

    @Override // android.view.ViewGroup
    public void addView(View child) {
        b();
        super.addView(child);
    }

    @Override // android.view.ViewGroup
    public void addView(View child, int index) {
        b();
        super.addView(child, index);
    }

    @Override // android.view.ViewGroup
    public void addView(View child, int width, int height) {
        b();
        super.addView(child, width, height);
    }

    @Override // android.view.ViewGroup
    public void addView(View child, int index, ViewGroup.LayoutParams params) {
        b();
        super.addView(child, index, params);
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void addView(View child, ViewGroup.LayoutParams params) {
        b();
        super.addView(child, params);
    }

    @Override // android.view.ViewGroup
    protected boolean addViewInLayout(View child, int index, ViewGroup.LayoutParams params) {
        b();
        return super.addViewInLayout(child, index, params);
    }

    @Override // android.view.ViewGroup
    protected boolean addViewInLayout(View child, int index, ViewGroup.LayoutParams params, boolean preventRequestLayout) {
        b();
        return super.addViewInLayout(child, index, params, preventRequestLayout);
    }

    public final void createComposition() {
        if (this.parentContext == null && !isAttachedToWindow()) {
            throw new IllegalStateException("createComposition requires either a parent reference or the View to be attachedto a window. Attach the View or call setParentCompositionReference.");
        }
        c();
    }

    public final void disposeComposition() {
        androidx.compose.runtime.l lVar = this.composition;
        if (lVar != null) {
            lVar.dispose();
        }
        this.composition = null;
        requestLayout();
    }

    public final boolean getHasComposition() {
        return this.composition != null;
    }

    protected boolean getShouldCreateCompositionOnAttachedToWindow() {
        return true;
    }

    public final boolean getShowLayoutBounds() {
        return this.showLayoutBounds;
    }

    public void internalOnLayout$ui_release(boolean changed, int left, int top, int right, int bottom) {
        View childAt = getChildAt(0);
        if (childAt != null) {
            childAt.layout(getPaddingLeft(), getPaddingTop(), (right - left) - getPaddingRight(), (bottom - top) - getPaddingBottom());
        }
    }

    public void internalOnMeasure$ui_release(int widthMeasureSpec, int heightMeasureSpec) {
        View childAt = getChildAt(0);
        if (childAt == null) {
            super.onMeasure(widthMeasureSpec, heightMeasureSpec);
            return;
        }
        childAt.measure(View.MeasureSpec.makeMeasureSpec(Math.max(0, (View.MeasureSpec.getSize(widthMeasureSpec) - getPaddingLeft()) - getPaddingRight()), View.MeasureSpec.getMode(widthMeasureSpec)), View.MeasureSpec.makeMeasureSpec(Math.max(0, (View.MeasureSpec.getSize(heightMeasureSpec) - getPaddingTop()) - getPaddingBottom()), View.MeasureSpec.getMode(heightMeasureSpec)));
        setMeasuredDimension(childAt.getMeasuredWidth() + getPaddingLeft() + getPaddingRight(), childAt.getMeasuredHeight() + getPaddingTop() + getPaddingBottom());
    }

    @Override // android.view.ViewGroup
    public boolean isTransitionGroup() {
        return !this.isTransitionGroupSet || super.isTransitionGroup();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        setPreviousAttachedWindowToken(getWindowToken());
        if (getShouldCreateCompositionOnAttachedToWindow()) {
            c();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected final void onLayout(boolean changed, int left, int top, int right, int bottom) {
        internalOnLayout$ui_release(changed, left, top, right, bottom);
    }

    @Override // android.view.View
    protected final void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        c();
        internalOnMeasure$ui_release(widthMeasureSpec, heightMeasureSpec);
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int layoutDirection) {
        View childAt = getChildAt(0);
        if (childAt == null) {
            return;
        }
        childAt.setLayoutDirection(layoutDirection);
    }

    public final void setParentCompositionContext(androidx.compose.runtime.m parent) {
        setParentContext(parent);
    }

    public final void setShowLayoutBounds(boolean z10) {
        this.showLayoutBounds = z10;
        KeyEvent.Callback childAt = getChildAt(0);
        if (childAt != null) {
            ((androidx.compose.ui.node.y0) childAt).setShowLayoutBounds(z10);
        }
    }

    @Override // android.view.ViewGroup
    public void setTransitionGroup(boolean isTransitionGroup) {
        super.setTransitionGroup(isTransitionGroup);
        this.isTransitionGroupSet = true;
    }

    public final void setViewCompositionStrategy(ViewCompositionStrategy strategy) {
        Function0 function0 = this.disposeViewCompositionStrategy;
        if (function0 != null) {
            function0.invoke();
        }
        this.disposeViewCompositionStrategy = strategy.a(this);
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }
}
