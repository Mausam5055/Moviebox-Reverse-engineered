package com.android.billingclient.api;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.google.android.gms.internal.play_billing.zzaf;
import com.google.android.gms.internal.play_billing.zzb;
import com.google.android.gms.internal.play_billing.zzin;
import com.google.android.gms.internal.play_billing.zzio;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.json.JSONException;

/* JADX INFO: loaded from: classes2.dex */
class i extends h {
    private ExecutorService A;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private volatile int f19061a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f19062b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Handler f19063c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private volatile q1 f19064d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Context f19065e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private n0 f19066f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private volatile com.google.android.gms.internal.play_billing.zzm f19067g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private volatile f0 f19068h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f19069i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f19070j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f19071k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f19072l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f19073m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f19074n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f19075o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f19076p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f19077q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f19078r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f19079s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private boolean f19080t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private boolean f19081u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private boolean f19082v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private boolean f19083w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private boolean f19084x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private x0 f19085y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private boolean f19086z;

    i(String str, Context context, n0 n0Var, ExecutorService executorService) {
        this.f19061a = 0;
        this.f19063c = new Handler(Looper.getMainLooper());
        this.f19071k = 0;
        String strJ = J();
        this.f19062b = strJ;
        this.f19065e = context.getApplicationContext();
        zzin zzinVarZzv = zzio.zzv();
        zzinVarZzv.zzj(strJ);
        zzinVarZzv.zzi(this.f19065e.getPackageName());
        this.f19066f = new q0(this.f19065e, (zzio) zzinVarZzv.zzc());
        this.f19065e.getPackageName();
    }

    i(String str, x0 x0Var, Context context, t0 t0Var, n0 n0Var, ExecutorService executorService) {
        this.f19061a = 0;
        this.f19063c = new Handler(Looper.getMainLooper());
        this.f19071k = 0;
        this.f19062b = J();
        this.f19065e = context.getApplicationContext();
        zzin zzinVarZzv = zzio.zzv();
        zzinVarZzv.zzj(J());
        zzinVarZzv.zzi(this.f19065e.getPackageName());
        this.f19066f = new q0(this.f19065e, (zzio) zzinVarZzv.zzc());
        zzb.zzk("BillingClient", "Billing client should have a valid listener but the provided is null.");
        this.f19064d = new q1(this.f19065e, null, this.f19066f);
        this.f19085y = x0Var;
        this.f19065e.getPackageName();
    }

    i(String str, x0 x0Var, Context context, v vVar, c cVar, n0 n0Var, ExecutorService executorService) {
        String strJ = J();
        this.f19061a = 0;
        this.f19063c = new Handler(Looper.getMainLooper());
        this.f19071k = 0;
        this.f19062b = strJ;
        g(context, vVar, x0Var, cVar, strJ, null);
    }

