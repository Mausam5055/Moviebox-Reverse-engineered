package androidx.compose.ui.text;

import androidx.compose.ui.unit.LayoutDirection;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final AnnotatedString f6470a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final d0 f6471b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final List f6472c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f6473d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean f6474e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f6475f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final o0.e f6476g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final LayoutDirection f6477h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final androidx.compose.ui.text.font.h.b f6478i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final long f6479j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private androidx.compose.ui.text.font.g f6480k;

    private y(AnnotatedString annotatedString, d0 d0Var, List list, int i11, boolean z10, int i12, o0.e eVar, LayoutDirection layoutDirection, androidx.compose.ui.text.font.g gVar, androidx.compose.ui.text.font.h.b bVar, long j11) {
        this.f6470a = annotatedString;
        this.f6471b = d0Var;
        this.f6472c = list;
        this.f6473d = i11;
        this.f6474e = z10;
        this.f6475f = i12;
        this.f6476g = eVar;
        this.f6477h = layoutDirection;
        this.f6478i = bVar;
        this.f6479j = j11;
        this.f6480k = gVar;
    }

    private y(AnnotatedString annotatedString, d0 d0Var, List list, int i11, boolean z10, int i12, o0.e eVar, LayoutDirection layoutDirection, androidx.compose.ui.text.font.h.b bVar, long j11) {
        this(annotatedString, d0Var, list, i11, z10, i12, eVar, layoutDirection, (androidx.compose.ui.text.font.g) null, bVar, j11);
    }

    public /* synthetic */ y(AnnotatedString annotatedString, d0 d0Var, List list, int i11, boolean z10, int i12, o0.e eVar, LayoutDirection layoutDirection, androidx.compose.ui.text.font.h.b bVar, long j11, DefaultConstructorMarker defaultConstructorMarker) {
        this(annotatedString, d0Var, list, i11, z10, i12, eVar, layoutDirection, bVar, j11);
    }

    public final long a() {
        return this.f6479j;
    }

    public final o0.e b() {
        return this.f6476g;
    }

    public final androidx.compose.ui.text.font.h.b c() {
        return this.f6478i;
    }

    public final LayoutDirection d() {
        return this.f6477h;
    }

    public final int e() {
        return this.f6473d;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof y)) {
            return false;
        }
        y yVar = (y) obj;
        return Intrinsics.c(this.f6470a, yVar.f6470a) && Intrinsics.c(this.f6471b, yVar.f6471b) && Intrinsics.c(this.f6472c, yVar.f6472c) && this.f6473d == yVar.f6473d && this.f6474e == yVar.f6474e && androidx.compose.ui.text.style.p.e(this.f6475f, yVar.f6475f) && Intrinsics.c(this.f6476g, yVar.f6476g) && this.f6477h == yVar.f6477h && Intrinsics.c(this.f6478i, yVar.f6478i) && o0.b.f(this.f6479j, yVar.f6479j);
    }

    public final int f() {
        return this.f6475f;
    }

    public final List g() {
        return this.f6472c;
    }

    public final boolean h() {
        return this.f6474e;
    }

    public int hashCode() {
        return (((((((((((((((((this.f6470a.hashCode() * 31) + this.f6471b.hashCode()) * 31) + this.f6472c.hashCode()) * 31) + this.f6473d) * 31) + androidx.compose.foundation.e.a(this.f6474e)) * 31) + androidx.compose.ui.text.style.p.f(this.f6475f)) * 31) + this.f6476g.hashCode()) * 31) + this.f6477h.hashCode()) * 31) + this.f6478i.hashCode()) * 31) + o0.b.o(this.f6479j);
    }

    public final d0 i() {
        return this.f6471b;
    }

    public final AnnotatedString j() {
        return this.f6470a;
    }

    public String toString() {
        return "TextLayoutInput(text=" + ((Object) this.f6470a) + ", style=" + this.f6471b + ", placeholders=" + this.f6472c + ", maxLines=" + this.f6473d + ", softWrap=" + this.f6474e + ", overflow=" + ((Object) androidx.compose.ui.text.style.p.g(this.f6475f)) + ", density=" + this.f6476g + ", layoutDirection=" + this.f6477h + ", fontFamilyResolver=" + this.f6478i + ", constraints=" + ((Object) o0.b.q(this.f6479j)) + ')';
    }
}
