package com.android.billingclient.api;

/* JADX INFO: loaded from: classes2.dex */
abstract class p0 {
    static final n A;
    static final n B;
    static final n C;
    static final n D;
    static final n E;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final n f19117a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final n f19118b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static final n f19119c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static final n f19120d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    static final n f19121e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    static final n f19122f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    static final n f19123g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    static final n f19124h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    static final n f19125i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    static final n f19126j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    static final n f19127k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    static final n f19128l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    static final n f19129m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    static final n f19130n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    static final n f19131o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    static final n f19132p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    static final n f19133q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    static final n f19134r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    static final n f19135s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    static final n f19136t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    static final n f19137u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    static final n f19138v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    static final n f19139w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    static final n f19140x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    static final n f19141y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    static final n f19142z;

    static {
        n.a aVarC = n.c();
        aVarC.c(3);
        aVarC.b("Google Play In-app Billing API version is less than 3");
        f19117a = aVarC.a();
        n.a aVarC2 = n.c();
        aVarC2.c(3);
        aVarC2.b("Google Play In-app Billing API version is less than 9");
        f19118b = aVarC2.a();
        n.a aVarC3 = n.c();
        aVarC3.c(3);
        aVarC3.b("Billing service unavailable on device.");
        f19119c = aVarC3.a();
        n.a aVarC4 = n.c();
        aVarC4.c(5);
        aVarC4.b("Client is already in the process of connecting to billing service.");
        f19120d = aVarC4.a();
        n.a aVarC5 = n.c();
        aVarC5.c(5);
        aVarC5.b("The list of SKUs can't be empty.");
        f19121e = aVarC5.a();
        n.a aVarC6 = n.c();
        aVarC6.c(5);
        aVarC6.b("SKU type can't be empty.");
        f19122f = aVarC6.a();
        n.a aVarC7 = n.c();
        aVarC7.c(5);
        aVarC7.b("Product type can't be empty.");
        f19123g = aVarC7.a();
        n.a aVarC8 = n.c();
        aVarC8.c(-2);
        aVarC8.b("Client does not support extra params.");
        f19124h = aVarC8.a();
        n.a aVarC9 = n.c();
        aVarC9.c(5);
        aVarC9.b("Invalid purchase token.");
        f19125i = aVarC9.a();
        n.a aVarC10 = n.c();
        aVarC10.c(6);
        aVarC10.b("An internal error occurred.");
        f19126j = aVarC10.a();
        n.a aVarC11 = n.c();
        aVarC11.c(5);
        aVarC11.b("SKU can't be null.");
        f19127k = aVarC11.a();
        n.a aVarC12 = n.c();
        aVarC12.c(0);
        f19128l = aVarC12.a();
        n.a aVarC13 = n.c();
        aVarC13.c(-1);
        aVarC13.b("Service connection is disconnected.");
        f19129m = aVarC13.a();
        n.a aVarC14 = n.c();
        aVarC14.c(2);
        aVarC14.b("Timeout communicating with service.");
        f19130n = aVarC14.a();
        n.a aVarC15 = n.c();
        aVarC15.c(-2);
        aVarC15.b("Client does not support subscriptions.");
        f19131o = aVarC15.a();
        n.a aVarC16 = n.c();
        aVarC16.c(-2);
        aVarC16.b("Client does not support subscriptions update.");
        f19132p = aVarC16.a();
        n.a aVarC17 = n.c();
        aVarC17.c(-2);
        aVarC17.b("Client does not support get purchase history.");
        f19133q = aVarC17.a();
        n.a aVarC18 = n.c();
        aVarC18.c(-2);
        aVarC18.b("Client does not support price change confirmation.");
        f19134r = aVarC18.a();
        n.a aVarC19 = n.c();
        aVarC19.c(-2);
        aVarC19.b("Play Store version installed does not support cross selling products.");
        f19135s = aVarC19.a();
        n.a aVarC20 = n.c();
        aVarC20.c(-2);
        aVarC20.b("Client does not support multi-item purchases.");
        f19136t = aVarC20.a();
        n.a aVarC21 = n.c();
        aVarC21.c(-2);
        aVarC21.b("Client does not support offer_id_token.");
        f19137u = aVarC21.a();
        n.a aVarC22 = n.c();
        aVarC22.c(-2);
        aVarC22.b("Client does not support ProductDetails.");
        f19138v = aVarC22.a();
        n.a aVarC23 = n.c();
        aVarC23.c(-2);
        aVarC23.b("Client does not support in-app messages.");
        f19139w = aVarC23.a();
        n.a aVarC24 = n.c();
        aVarC24.c(-2);
        aVarC24.b("Client does not support user choice billing.");
        f19140x = aVarC24.a();
        n.a aVarC25 = n.c();
        aVarC25.c(5);
        aVarC25.b("Unknown feature");
        f19141y = aVarC25.a();
        n.a aVarC26 = n.c();
        aVarC26.c(-2);
        aVarC26.b("Play Store version installed does not support get billing config.");
        f19142z = aVarC26.a();
        n.a aVarC27 = n.c();
        aVarC27.c(-2);
        aVarC27.b("Query product details with serialized docid is not supported.");
        A = aVarC27.a();
        n.a aVarC28 = n.c();
        aVarC28.c(4);
        aVarC28.b("Item is unavailable for purchase.");
        B = aVarC28.a();
        n.a aVarC29 = n.c();
        aVarC29.c(-2);
        aVarC29.b("Query product details with developer specified account is not supported.");
        C = aVarC29.a();
        n.a aVarC30 = n.c();
        aVarC30.c(-2);
        aVarC30.b("Play Store version installed does not support alternative billing only.");
        D = aVarC30.a();
        n.a aVarC31 = n.c();
        aVarC31.c(5);
        aVarC31.b("To use this API you must specify a PurchasesUpdateListener when initializing a BillingClient.");
        E = aVarC31.a();
    }

    static n a(int i11, String str) {
        n.a aVarC = n.c();
        aVarC.c(i11);
        aVarC.b(str);
        return aVarC.a();
    }
}