    static /* synthetic */ e1 E(i iVar, String str, int i11) {
        Bundle bundleZzi;
        zzb.zzj("BillingClient", "Querying owned items, item type: ".concat(String.valueOf(str)));
        ArrayList arrayList = new ArrayList();
        boolean z10 = true;
        int i12 = 0;
        Bundle bundleZzd = zzb.zzd(iVar.f19074n, iVar.f19082v, true, false, iVar.f19062b);
        List list = null;
        String string = null;
        while (true) {
            try {
                if (iVar.f19074n) {
                    bundleZzi = iVar.f19067g.zzj(z10 != iVar.f19082v ? 9 : 19, iVar.f19065e.getPackageName(), str, string, bundleZzd);
                } else {
                    bundleZzi = iVar.f19067g.zzi(3, iVar.f19065e.getPackageName(), str, string);
                }
                f1 f1VarA = g1.a(bundleZzi, "BillingClient", "getPurchase()");
                n nVarA = f1VarA.a();
                if (nVarA != p0.f19128l) {
                    iVar.f19066f.a(m0.a(f1VarA.b(), 9, nVarA));
                    return new e1(nVarA, list);
                }
                ArrayList<String> stringArrayList = bundleZzi.getStringArrayList("INAPP_PURCHASE_ITEM_LIST");
                ArrayList<String> stringArrayList2 = bundleZzi.getStringArrayList("INAPP_PURCHASE_DATA_LIST");
                ArrayList<String> stringArrayList3 = bundleZzi.getStringArrayList("INAPP_DATA_SIGNATURE_LIST");
                int i13 = i12;
                int i14 = i13;
                while (i13 < stringArrayList2.size()) {
                    String str2 = stringArrayList2.get(i13);
                    String str3 = stringArrayList3.get(i13);
                    zzb.zzj("BillingClient", "Sku is owned: ".concat(String.valueOf(stringArrayList.get(i13))));
                    try {
                        Purchase purchase = new Purchase(str2, str3);
                        if (TextUtils.isEmpty(purchase.g())) {
                            zzb.zzk("BillingClient", "BUG: empty/null token!");
                            i14 = 1;
                        }
                        arrayList.add(purchase);
                        i13++;
                    } catch (JSONException e11) {
                        zzb.zzl("BillingClient", "Got an exception trying to decode the purchase!", e11);
                        n0 n0Var = iVar.f19066f;
                        n nVar = p0.f19126j;
                        n0Var.a(m0.a(51, 9, nVar));
                        return new e1(nVar, null);
                    }
                }
                if (i14 != 0) {
                    iVar.f19066f.a(m0.a(26, 9, p0.f19126j));
                }
                string = bundleZzi.getString("INAPP_CONTINUATION_TOKEN");
                zzb.zzj("BillingClient", "Continuation token: ".concat(String.valueOf(string)));
                if (TextUtils.isEmpty(string)) {
                    return new e1(p0.f19128l, arrayList);
                }
                list = null;
                z10 = true;
                i12 = 0;
            } catch (Exception e12) {
                n0 n0Var2 = iVar.f19066f;
                n nVar2 = p0.f19129m;
                n0Var2.a(m0.a(52, 9, nVar2));
                zzb.zzl("BillingClient", "Got exception trying to get purchasesm try to reconnect", e12);
                return new e1(nVar2, null);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Handler F() {
        return Looper.myLooper() == null ? this.f19063c : new Handler(Looper.myLooper());
    }

    private final n G(final n nVar) {
        if (Thread.interrupted()) {
            return nVar;
        }
        this.f19063c.post(new Runnable() { // from class: com.android.billingclient.api.zzj
            @Override // java.lang.Runnable
            public final void run() {
                this.zza.u(nVar);
            }
        });
        return nVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final n I() {
        return (this.f19061a == 0 || this.f19061a == 3) ? p0.f19129m : p0.f19126j;
    }

    private static String J() {
        try {
            return (String) f5.a.class.getField("VERSION_NAME").get(null);
        } catch (Exception unused) {
            return "6.1.0";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Future K(Callable callable, long j11, final Runnable runnable, Handler handler) {
        if (this.A == null) {
            this.A = Executors.newFixedThreadPool(zzb.zza, new b0(this));
        }
        try {
            final Future futureSubmit = this.A.submit(callable);
            handler.postDelayed(new Runnable() { // from class: com.android.billingclient.api.zzn
                @Override // java.lang.Runnable
                public final void run() {
                    Future future = futureSubmit;
                    if (future.isDone() || future.isCancelled()) {
                        return;
                    }
                    Runnable runnable2 = runnable;
                    future.cancel(true);
                    zzb.zzk("BillingClient", "Async task is taking too long, cancel it!");
                    if (runnable2 != null) {
                        runnable2.run();
                    }
                }
            }, (long) (j11 * 0.95d));
            return futureSubmit;
        } catch (Exception e11) {
            zzb.zzl("BillingClient", "Async task throws exception!", e11);
            return null;
        }
    }

    private final void L(String str, final u uVar) {
        if (!a()) {
            n0 n0Var = this.f19066f;
            n nVar = p0.f19129m;
            n0Var.a(m0.a(2, 9, nVar));
            uVar.a(nVar, zzaf.zzk());
            return;
        }
        if (TextUtils.isEmpty(str)) {
            zzb.zzk("BillingClient", "Please provide a valid product type.");
            n0 n0Var2 = this.f19066f;
            n nVar2 = p0.f19123g;
            n0Var2.a(m0.a(50, 9, nVar2));
            uVar.a(nVar2, zzaf.zzk());
            return;
        }
        if (K(new c0(this, str, uVar), 30000L, new Runnable() { // from class: com.android.billingclient.api.zzs
            @Override // java.lang.Runnable
            public final void run() {
                this.zza.B(uVar);
            }
        }, F()) == null) {
            n nVarI = I();
            this.f19066f.a(m0.a(25, 9, nVarI));
            uVar.a(nVarI, zzaf.zzk());
        }
    }

    private void g(Context context, v vVar, x0 x0Var, c cVar, String str, n0 n0Var) {
        this.f19065e = context.getApplicationContext();
        zzin zzinVarZzv = zzio.zzv();
        zzinVarZzv.zzj(str);
        zzinVarZzv.zzi(this.f19065e.getPackageName());
        if (n0Var != null) {
            this.f19066f = n0Var;
        } else {
            this.f19066f = new q0(this.f19065e, (zzio) zzinVarZzv.zzc());
        }
        if (vVar == null) {
            zzb.zzk("BillingClient", "Billing client should have a valid listener but the provided is null.");
        }
        this.f19064d = new q1(this.f19065e, vVar, cVar, this.f19066f);
        this.f19085y = x0Var;
        this.f19086z = cVar != null;
        this.f19065e.getPackageName();
    }

    final /* synthetic */ void A(t tVar) {
        n0 n0Var = this.f19066f;
        n nVar = p0.f19130n;
        n0Var.a(m0.a(24, 11, nVar));
        tVar.a(nVar, null);
    }

    final /* synthetic */ void B(u uVar) {
        n0 n0Var = this.f19066f;
        n nVar = p0.f19130n;
        n0Var.a(m0.a(24, 9, nVar));
        uVar.a(nVar, zzaf.zzk());
    }

    final /* synthetic */ void C(y yVar) {
        n0 n0Var = this.f19066f;
        n nVar = p0.f19130n;
        n0Var.a(m0.a(24, 8, nVar));
        yVar.a(nVar, null);
    }

    final /* synthetic */ void D(e eVar) {
        n0 n0Var = this.f19066f;
        n nVar = p0.f19130n;
        n0Var.a(m0.a(24, 16, nVar));
        eVar.a(nVar);
    }

    final /* synthetic */ Bundle N(int i11, String str, String str2, m mVar, Bundle bundle) {
        return this.f19067g.zzg(i11, this.f19065e.getPackageName(), str, str2, null, bundle);
    }

    final /* synthetic */ Bundle O(String str, String str2) {
        return this.f19067g.zzf(3, this.f19065e.getPackageName(), str, str2, null);
    }

    final /* synthetic */ Object U(w wVar, s sVar) {
        String strZzg;
        int iZzb;
        int i11;
        int i12;
        ArrayList arrayList = new ArrayList();
        String strC = wVar.c();
        zzaf zzafVarB = wVar.b();
        int size = zzafVarB.size();
        int i13 = 0;
        while (true) {
            if (i13 >= size) {
                strZzg = "";
                iZzb = 0;
                break;
            }
            int i14 = i13 + 20;
            ArrayList arrayList2 = new ArrayList(zzafVarB.subList(i13, i14 > size ? size : i14));
            ArrayList<String> arrayList3 = new ArrayList<>();
            int size2 = arrayList2.size();
            for (int i15 = 0; i15 < size2; i15++) {
                arrayList3.add(((w.b) arrayList2.get(i15)).b());
            }
            Bundle bundle = new Bundle();
            bundle.putStringArrayList("ITEM_ID_LIST", arrayList3);
            bundle.putString("playBillingLibraryVersion", this.f19062b);
            try {
                com.google.android.gms.internal.play_billing.zzm zzmVar = this.f19067g;
                int i16 = true != this.f19083w ? 17 : 20;
                String packageName = this.f19065e.getPackageName();
                String str = this.f19062b;
                if (TextUtils.isEmpty(null)) {
                    this.f19065e.getPackageName();
                }
                Bundle bundle2 = new Bundle();
                bundle2.putString("playBillingLibraryVersion", str);
                bundle2.putBoolean("enablePendingPurchases", true);
                bundle2.putString("SKU_DETAILS_RESPONSE_FORMAT", "PRODUCT_DETAILS");
                ArrayList<String> arrayList4 = new ArrayList<>();
                ArrayList<String> arrayList5 = new ArrayList<>();
                int size3 = arrayList2.size();
                zzaf zzafVar = zzafVarB;
                int i17 = 0;
                boolean z10 = false;
                boolean z11 = false;
                while (i17 < size3) {
                    w.b bVar = (w.b) arrayList2.get(i17);
                    ArrayList arrayList6 = arrayList2;
                    arrayList4.add(null);
                    z10 |= !TextUtils.isEmpty(null);
                    String strC2 = bVar.c();
                    int i18 = size3;
                    if (strC2.equals("first_party")) {
                        com.google.android.gms.internal.play_billing.zzx.zzc(null, "Serialized DocId is required for constructing ExtraParams to query ProductDetails for all first party products.");
                        arrayList5.add(null);
                        z11 = true;
                    }
                    i17++;
                    size3 = i18;
                    arrayList2 = arrayList6;
                }
                if (z10) {
                    bundle2.putStringArrayList("SKU_OFFER_ID_TOKEN_LIST", arrayList4);
                }
                if (!arrayList5.isEmpty()) {
                    bundle2.putStringArrayList("SKU_SERIALIZED_DOCID_LIST", arrayList5);
                }
                if (z11 && !TextUtils.isEmpty(null)) {
                    bundle2.putString("accountName", null);
                }
                i12 = 7;
                try {
                    Bundle bundleZzl = zzmVar.zzl(i16, packageName, strC, bundle, bundle2);
                    strZzg = "Item is unavailable for purchase.";
                    if (bundleZzl == null) {
                        zzb.zzk("BillingClient", "queryProductDetailsAsync got empty product details response.");
                        this.f19066f.a(m0.a(44, 7, p0.B));
                    } else {
                        if (!bundleZzl.containsKey("DETAILS_LIST")) {
                            iZzb = zzb.zzb(bundleZzl, "BillingClient");
                            strZzg = zzb.zzg(bundleZzl, "BillingClient");
                            if (iZzb == 0) {
                                zzb.zzk("BillingClient", "getSkuDetails() returned a bundle with neither an error nor a product detail list for queryProductDetailsAsync.");
                                this.f19066f.a(m0.a(45, 7, p0.a(6, strZzg)));
                                iZzb = 6;
                                break;
                            }
                            zzb.zzk("BillingClient", "getSkuDetails() failed for queryProductDetailsAsync. Response code: " + iZzb);
                            this.f19066f.a(m0.a(23, 7, p0.a(iZzb, strZzg)));
                            break;
                        }
                        ArrayList<String> stringArrayList = bundleZzl.getStringArrayList("DETAILS_LIST");
                        if (stringArrayList == null) {
                            zzb.zzk("BillingClient", "queryProductDetailsAsync got null response list");
                            this.f19066f.a(m0.a(46, 7, p0.B));
                        } else {
                            for (int i19 = 0; i19 < stringArrayList.size(); i19++) {
                                try {
                                    r rVar = new r(stringArrayList.get(i19));
                                    zzb.zzj("BillingClient", "Got product details: ".concat(rVar.toString()));
                                    arrayList.add(rVar);
                                } catch (JSONException e11) {
                                    zzb.zzl("BillingClient", "Got a JSON exception trying to decode ProductDetails. \n Exception: ", e11);
                                    strZzg = "Error trying to decode SkuDetails.";
                                    i11 = 6;
                                    this.f19066f.a(m0.a(47, 7, p0.a(6, "Error trying to decode SkuDetails.")));
                                    iZzb = i11;
                                    sVar.a(p0.a(iZzb, strZzg), arrayList);
                                    return null;
                                }
                            }
                            i13 = i14;
                            zzafVarB = zzafVar;
                        }
                    }
                    iZzb = 4;
                    break;
                } catch (Exception e12) {
                    e = e12;
                    i11 = 6;
                    zzb.zzl("BillingClient", "queryProductDetailsAsync got a remote exception (try to reconnect).", e);
                    this.f19066f.a(m0.a(43, i12, p0.f19126j));
                    strZzg = "An internal error occurred.";
                    iZzb = i11;
                    sVar.a(p0.a(iZzb, strZzg), arrayList);
                    return null;
                }
            } catch (Exception e13) {
                e = e13;
                i11 = 6;
                i12 = 7;
            }
        }
        sVar.a(p0.a(iZzb, strZzg), arrayList);
        return null;
    }

    @Override // com.android.billingclient.api.h
    public final boolean a() {
        return (this.f19061a != 2 || this.f19067g == null || this.f19068h == null) ? false : true;
    }

    @Override // com.android.billingclient.api.h
    public final n b(Activity activity, final m mVar) {
        String str;
        Future futureK;
        int i11;
        boolean z10;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        boolean z11;
        String str7;
        int i12;
        final int i13;
        if (this.f19064d == null || this.f19064d.d() == null) {
            n0 n0Var = this.f19066f;
            n nVar = p0.E;
            n0Var.a(m0.a(12, 2, nVar));
            return nVar;
        }
        if (!a()) {
            n0 n0Var2 = this.f19066f;
            n nVar2 = p0.f19129m;
            n0Var2.a(m0.a(2, 2, nVar2));
            G(nVar2);
            return nVar2;
        }
        ArrayList arrayListH = mVar.h();
        List listI = mVar.i();
        android.support.v4.media.session.c.a(com.google.android.gms.internal.play_billing.zzak.zza(arrayListH, null));
        m.b bVar = (m.b) com.google.android.gms.internal.play_billing.zzak.zza(listI, null);
        final String strB = bVar.b().b();
        final String strC = bVar.b().c();
        String str8 = "BillingClient";
        if (strC.equals("subs") && !this.f19069i) {
            zzb.zzk("BillingClient", "Current client doesn't support subscriptions.");
            n0 n0Var3 = this.f19066f;
            n nVar3 = p0.f19131o;
            n0Var3.a(m0.a(9, 2, nVar3));
            G(nVar3);
            return nVar3;
        }
        if (mVar.r() && !this.f19072l) {
            zzb.zzk("BillingClient", "Current client doesn't support extra params for buy intent.");
            n0 n0Var4 = this.f19066f;
            n nVar4 = p0.f19124h;
            n0Var4.a(m0.a(18, 2, nVar4));
            G(nVar4);
            return nVar4;
        }
        if (arrayListH.size() > 1 && !this.f19079s) {
            zzb.zzk("BillingClient", "Current client doesn't support multi-item purchases.");
            n0 n0Var5 = this.f19066f;
            n nVar5 = p0.f19136t;
            n0Var5.a(m0.a(19, 2, nVar5));
            G(nVar5);
            return nVar5;
        }
        if (!listI.isEmpty() && !this.f19080t) {
            zzb.zzk("BillingClient", "Current client doesn't support purchases with ProductDetails.");
            n0 n0Var6 = this.f19066f;
            n nVar6 = p0.f19138v;
            n0Var6.a(m0.a(20, 2, nVar6));
            G(nVar6);
            return nVar6;
        }
        if (this.f19072l) {
            boolean z12 = this.f19074n;
            boolean z13 = this.f19086z;
            String str9 = this.f19062b;
            final Bundle bundle = new Bundle();
            bundle.putString("playBillingLibraryVersion", str9);
            if (mVar.c() != 0) {
                bundle.putInt("prorationMode", mVar.c());
            } else if (mVar.b() != 0) {
                bundle.putInt("prorationMode", mVar.b());
            }
            if (!TextUtils.isEmpty(mVar.d())) {
                bundle.putString("accountId", mVar.d());
            }
            if (!TextUtils.isEmpty(mVar.e())) {
                bundle.putString("obfuscatedProfileId", mVar.e());
            }
            if (mVar.q()) {
                bundle.putBoolean("isOfferPersonalizedByDeveloper", true);
            }
            if (!TextUtils.isEmpty(null)) {
                bundle.putStringArrayList("skusToReplace", new ArrayList<>(Arrays.asList(null)));
            }
            if (!TextUtils.isEmpty(mVar.f())) {
                bundle.putString("oldSkuPurchaseToken", mVar.f());
            }
            if (!TextUtils.isEmpty(null)) {
                bundle.putString("oldSkuPurchaseId", null);
            }
            if (!TextUtils.isEmpty(mVar.g())) {
                bundle.putString("originalExternalTransactionId", mVar.g());
            }
            if (!TextUtils.isEmpty(null)) {
                bundle.putString("paymentsPurchaseParams", null);
            }
            if (z12) {
                z10 = true;
                bundle.putBoolean("enablePendingPurchases", true);
            } else {
                z10 = true;
            }
            if (z13) {
                bundle.putBoolean("enableAlternativeBilling", z10);
            }
            if (arrayListH.isEmpty()) {
                ArrayList<String> arrayList = new ArrayList<>(listI.size() - 1);
                ArrayList<String> arrayList2 = new ArrayList<>(listI.size() - 1);
                ArrayList<String> arrayList3 = new ArrayList<>();
                ArrayList<String> arrayList4 = new ArrayList<>();
                str2 = strC;
                ArrayList<String> arrayList5 = new ArrayList<>();
                str3 = "proxyPackageVersion";
                str4 = strB;
                int i14 = 0;
                while (i14 < listI.size()) {
                    m.b bVar2 = (m.b) listI.get(i14);
                    r rVarB = bVar2.b();
                    if (!rVarB.f().isEmpty()) {
                        arrayList3.add(rVarB.f());
                    }
                    arrayList4.add(bVar2.c());
                    if (!TextUtils.isEmpty(rVarB.g())) {
                        arrayList5.add(rVarB.g());
                    }
                    if (i14 > 0) {
                        arrayList.add(((m.b) listI.get(i14)).b().b());
                        arrayList2.add(((m.b) listI.get(i14)).b().c());
                    }
                    i14++;
                    str8 = str8;
                }
                str5 = str8;
                bundle.putStringArrayList("SKU_OFFER_ID_TOKEN_LIST", arrayList4);
                if (!arrayList3.isEmpty()) {
                    bundle.putStringArrayList("skuDetailsTokens", arrayList3);
                }
                if (!arrayList5.isEmpty()) {
                    bundle.putStringArrayList("SKU_SERIALIZED_DOCID_LIST", arrayList5);
                }
                if (!arrayList.isEmpty()) {
                    bundle.putStringArrayList("additionalSkus", arrayList);
                    bundle.putStringArrayList("additionalSkuTypes", arrayList2);
                }
            } else {
                ArrayList<String> arrayList6 = new ArrayList<>();
                new ArrayList();
                new ArrayList();
                new ArrayList();
                new ArrayList();
                Iterator it = arrayListH.iterator();
                if (it.hasNext()) {
                    android.support.v4.media.session.c.a(it.next());
                    throw null;
                }
                if (!arrayList6.isEmpty()) {
                    bundle.putStringArrayList("skuDetailsTokens", arrayList6);
                }
                if (arrayListH.size() > 1) {
                    ArrayList<String> arrayList7 = new ArrayList<>(arrayListH.size() - 1);
                    ArrayList<String> arrayList8 = new ArrayList<>(arrayListH.size() - 1);
                    if (1 < arrayListH.size()) {
                        android.support.v4.media.session.c.a(arrayListH.get(1));
                        throw null;
                    }
                    bundle.putStringArrayList("additionalSkus", arrayList7);
                    bundle.putStringArrayList("additionalSkuTypes", arrayList8);
                }
                str3 = "proxyPackageVersion";
                str4 = strB;
                str2 = strC;
                str5 = "BillingClient";
            }
            if (bundle.containsKey("SKU_OFFER_ID_TOKEN_LIST") && !this.f19077q) {
                n0 n0Var7 = this.f19066f;
                n nVar7 = p0.f19137u;
                n0Var7.a(m0.a(21, 2, nVar7));
                G(nVar7);
                return nVar7;
            }
            if (bVar == null || TextUtils.isEmpty(bVar.b().e())) {
                str6 = null;
                z11 = false;
            } else {
                bundle.putString("skuPackageName", bVar.b().e());
                str6 = null;
                z11 = true;
            }
            if (!TextUtils.isEmpty(str6)) {
                bundle.putString("accountName", str6);
            }
            Intent intent = activity.getIntent();
            if (intent == null) {
                str = str5;
                zzb.zzk(str, "Activity's intent is null.");
            } else {
                str = str5;
                if (!TextUtils.isEmpty(intent.getStringExtra("PROXY_PACKAGE"))) {
                    String stringExtra = intent.getStringExtra("PROXY_PACKAGE");
                    bundle.putString("proxyPackage", stringExtra);
                    try {
                        str7 = str3;
                        try {
                            bundle.putString(str7, this.f19065e.getPackageManager().getPackageInfo(stringExtra, 0).versionName);
                        } catch (PackageManager.NameNotFoundException unused) {
                            bundle.putString(str7, "package not found");
                        }
                    } catch (PackageManager.NameNotFoundException unused2) {
                        str7 = str3;
                    }
                }
            }
            if (this.f19080t && !listI.isEmpty()) {
                i12 = 17;
            } else if (this.f19078r && z11) {
                i12 = 15;
            } else {
                if (this.f19074n) {
                    i13 = 9;
                } else {
                    i12 = 6;
                }
                final String str10 = str4;
                final String str11 = str2;
                futureK = K(new Callable() { // from class: com.android.billingclient.api.z
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return this.f19205a.N(i13, str10, str11, mVar, bundle);
                    }
                }, 5000L, null, this.f19063c);
                i11 = 78;
            }
            i13 = i12;
            final String str12 = str4;
            final String str13 = str2;
            futureK = K(new Callable() { // from class: com.android.billingclient.api.z
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return this.f19205a.N(i13, str12, str13, mVar, bundle);
                }
            }, 5000L, null, this.f19063c);
            i11 = 78;
        } else {
            str = "BillingClient";
            futureK = K(new Callable() { // from class: com.android.billingclient.api.a0
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return this.f19039a.O(strB, strC);
                }
            }, 5000L, null, this.f19063c);
            i11 = 80;
        }
        try {
            if (futureK == null) {
                n0 n0Var8 = this.f19066f;
                n nVar8 = p0.f19129m;
                n0Var8.a(m0.a(25, 2, nVar8));
                G(nVar8);
                return nVar8;
            }
            Bundle bundle2 = (Bundle) futureK.get(5000L, TimeUnit.MILLISECONDS);
            int iZzb = zzb.zzb(bundle2, str);
            String strZzg = zzb.zzg(bundle2, str);
            if (iZzb == 0) {
                Intent intent2 = new Intent(activity, (Class<?>) ProxyBillingActivity.class);
                intent2.putExtra("BUY_INTENT", (PendingIntent) bundle2.getParcelable("BUY_INTENT"));
                activity.startActivity(intent2);
                return p0.f19128l;
            }
            zzb.zzk(str, "Unable to buy item, Error response code: " + iZzb);
            n nVarA = p0.a(iZzb, strZzg);
            n0 n0Var9 = this.f19066f;
            if (bundle2 != null) {
                i11 = 23;
            }
            n0Var9.a(m0.a(i11, 2, nVarA));
            G(nVarA);
            return nVarA;
        } catch (CancellationException e11) {
            e = e11;
            zzb.zzl(str, "Time out while launching billing flow. Try to reconnect", e);
            n0 n0Var10 = this.f19066f;
            n nVar9 = p0.f19130n;
            n0Var10.a(m0.a(4, 2, nVar9));
            G(nVar9);
            return nVar9;
        } catch (TimeoutException e12) {
            e = e12;
            zzb.zzl(str, "Time out while launching billing flow. Try to reconnect", e);
            n0 n0Var11 = this.f19066f;
            n nVar10 = p0.f19130n;
            n0Var11.a(m0.a(4, 2, nVar10));
            G(nVar10);
            return nVar10;
        } catch (Exception e13) {
            zzb.zzl(str, "Exception while launching billing flow. Try to reconnect", e13);
            n0 n0Var12 = this.f19066f;
            n nVar11 = p0.f19129m;
            n0Var12.a(m0.a(5, 2, nVar11));
            G(nVar11);
            return nVar11;
        }
    }

    @Override // com.android.billingclient.api.h
    public final void d(final w wVar, final s sVar) {
        if (!a()) {
            n0 n0Var = this.f19066f;
            n nVar = p0.f19129m;
            n0Var.a(m0.a(2, 7, nVar));
            sVar.a(nVar, new ArrayList());
            return;
        }
        if (this.f19080t) {
            if (K(new Callable() { // from class: com.android.billingclient.api.s1
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    this.f19193a.U(wVar, sVar);
                    return null;
                }
            }, 30000L, new Runnable() { // from class: com.android.billingclient.api.zzz
                @Override // java.lang.Runnable
                public final void run() {
                    this.zza.z(sVar);
                }
            }, F()) == null) {
                n nVarI = I();
                this.f19066f.a(m0.a(25, 7, nVarI));
                sVar.a(nVarI, new ArrayList());
                return;
            }
            return;
        }
        zzb.zzk("BillingClient", "Querying product details is not supported.");
        n0 n0Var2 = this.f19066f;
        n nVar2 = p0.f19138v;
        n0Var2.a(m0.a(20, 7, nVar2));
        sVar.a(nVar2, new ArrayList());
    }

    @Override // com.android.billingclient.api.h
    public final void e(x xVar, u uVar) {
        L(xVar.b(), uVar);
    }

    @Override // com.android.billingclient.api.h
    public final void f(j jVar) {
        if (a()) {
            zzb.zzj("BillingClient", "Service connection is valid. No need to re-initialize.");
            this.f19066f.c(m0.b(6));
            jVar.a(p0.f19128l);
            return;
        }
        int i11 = 1;
        if (this.f19061a == 1) {
            zzb.zzk("BillingClient", "Client is already in the process of connecting to billing service.");
            n0 n0Var = this.f19066f;
            n nVar = p0.f19120d;
            n0Var.a(m0.a(37, 6, nVar));
            jVar.a(nVar);
            return;
        }
        if (this.f19061a == 3) {
            zzb.zzk("BillingClient", "Client was already closed and can't be reused. Please create another instance.");
            n0 n0Var2 = this.f19066f;
            n nVar2 = p0.f19129m;
            n0Var2.a(m0.a(38, 6, nVar2));
            jVar.a(nVar2);
            return;
        }
        this.f19061a = 1;
        zzb.zzj("BillingClient", "Starting in-app billing setup.");
        this.f19068h = new f0(this, jVar, null);
        Intent intent = new Intent("com.android.vending.billing.InAppBillingService.BIND");
        intent.setPackage("com.android.vending");
        List<ResolveInfo> listQueryIntentServices = this.f19065e.getPackageManager().queryIntentServices(intent, 0);
        if (listQueryIntentServices == null || listQueryIntentServices.isEmpty()) {
            i11 = 41;
        } else {
            ServiceInfo serviceInfo = listQueryIntentServices.get(0).serviceInfo;
            if (serviceInfo != null) {
                String str = serviceInfo.packageName;
                String str2 = serviceInfo.name;
                if (!"com.android.vending".equals(str) || str2 == null) {
                    zzb.zzk("BillingClient", "The device doesn't have valid Play Store.");
                    i11 = 40;
                } else {
                    ComponentName componentName = new ComponentName(str, str2);
                    Intent intent2 = new Intent(intent);
                    intent2.setComponent(componentName);
                    intent2.putExtra("playBillingLibraryVersion", this.f19062b);
                    if (this.f19065e.bindService(intent2, this.f19068h, 1)) {
                        zzb.zzj("BillingClient", "Service was bonded successfully.");
                        return;
                    } else {
                        zzb.zzk("BillingClient", "Connection to Billing service is blocked.");
                        i11 = 39;
                    }
                }
            }
        }
        this.f19061a = 0;
        zzb.zzj("BillingClient", "Billing service unavailable on device.");
        n0 n0Var3 = this.f19066f;
        n nVar3 = p0.f19119c;
        n0Var3.a(m0.a(i11, 6, nVar3));
        jVar.a(nVar3);
    }

    final /* synthetic */ void t(b bVar) {
        n0 n0Var = this.f19066f;
        n nVar = p0.f19130n;
        n0Var.a(m0.a(24, 3, nVar));
        bVar.a(nVar);
    }

    final /* synthetic */ void u(n nVar) {
        if (this.f19064d.d() != null) {
            this.f19064d.d().a(nVar, null);
        } else {
            this.f19064d.c();
            zzb.zzk("BillingClient", "No valid listener is set in BroadcastManager");
        }
    }

    final /* synthetic */ void v(p pVar, o oVar) {
        this.f19066f.a(m0.a(24, 4, p0.f19130n));
        throw null;
    }

    final /* synthetic */ void w(g gVar) {
        n0 n0Var = this.f19066f;
        n nVar = p0.f19130n;
        n0Var.a(m0.a(24, 15, nVar));
        gVar.a(nVar, null);
    }

    final /* synthetic */ void x(l lVar) {
        n0 n0Var = this.f19066f;
        n nVar = p0.f19130n;
        n0Var.a(m0.a(24, 13, nVar));
        lVar.a(nVar, null);
    }

    final /* synthetic */ void y(d dVar) {
        n0 n0Var = this.f19066f;
        n nVar = p0.f19130n;
        n0Var.a(m0.a(24, 14, nVar));
        dVar.a(nVar);
    }

    final /* synthetic */ void z(s sVar) {
        n0 n0Var = this.f19066f;
        n nVar = p0.f19130n;
        n0Var.a(m0.a(24, 7, nVar));
        sVar.a(nVar, new ArrayList());
    }
}
