package com.transsion.athena.enatha;

import android.annotation.SuppressLint;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import androidx.core.app.NotificationCompat;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.transsion.athena.config.data.model.ehanat;
import com.transsion.athena.data.AppIdData;
import com.transsion.athena.data.TrackData;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class aethna extends athena implements Handler.Callback {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @SuppressLint({"StaticFieldLeak"})
    private static volatile aethna f42716c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f42717d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f42718e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f42719f;

    private aethna(Context context) {
        super(context);
        this.f42717d = 0;
        this.f42719f = 0L;
        HandlerThread handlerThread = new HandlerThread("Athena-LiteWorker", 10);
        handlerThread.start();
        Handler handler = new Handler(handlerThread.getLooper(), this);
        this.f42722b = handler;
        handler.sendEmptyMessage(303);
    }

    public static aethna a(Context context) {
        if (f42716c == null) {
            synchronized (aethna.class) {
                try {
                    if (f42716c == null) {
                        f42716c = new aethna(context);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f42716c;
    }

    private void a(int i11, String str) {
        if (this.f42717d != 1) {
            com.transsion.athena.taaneh.aethna.a("Failed to connect to DCS service");
            return;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("appId", Integer.valueOf(i11));
        if (TextUtils.isEmpty(str)) {
            contentValues.put("baseInfo", AppIdData.a(this.f42721a, i11).f42643b);
        } else {
            contentValues.put("baseInfo", str);
        }
        this.f42721a.getContentResolver().insert(Uri.parse("content://com.transsion.dataservice.provider/bind"), contentValues);
    }

    private void a(com.transsion.athena.data.aethna aethnaVar) {
        if (this.f42717d != 1) {
            com.transsion.athena.taaneh.aethna.a("Failed to connect to DCS service");
            return;
        }
        Cursor cursorQuery = this.f42721a.getContentResolver().query(Uri.parse("content://com.transsion.dataservice.provider/property"), null, "prop_key = ?", new String[]{aethnaVar.f42663a}, null);
        if (cursorQuery != null) {
            if (cursorQuery.moveToNext()) {
                cursorQuery.getString(0);
                android.support.v4.media.session.c.a(aethnaVar.f42664b.get());
            }
            cursorQuery.close();
        }
    }

    private void a(String str) {
        if (this.f42717d == 1) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("trackObject", str);
            this.f42721a.getContentResolver().insert(Uri.parse("content://com.transsion.dataservice.provider/track"), contentValues);
            return;
        }
        com.transsion.athena.taaneh.aethna.a("Failed to connect to DCS service");
        long j11 = this.f42719f + 1;
        this.f42719f = j11;
        long j12 = 20;
        if (j11 % j12 == 0 && j11 / j12 <= 5 && com.transsion.athena.taaneh.anehat.c(this.f42721a)) {
            f();
        }
    }

    private void a(JSONObject jSONObject, String str, Object obj) throws JSONException {
        try {
            jSONObject.getString(str);
        } catch (JSONException unused) {
            jSONObject.put(str, obj);
        }
    }

    private void f() {
        Cursor cursorQuery = this.f42721a.getContentResolver().query(Uri.parse("content://com.transsion.dataservice.provider/authorize"), null, "pkg = ?", new String[]{com.transsion.athena.taaneh.athena.h(this.f42721a)}, null);
        if (cursorQuery != null) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("DCS authorize ");
            sb2.append(cursorQuery.getCount() == 1 ? OfflineConstantsKt.OFFLINE_CONFIG_ENABLE : "disable");
            com.transsion.athena.taaneh.aethna.a(sb2.toString());
            if (cursorQuery.getCount() == 1) {
                this.f42717d = 1;
            } else {
                this.f42717d = 2;
            }
            cursorQuery.close();
        }
    }

    @Override // com.transsion.athena.enatha.athena
    public void a(Message message, long j11) {
        Handler handler = this.f42722b;
        if (handler != null) {
            handler.sendMessageDelayed(message, j11);
        }
    }

    @Override // com.transsion.athena.enatha.athena
    public void a(Runnable runnable) {
        Handler handler = this.f42722b;
        if (handler != null) {
            handler.post(runnable);
        }
    }

    @Override // com.transsion.athena.enatha.athena
    public void a(Runnable runnable, long j11) {
        Handler handler = this.f42722b;
        if (handler != null) {
            handler.postDelayed(runnable, j11);
        }
    }

    @Override // com.transsion.athena.enatha.athena
    public void a(String str, TrackData trackData, long j11) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(NotificationCompat.CATEGORY_EVENT, str);
            jSONObject.put("tid", j11);
            jSONObject.put(NativeComponentConstants.KEY_COMPONENT_TYPE, trackData.d());
            JSONObject jSONObjectA = trackData.a();
            String str2 = ehanat.f42607h;
            a(jSONObjectA, "_apkg", com.transsion.athena.taaneh.athena.h(this.f42721a));
            a(jSONObjectA, "_avn", com.transsion.athena.taaneh.athena.j(this.f42721a));
            a(jSONObjectA, "_avc", Integer.valueOf(com.transsion.athena.taaneh.athena.i(this.f42721a)));
            a(jSONObjectA, "_atutp", Short.valueOf(ehanat.c()));
            String strB = ehanat.b();
            if (strB == null) {
                strB = "";
            }
            a(jSONObjectA, "_atuid", strB);
            a(jSONObjectA, "_achannel", ehanat.g());
            a(jSONObjectA, "_ainstallchnl", TextUtils.isEmpty(com.transsion.athena.taaneh.athena.e(this.f42721a)) ? " " : com.transsion.athena.taaneh.athena.e(this.f42721a));
            jSONObject.put("_eparam", jSONObjectA);
        } catch (JSONException e11) {
            com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e11));
        }
        String string = jSONObject.toString();
        int i11 = this.f42718e;
        if (i11 < 5000) {
            this.f42718e = i11 + 1;
            Message messageObtainMessage = this.f42722b.obtainMessage(Sdk$SDKError.Reason.INVALID_IFA_STATUS_VALUE);
            messageObtainMessage.obj = string;
            this.f42722b.sendMessage(messageObtainMessage);
        }
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        try {
            int i11 = message.what;
            if (i11 == 302) {
                this.f42718e--;
                a((String) message.obj);
                return false;
            }
            if (i11 != 303) {
                if (i11 == 400) {
                    a(message.arg1, (String) message.obj);
                    return false;
                }
                if (i11 != 405) {
                    return false;
                }
                a((com.transsion.athena.data.aethna) message.obj);
                return false;
            }
            com.transsion.athena.taaneh.aethna.f42798a.m().r(ehanat.q());
            com.transsion.athena.taaneh.aethna.c("Athena SDK Version is 3.1.1.4");
            com.transsion.athena.taaneh.aethna.c("Athena is in Lite mode");
            if (com.transsion.athena.data.athena.b() == 0) {
                com.transsion.athena.taaneh.anehat.a("HostAppId must be set up in LiteMode");
            }
            f();
            return false;
        } catch (Exception e11) {
            com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e11));
            return false;
        }
    }
}
