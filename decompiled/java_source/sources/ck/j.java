package ck;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public abstract class j extends Dialog implements hj.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Lazy f17244a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j(Context context, int i11) {
        super(context, i11);
        Intrinsics.h(context, "context");
        this.f17244a = LazyKt.b(new Function0() { // from class: ck.i
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return j.c(this.f17243a);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final hj.b c(j jVar) {
        return jVar.d();
    }

    public abstract boolean b();

    public hj.b d() {
        return hj.a.C0778a.a(this);
    }

    public final void e() {
    }

    public void f() {
    }

    public final void g(Activity activity) {
        if (activity == null || activity.isFinishing() || activity.isDestroyed()) {
            return;
        }
        try {
            show();
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    @Override // hj.a
    public hj.b getLogViewConfig() {
        return (hj.b) this.f17244a.getValue();
    }

    @Override // android.app.Dialog
    protected void onStart() {
        super.onStart();
    }

    @Override // android.app.Dialog
    protected void onStop() {
        super.onStop();
    }

    @Override // android.app.Dialog
    public void show() {
        try {
            if (isShowing()) {
                return;
            }
            lg.a.C0828a c0828a = lg.a.f68839a;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("show dialog hasShownAnyDialogInSession ");
            sb2.append(this);
            sb2.append(" :");
            u uVar = u.f17263a;
            sb2.append(uVar.b());
            lg.a.C0828a.g(c0828a, sb2.toString(), false, 2, null);
            if (!uVar.b() || b()) {
                f();
                super.show();
                uVar.c(true);
            }
        } catch (IllegalStateException e11) {
            e11.printStackTrace();
        } catch (Exception e12) {
            e12.printStackTrace();
        }
    }
}
