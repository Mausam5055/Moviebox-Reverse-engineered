package com.vungle.ads.internal.omsdk;

import android.util.Base64;
import android.view.View;
import com.iab.omid.library.vungle.adsession.CreativeType;
import com.iab.omid.library.vungle.adsession.ImpressionType;
import com.iab.omid.library.vungle.adsession.Owner;
import com.iab.omid.library.vungle.adsession.g;
import com.vungle.ads.internal.model.f;
import com.vungle.ads.internal.util.o;
import java.net.URL;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.text.Charsets;
import kotlinx.serialization.h;
import kotlinx.serialization.json.n;

/* JADX INFO: loaded from: classes7.dex */
public final class NativeOMTracker {
    private com.iab.omid.library.vungle.adsession.a adEvents;
    private com.iab.omid.library.vungle.adsession.b adSession;
    private final kotlinx.serialization.json.a json;

    public NativeOMTracker(String omSdkData, String omSdkJS) {
        f fVar;
        Intrinsics.h(omSdkData, "omSdkData");
        Intrinsics.h(omSdkJS, "omSdkJS");
        kotlinx.serialization.json.a aVarB = n.b(null, new Function1<kotlinx.serialization.json.d, Unit>() { // from class: com.vungle.ads.internal.omsdk.NativeOMTracker$json$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                invoke((kotlinx.serialization.json.d) obj);
                return Unit.f67061a;
            }

            public final void invoke(kotlinx.serialization.json.d Json) {
                Intrinsics.h(Json, "$this$Json");
                Json.f(true);
                Json.d(true);
                Json.e(false);
            }
        }, 1, null);
        this.json = aVarB;
        try {
            com.iab.omid.library.vungle.adsession.c cVarA = com.iab.omid.library.vungle.adsession.c.a(CreativeType.NATIVE_DISPLAY, ImpressionType.BEGIN_TO_RENDER, Owner.NATIVE, Owner.NONE, false);
            com.iab.omid.library.vungle.adsession.f fVarA = com.iab.omid.library.vungle.adsession.f.a("Vungle", "7.5.0");
            byte[] bArrDecode = Base64.decode(omSdkData, 0);
            if (bArrDecode != null) {
                String str = new String(bArrDecode, Charsets.UTF_8);
                kotlinx.serialization.b bVarB = h.b(aVarB.a(), Reflection.m(f.class));
                Intrinsics.f(bVarB, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>");
                fVar = (f) aVarB.b(bVarB, str);
            } else {
                fVar = null;
            }
            g verificationScriptResource = g.a(fVar != null ? fVar.getVendorKey() : null, new URL(fVar != null ? fVar.getVendorURL() : null), fVar != null ? fVar.getParams() : null);
            Intrinsics.g(verificationScriptResource, "verificationScriptResource");
            this.adSession = com.iab.omid.library.vungle.adsession.b.a(cVarA, com.iab.omid.library.vungle.adsession.d.b(fVarA, omSdkJS, CollectionsKt.e(verificationScriptResource), null, null));
        } catch (Exception e11) {
            o.Companion.e("NativeOMTracker", "error occured when create omsdk adSession:", e11);
        }
    }

    public final void impressionOccurred() {
        com.iab.omid.library.vungle.adsession.a aVar = this.adEvents;
        if (aVar != null) {
            aVar.b();
        }
    }

    public final void start(View view) {
        com.iab.omid.library.vungle.adsession.b bVar;
        Intrinsics.h(view, "view");
        if (!re.a.b() || (bVar = this.adSession) == null) {
            return;
        }
        bVar.c(view);
        bVar.d();
        com.iab.omid.library.vungle.adsession.a aVarA = com.iab.omid.library.vungle.adsession.a.a(bVar);
        this.adEvents = aVarA;
        if (aVarA != null) {
            aVarA.c();
        }
    }

    public final void stop() {
        com.iab.omid.library.vungle.adsession.b bVar = this.adSession;
        if (bVar != null) {
            bVar.b();
        }
        this.adSession = null;
    }
}
