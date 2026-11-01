package com.vungle.ads.internal.load;

import com.vungle.ads.VungleError;
import com.vungle.ads.internal.model.AdPayload;

/* JADX INFO: loaded from: classes7.dex */
public interface a {
    void onFailure(VungleError vungleError);

    void onSuccess(AdPayload adPayload);
}
