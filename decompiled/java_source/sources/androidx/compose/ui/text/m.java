package androidx.compose.ui.text;

import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes.dex */
public final class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final l f6290a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f6291b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f6292c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f6293d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f6294e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f6295f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private float f6296g;

    public m(l lVar, int i11, int i12, int i13, int i14, float f11, float f12) {
        this.f6290a = lVar;
        this.f6291b = i11;
        this.f6292c = i12;
        this.f6293d = i13;
        this.f6294e = i14;
        this.f6295f = f11;
        this.f6296g = f12;
    }

    public final float a() {
        return this.f6296g;
    }

    public final int b() {
        return this.f6292c;
    }

    public final int c() {
        return this.f6294e;
    }

    public final int d() {
        return this.f6292c - this.f6291b;
    }

    public final l e() {
        return this.f6290a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof m)) {
            return false;
        }
        m mVar = (m) obj;
        return Intrinsics.c(this.f6290a, mVar.f6290a) && this.f6291b == mVar.f6291b && this.f6292c == mVar.f6292c && this.f6293d == mVar.f6293d && this.f6294e == mVar.f6294e && Float.compare(this.f6295f, mVar.f6295f) == 0 && Float.compare(this.f6296g, mVar.f6296g) == 0;
    }

    public final int f() {
        return this.f6291b;
    }

    public final int g() {
        return this.f6293d;
    }

    public final float h() {
        return this.f6295f;
    }

    public int hashCode() {
        return (((((((((((this.f6290a.hashCode() * 31) + this.f6291b) * 31) + this.f6292c) * 31) + this.f6293d) * 31) + this.f6294e) * 31) + Float.floatToIntBits(this.f6295f)) * 31) + Float.floatToIntBits(this.f6296g);
    }

    public final y.i i(y.i iVar) {
        return iVar.q(y.h.a(0.0f, this.f6295f));
    }

    public final int j(int i11) {
        return i11 + this.f6291b;
    }

    public final int k(int i11) {
        return i11 + this.f6293d;
    }

    public final float l(float f11) {
        return f11 + this.f6295f;
    }

    public final int m(int i11) {
        return RangesKt.m(i11, this.f6291b, this.f6292c) - this.f6291b;
    }

    public final int n(int i11) {
        return i11 - this.f6293d;
    }

    public final float o(float f11) {
        return f11 - this.f6295f;
    }

    public String toString() {
        return "ParagraphInfo(paragraph=" + this.f6290a + ", startIndex=" + this.f6291b + ", endIndex=" + this.f6292c + ", startLineIndex=" + this.f6293d + ", endLineIndex=" + this.f6294e + ", top=" + this.f6295f + ", bottom=" + this.f6296g + ')';
    }
}
