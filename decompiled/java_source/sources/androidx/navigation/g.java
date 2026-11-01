package androidx.navigation;

import android.content.Intent;
import android.net.Uri;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Uri f13901a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f13902b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f13903c;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public g(Intent intent) {
        this(intent.getData(), intent.getAction(), intent.getType());
        Intrinsics.h(intent, "intent");
    }

    public g(Uri uri, String str, String str2) {
        this.f13901a = uri;
        this.f13902b = str;
        this.f13903c = str2;
    }

    public String a() {
        return this.f13902b;
    }

    public String b() {
        return this.f13903c;
    }

    public Uri c() {
        return this.f13901a;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("NavDeepLinkRequest");
        sb2.append("{");
        if (c() != null) {
            sb2.append(" uri=");
            sb2.append(String.valueOf(c()));
        }
        if (a() != null) {
            sb2.append(" action=");
            sb2.append(a());
        }
        if (b() != null) {
            sb2.append(" mimetype=");
            sb2.append(b());
        }
        sb2.append(" }");
        String string = sb2.toString();
        Intrinsics.g(string, "sb.toString()");
        return string;
    }
}
