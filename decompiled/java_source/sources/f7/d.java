package f7;

import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.os.Build;
import android.text.method.ScrollingMovementMethod;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.appcompat.R$style;
import com.cloud.hisavana.sdk.R$id;
import com.cloud.hisavana.sdk.R$layout;
import com.cloud.hisavana.sdk.e4;
import com.cloud.sdk.commonutil.util.h;
import java.util.ArrayList;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class d {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final a f62345g = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final View f62346a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private PopupWindow f62347b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private f f62348c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private f f62349d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final ArrayList f62350e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Function0 f62351f;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public d(View parent) {
        Intrinsics.h(parent, "parent");
        this.f62346a = parent;
        this.f62350e = new ArrayList();
    }

    private final d c(e eVar) {
        this.f62350e.add(eVar);
        if (this.f62350e.size() > 2) {
            this.f62350e.remove(0);
        }
        return this;
    }

    private final void d(Button button, final e eVar) {
        if (button != null) {
            button.setText(eVar.d());
            button.setTextColor(eVar.b());
            button.setTextSize(eVar.c());
            button.setOnClickListener(new View.OnClickListener() { // from class: f7.c
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    d.e(this.f62343a, eVar, view);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e(d this$0, e buttonInfo, View view) {
        Intrinsics.h(this$0, "this$0");
        Intrinsics.h(buttonInfo, "$buttonInfo");
        this$0.f();
        Function0 function0A = buttonInfo.a();
        if (function0A != null) {
            function0A.invoke();
        }
        buttonInfo.e(null);
    }

    private final void g() {
        f();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l(d this$0) {
        Intrinsics.h(this$0, "this$0");
        Function0 function0 = this$0.f62351f;
        if (function0 != null) {
            function0.invoke();
        }
        this$0.f62351f = null;
    }

    public final void f() {
        try {
            PopupWindow popupWindow = this.f62347b;
            if (popupWindow != null) {
                popupWindow.dismiss();
            }
            this.f62347b = null;
        } catch (Throwable unused) {
        }
    }

    public final d h(String message) {
        Intrinsics.h(message, "message");
        this.f62349d = f.f62357d.a(message);
        return this;
    }

    public final d i(String text, Function0 function0) {
        Intrinsics.h(text, "text");
        c(e.f62352e.a(text, function0));
        return this;
    }

    public final d j(String title) {
        Intrinsics.h(title, "title");
        this.f62348c = f.f62357d.b(title);
        return this;
    }

    public final void k() {
        f fVar;
        String strB;
        f fVar2;
        String strB2;
        f fVar3 = this.f62348c;
        if (fVar3 != null && (strB = fVar3.b()) != null && strB.length() == 0 && (fVar2 = this.f62349d) != null && (strB2 = fVar2.b()) != null && strB2.length() == 0 && this.f62350e.isEmpty()) {
            e4.b().w("CustomDialog", "Custom dialog show failed, title and message and buttons is all empty.");
            return;
        }
        try {
            g();
            View viewInflate = LayoutInflater.from(com.cloud.sdk.commonutil.util.e.a()).inflate(R$layout.hs_custom_dialog_layout, (ViewGroup) null);
            Intrinsics.g(viewInflate, "inflate(...)");
            FrameLayout frameLayout = new FrameLayout(com.cloud.sdk.commonutil.util.e.a());
            frameLayout.setBackgroundColor(Color.parseColor("#33000000"));
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
            layoutParams.gravity = 17;
            Unit unit = Unit.f67061a;
            frameLayout.addView(viewInflate, layoutParams);
            this.f62347b = new PopupWindow((View) frameLayout, -1, -1, false);
            TextView textView = (TextView) viewInflate.findViewById(R$id.dialog_title);
            if (textView != null && (fVar = this.f62348c) != null) {
                textView.setText(fVar.b());
                textView.setTextSize(fVar.c());
                textView.setTextColor(fVar.a());
            }
            TextView textView2 = (TextView) viewInflate.findViewById(R$id.dialog_message);
            if (textView2 != null) {
                textView2.setMovementMethod(new ScrollingMovementMethod());
                textView2.setOverScrollMode(0);
                f fVar4 = this.f62349d;
                if (fVar4 != null) {
                    textView2.setText(fVar4.b());
                    textView2.setTextSize(fVar4.c());
                    textView2.setTextColor(fVar4.a());
                }
                textView2.setMaxHeight(h.e() == 2 ? h.a(90.0f) : h.a(300.0f));
            }
            Button button = (Button) viewInflate.findViewById(R$id.dialog_button1);
            Button button2 = (Button) viewInflate.findViewById(R$id.dialog_button2);
            View viewFindViewById = viewInflate.findViewById(R$id.separator_v);
            if (this.f62350e.isEmpty()) {
                if (button != null) {
                    button.setVisibility(8);
                }
                if (button2 != null) {
                    button2.setVisibility(8);
                }
                if (viewFindViewById != null) {
                    viewFindViewById.setVisibility(8);
                }
            } else {
                d(button, (e) CollectionsKt.i0(this.f62350e));
                if (this.f62350e.size() == 1) {
                    if (button2 != null) {
                        button2.setVisibility(8);
                    }
                    if (viewFindViewById != null) {
                        viewFindViewById.setVisibility(8);
                    }
                } else {
                    Object obj = this.f62350e.get(1);
                    Intrinsics.g(obj, "get(...)");
                    d(button2, (e) obj);
                }
            }
            PopupWindow popupWindow = this.f62347b;
            if (popupWindow != null) {
                popupWindow.setBackgroundDrawable(new ColorDrawable());
                popupWindow.setAnimationStyle(R$style.Animation_AppCompat_Dialog);
                popupWindow.setOutsideTouchable(false);
                popupWindow.setTouchable(true);
                popupWindow.setFocusable(true);
                popupWindow.setClippingEnabled(true);
                if (Build.VERSION.SDK_INT >= 29) {
                    popupWindow.setIsClippedToScreen(true);
                }
                popupWindow.setOnDismissListener(new PopupWindow.OnDismissListener() { // from class: f7.b
                    @Override // android.widget.PopupWindow.OnDismissListener
                    public final void onDismiss() {
                        d.l(this.f62342a);
                    }
                });
                popupWindow.update();
                popupWindow.showAtLocation(this.f62346a, 0, 0, 0);
            }
        } catch (Throwable th2) {
            e4.b().w("CustomDialog", "Show custom dialog failed, error: " + Log.getStackTraceString(th2));
        }
    }
}
