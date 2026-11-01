package androidx.compose.ui.window;

import android.R;
import android.graphics.Outline;
import android.os.Build;
import android.view.ContextThemeWrapper;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.view.Window;
import androidx.activity.q;
import androidx.activity.u;
import androidx.activity.w;
import androidx.compose.runtime.m;
import androidx.compose.ui.R$id;
import androidx.compose.ui.R$style;
import androidx.compose.ui.platform.s2;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.core.view.WindowCompat;
import androidx.p009lifecycle.ViewTreeLifecycleOwner;
import androidx.p009lifecycle.ViewTreeViewModelStoreOwner;
import androidx.p010savedstate.ViewTreeSavedStateRegistryOwner;
import java.util.UUID;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
final class DialogWrapper extends q implements s2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Function0 f6530a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private c f6531b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final View f6532c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final DialogLayout f6533d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final float f6534e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f6535f;

    public static final class a extends ViewOutlineProvider {
        a() {
        }

        @Override // android.view.ViewOutlineProvider
        public void getOutline(View view, Outline outline) {
            outline.setRect(0, 0, view.getWidth(), view.getHeight());
            outline.setAlpha(0.0f);
        }
    }

    public /* synthetic */ class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f6536a;

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
            f6536a = iArr;
        }
    }

    public DialogWrapper(Function0 function0, c cVar, View view, LayoutDirection layoutDirection, o0.e eVar, UUID uuid) {
        super(new ContextThemeWrapper(view.getContext(), (Build.VERSION.SDK_INT >= 31 || cVar.a()) ? R$style.DialogWindowTheme : R$style.FloatingDialogWindowTheme), 0, 2, null);
        this.f6530a = function0;
        this.f6531b = cVar;
        this.f6532c = view;
        float fG = o0.i.g(8);
        this.f6534e = fG;
        Window window = getWindow();
        if (window == null) {
            throw new IllegalStateException("Dialog has no window");
        }
        this.f6535f = window.getAttributes().softInputMode & 240;
        window.requestFeature(1);
        window.setBackgroundDrawableResource(R.color.transparent);
        WindowCompat.setDecorFitsSystemWindows(window, this.f6531b.a());
        DialogLayout dialogLayout = new DialogLayout(getContext(), window);
        dialogLayout.setTag(R$id.compose_view_saveable_id_tag, "Dialog:" + uuid);
        dialogLayout.setClipChildren(false);
        dialogLayout.setElevation(eVar.E0(fG));
        dialogLayout.setOutlineProvider(new a());
        this.f6533d = dialogLayout;
        View decorView = window.getDecorView();
        ViewGroup viewGroup = decorView instanceof ViewGroup ? (ViewGroup) decorView : null;
        if (viewGroup != null) {
            d(viewGroup);
        }
        setContentView(dialogLayout);
        ViewTreeLifecycleOwner.b(dialogLayout, ViewTreeLifecycleOwner.a(view));
        ViewTreeViewModelStoreOwner.b(dialogLayout, ViewTreeViewModelStoreOwner.a(view));
        ViewTreeSavedStateRegistryOwner.b(dialogLayout, ViewTreeSavedStateRegistryOwner.a(view));
        k(this.f6530a, this.f6531b, layoutDirection);
        w.b(getOnBackPressedDispatcher(), this, false, new Function1<u, Unit>() { // from class: androidx.compose.ui.window.DialogWrapper.2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                invoke((u) obj);
                return Unit.f67061a;
            }

            public final void invoke(u uVar) {
                if (DialogWrapper.this.f6531b.b()) {
                    DialogWrapper.this.f6530a.invoke();
                }
            }
        }, 2, null);
    }

    private static final void d(ViewGroup viewGroup) {
        viewGroup.setClipChildren(false);
        if (viewGroup instanceof DialogLayout) {
            return;
        }
        int childCount = viewGroup.getChildCount();
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = viewGroup.getChildAt(i11);
            ViewGroup viewGroup2 = childAt instanceof ViewGroup ? (ViewGroup) childAt : null;
            if (viewGroup2 != null) {
                d(viewGroup2);
            }
        }
    }

    private final void i(LayoutDirection layoutDirection) {
        DialogLayout dialogLayout = this.f6533d;
        int i11 = b.f6536a[layoutDirection.ordinal()];
        int i12 = 1;
        if (i11 == 1) {
            i12 = 0;
        } else if (i11 != 2) {
            throw new NoWhenBranchMatchedException();
        }
        dialogLayout.setLayoutDirection(i12);
    }

    private final void j(SecureFlagPolicy secureFlagPolicy) {
        boolean zA = k.a(secureFlagPolicy, AndroidPopup_androidKt.d(this.f6532c));
        Window window = getWindow();
        Intrinsics.e(window);
        window.setFlags(zA ? 8192 : -8193, 8192);
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void cancel() {
    }

    public final void g() {
        this.f6533d.disposeComposition();
    }

    public final void h(m mVar, Function2 function2) {
        this.f6533d.setContent(mVar, function2);
    }

    public final void k(Function0 function0, c cVar, LayoutDirection layoutDirection) {
        Window window;
        this.f6530a = function0;
        this.f6531b = cVar;
        j(cVar.d());
        i(layoutDirection);
        if (cVar.e() && !this.f6533d.f() && (window = getWindow()) != null) {
            window.setLayout(-2, -2);
        }
        this.f6533d.g(cVar.e());
        if (Build.VERSION.SDK_INT < 31) {
            if (cVar.a()) {
                Window window2 = getWindow();
                if (window2 != null) {
                    window2.setSoftInputMode(this.f6535f);
                    return;
                }
                return;
            }
            Window window3 = getWindow();
            if (window3 != null) {
                window3.setSoftInputMode(16);
            }
        }
    }

    @Override // android.app.Dialog
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean zOnTouchEvent = super.onTouchEvent(motionEvent);
        if (zOnTouchEvent && this.f6531b.c()) {
            this.f6530a.invoke();
        }
        return zOnTouchEvent;
    }
}
