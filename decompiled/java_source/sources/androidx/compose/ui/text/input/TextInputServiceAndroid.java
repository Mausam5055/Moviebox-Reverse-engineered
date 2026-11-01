package androidx.compose.ui.text.input;

import android.view.Choreographer;
import android.view.KeyEvent;
import android.view.View;
import android.view.inputmethod.BaseInputConnection;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class TextInputServiceAndroid implements y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final View f6206a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final r f6207b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Executor f6208c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f6209d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Function1 f6210e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Function1 f6211f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private TextFieldValue f6212g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private p f6213h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private List f6214i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final Lazy f6215j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final CursorAnchorInfoController f6216k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final androidx.compose.runtime.collection.b f6217l;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0082\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Landroidx/compose/ui/text/input/TextInputServiceAndroid$TextInputCommand;", "", "(Ljava/lang/String;I)V", "StartInput", "StopInput", "ShowKeyboard", "HideKeyboard", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    private enum TextInputCommand {
        StartInput,
        StopInput,
        ShowKeyboard,
        HideKeyboard
    }

    public static final class a implements q {
        a() {
        }

        @Override // androidx.compose.ui.text.input.q
        public void a(KeyEvent keyEvent) {
            TextInputServiceAndroid.this.g().sendKeyEvent(keyEvent);
        }

        @Override // androidx.compose.ui.text.input.q
        public void b(z zVar) {
            int size = TextInputServiceAndroid.this.f6214i.size();
            for (int i11 = 0; i11 < size; i11++) {
                if (Intrinsics.c(((WeakReference) TextInputServiceAndroid.this.f6214i.get(i11)).get(), zVar)) {
                    TextInputServiceAndroid.this.f6214i.remove(i11);
                    return;
                }
            }
        }

        @Override // androidx.compose.ui.text.input.q
        public void c(boolean z10, boolean z11, boolean z12, boolean z13, boolean z14, boolean z15) {
            TextInputServiceAndroid.this.f6216k.a(z10, z11, z12, z13, z14, z15);
        }

        @Override // androidx.compose.ui.text.input.q
        public void d(int i11) {
            TextInputServiceAndroid.this.f6211f.invoke(o.i(i11));
        }

        @Override // androidx.compose.ui.text.input.q
        public void e(List list) {
            TextInputServiceAndroid.this.f6210e.invoke(list);
        }
    }

    public TextInputServiceAndroid(View view, androidx.compose.ui.input.pointer.i0 i0Var) {
        this(view, i0Var, new InputMethodManagerImpl(view), null, 8, null);
    }

    public TextInputServiceAndroid(View view, androidx.compose.ui.input.pointer.i0 i0Var, r rVar, Executor executor) {
        this.f6206a = view;
        this.f6207b = rVar;
        this.f6208c = executor;
        this.f6210e = new Function1<List<? extends m>, Unit>() { // from class: androidx.compose.ui.text.input.TextInputServiceAndroid$onEditCommand$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                invoke((List<? extends m>) obj);
                return Unit.f67061a;
            }

            public final void invoke(List<? extends m> list) {
            }
        };
        this.f6211f = new Function1<o, Unit>() { // from class: androidx.compose.ui.text.input.TextInputServiceAndroid$onImeActionPerformed$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                m178invokeKlQnJC8(((o) obj).o());
                return Unit.f67061a;
            }

            /* JADX INFO: renamed from: invoke-KlQnJC8, reason: not valid java name */
            public final void m178invokeKlQnJC8(int i11) {
            }
        };
        this.f6212g = new TextFieldValue("", androidx.compose.ui.text.b0.f6083b.a(), (androidx.compose.ui.text.b0) null, 4, (DefaultConstructorMarker) null);
        this.f6213h = p.f6251h.a();
        this.f6214i = new ArrayList();
        this.f6215j = LazyKt.a(LazyThreadSafetyMode.NONE, new Function0<BaseInputConnection>() { // from class: androidx.compose.ui.text.input.TextInputServiceAndroid$baseInputConnection$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final BaseInputConnection invoke() {
                return new BaseInputConnection(this.this$0.h(), false);
            }
        });
        this.f6216k = new CursorAnchorInfoController(i0Var, rVar);
        this.f6217l = new androidx.compose.runtime.collection.b(new TextInputCommand[16], 0);
    }

    public /* synthetic */ TextInputServiceAndroid(View view, androidx.compose.ui.input.pointer.i0 i0Var, r rVar, Executor executor, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(view, i0Var, rVar, (i11 & 8) != 0 ? h0.d(Choreographer.getInstance()) : executor);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final BaseInputConnection g() {
        return (BaseInputConnection) this.f6215j.getValue();
    }

    public final InputConnection f(EditorInfo editorInfo) {
        if (!this.f6209d) {
            return null;
        }
        h0.h(editorInfo, this.f6213h, this.f6212g);
        h0.i(editorInfo);
        z zVar = new z(this.f6212g, new a(), this.f6213h.b());
        this.f6214i.add(new WeakReference(zVar));
        return zVar;
    }

    public final View h() {
        return this.f6206a;
    }

    public final boolean i() {
        return this.f6209d;
    }
}
