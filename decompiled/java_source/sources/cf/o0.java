package cf;

import android.content.DialogInterface;
import android.os.Build;
import android.view.View;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import com.permissionx.guolindev.callback.PermissionDialogClickType;
import com.permissionx.guolindev.dialog.DefaultRationaleDialog;
import com.permissionx.guolindev.dialog.RationaleDialog;
import com.permissionx.guolindev.request.InvisibleFragment;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class o0 implements h {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final a f17188s = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public FragmentActivity f17189a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Fragment f17190b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f17191c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public RationaleDialog f17192d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Set f17193e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Set f17194f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f17195g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f17196h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Set f17197i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Set f17198j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Set f17199k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Set f17200l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Set f17201m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Set f17202n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Set f17203o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public ze.c f17204p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public ze.b f17205q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public ze.a f17206r;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public o0(FragmentActivity fragmentActivity, Fragment fragment, Set normalPermissions, Set specialPermissions) {
        Intrinsics.h(normalPermissions, "normalPermissions");
        Intrinsics.h(specialPermissions, "specialPermissions");
        this.f17191c = -1;
        this.f17197i = new LinkedHashSet();
        this.f17198j = new LinkedHashSet();
        this.f17199k = new LinkedHashSet();
        this.f17200l = new LinkedHashSet();
        this.f17201m = new LinkedHashSet();
        this.f17202n = new LinkedHashSet();
        this.f17203o = new LinkedHashSet();
        if (fragmentActivity != null) {
            D(fragmentActivity);
        }
        if (fragmentActivity == null && fragment != null) {
            D(fragment.requireActivity());
        }
        this.f17190b = fragment;
        this.f17193e = normalPermissions;
        this.f17194f = specialPermissions;
    }

    private final void C() {
        if (Build.VERSION.SDK_INT != 26) {
            m().setRequestedOrientation(this.f17191c);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit P(final o0 o0Var, final RationaleDialog rationaleDialog, final boolean z10, final e eVar, final List list, View view) {
        if (view != null) {
            view.setOnClickListener(new View.OnClickListener() { // from class: cf.m0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    o0.Q(this.f17176a, rationaleDialog, z10, eVar, list, view2);
                }
            });
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void Q(o0 o0Var, RationaleDialog rationaleDialog, boolean z10, e eVar, List list, View view) {
        ze.a aVar = o0Var.f17206r;
        if (aVar != null) {
            aVar.a(rationaleDialog, Boolean.valueOf(!z10), PermissionDialogClickType.POSITIVE);
        }
        rationaleDialog.dismiss();
        if (z10) {
            eVar.a(list);
        } else {
            o0Var.l(list);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit R(final o0 o0Var, final RationaleDialog rationaleDialog, final boolean z10, final e eVar, View view) {
        if (view != null) {
            view.setOnClickListener(new View.OnClickListener() { // from class: cf.n0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    o0.S(this.f17182a, rationaleDialog, z10, eVar, view2);
                }
            });
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void S(o0 o0Var, RationaleDialog rationaleDialog, boolean z10, e eVar, View view) {
        ze.a aVar = o0Var.f17206r;
        if (aVar != null) {
            aVar.a(rationaleDialog, Boolean.valueOf(!z10), PermissionDialogClickType.NEGATIVE);
        }
        rationaleDialog.dismiss();
        eVar.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void T(o0 o0Var, DialogInterface dialogInterface) {
        bf.c.f16466a.c(o0Var.m());
        o0Var.f17192d = null;
    }

    private final void U() {
        q();
        r0 r0Var = new r0();
        if (F()) {
            r0Var.a(new p0(this));
        } else if (J()) {
            r0Var.a(new v0(this));
        } else if (K()) {
            r0Var.a(new w0(this));
        } else if (L()) {
            r0Var.a(new x0(this));
        } else if (M()) {
            r0Var.a(new y0(this));
        } else if (H()) {
            r0Var.a(new s0(this));
        } else if (I()) {
            r0Var.a(new t0(this));
        } else if (G()) {
            r0Var.a(new q0(this));
        } else {
            r0Var.a(new u0(this));
        }
        r0Var.b();
    }

    private final FragmentManager n() {
        FragmentManager childFragmentManager;
        Fragment fragment = this.f17190b;
        if (fragment != null && (childFragmentManager = fragment.getChildFragmentManager()) != null) {
            return childFragmentManager;
        }
        FragmentManager supportFragmentManager = m().getSupportFragmentManager();
        Intrinsics.g(supportFragmentManager, "getSupportFragmentManager(...)");
        return supportFragmentManager;
    }

    private final InvisibleFragment o() {
        Fragment fragmentK0 = n().k0("InvisibleFragment");
        if (fragmentK0 != null) {
            return (InvisibleFragment) fragmentK0;
        }
        InvisibleFragment invisibleFragment = new InvisibleFragment();
        n().p().e(invisibleFragment, "InvisibleFragment").l();
        return invisibleFragment;
    }

    private final void q() {
        if (Build.VERSION.SDK_INT != 26) {
            this.f17191c = m().getRequestedOrientation();
            int i11 = m().getResources().getConfiguration().orientation;
            if (i11 == 1) {
                m().setRequestedOrientation(7);
            } else {
                if (i11 != 2) {
                    return;
                }
                m().setRequestedOrientation(6);
            }
        }
    }

    private final void s() {
        try {
            Result.Companion companion = Result.INSTANCE;
            Fragment fragmentK0 = n().k0("InvisibleFragment");
            if (fragmentK0 != null) {
                n().p().r(fragmentK0).l();
            }
            Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th2));
        }
    }

    public void A(e chainTask) {
        Intrinsics.h(chainTask, "chainTask");
        o().o1(this, chainTask);
    }

    public void B(e chainTask) {
        Intrinsics.h(chainTask, "chainTask");
        o().r1(this, chainTask);
    }

    public final void D(FragmentActivity fragmentActivity) {
        Intrinsics.h(fragmentActivity, "<set-?>");
        this.f17189a = fragmentActivity;
    }

    public final void E(e chainTask) {
        Intrinsics.h(chainTask, "chainTask");
        o().s1(this, chainTask);
    }

    public final boolean F() {
        return this.f17194f.contains("android.permission.ACCESS_BACKGROUND_LOCATION");
    }

    public final boolean G() {
        return this.f17194f.contains("android.permission.BODY_SENSORS_BACKGROUND");
    }

    public final boolean H() {
        return this.f17194f.contains("android.permission.REQUEST_INSTALL_PACKAGES");
    }

    public final boolean I() {
        return this.f17194f.contains("android.permission.MANAGE_EXTERNAL_STORAGE");
    }

    public final boolean J() {
        return this.f17194f.contains("android.permission.POST_NOTIFICATIONS");
    }

    public final boolean K() {
        return this.f17194f.contains("android.permission.PICTURE_IN_PICTURE");
    }

    public final boolean L() {
        return this.f17194f.contains("android.permission.SYSTEM_ALERT_WINDOW");
    }

    public final boolean M() {
        return this.f17194f.contains("android.permission.WRITE_SETTINGS");
    }

    public final void N(final e chainTask, final boolean z10, final RationaleDialog dialog) {
        Intrinsics.h(chainTask, "chainTask");
        Intrinsics.h(dialog, "dialog");
        this.f17196h = true;
        final List listN0 = dialog.n0();
        if (listN0.isEmpty()) {
            chainTask.finish();
            return;
        }
        this.f17192d = dialog;
        dialog.p0(new Function1() { // from class: cf.j0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return o0.P(this.f17162a, dialog, z10, chainTask, listN0, (View) obj);
            }
        });
        dialog.o0(new Function1() { // from class: cf.k0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return o0.R(this.f17169a, dialog, z10, chainTask, (View) obj);
            }
        });
        dialog.j0(new DialogInterface.OnDismissListener() { // from class: cf.l0
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                o0.T(this.f17174a, dialogInterface);
            }
        });
        if (bf.c.f16466a.b(dialog, "permission_rationale_dialog")) {
            dialog.k0(m(), "permission_rationale_dialog");
        }
    }

    public final void O(e chainTask, boolean z10, List permissions, bf.a dialogInfo) {
        Intrinsics.h(chainTask, "chainTask");
        Intrinsics.h(permissions, "permissions");
        Intrinsics.h(dialogInfo, "dialogInfo");
        DefaultRationaleDialog defaultRationaleDialog = new DefaultRationaleDialog();
        defaultRationaleDialog.r0(permissions, dialogInfo);
        N(chainTask, z10, defaultRationaleDialog);
    }

    @Override // cf.h
    public void a(ze.c cVar) {
        this.f17204p = cVar;
        U();
    }

    @Override // cf.h
    public h d(ze.a aVar) {
        this.f17206r = aVar;
        return this;
    }

    public final void j() {
        s();
        C();
    }

    @Override // cf.h
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    public o0 b() {
        this.f17195g = true;
        return this;
    }

    public final void l(List permissions) {
        Intrinsics.h(permissions, "permissions");
        this.f17203o.clear();
        this.f17203o.addAll(permissions);
        o().x0();
    }

    public final FragmentActivity m() {
        FragmentActivity fragmentActivity = this.f17189a;
        if (fragmentActivity != null) {
            return fragmentActivity;
        }
        Intrinsics.z("activity");
        return null;
    }

    public final int p() {
        return m().getApplicationInfo().targetSdkVersion;
    }

    @Override // cf.h
    /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
    public o0 c(ze.b bVar) {
        this.f17205q = bVar;
        return this;
    }

    public void t(e chainTask) {
        Intrinsics.h(chainTask, "chainTask");
        o().R0(this, chainTask);
    }

    public void u(e chainTask) {
        Intrinsics.h(chainTask, "chainTask");
        o().W0(this, chainTask);
    }

    public void v(e chainTask) {
        Intrinsics.h(chainTask, "chainTask");
        o().Z0(this, chainTask);
    }

    public void w(e chainTask) {
        Intrinsics.h(chainTask, "chainTask");
        o().c1(this, chainTask);
    }

    public void x(e chainTask) {
        Intrinsics.h(chainTask, "chainTask");
        o().h1(this, chainTask);
    }

    public final void y(Set permissions, e chainTask) {
        Intrinsics.h(permissions, "permissions");
        Intrinsics.h(chainTask, "chainTask");
        o().i1(this, permissions, chainTask);
    }

    public void z(e chainTask) {
        Intrinsics.h(chainTask, "chainTask");
        o().l1(this, chainTask);
    }
}
