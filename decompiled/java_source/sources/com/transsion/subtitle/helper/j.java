package com.transsion.subtitle.helper;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import com.blankj.utilcode.util.KeyboardUtils;
import com.transsion.subtitle.R$id;
import com.transsion.subtitle_download.db.SubtitleDownloadTable;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes6.dex */
public final class j implements View.OnTouchListener {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final a f54918o = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ViewGroup f54919a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private eu.a f54920b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ImageView f54921c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ImageView f54922d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ImageView f54923e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private EditText f54924f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private float f54926h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Function2 f54927i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private Function0 f54928j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private long f54929k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private float f54930l;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Handler f54925g = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final Runnable f54931m = new Runnable() { // from class: com.transsion.subtitle.helper.i
        @Override // java.lang.Runnable
        public final void run() {
            j.s(this.f54917a);
        }
    };

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final c f54932n = new c(Looper.getMainLooper());

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public static final class b implements TextWatcher {
        b() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable s11) {
            Editable text;
            Intrinsics.h(s11, "s");
            j.this.f54925g.removeCallbacks(j.this.f54931m);
            EditText editText = j.this.f54924f;
            if (editText == null || (text = editText.getText()) == null) {
                return;
            }
            j jVar = j.this;
            float fM = j.m(jVar, text, 0.0f, 2, null);
            if (jVar.f54926h != fM) {
                jVar.f54926h = fM;
            }
            if (jVar.f54930l == fM) {
                return;
            }
            if (!StringsKt.G(text.toString(), "s", false, 2, null)) {
                EditText editText2 = jVar.f54924f;
                if (editText2 != null) {
                    editText2.setText(((Object) text) + "s");
                }
                EditText editText3 = jVar.f54924f;
                if (editText3 != null) {
                    editText3.setSelection(text.length());
                }
            }
            jVar.f54930l = fM;
            jVar.u((long) (fM * 1000));
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence s11, int i11, int i12, int i13) {
            Intrinsics.h(s11, "s");
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence s11, int i11, int i12, int i13) {
            Intrinsics.h(s11, "s");
        }
    }

    public static final class c extends Handler {
        c(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            Intrinsics.h(msg, "msg");
            super.handleMessage(msg);
            int i11 = msg.what;
            int i12 = msg.arg1;
            if (i11 == 1) {
                j.this.t(i12 == R$id.iv_sync_adjust_plus);
                sendMessageDelayed(obtainMessage(i11, msg.arg1, msg.arg2), 100L);
            }
        }
    }

    public j(ViewGroup viewGroup) {
        this.f54919a = viewGroup;
    }

    private final float l(CharSequence charSequence, float f11) {
        if (charSequence.length() == 0) {
            return f11;
        }
        String string = charSequence.toString();
        if (StringsKt.G(string, "s", false, 2, null)) {
            string = string.substring(0, string.length() - 1);
            Intrinsics.g(string, "substring(...)");
        }
        if (StringsKt.c0(string, "s", false, 2, null)) {
            StringsKt.Q(string, "s", "", false, 4, null);
        }
        try {
            return Float.parseFloat(string);
        } catch (Throwable unused) {
            return f11;
        }
    }

    static /* synthetic */ float m(j jVar, CharSequence charSequence, float f11, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            f11 = Float.NaN;
        }
        return jVar.l(charSequence, f11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p(j jVar, View view) {
        Function0 function0 = jVar.f54928j;
        if (function0 != null) {
            function0.invoke();
        }
        jVar.f54925g.removeCallbacks(jVar.f54931m);
        jVar.n();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s(j jVar) {
        jVar.n();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void t(boolean z10) {
        float f11 = (z10 ? (this.f54926h * 1000.0f) + 100 : (this.f54926h * 1000.0f) - 100) / 1000.0f;
        this.f54926h = f11;
        EditText editText = this.f54924f;
        if (editText != null) {
            editText.setText(f11 + "s");
        }
        this.f54925g.removeCallbacks(this.f54931m);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void u(long j11) {
        SubtitleDownloadTable subtitleDownloadTableB;
        eu.a aVar = this.f54920b;
        if (aVar != null && (subtitleDownloadTableB = aVar.b()) != null) {
            subtitleDownloadTableB.setDelay(Long.valueOf(j11));
        }
        Function2 function2 = this.f54927i;
        if (function2 != null) {
            function2.invoke(this.f54920b, Long.valueOf(j11));
        }
    }

    public final void n() {
        ViewGroup viewGroup = this.f54919a;
        if (viewGroup != null) {
            jg.c.g(viewGroup);
            KeyboardUtils.e(viewGroup);
        }
    }

    public final void o(Function2 function2) {
        this.f54927i = function2;
        ViewGroup viewGroup = this.f54919a;
        this.f54921c = viewGroup != null ? (ImageView) viewGroup.findViewById(R$id.iv_close) : null;
        ViewGroup viewGroup2 = this.f54919a;
        this.f54922d = viewGroup2 != null ? (ImageView) viewGroup2.findViewById(R$id.iv_sync_adjust_plus) : null;
        ViewGroup viewGroup3 = this.f54919a;
        this.f54923e = viewGroup3 != null ? (ImageView) viewGroup3.findViewById(R$id.iv_sync_adjust_minus) : null;
        ViewGroup viewGroup4 = this.f54919a;
        this.f54924f = viewGroup4 != null ? (EditText) viewGroup4.findViewById(R$id.et_sync_adjust) : null;
        ImageView imageView = this.f54921c;
        if (imageView != null) {
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.subtitle.helper.h
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    j.p(this.f54916a, view);
                }
            });
        }
        ImageView imageView2 = this.f54922d;
        if (imageView2 != null) {
            imageView2.setOnTouchListener(this);
        }
        ImageView imageView3 = this.f54923e;
        if (imageView3 != null) {
            imageView3.setOnTouchListener(this);
        }
        ImageView imageView4 = this.f54922d;
        if (imageView4 != null) {
            imageView4.setFocusable(true);
        }
        ImageView imageView5 = this.f54923e;
        if (imageView5 != null) {
            imageView5.setFocusable(true);
        }
        ImageView imageView6 = this.f54922d;
        if (imageView6 != null) {
            imageView6.setClickable(true);
        }
        ImageView imageView7 = this.f54923e;
        if (imageView7 != null) {
            imageView7.setClickable(true);
        }
        EditText editText = this.f54924f;
        if (editText != null) {
            editText.addTextChangedListener(new b());
        }
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        Integer numValueOf = motionEvent != null ? Integer.valueOf(motionEvent.getAction()) : null;
        if (numValueOf != null && numValueOf.intValue() == 0) {
            this.f54929k = System.currentTimeMillis();
            c cVar = this.f54932n;
            cVar.sendMessageDelayed(cVar.obtainMessage(1, view != null ? view.getId() : 0, 0), 1200L);
            if (view != null) {
                view.setPressed(true);
            }
        } else if (numValueOf != null && numValueOf.intValue() == 1) {
            this.f54932n.removeCallbacksAndMessages(null);
            if (System.currentTimeMillis() - this.f54929k <= 400) {
                t((view != null ? view.getId() : 0) == R$id.iv_sync_adjust_plus);
            }
            if (view != null) {
                view.setPressed(false);
            }
        }
        return true;
    }

    public final void q(Function2 callback) {
        Intrinsics.h(callback, "callback");
        this.f54927i = callback;
    }

    public final void r(eu.a aVar) {
        SubtitleDownloadTable subtitleDownloadTableB;
        Long delay;
        this.f54920b = aVar;
        float fLongValue = ((aVar == null || (subtitleDownloadTableB = aVar.b()) == null || (delay = subtitleDownloadTableB.getDelay()) == null) ? 0L : delay.longValue()) / 1000.0f;
        this.f54926h = fLongValue;
        this.f54930l = fLongValue;
        EditText editText = this.f54924f;
        if (editText != null) {
            editText.setText(fLongValue + "s");
        }
        com.transsion.subtitle.a.f54738a.a(j.class.getSimpleName() + " --> setCurDefVideoSubtitleBean() --> cur duration = " + this.f54926h);
    }
}
