package com.tn.tranpay;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f41525a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f41526b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f41527c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f41528d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f41529e;

    public c() {
        this(null, null, null, null, false, 31, null);
    }

    public c(String str, String str2, String str3, String str4, boolean z10) {
        this.f41525a = str;
        this.f41526b = str2;
        this.f41527c = str3;
        this.f41528d = str4;
        this.f41529e = z10;
    }

    public /* synthetic */ c(String str, String str2, String str3, String str4, boolean z10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : str, (i11 & 2) != 0 ? null : str2, (i11 & 4) != 0 ? null : str3, (i11 & 8) == 0 ? str4 : null, (i11 & 16) != 0 ? false : z10);
    }
}
