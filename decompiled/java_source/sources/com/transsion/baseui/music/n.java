package com.transsion.baseui.music;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes5.dex */
public final class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f43490a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f43491b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f43492c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f43493d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f43494e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f43495f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f43496g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f43497h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f43498i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f43499j;

    public n() {
        this(null, null, null, 0L, 0L, 0L, 0L, 0L, 0, 0, 1023, null);
    }

    public n(String str, String str2, String str3, long j11, long j12, long j13, long j14, long j15, int i11, int i12) {
        this.f43490a = str;
        this.f43491b = str2;
        this.f43492c = str3;
        this.f43493d = j11;
        this.f43494e = j12;
        this.f43495f = j13;
        this.f43496g = j14;
        this.f43497h = j15;
        this.f43498i = i11;
        this.f43499j = i12;
    }

    public /* synthetic */ n(String str, String str2, String str3, long j11, long j12, long j13, long j14, long j15, int i11, int i12, int i13, DefaultConstructorMarker defaultConstructorMarker) {
        this((i13 & 1) != 0 ? null : str, (i13 & 2) != 0 ? null : str2, (i13 & 4) == 0 ? str3 : null, (i13 & 8) != 0 ? 0L : j11, (i13 & 16) != 0 ? 0L : j12, (i13 & 32) != 0 ? 0L : j13, (i13 & 64) != 0 ? 0L : j14, (i13 & 128) == 0 ? j15 : 0L, (i13 & 256) != 0 ? 0 : i11, (i13 & 512) == 0 ? i12 : 0);
    }

    public final int a() {
        return this.f43499j;
    }

    public final long b() {
        return this.f43496g;
    }

    public final long c() {
        return this.f43497h;
    }

    public final String d() {
        return this.f43490a;
    }

    public final String e() {
        return this.f43491b;
    }

    public final long f() {
        return this.f43494e;
    }

    public final long g() {
        return this.f43493d;
    }

    public final String h() {
        return this.f43492c;
    }

    public final long i() {
        return this.f43495f;
    }

    public final int j() {
        return this.f43498i;
    }

    public final void k(int i11) {
        this.f43499j = i11;
    }

    public final void l(long j11) {
        this.f43496g = j11;
    }

    public final void m(long j11) {
        this.f43497h = j11;
    }

    public final void n(String str) {
        this.f43491b = str;
    }

    public final void o(long j11) {
        this.f43494e = j11;
    }

    public final void p(long j11) {
        this.f43493d = j11;
    }

    public final void q(String str) {
        this.f43492c = str;
    }

    public final void r(long j11) {
        this.f43495f = j11;
    }

    public final void s(int i11) {
        this.f43498i = i11;
    }
}
