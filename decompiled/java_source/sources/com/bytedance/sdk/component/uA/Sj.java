package com.bytedance.sdk.component.uA;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.webkit.WebView;
import com.bytedance.sdk.component.utils.LqL;
import com.bytedance.sdk.component.utils.Yf;
import com.bytedance.sdk.component.utils.uA;
import com.hisavana.common.tracking.TrackingKey;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class Sj extends TKC implements LqL.Sj {
    private volatile float Dq;
    private final List<Integer> EjP;
    private int Fmk;
    private final int HiB;
    private volatile float Jcg;
    private String RiZ;
    private final int TKC;
    private float TzV;
    private long Ym;

    /* JADX INFO: renamed from: aa, reason: collision with root package name */
    private long f20909aa;
    private float dNu;
    private final int sP;
    private View.OnTouchListener sU;
    private boolean uvD;
    private final Context vS;
    private float uA = -1.0f;
    private float TEQ = -1.0f;
    private final Handler Zq = new LqL(uA.Sj().getLooper(), this);
    InterfaceC0227Sj Sj = new InterfaceC0227Sj() { // from class: com.bytedance.sdk.component.uA.Sj.1
        @Override // com.bytedance.sdk.component.uA.Sj.InterfaceC0227Sj
        public void Sj() {
            if (Sj.this.uA == -1.0f && Sj.this.TEQ == -1.0f && Sj.this.f20909aa == -1) {
                float unused = Sj.this.uA;
                float unused2 = Sj.this.TEQ;
                Sj sj2 = Sj.this;
                sj2.uA = sj2.Jcg;
                Sj sj3 = Sj.this;
                sj3.TEQ = sj3.Dq;
                Sj sj4 = Sj.this;
                sj4.f20909aa = sj4.Ym;
                Sj.this.uvD = true;
            }
            float unused3 = Sj.this.uA;
            float unused4 = Sj.this.TEQ;
        }

        @Override // com.bytedance.sdk.component.uA.Sj.InterfaceC0227Sj
        public void Sj(int i11) {
            Sj.this.Fmk = i11;
            Sj.this.sP();
        }
    };

    /* JADX INFO: renamed from: dx, reason: collision with root package name */
    private int f20910dx = -1;
    private final List<Integer> sef = new ArrayList();

    /* JADX INFO: renamed from: com.bytedance.sdk.component.uA.Sj$Sj, reason: collision with other inner class name */
    public interface InterfaceC0227Sj {
        void Sj();

        void Sj(int i11);
    }

    public Sj(Context context, int i11, int i12, List<Integer> list, int i13) {
        this.vS = context;
        if (i11 == -1) {
            this.sP = Yf.Sj(context);
        } else {
            this.sP = Yf.Sj(context, i11);
        }
        this.TKC = Yf.Sj(context, i12);
        this.EjP = list;
        this.HiB = i13;
    }

    private int Sj(float f11, float f12, long j11) {
        if (this.uA == -1.0f && this.TEQ == -1.0f && this.f20909aa == -1) {
            return 1;
        }
        if (!this.EjP.contains(Integer.valueOf(this.Fmk))) {
            return 2;
        }
        if (j11 - this.f20909aa > this.HiB) {
            sP();
            return 3;
        }
        float fAbs = Math.abs(f11 - this.uA);
        float fAbs2 = Math.abs(f12 - this.TEQ);
        if (fAbs <= this.sP / 2.0f && fAbs2 <= this.TKC / 2.0f) {
            return 0;
        }
        sP();
        return 4;
    }

    private void Sj(View view, MotionEvent motionEvent, int i11, boolean z10) {
        String url;
        JSONObject jSONObject = new JSONObject();
        WebView webView = view instanceof WebView ? (WebView) view : null;
        if (webView != null) {
            try {
                url = webView.getUrl();
            } catch (Throwable unused) {
            }
        } else {
            url = "";
        }
        jSONObject.put("arbi_current_url", url);
        jSONObject.put(TrackingKey.CLICK_X, motionEvent.getX());
        jSONObject.put(TrackingKey.CLICK_Y, motionEvent.getY());
        jSONObject.put("is_interceptor", i11 == 0 ? 1 : 0);
        jSONObject.put("is_first_click", z10 ? 1 : 0);
        jSONObject.put("click_timestamp", System.currentTimeMillis());
        jSONObject.put("arbi_interceptor_type", i11);
        jSONObject.put("current_url_index", this.Fmk);
        Message messageObtain = Message.obtain();
        messageObtain.what = 100;
        messageObtain.obj = jSONObject;
        this.Zq.sendMessageDelayed(messageObtain, 200L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sP() {
        this.uA = -1.0f;
        this.TEQ = -1.0f;
        this.f20909aa = -1L;
    }

    public InterfaceC0227Sj Sj() {
        return this.Sj;
    }

    @Override // com.bytedance.sdk.component.utils.LqL.Sj
    public void Sj(Message message) {
        int i11 = message.what;
        Object obj = message.obj;
        JSONObject jSONObject = new JSONObject();
        if (i11 == 100) {
            if (obj instanceof JSONObject) {
                jSONObject = (JSONObject) obj;
                try {
                    jSONObject.put("is_trigger_jump", this.uvD ? 1 : 0);
                    this.uvD = false;
                } catch (Throwable unused) {
                }
            }
            if (com.bytedance.sdk.component.uA.Sj.Sj.Sj().sP() != null) {
                com.bytedance.sdk.component.uA.Sj.Sj.Sj().sP().Sj(this.RiZ, "arbitrage_click_event", jSONObject);
            }
        }
    }

    @Override // com.bytedance.sdk.component.uA.TKC
    public void Sj(View.OnTouchListener onTouchListener) {
        this.sU = onTouchListener;
    }

    public void Sj(String str) {
        this.RiZ = str;
    }

    @Override // android.view.View.OnTouchListener
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouch(View view, MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        motionEvent.getX();
        motionEvent.getY();
        float x10 = motionEvent.getX();
        float y10 = motionEvent.getY();
        this.Ym = SystemClock.elapsedRealtime();
        this.Jcg = x10;
        this.Dq = y10;
        if (action == 0) {
            this.dNu = x10;
            this.TzV = y10;
        } else if (action == 1 && Sj(x10, y10, this.dNu, this.TzV, this.vS)) {
            int iSj = Sj(this.Jcg, this.Dq, this.Ym);
            boolean zContains = this.sef.contains(Integer.valueOf(this.Fmk));
            Sj(view, motionEvent, iSj, !zContains);
            if (!zContains) {
                this.sef.add(Integer.valueOf(this.Fmk));
            }
            if (iSj == 0) {
                motionEvent.setAction(3);
            }
        }
        View.OnTouchListener onTouchListener = this.sU;
        if (onTouchListener != null) {
            return onTouchListener.onTouch(view, motionEvent);
        }
        return false;
    }
}
