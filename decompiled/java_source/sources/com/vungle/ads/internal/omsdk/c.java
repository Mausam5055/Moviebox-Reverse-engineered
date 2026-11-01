package com.vungle.ads.internal.omsdk;

import android.webkit.WebView;
import com.iab.omid.library.vungle.adsession.CreativeType;
import com.iab.omid.library.vungle.adsession.ImpressionType;
import com.iab.omid.library.vungle.adsession.Owner;
import com.iab.omid.library.vungle.adsession.f;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class c implements d {
    public static final a Companion = new a(null);
    private static final long DESTROY_DELAY_MS = TimeUnit.SECONDS.toMillis(1);
    private com.iab.omid.library.vungle.adsession.b adSession;
    private final boolean enabled;
    private boolean started;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ void getDESTROY_DELAY_MS$annotations() {
        }

        public final long getDESTROY_DELAY_MS() {
            return c.DESTROY_DELAY_MS;
        }
    }

    public static final class b {
        public final c make(boolean z10) {
            return new c(z10, null);
        }
    }

    private c(boolean z10) {
        this.enabled = z10;
    }

    public /* synthetic */ c(boolean z10, DefaultConstructorMarker defaultConstructorMarker) {
        this(z10);
    }

    @Override // com.vungle.ads.internal.omsdk.d
    public void onPageFinished(WebView webView) {
        Intrinsics.h(webView, "webView");
        if (this.started && this.adSession == null) {
            CreativeType creativeType = CreativeType.DEFINED_BY_JAVASCRIPT;
            ImpressionType impressionType = ImpressionType.DEFINED_BY_JAVASCRIPT;
            Owner owner = Owner.JAVASCRIPT;
            com.iab.omid.library.vungle.adsession.b bVarA = com.iab.omid.library.vungle.adsession.b.a(com.iab.omid.library.vungle.adsession.c.a(creativeType, impressionType, owner, owner, false), com.iab.omid.library.vungle.adsession.d.a(f.a("Vungle", "7.5.0"), webView, null, null));
            this.adSession = bVarA;
            if (bVarA != null) {
                bVarA.c(webView);
            }
            com.iab.omid.library.vungle.adsession.b bVar = this.adSession;
            if (bVar != null) {
                bVar.d();
            }
        }
    }

    public final void start() {
        if (this.enabled && re.a.b()) {
            this.started = true;
        }
    }

    public final long stop() {
        long j11;
        com.iab.omid.library.vungle.adsession.b bVar;
        if (!this.started || (bVar = this.adSession) == null) {
            j11 = 0;
        } else {
            if (bVar != null) {
                bVar.b();
            }
            j11 = DESTROY_DELAY_MS;
        }
        this.started = false;
        this.adSession = null;
        return j11;
    }
}
