package com.transsion.athena.hatnea;

import android.os.Handler;
import android.os.Message;

/* JADX INFO: loaded from: classes5.dex */
public class atnhae extends anateh {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String[] f42773c = {"https://time1.google.com", "https://time.cloudflare.com", "https://www.pool.ntp.org"};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f42774d;

    public atnhae(Handler handler) {
        super(handler);
        this.f42774d = 0;
    }

    @Override // com.transsion.athena.hatnea.anateh
    protected void a() throws Throwable {
        Message messageObtainMessage = this.f42761a.obtainMessage(503);
        messageObtainMessage.obj = 0L;
        while (true) {
            int i11 = this.f42774d;
            if (i11 >= 3) {
                break;
            }
            ehanat<Long> ehanatVarA = anehat.a(f42773c[i11]);
            if (ehanatVarA.f42776a == 0) {
                messageObtainMessage.obj = ehanatVarA.f42777b;
                break;
            }
            this.f42774d++;
        }
        this.f42761a.sendMessageAtFrontOfQueue(messageObtainMessage);
    }

    @Override // com.transsion.athena.hatnea.anateh
    protected String c() {
        return "Retrieve-Time";
    }
}
