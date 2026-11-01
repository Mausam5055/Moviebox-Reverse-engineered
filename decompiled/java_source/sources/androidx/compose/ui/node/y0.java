package androidx.compose.ui.node;

import android.view.View;
import androidx.compose.ui.graphics.a4;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.modifier.ModifierLocalManager;
import androidx.compose.ui.platform.g2;
import androidx.compose.ui.platform.h2;
import androidx.compose.ui.platform.o2;
import androidx.compose.ui.platform.v2;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public interface y0 extends androidx.compose.ui.input.pointer.i0 {

    /* JADX INFO: renamed from: d1, reason: collision with root package name */
    public static final a f5461d1 = a.f5462a;

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ a f5462a = new a();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static boolean f5463b;

        private a() {
        }

        public final boolean a() {
            return f5463b;
        }
    }

    public interface b {
        void f();
    }

    /* JADX INFO: renamed from: calculatePositionInWindow-MK-Hz9U, reason: not valid java name */
    long mo142calculatePositionInWindowMKHz9U(long j11);

    w0 createLayer(Function2 function2, Function0 function0, GraphicsLayer graphicsLayer);

    void forceMeasureTheSubtree(LayoutNode layoutNode, boolean z10);

    androidx.compose.ui.platform.h getAccessibilityManager();

    x.g getAutofill();

    x.w getAutofillTree();

    androidx.compose.ui.platform.q0 getClipboardManager();

    CoroutineContext getCoroutineContext();

    o0.e getDensity();

    androidx.compose.ui.draganddrop.c getDragAndDropManager();

    androidx.compose.ui.focus.i getFocusOwner();

    androidx.compose.ui.text.font.h.b getFontFamilyResolver();

    androidx.compose.ui.text.font.g getFontLoader();

    a4 getGraphicsContext();

    b0.a getHapticFeedBack();

    c0.b getInputModeManager();

    LayoutDirection getLayoutDirection();

    ModifierLocalManager getModifierLocalManager();

    androidx.compose.ui.layout.g0.a getPlacementScope();

    androidx.compose.ui.input.pointer.t getPointerIconService();

    LayoutNode getRoot();

    d0 getSharedDrawScope();

    boolean getShowLayoutBounds();

    OwnerSnapshotObserver getSnapshotObserver();

    g2 getSoftwareKeyboardController();

    androidx.compose.ui.text.input.e0 getTextInputService();

    h2 getTextToolbar();

    o2 getViewConfiguration();

    v2 getWindowInfo();

    void measureAndLayout(boolean z10);

    /* JADX INFO: renamed from: measureAndLayout-0kLqBqw, reason: not valid java name */
    void mo143measureAndLayout0kLqBqw(LayoutNode layoutNode, long j11);

    void onAttach(LayoutNode layoutNode);

    void onDetach(LayoutNode layoutNode);

    void onEndApplyChanges();

    void onInteropViewLayoutChange(View view);

    void onLayoutChange(LayoutNode layoutNode);

    void onRequestMeasure(LayoutNode layoutNode, boolean z10, boolean z11, boolean z12);

    void onRequestRelayout(LayoutNode layoutNode, boolean z10, boolean z11);

    void onSemanticsChange();

    void registerOnEndApplyChangesListener(Function0 function0);

    void requestOnPositionedCallback(LayoutNode layoutNode);

    void setShowLayoutBounds(boolean z10);
}
