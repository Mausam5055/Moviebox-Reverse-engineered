package cf;

import com.permissionx.guolindev.dialog.RationaleDialog;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final o0 f17152a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final e f17153b;

    public f(o0 pb2, e chainTask) {
        Intrinsics.h(pb2, "pb");
        Intrinsics.h(chainTask, "chainTask");
        this.f17152a = pb2;
        this.f17153b = chainTask;
    }

    public final void a(List permissions) {
        Intrinsics.h(permissions, "permissions");
        this.f17152a.l(permissions);
    }

    public final void b(List permissions) {
        Intrinsics.h(permissions, "permissions");
        this.f17153b.a(permissions);
    }

    public final void c(List permissions, bf.a dialogInfo) {
        Intrinsics.h(permissions, "permissions");
        Intrinsics.h(dialogInfo, "dialogInfo");
        this.f17152a.O(this.f17153b, false, permissions, dialogInfo);
    }

    public final void d(RationaleDialog dialog) {
        Intrinsics.h(dialog, "dialog");
        this.f17152a.N(this.f17153b, true, dialog);
    }

    public final void e(List permissions, bf.a dialogInfo) {
        Intrinsics.h(permissions, "permissions");
        Intrinsics.h(dialogInfo, "dialogInfo");
        this.f17152a.O(this.f17153b, true, permissions, dialogInfo);
    }
}
