package com.transsion.athena.hatnea;

import android.os.Handler;
import android.os.Message;
import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes5.dex */
public class atenha extends anateh {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.transsion.athena.config.data.model.enatha f42764c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.transsion.athena.aethna.aethna f42765d;

    public atenha(@NonNull Handler handler, com.transsion.athena.config.data.model.enatha enathaVar, com.transsion.athena.aethna.aethna aethnaVar) {
        super(handler);
        this.f42764c = enathaVar;
        this.f42765d = aethnaVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d() {
        com.transsion.athena.aethna.aethna aethnaVar = this.f42765d;
        if (aethnaVar != null) {
            aethnaVar.a(0, false);
        }
    }

    @Override // com.transsion.athena.hatnea.anateh
    protected void a() throws Throwable {
        ehanat<String> ehanatVarA = anehat.a(com.transsion.athena.config.data.model.ehanat.i(), "", this.f42764c.i());
        if (ehanatVarA.f42776a == -1 && com.transsion.athena.config.data.model.anehat.a(this.f42764c.b()) && com.transsion.athena.config.data.model.ehanat.u() && !this.f42761a.hasMessages(298)) {
            Message messageObtainMessage = this.f42761a.obtainMessage(298);
            messageObtainMessage.arg1 = 1;
            this.f42761a.sendMessageDelayed(messageObtainMessage, 300000L);
            return;
        }
        int i11 = ehanatVarA.f42776a;
        if (i11 == 0) {
            String str = ehanatVarA.f42777b;
            com.transsion.athena.taaneh.aethna.c("<-- globalConfig:%s", str);
            com.transsion.athena.aethna.athena.c().a(str);
            this.f42764c.b(System.currentTimeMillis() + this.f42764c.c());
            this.f42761a.postAtFrontOfQueue(new Runnable() { // from class: com.transsion.athena.hatnea.a
                @Override // java.lang.Runnable
                public final void run() {
                    this.f42752a.d();
                }
            });
        } else if (i11 != 1) {
            com.transsion.athena.config.data.model.enatha enathaVar = this.f42764c;
            enathaVar.c(enathaVar.d() + 1);
        } else {
            com.transsion.athena.taaneh.aethna.c("<-- globalConfig:%s", "NOT_MODIFIED");
            this.f42764c.b(System.currentTimeMillis() + this.f42764c.c());
        }
        com.transsion.athena.aethna.athena.c().l();
    }

    @Override // com.transsion.athena.hatnea.anateh
    protected String c() {
        return "Retrieve-Global-Config";
    }
}
