package com.mbridge.msdk.foundation.controller.authoritycontroller;

import android.content.Context;
import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.controller.e;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.out.OnCompletionListener;
import com.mbridge.msdk.setting.g;
import com.mbridge.msdk.setting.h;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public abstract class b {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static boolean f35019h = true;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static boolean f35020i = true;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected AuthorityInfoBean f35022b;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private e f35027g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public ArrayList<String> f35021a = new ArrayList<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f35023c = 3;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f35024d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f35025e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f35026f = "";

    class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f35028a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ OnCompletionListener f35029b;

        a(Context context, OnCompletionListener onCompletionListener) {
            this.f35028a = context;
            this.f35029b = onCompletionListener;
        }

        @Override // java.lang.Runnable
        public void run() {
            b.this.a(this.f35028a);
            this.f35029b.onCompletion();
        }
    }

    /* JADX INFO: renamed from: com.mbridge.msdk.foundation.controller.authoritycontroller.b$b, reason: collision with other inner class name */
    class C0481b implements e.a {
        C0481b() {
        }

        @Override // com.mbridge.msdk.foundation.controller.e.a
        public void a() {
            b.this.k();
        }
    }

    protected b() {
        h();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context) {
        try {
            if (this.f35027g == null) {
                e eVar = new e(context);
                this.f35027g = eVar;
                eVar.a(new C0481b());
            }
            k();
        } catch (Throwable th2) {
            o0.b("SDKAuthorityController", th2.getMessage());
        }
    }

    public static void a(boolean z10) {
        f35019h = z10;
    }

    private void b(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.f35026f = str;
    }

    public static void b(boolean z10) {
        f35020i = z10;
    }

    private void d(int i11) {
        this.f35023c = i11 != 1 ? 2 : 1;
    }

    public static boolean i() {
        return f35019h;
    }

    public static boolean j() {
        return f35020i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public void k() {
        boolean zC = this.f35027g.c();
        b(this.f35027g.b());
        d(zC ? 1 : 2);
        this.f35022b.authDeviceIdStatus(zC ? 1 : 0);
    }

    protected abstract int a(g gVar, String str);

    protected int a(String str) {
        AuthorityInfoBean authorityInfoBean;
        try {
            if (TextUtils.isEmpty(str) || (authorityInfoBean = this.f35022b) == null) {
                return 0;
            }
            return authorityInfoBean.getStatusByKey(str);
        } catch (Exception e11) {
            o0.b("SDKAuthorityController", e11.getMessage());
            return 0;
        }
    }

    public AuthorityInfoBean a() {
        AuthorityInfoBean authorityInfoBean = this.f35022b;
        if (authorityInfoBean != null) {
            return authorityInfoBean;
        }
        AuthorityInfoBean authorityInfoBean2 = new AuthorityInfoBean();
        authorityInfoBean2.a(1);
        return authorityInfoBean2;
    }

    public void a(int i11) {
        this.f35023c = i11 != 1 ? 2 : 1;
        if (this.f35022b != null) {
            d(i11);
        }
    }

    public void a(Context context, OnCompletionListener onCompletionListener) {
        if (onCompletionListener != null) {
            com.mbridge.msdk.foundation.same.threadpool.a.b().execute(new a(context, onCompletionListener));
        } else {
            a(context);
        }
    }

    public void a(String str, int i11) {
        if (TextUtils.isEmpty(str) || this.f35022b == null) {
            return;
        }
        str.hashCode();
        switch (str) {
            case "authority_serial_id":
                this.f35022b.authSerialIdStatus(i11);
                break;
            case "authority_all_info":
                this.f35022b.a(i11);
                break;
            case "authority_device_id":
                this.f35022b.authDeviceIdStatus(i11);
                break;
            case "authority_general_data":
                this.f35022b.authGenDataStatus(i11);
                break;
            case "authority_other":
                this.f35022b.authOtherDataStatus(i11);
                break;
        }
    }

    public void b(int i11) {
        this.f35024d = i11;
    }

    public boolean b() {
        int i11 = this.f35023c;
        return i11 == 1 || i11 == 3;
    }

    public int c() {
        return this.f35024d;
    }

    public void c(int i11) {
        this.f35025e = i11;
    }

    public int d() {
        return this.f35025e;
    }

    public int e() {
        return this.f35023c;
    }

    public String f() {
        return this.f35026f;
    }

    public String g() {
        JSONArray jSONArray = new JSONArray();
        g gVarC = h.b().c();
        for (int i11 = 0; i11 < this.f35021a.size(); i11++) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("keyname", String.valueOf(this.f35021a.get(i11)));
                jSONObject.put("client_status", a(this.f35021a.get(i11)));
                jSONObject.put("server_status", a(gVarC, this.f35021a.get(i11)));
                jSONArray.put(jSONObject);
            } catch (JSONException e11) {
                e11.printStackTrace();
            }
        }
        return jSONArray.toString();
    }

    protected void h() {
        AuthorityInfoBean authorityInfoBean = new AuthorityInfoBean();
        this.f35022b = authorityInfoBean;
        try {
            authorityInfoBean.authGenDataStatus(1);
            this.f35022b.authDeviceIdStatus(1);
            this.f35022b.authSerialIdStatus(1);
            this.f35022b.authOtherDataStatus(1);
            this.f35021a.add(MBridgeConstans.AUTHORITY_GENERAL_DATA);
            this.f35021a.add(MBridgeConstans.AUTHORITY_DEVICE_ID);
            this.f35021a.add(MBridgeConstans.AUTHORITY_SERIAL_ID);
            this.f35021a.add(MBridgeConstans.AUTHORITY_OTHER);
        } catch (Exception e11) {
            o0.b("SDKAuthorityController", e11.getMessage());
        }
    }
}
