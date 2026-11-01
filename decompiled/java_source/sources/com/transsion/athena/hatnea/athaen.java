package com.transsion.athena.hatnea;

import com.transsion.ga.AthenaAnalytics;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class athaen extends anateh {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.transsion.athena.config.data.model.athena f42766c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f42767d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f42768e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final com.transsion.athena.aethna.aethna f42769f;

    public athaen(com.transsion.athena.config.data.model.athena athenaVar, long j11, com.transsion.athena.aethna.aethna aethnaVar) {
        int iB = com.transsion.athena.config.data.model.anehat.b(AthenaAnalytics.J());
        this.f42768e = iB;
        if (athenaVar.k() > 0 && iB != athenaVar.d()) {
            com.transsion.athena.taaneh.aethna.c("dimensionChanged, so set appConfig version to 0");
            athenaVar.c(0L);
        }
        this.f42766c = athenaVar;
        this.f42767d = j11;
        this.f42769f = aethnaVar;
    }

    @Override // com.transsion.athena.hatnea.anateh
    protected void a() throws Throwable {
        String string;
        boolean z10 = false;
        try {
            JSONObject jSONObjectA = com.transsion.athena.config.data.model.anehat.a(AthenaAnalytics.J());
            jSONObjectA.put("sname", String.valueOf(this.f42766c.b()));
            jSONObjectA.put("sdkver", com.transsion.athena.config.data.model.ehanat.a(this.f42766c.b()));
            string = jSONObjectA.toString();
        } catch (Exception e11) {
            com.transsion.athena.taaneh.aethna.b(e11.getMessage());
            string = "";
        }
        ehanat<String> ehanatVarA = anehat.a(com.transsion.athena.config.data.model.ehanat.a(this.f42766c.c()), string, this.f42766c.k(), this.f42766c.b());
        int i11 = ehanatVarA.f42776a;
        if (i11 == 0) {
            String str = ehanatVarA.f42777b;
            com.transsion.athena.taaneh.aethna.c("<-- appIdConfig:%s", str);
            com.transsion.athena.aethna.athena.c().a(this.f42766c, str);
            this.f42766c.b(this.f42768e);
            if (this.f42766c.e() > 0) {
                this.f42767d = ((long) this.f42766c.e()) * 3600000;
            }
            this.f42766c.b(System.currentTimeMillis() + this.f42767d);
            z10 = true;
        } else if (i11 != 1) {
            com.transsion.athena.config.data.model.athena athenaVar = this.f42766c;
            athenaVar.e(athenaVar.g() + 1);
        } else {
            com.transsion.athena.taaneh.aethna.c("<-- appIdConfig:%s", "NOT_MODIFIED");
            this.f42766c.b(this.f42768e);
            this.f42766c.b(System.currentTimeMillis() + this.f42767d);
        }
        com.transsion.athena.aethna.aethna aethnaVar = this.f42769f;
        if (aethnaVar != null) {
            aethnaVar.a(this.f42766c.b(), z10);
        }
    }

    @Override // com.transsion.athena.hatnea.anateh
    protected String c() {
        return "Retrieve-" + this.f42766c.b() + "-Config";
    }
}
