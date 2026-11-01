package com.vungle.ads.internal.load;

import com.vungle.ads.internal.network.VungleApiClient;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class l {
    public static final a Companion = new a(null);
    public static final String RTA_DEBUG_ENDPOINT = "https://events.ads.vungle.com/rtadebugging";
    private final VungleApiClient apiClient;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public l(VungleApiClient apiClient) {
        Intrinsics.h(apiClient, "apiClient");
        this.apiClient = apiClient;
    }

    public final void reportAdMarkup(String adm) {
        Intrinsics.h(adm, "adm");
        this.apiClient.sendAdMarkup(adm, RTA_DEBUG_ENDPOINT);
    }
}
