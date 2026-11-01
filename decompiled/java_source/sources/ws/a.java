package ws;

import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.t0;
import com.transsion.shorttv.utils.h;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class a extends t0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final b0 f77943a = new b0();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final b0 f77944b = new b0();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final b0 f77945c = new b0();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final b0 f77946d = new b0();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final b0 f77947e = new b0();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f77948f;

    public final void b() {
        this.f77946d.q(null);
        this.f77947e.q(null);
        this.f77945c.q(Boolean.valueOf(Intrinsics.c(h.f53653a.d().getString("k_subtitle_language", ""), "off")));
        this.f77948f = null;
    }

    public final String c() {
        return this.f77948f;
    }

    public final b0 d() {
        return this.f77946d;
    }

    public final b0 e() {
        return this.f77947e;
    }

    public final b0 f() {
        return this.f77945c;
    }

    public final void g(String str) {
        this.f77948f = str;
    }
}
