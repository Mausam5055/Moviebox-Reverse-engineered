package com.mbridge.msdk.mbsignalcommon.windvane;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import java.util.HashMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes5.dex */
public class h implements b, Handler.Callback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected Pattern f36567a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected String f36568b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected Context f36570d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected WindVaneWebView f36571e;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected final int f36569c = 1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected Handler f36572f = new Handler(Looper.getMainLooper(), this);

    public h(Context context) {
        this.f36570d = context;
    }

    protected void a(int i11, a aVar) {
        Message messageObtain = Message.obtain();
        messageObtain.what = i11;
        messageObtain.obj = aVar;
        this.f36572f.sendMessage(messageObtain);
    }

    @Override // com.mbridge.msdk.mbsignalcommon.windvane.b
    public void a(WindVaneWebView windVaneWebView) {
        this.f36571e = windVaneWebView;
    }

    protected void a(a aVar) {
        WindVaneWebView windVaneWebView = aVar.f36541b;
        Object jsObject = windVaneWebView == null ? null : windVaneWebView.getJsObject(aVar.f36543d);
        if (jsObject == null) {
            return;
        }
        try {
            com.mbridge.msdk.mbsignalcommon.mapping.b.C0514b c0514bA = com.mbridge.msdk.mbsignalcommon.mapping.b.a(this.f36570d.getClassLoader(), jsObject.getClass().getName()).a(aVar.f36544e, Object.class, String.class);
            c0514bA.a();
            if (jsObject instanceof g) {
                aVar.f36540a = c0514bA;
                aVar.f36542c = jsObject;
                a(1, aVar);
            }
        } catch (com.mbridge.msdk.mbsignalcommon.mapping.a e11) {
            e11.printStackTrace();
        } catch (Exception e12) {
            e12.printStackTrace();
        }
    }

    @Override // com.mbridge.msdk.mbsignalcommon.windvane.b
    public void a(String str) {
        a aVarC;
        if (TextUtils.isEmpty(str) || (aVarC = c(str)) == null) {
            return;
        }
        a(aVarC);
    }

    public void a(Pattern pattern) {
        this.f36567a = pattern;
    }

    @Override // com.mbridge.msdk.mbsignalcommon.windvane.b
    public boolean b(String str) {
        if (!i.f(str)) {
            return false;
        }
        a(i.c(str));
        d(str);
        return true;
    }

    public a c(String str) {
        if (str == null) {
            return null;
        }
        a aVarA = com.mbridge.msdk.mbsignalcommon.mraid.c.a(this.f36571e, str);
        if (aVarA != null) {
            aVarA.f36541b = this.f36571e;
            return aVarA;
        }
        Matcher matcher = this.f36567a.matcher(str);
        if (matcher.matches()) {
            a aVar = new a();
            int iGroupCount = matcher.groupCount();
            if (iGroupCount >= 5) {
                aVar.f36545f = matcher.group(5);
            }
            if (iGroupCount >= 3) {
                aVar.f36543d = matcher.group(1);
                aVar.f36546g = matcher.group(2);
                String strGroup = matcher.group(3);
                aVar.f36544e = strGroup;
                HashMap<String, String> map = com.mbridge.msdk.mbsignalcommon.base.e.f36442k;
                if (map != null && map.containsKey(strGroup)) {
                    aVar.f36544e = com.mbridge.msdk.mbsignalcommon.base.e.f36442k.get(aVar.f36544e);
                }
                aVar.f36541b = this.f36571e;
                return aVar;
            }
        }
        return null;
    }

    public void d(String str) {
        this.f36568b = str;
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        a aVar = (a) message.obj;
        if (aVar == null) {
            return false;
        }
        try {
            if (message.what == 1) {
                Object obj = aVar.f36542c;
                com.mbridge.msdk.mbsignalcommon.mapping.b.C0514b c0514b = aVar.f36540a;
                if (c0514b != null && obj != null) {
                    c0514b.a(obj, aVar, TextUtils.isEmpty(aVar.f36545f) ? "{}" : aVar.f36545f);
                }
                return true;
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
        return false;
    }
}
