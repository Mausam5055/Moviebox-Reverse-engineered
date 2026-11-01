package com.iab.omid.library.bytedance2.adsession;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.iab.omid.library.bytedance2.internal.c;
import com.iab.omid.library.bytedance2.internal.e;
import com.iab.omid.library.bytedance2.internal.f;
import com.iab.omid.library.bytedance2.internal.i;
import com.iab.omid.library.bytedance2.publisher.AdSessionStatePublisher;
import com.iab.omid.library.bytedance2.publisher.b;
import com.iab.omid.library.bytedance2.utils.g;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class a extends AdSession {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final AdSessionContext f33407a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final AdSessionConfiguration f33408b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final f f33409c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private com.iab.omid.library.bytedance2.weakreference.a f33410d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private AdSessionStatePublisher f33411e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f33412f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f33413g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final String f33414h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f33415i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f33416j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private PossibleObstructionListener f33417k;

    a(AdSessionConfiguration adSessionConfiguration, AdSessionContext adSessionContext) {
        this(adSessionConfiguration, adSessionContext, UUID.randomUUID().toString());
    }

    a(AdSessionConfiguration adSessionConfiguration, AdSessionContext adSessionContext, String str) {
        this.f33409c = new f();
        this.f33412f = false;
        this.f33413g = false;
        this.f33408b = adSessionConfiguration;
        this.f33407a = adSessionContext;
        this.f33414h = str;
        b(null);
        this.f33411e = (adSessionContext.getAdSessionContextType() == AdSessionContextType.HTML || adSessionContext.getAdSessionContextType() == AdSessionContextType.JAVASCRIPT) ? new com.iab.omid.library.bytedance2.publisher.a(str, adSessionContext.getWebView()) : new b(str, adSessionContext.getInjectedResourcesMap(), adSessionContext.getOmidJsScriptContent());
        this.f33411e.i();
        c.c().a(this);
        this.f33411e.a(adSessionConfiguration);
    }

    private void a() {
        if (this.f33415i) {
            throw new IllegalStateException("Impression event can only be sent once");
        }
    }

    private void a(View view) {
        Collection<a> collectionB = c.c().b();
        if (collectionB == null || collectionB.isEmpty()) {
            return;
        }
        for (a aVar : collectionB) {
            if (aVar != this && aVar.c() == view) {
                aVar.f33410d.clear();
            }
        }
    }

    private void b() {
        if (this.f33416j) {
            throw new IllegalStateException("Loaded event can only be sent once");
        }
    }

    private void b(View view) {
        this.f33410d = new com.iab.omid.library.bytedance2.weakreference.a(view);
    }

    public void a(List<com.iab.omid.library.bytedance2.weakreference.a> list) {
        if (e()) {
            ArrayList arrayList = new ArrayList();
            Iterator<com.iab.omid.library.bytedance2.weakreference.a> it = list.iterator();
            while (it.hasNext()) {
                View view = it.next().get();
                if (view != null) {
                    arrayList.add(view);
                }
            }
            this.f33417k.onPossibleObstructionsDetected(this.f33414h, arrayList);
        }
    }

    void a(@NonNull JSONObject jSONObject) {
        b();
        getAdSessionStatePublisher().a(jSONObject);
        this.f33416j = true;
    }

    @Override // com.iab.omid.library.bytedance2.adsession.AdSession
    public void addFriendlyObstruction(View view, FriendlyObstructionPurpose friendlyObstructionPurpose, @Nullable String str) {
        if (this.f33413g) {
            return;
        }
        this.f33409c.a(view, friendlyObstructionPurpose, str);
    }

    public View c() {
        return this.f33410d.get();
    }

    public List<e> d() {
        return this.f33409c.a();
    }

    public boolean e() {
        return this.f33417k != null;
    }

    @Override // com.iab.omid.library.bytedance2.adsession.AdSession
    public void error(ErrorType errorType, String str) {
        if (this.f33413g) {
            throw new IllegalStateException("AdSession is finished");
        }
        g.a(errorType, "Error type is null");
        g.a(str, "Message is null");
        getAdSessionStatePublisher().a(errorType, str);
    }

    public boolean f() {
        return this.f33412f && !this.f33413g;
    }

    @Override // com.iab.omid.library.bytedance2.adsession.AdSession
    public void finish() {
        if (this.f33413g) {
            return;
        }
        this.f33410d.clear();
        removeAllFriendlyObstructions();
        this.f33413g = true;
        getAdSessionStatePublisher().f();
        c.c().b(this);
        getAdSessionStatePublisher().b();
        this.f33411e = null;
        this.f33417k = null;
    }

    public boolean g() {
        return this.f33413g;
    }

    @Override // com.iab.omid.library.bytedance2.adsession.AdSession
    public String getAdSessionId() {
        return this.f33414h;
    }

    @Override // com.iab.omid.library.bytedance2.adsession.AdSession
    public AdSessionStatePublisher getAdSessionStatePublisher() {
        return this.f33411e;
    }

    public boolean h() {
        return this.f33408b.isNativeImpressionOwner();
    }

    public boolean i() {
        return this.f33408b.isNativeMediaEventsOwner();
    }

    public boolean j() {
        return this.f33412f;
    }

    void k() {
        a();
        getAdSessionStatePublisher().g();
        this.f33415i = true;
    }

    void l() {
        b();
        getAdSessionStatePublisher().h();
        this.f33416j = true;
    }

    @Override // com.iab.omid.library.bytedance2.adsession.AdSession
    public void registerAdView(View view) {
        if (this.f33413g) {
            return;
        }
        g.a(view, "AdView is null");
        if (c() == view) {
            return;
        }
        b(view);
        getAdSessionStatePublisher().a();
        a(view);
    }

    @Override // com.iab.omid.library.bytedance2.adsession.AdSession
    public void removeAllFriendlyObstructions() {
        if (this.f33413g) {
            return;
        }
        this.f33409c.b();
    }

    @Override // com.iab.omid.library.bytedance2.adsession.AdSession
    public void removeFriendlyObstruction(View view) {
        if (this.f33413g) {
            return;
        }
        this.f33409c.c(view);
    }

    @Override // com.iab.omid.library.bytedance2.adsession.AdSession
    public void setPossibleObstructionListener(PossibleObstructionListener possibleObstructionListener) {
        this.f33417k = possibleObstructionListener;
    }

    @Override // com.iab.omid.library.bytedance2.adsession.AdSession
    public void start() {
        if (this.f33412f) {
            return;
        }
        this.f33412f = true;
        c.c().c(this);
        this.f33411e.a(i.c().b());
        this.f33411e.a(com.iab.omid.library.bytedance2.internal.a.a().b());
        this.f33411e.a(this, this.f33407a);
    }
}
