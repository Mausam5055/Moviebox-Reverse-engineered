package com.transsion.usercenter;

import android.text.InputFilter;
import android.text.Spanned;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class t implements InputFilter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f57487a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private a f57488b;

    /* JADX INFO: loaded from: classes6.dex */
    public interface a {
        void a();
    }

    public t(int i11) {
        this.f57487a = i11;
    }

    public final void a(a aVar) {
        this.f57488b = aVar;
    }

    @Override // android.text.InputFilter
    public CharSequence filter(CharSequence source, int i11, int i12, Spanned dest, int i13, int i14) {
        Intrinsics.h(source, "source");
        Intrinsics.h(dest, "dest");
        int length = this.f57487a - (dest.length() - (i14 - i13));
        if (length > 0) {
            if (length >= i12 - i11) {
                return null;
            }
            int i15 = length + i11;
            return (Character.isHighSurrogate(source.charAt(i15 + (-1))) && (i15 = i15 + (-1)) == i11) ? "" : source.subSequence(i11, i15);
        }
        a aVar = this.f57488b;
        if (aVar == null) {
            return "";
        }
        aVar.a();
        return "";
    }
}
