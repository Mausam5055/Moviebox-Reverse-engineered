package androidx.core.app;

import android.app.RemoteInput;
import android.os.Build;
import android.os.Bundle;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f8127a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final CharSequence f8128b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final CharSequence[] f8129c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f8130d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f8131e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Bundle f8132f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Set f8133g;

    static class a {
        public static RemoteInput a(y yVar) {
            Set setD;
            RemoteInput.Builder builderAddExtras = new RemoteInput.Builder(yVar.i()).setLabel(yVar.h()).setChoices(yVar.e()).setAllowFreeFormInput(yVar.c()).addExtras(yVar.g());
            if (Build.VERSION.SDK_INT >= 26 && (setD = yVar.d()) != null) {
                Iterator it = setD.iterator();
                while (it.hasNext()) {
                    b.a(builderAddExtras, (String) it.next(), true);
                }
            }
            if (Build.VERSION.SDK_INT >= 29) {
                c.a(builderAddExtras, yVar.f());
            }
            return builderAddExtras.build();
        }
    }

    static class b {
        static RemoteInput.Builder a(RemoteInput.Builder builder, String str, boolean z10) {
            return builder.setAllowDataType(str, z10);
        }
    }

    static class c {
        static RemoteInput.Builder a(RemoteInput.Builder builder, int i11) {
            return builder.setEditChoicesBeforeSending(i11);
        }
    }

    y(String str, CharSequence charSequence, CharSequence[] charSequenceArr, boolean z10, int i11, Bundle bundle, Set set) {
        this.f8127a = str;
        this.f8128b = charSequence;
        this.f8129c = charSequenceArr;
        this.f8130d = z10;
        this.f8131e = i11;
        this.f8132f = bundle;
        this.f8133g = set;
        if (f() == 2 && !c()) {
            throw new IllegalArgumentException("setEditChoicesBeforeSending requires setAllowFreeFormInput");
        }
    }

    static RemoteInput a(y yVar) {
        return a.a(yVar);
    }

    static RemoteInput[] b(y[] yVarArr) {
        if (yVarArr == null) {
            return null;
        }
        RemoteInput[] remoteInputArr = new RemoteInput[yVarArr.length];
        for (int i11 = 0; i11 < yVarArr.length; i11++) {
            remoteInputArr[i11] = a(yVarArr[i11]);
        }
        return remoteInputArr;
    }

    public boolean c() {
        return this.f8130d;
    }

    public Set d() {
        return this.f8133g;
    }

    public CharSequence[] e() {
        return this.f8129c;
    }

    public int f() {
        return this.f8131e;
    }

    public Bundle g() {
        return this.f8132f;
    }

    public CharSequence h() {
        return this.f8128b;
    }

    public String i() {
        return this.f8127a;
    }

    public boolean j() {
        return (c() || (e() != null && e().length != 0) || d() == null || d().isEmpty()) ? false : true;
    }
}
