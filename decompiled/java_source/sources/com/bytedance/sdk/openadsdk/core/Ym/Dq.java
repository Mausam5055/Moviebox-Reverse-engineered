package com.bytedance.sdk.openadsdk.core.Ym;

import android.text.TextUtils;
import android.view.View;
import android.webkit.WebView;
import androidx.annotation.NonNull;
import com.iab.omid.library.bytedance2.adsession.AdEvents;
import com.iab.omid.library.bytedance2.adsession.AdSession;
import com.iab.omid.library.bytedance2.adsession.AdSessionConfiguration;
import com.iab.omid.library.bytedance2.adsession.AdSessionContext;
import com.iab.omid.library.bytedance2.adsession.CreativeType;
import com.iab.omid.library.bytedance2.adsession.ImpressionType;
import com.iab.omid.library.bytedance2.adsession.Owner;
import com.iab.omid.library.bytedance2.adsession.Partner;
import com.iab.omid.library.bytedance2.adsession.VerificationScriptResource;
import com.iab.omid.library.bytedance2.adsession.media.MediaEvents;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public class Dq {
    @NonNull
    public static Jcg Sj(@NonNull View view, @NonNull Set<TEQ> set) {
        AdSession adSessionSj = Sj(CreativeType.VIDEO, set, Owner.NATIVE);
        return new uA(adSessionSj, AdEvents.createAdEvents(adSessionSj), view, MediaEvents.createMediaEvents(adSessionSj));
    }

    public static Jcg Sj(WebView webView) {
        Partner partnerSj = HiB.Sj();
        if (partnerSj == null) {
            throw new IllegalArgumentException("Parameter 'partner' may not be null.");
        }
        AdSession adSessionCreateAdSession = AdSession.createAdSession(AdSessionConfiguration.createAdSessionConfiguration(CreativeType.HTML_DISPLAY, ImpressionType.BEGIN_TO_RENDER, Owner.NATIVE, Owner.NONE, false), AdSessionContext.createHtmlAdSessionContext(partnerSj, webView, "", ""));
        return new Jcg(adSessionCreateAdSession, AdEvents.createAdEvents(adSessionCreateAdSession), webView);
    }

    private static AdSession Sj(CreativeType creativeType, Set<TEQ> set, Owner owner) {
        List<VerificationScriptResource> listSj = Sj(set);
        listSj.isEmpty();
        Partner partnerSj = HiB.Sj();
        if (partnerSj == null) {
            return null;
        }
        return AdSession.createAdSession(AdSessionConfiguration.createAdSessionConfiguration(creativeType, ImpressionType.BEGIN_TO_RENDER, Owner.NATIVE, owner, false), AdSessionContext.createNativeAdSessionContext(partnerSj, HiB.sP(), listSj, "", ""));
    }

    private static List<VerificationScriptResource> Sj(Set<TEQ> set) {
        ArrayList arrayList = new ArrayList();
        for (TEQ teq : set) {
            try {
                if (TextUtils.isEmpty(teq.Sj()) || TextUtils.isEmpty(teq.sP())) {
                    arrayList.add(VerificationScriptResource.createVerificationScriptResourceWithoutParameters(teq.TKC()));
                } else {
                    arrayList.add(VerificationScriptResource.createVerificationScriptResourceWithParameters(teq.Sj(), teq.TKC(), teq.sP()));
                }
            } catch (Throwable unused) {
            }
        }
        return arrayList;
    }
}
