package com.transsion.search_pugc.speech;

import android.app.Dialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Color;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.speech.RecognitionListener;
import android.speech.SpeechRecognizer;
import android.text.TextUtils;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.p009lifecycle.v;
import com.blankj.utilcode.util.Utils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.baseui.R$style;
import com.transsion.baseui.dialog.BaseDialog;
import com.transsion.search.R$layout;
import com.transsion.search.R$string;
import com.transsion.wrapperad.R$color;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000|\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\t\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\t\u0010\u0003J\u000f\u0010\n\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\n\u0010\u0003J\u000f\u0010\u000b\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u000b\u0010\u0003J!\u0010\u0010\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\f2\b\b\u0002\u0010\u000f\u001a\u00020\u000eH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u0019\u0010\u0013\u001a\u00020\u00062\b\u0010\u0012\u001a\u0004\u0018\u00010\fH\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0015\u0010\u0003J\u000f\u0010\u0017\u001a\u00020\u0016H\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u0019\u0010\u001b\u001a\u00020\u00062\b\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ!\u0010\u001f\u001a\u00020\u00062\u0006\u0010\u001e\u001a\u00020\u001d2\b\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0016¢\u0006\u0004\b\u001f\u0010 J\u000f\u0010!\u001a\u00020\u0006H\u0016¢\u0006\u0004\b!\u0010\u0003J\u0017\u0010$\u001a\u00020\u00062\u0006\u0010#\u001a\u00020\"H\u0016¢\u0006\u0004\b$\u0010%J8\u0010*\u001a\u00020\u00002)\b\u0002\u0010)\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\f¢\u0006\f\b'\u0012\b\b(\u0012\u0004\b\b(\r\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0018\u00010&¢\u0006\u0004\b*\u0010+R\u0018\u0010/\u001a\u0004\u0018\u00010,8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b-\u0010.R\u0018\u00102\u001a\u0004\u0018\u00010\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b0\u00101R\u0018\u00106\u001a\u0004\u0018\u0001038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b4\u00105R7\u00109\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\f¢\u0006\f\b'\u0012\b\b(\u0012\u0004\b\b(\r\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0018\u00010&8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b7\u00108R\u0018\u0010=\u001a\u0004\u0018\u00010:8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b;\u0010<R\u0016\u0010@\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b>\u0010?R\u0014\u0010D\u001a\u00020A8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bB\u0010CR\u001a\u0010J\u001a\u00020E8\u0016X\u0096\u0004¢\u0006\f\n\u0004\bF\u0010G\u001a\u0004\bH\u0010I¨\u0006K"}, d2 = {"Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;", "Lcom/transsion/baseui/dialog/BaseDialog;", "<init>", "()V", "", "timeout", "", "M0", "(J)V", "H0", "initView", "J0", "", "result", "", "isComplete", "P0", "(Ljava/lang/String;Z)V", "resultStr", "F0", "(Ljava/lang/String;)V", "D0", "", "C0", "()I", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "onPause", "Landroid/content/DialogInterface;", "dialog", "onDismiss", "(Landroid/content/DialogInterface;)V", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "callback", "I0", "(Lkotlin/jvm/functions/Function1;)Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;", "Lcom/transsion/search_pugc/speech/c;", "c", "Lcom/transsion/search_pugc/speech/c;", "initializeStrategy", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Ljava/lang/String;", "mPartialResults", "Lrq/b;", "e", "Lrq/b;", "bind", "f", "Lkotlin/jvm/functions/Function1;", "mCallback", "Landroid/speech/SpeechRecognizer;", "g", "Landroid/speech/SpeechRecognizer;", "mSpeechRecognizer", "h", "Z", "isWorking", "Landroid/os/Handler;", "i", "Landroid/os/Handler;", "mHandler", "Lhj/b;", "j", "Lhj/b;", "getLogViewConfig", "()Lhj/b;", "logViewConfig", "Search_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class SpeechRecognizerDialog extends BaseDialog {

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private c initializeStrategy;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private String mPartialResults;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private rq.b bind;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private Function1 mCallback;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private SpeechRecognizer mSpeechRecognizer;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private boolean isWorking;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private final Handler mHandler;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private final hj.b logViewConfig;

    public static final class a implements RecognitionListener {
        a() {
        }

        @Override // android.speech.RecognitionListener
        public void onBeginningOfSpeech() {
            f.f52525a.a(SpeechRecognizerDialog.this.getClassTag() + " --> onBeginningOfSpeech() --> 当开始说话时调用");
        }

        @Override // android.speech.RecognitionListener
        public void onBufferReceived(byte[] bArr) {
            f.f52525a.a(SpeechRecognizerDialog.this.getClassTag() + " --> onBufferReceived() --> 当接收到音频数据时调用");
        }

        @Override // android.speech.RecognitionListener
        public void onEndOfSpeech() {
            f.f52525a.a(SpeechRecognizerDialog.this.getClassTag() + " --> onEndOfSpeech() --> 当说话结束时调用");
        }

        @Override // android.speech.RecognitionListener
        public void onError(int i11) {
            AppCompatTextView appCompatTextView;
            SpeechRecognizerVolumeCircleView speechRecognizerVolumeCircleView;
            if (!TextUtils.isEmpty(SpeechRecognizerDialog.this.mPartialResults)) {
                SpeechRecognizerDialog speechRecognizerDialog = SpeechRecognizerDialog.this;
                speechRecognizerDialog.F0(speechRecognizerDialog.mPartialResults);
                return;
            }
            SpeechRecognizerDialog.this.H0();
            e eVar = e.f52524a;
            String strA = eVar.a(i11);
            f.f52525a.a(SpeechRecognizerDialog.this.getClassTag() + " --> onError() --> 当发生错误时调用 --> error = " + i11 + " -- msg = " + strA);
            SpeechRecognizerDialog.this.P0(strA, true);
            if (SpeechRecognizerDialog.this.isWorking) {
                q.f52538a.c(eVar.a(16), 16);
            } else {
                q.f52538a.c(strA, i11);
            }
            rq.b bVar = SpeechRecognizerDialog.this.bind;
            if (bVar != null && (speechRecognizerVolumeCircleView = bVar.f74604g) != null) {
                speechRecognizerVolumeCircleView.setMicState(SpeechRecognizerVolumeCircleView.MicState.NORMAL);
            }
            rq.b bVar2 = SpeechRecognizerDialog.this.bind;
            if (bVar2 == null || (appCompatTextView = bVar2.f74602e) == null) {
                return;
            }
            appCompatTextView.setText(Utils.a().getResources().getString(R$string.search_sr_tap_microphone_try_again));
        }

        @Override // android.speech.RecognitionListener
        public void onEvent(int i11, Bundle bundle) {
            f.f52525a.a(SpeechRecognizerDialog.this.getClassTag() + " --> onEvent() --> 当发生其他事件时调用 --> eventType = " + i11 + " --> params = " + bundle);
        }

        @Override // android.speech.RecognitionListener
        public void onPartialResults(Bundle bundle) {
            ArrayList<String> stringArrayList;
            if (bundle == null || (stringArrayList = bundle.getStringArrayList("results_recognition")) == null) {
                return;
            }
            SpeechRecognizerDialog speechRecognizerDialog = SpeechRecognizerDialog.this;
            if (!stringArrayList.isEmpty()) {
                speechRecognizerDialog.mPartialResults = stringArrayList.get(0);
                String str = stringArrayList.get(0);
                Intrinsics.g(str, "get(...)");
                SpeechRecognizerDialog.Q0(speechRecognizerDialog, str, false, 2, null);
            }
            SpeechRecognizerDialog.N0(speechRecognizerDialog, 0L, 1, null);
        }

        @Override // android.speech.RecognitionListener
        public void onReadyForSpeech(Bundle bundle) {
            f.f52525a.a(SpeechRecognizerDialog.this.getClassTag() + " --> onReadyForSpeech() --> 当语音识别准备好时调用 --> params = " + bundle);
            q.f52538a.d();
            c cVar = SpeechRecognizerDialog.this.initializeStrategy;
            if (cVar != null) {
                cVar.i();
            }
        }

        @Override // android.speech.RecognitionListener
        public void onResults(Bundle bundle) {
            ArrayList<String> stringArrayList;
            if (bundle == null || (stringArrayList = bundle.getStringArrayList("results_recognition")) == null) {
                return;
            }
            SpeechRecognizerDialog speechRecognizerDialog = SpeechRecognizerDialog.this;
            if (stringArrayList.isEmpty()) {
                return;
            }
            String str = stringArrayList.get(0);
            Intrinsics.e(str);
            SpeechRecognizerDialog.Q0(speechRecognizerDialog, str, false, 2, null);
            f.f52525a.a(speechRecognizerDialog.getClassTag() + " --> onResults() --> 当获得语音识别结果时调用 = " + str);
            speechRecognizerDialog.F0(str);
        }

        @Override // android.speech.RecognitionListener
        public void onRmsChanged(float f11) {
        }
    }

    public SpeechRecognizerDialog() {
        super(R$layout.dialog_speech_recognizer_layout);
        this.mPartialResults = "";
        this.mHandler = new Handler(Looper.getMainLooper());
        this.logViewConfig = new hj.b("sr_dialog", false, 2, null);
    }

    private final int C0() {
        int i11 = Utils.a().getResources().getDisplayMetrics().heightPixels;
        return i11 - (i11 / 3);
    }

    private final void D0() {
        final SpeechRecognizerVolumeCircleView speechRecognizerVolumeCircleView;
        Unit unit;
        try {
            Result.Companion companion = Result.INSTANCE;
            SpeechRecognizer speechRecognizer = this.mSpeechRecognizer;
            if (speechRecognizer != null) {
                speechRecognizer.cancel();
            }
            SpeechRecognizer speechRecognizer2 = this.mSpeechRecognizer;
            if (speechRecognizer2 != null) {
                speechRecognizer2.destroy();
                unit = Unit.f67061a;
            } else {
                unit = null;
            }
            Result.m454constructorimpl(unit);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th2));
        }
        c cVar = this.initializeStrategy;
        SpeechRecognizer speechRecognizerE = cVar != null ? cVar.e(getContext()) : null;
        this.mSpeechRecognizer = speechRecognizerE;
        if (speechRecognizerE != null) {
            speechRecognizerE.setRecognitionListener(new a());
        }
        rq.b bVar = this.bind;
        if (bVar == null || (speechRecognizerVolumeCircleView = bVar.f74604g) == null) {
            return;
        }
        speechRecognizerVolumeCircleView.post(new Runnable() { // from class: com.transsion.search_pugc.speech.k
            @Override // java.lang.Runnable
            public final void run() {
                SpeechRecognizerDialog.E0(this.f52530a, speechRecognizerVolumeCircleView);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void E0(SpeechRecognizerDialog speechRecognizerDialog, SpeechRecognizerVolumeCircleView speechRecognizerVolumeCircleView) {
        c cVar = speechRecognizerDialog.initializeStrategy;
        if (cVar != null) {
            cVar.k();
        }
        speechRecognizerVolumeCircleView.performClick();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void F0(String resultStr) {
        q.f52538a.e();
        kotlinx.coroutines.k.d(v.a(this), null, null, new SpeechRecognizerDialog$onResult$1(this, resultStr, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit G0(SpeechRecognizerDialog speechRecognizerDialog) {
        speechRecognizerDialog.isWorking = false;
        f.f52525a.a(speechRecognizerDialog.getClassTag() + " --> onViewCreated() --> setCallback{} --> 重新获取语音识别对象 --> initSpeechRecognizer()");
        speechRecognizerDialog.D0();
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void H0() {
        this.mHandler.removeCallbacksAndMessages(null);
    }

    private final void J0() {
        SpeechRecognizerVolumeCircleView speechRecognizerVolumeCircleView;
        AppCompatImageView appCompatImageView;
        rq.b bVar = this.bind;
        if (bVar != null && (appCompatImageView = bVar.f74599b) != null) {
            appCompatImageView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.search_pugc.speech.i
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    SpeechRecognizerDialog.K0(this.f52528a, view);
                }
            });
        }
        rq.b bVar2 = this.bind;
        if (bVar2 == null || (speechRecognizerVolumeCircleView = bVar2.f74604g) == null) {
            return;
        }
        speechRecognizerVolumeCircleView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.search_pugc.speech.j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SpeechRecognizerDialog.L0(this.f52529a, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void K0(SpeechRecognizerDialog speechRecognizerDialog, View view) {
        q.f52538a.a();
        speechRecognizerDialog.dismissAllowingStateLoss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void L0(SpeechRecognizerDialog speechRecognizerDialog, View view) {
        Unit unit;
        if (speechRecognizerDialog.isWorking) {
            SpeechRecognizer speechRecognizer = speechRecognizerDialog.mSpeechRecognizer;
            if (speechRecognizer != null) {
                speechRecognizer.stopListening();
            }
            speechRecognizerDialog.H0();
        } else {
            Intent intent = new Intent("android.speech.action.RECOGNIZE_SPEECH");
            intent.putExtra("android.speech.extra.LANGUAGE_MODEL", "free_form");
            intent.putExtra("android.speech.extra.LANGUAGE", Locale.getDefault().toLanguageTag());
            intent.putExtra("android.speech.extra.PARTIAL_RESULTS", true);
            try {
                Result.Companion companion = Result.INSTANCE;
                SpeechRecognizer speechRecognizer2 = speechRecognizerDialog.mSpeechRecognizer;
                if (speechRecognizer2 != null) {
                    speechRecognizer2.startListening(intent);
                    unit = Unit.f67061a;
                } else {
                    unit = null;
                }
                Result.m454constructorimpl(unit);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m454constructorimpl(ResultKt.a(th2));
            }
            N0(speechRecognizerDialog, 0L, 1, null);
            speechRecognizerDialog.initView();
        }
        speechRecognizerDialog.isWorking = !speechRecognizerDialog.isWorking;
    }

    private final void M0(long timeout) {
        H0();
        this.mHandler.postDelayed(new Runnable() { // from class: com.transsion.search_pugc.speech.l
            @Override // java.lang.Runnable
            public final void run() {
                SpeechRecognizerDialog.O0(this.f52532a);
            }
        }, timeout);
    }

    static /* synthetic */ void N0(SpeechRecognizerDialog speechRecognizerDialog, long j11, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            j11 = 5000;
        }
        speechRecognizerDialog.M0(j11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void O0(SpeechRecognizerDialog speechRecognizerDialog) {
        SpeechRecognizer speechRecognizer = speechRecognizerDialog.mSpeechRecognizer;
        if (speechRecognizer != null) {
            speechRecognizer.stopListening();
        }
        f.f52525a.a(speechRecognizerDialog.getClassTag() + " --> setSpeechTimeout() --> 语音识别超时");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void P0(String result, boolean isComplete) {
        rq.b bVar;
        AppCompatTextView appCompatTextView;
        if (isComplete) {
            this.isWorking = false;
        }
        if (TextUtils.isEmpty(result) || (bVar = this.bind) == null || (appCompatTextView = bVar.f74601d) == null) {
            return;
        }
        appCompatTextView.setText(result);
    }

    static /* synthetic */ void Q0(SpeechRecognizerDialog speechRecognizerDialog, String str, boolean z10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            z10 = true;
        }
        speechRecognizerDialog.P0(str, z10);
    }

    private final void initView() {
        SpeechRecognizerVolumeCircleView speechRecognizerVolumeCircleView;
        SpeechRecognizerVolumeCircleView speechRecognizerVolumeCircleView2;
        AppCompatTextView appCompatTextView;
        SpeechRecognizerVolumeCircleView speechRecognizerVolumeCircleView3;
        String string = Utils.a().getResources().getString(R$string.search_sr_speak_now);
        Intrinsics.g(string, "getString(...)");
        P0(string, false);
        rq.b bVar = this.bind;
        if (bVar != null && (speechRecognizerVolumeCircleView3 = bVar.f74604g) != null) {
            speechRecognizerVolumeCircleView3.setMicState(SpeechRecognizerVolumeCircleView.MicState.ACTIVE);
        }
        rq.b bVar2 = this.bind;
        if (bVar2 != null && (appCompatTextView = bVar2.f74602e) != null) {
            appCompatTextView.setText(Utils.a().getResources().getString(R$string.search_sr_tap_try_tip_avatar));
        }
        rq.b bVar3 = this.bind;
        if (bVar3 != null && (speechRecognizerVolumeCircleView2 = bVar3.f74604g) != null) {
            speechRecognizerVolumeCircleView2.setActiveCircleColor(Utils.a().getResources().getColor(R$color.white_40));
        }
        rq.b bVar4 = this.bind;
        if (bVar4 == null || (speechRecognizerVolumeCircleView = bVar4.f74604g) == null) {
            return;
        }
        speechRecognizerVolumeCircleView.setLoadingGradientColors(new int[]{Color.parseColor("#2166E5"), Color.parseColor("#1DD171")});
    }

    public final SpeechRecognizerDialog I0(Function1 callback) {
        this.mCallback = callback;
        return this;
    }

    @Override // com.transsion.baseui.dialog.BaseDialog, hj.a
    public hj.b getLogViewConfig() {
        return this.logViewConfig;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setStyle(0, R$style.BottomDialogTheme);
        f.f52525a.a(getClassTag() + " --> onCreate() --> 展示弹窗组件");
    }

    @Override // com.transsion.baseui.dialog.BaseDialog, androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialog) {
        Unit unit;
        Intrinsics.h(dialog, "dialog");
        super.onDismiss(dialog);
        try {
            Result.Companion companion = Result.INSTANCE;
            SpeechRecognizer speechRecognizer = this.mSpeechRecognizer;
            if (speechRecognizer != null) {
                speechRecognizer.destroy();
                unit = Unit.f67061a;
            } else {
                unit = null;
            }
            Result.m454constructorimpl(unit);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th2));
        }
        Function1 function1 = this.mCallback;
        if (function1 != null) {
        }
        this.mCallback = null;
        f.f52525a.a(getClassTag() + " --> onDismiss() --> 语音识别弹窗关闭 释放资源");
    }

    @Override // com.transsion.baseui.dialog.BaseDialog, androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        SpeechRecognizer speechRecognizer = this.mSpeechRecognizer;
        if (speechRecognizer != null) {
            speechRecognizer.cancel();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Window window;
        Intrinsics.h(view, "view");
        super.onViewCreated(view, savedInstanceState);
        Dialog dialog = getDialog();
        if (dialog != null) {
            dialog.setCancelable(false);
        }
        Dialog dialog2 = getDialog();
        if (dialog2 != null && (window = dialog2.getWindow()) != null) {
            window.setGravity(80);
            window.setDimAmount(0.5f);
            window.setBackgroundDrawable(null);
            window.setWindowAnimations(R$style.BaseBottomDialogAnimation);
            window.setLayout(-1, -2);
            WindowManager.LayoutParams attributes = window.getAttributes();
            if (attributes == null) {
                attributes = new WindowManager.LayoutParams();
            }
            attributes.height = C0();
        }
        this.bind = rq.b.a(view);
        initView();
        J0();
        c cVar = new c();
        this.initializeStrategy = cVar;
        cVar.j(new Function0() { // from class: com.transsion.search_pugc.speech.h
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return SpeechRecognizerDialog.G0(this.f52527a);
            }
        });
        D0();
        f.f52525a.b(getClassTag() + " --> onViewCreated() --> 语音识别是否可用 = " + g.f52526a.a());
    }
}
