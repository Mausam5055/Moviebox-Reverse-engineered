package androidx.compose.ui.node;

import androidx.compose.ui.graphics.c4;
import androidx.compose.ui.graphics.e5;

/* JADX INFO: loaded from: classes.dex */
final class u {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private float f5453c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f5454d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f5455e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f5456f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private float f5457g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private float f5451a = 1.0f;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private float f5452b = 1.0f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private float f5458h = 8.0f;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private long f5459i = e5.f4436a.a();

    public final void a(c4 c4Var) {
        this.f5451a = c4Var.t();
        this.f5452b = c4Var.A();
        this.f5453c = c4Var.x();
        this.f5454d = c4Var.w();
        this.f5455e = c4Var.y();
        this.f5456f = c4Var.m();
        this.f5457g = c4Var.o();
        this.f5458h = c4Var.q();
        this.f5459i = c4Var.b0();
    }

    public final void b(u uVar) {
        this.f5451a = uVar.f5451a;
        this.f5452b = uVar.f5452b;
        this.f5453c = uVar.f5453c;
        this.f5454d = uVar.f5454d;
        this.f5455e = uVar.f5455e;
        this.f5456f = uVar.f5456f;
        this.f5457g = uVar.f5457g;
        this.f5458h = uVar.f5458h;
        this.f5459i = uVar.f5459i;
    }

    public final boolean c(u uVar) {
        return this.f5451a == uVar.f5451a && this.f5452b == uVar.f5452b && this.f5453c == uVar.f5453c && this.f5454d == uVar.f5454d && this.f5455e == uVar.f5455e && this.f5456f == uVar.f5456f && this.f5457g == uVar.f5457g && this.f5458h == uVar.f5458h && e5.c(this.f5459i, uVar.f5459i);
    }
}
