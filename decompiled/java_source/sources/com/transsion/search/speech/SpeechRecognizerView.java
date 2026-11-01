package com.transsion.search.speech;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.fragment.app.FragmentManager;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.tn.lib.widget.R$color;
import com.transsion.search.R$drawable;
import com.transsion.search.R$mipmap;
import com.transsion.search.R$string;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u00012\u00020\u0002B\u001d\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u0019\u0010\u000f\u001a\u00020\u000e2\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J8\u0010\u0016\u001a\u00020\u000e2)\b\u0002\u0010\u0015\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\t¢\u0006\f\b\u0012\u0012\b\b\u0013\u0012\u0004\b\b(\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u000e\u0018\u00010\u0011¢\u0006\u0004\b\u0016\u0010\u0017R7\u0010\u001a\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\t¢\u0006\f\b\u0012\u0012\b\b\u0013\u0012\u0004\b\b(\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u000e\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019¨\u0006\u001b"}, d2 = {"Lcom/transsion/search/speech/SpeechRecognizerView;", "Landroidx/appcompat/widget/AppCompatImageView;", "Landroid/view/View$OnClickListener;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "getClassTag", "()Ljava/lang/String;", "Landroid/view/View;", "v", "", "onClick", "(Landroid/view/View;)V", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "result", "callback", "setCallback", "(Lkotlin/jvm/functions/Function1;)V", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lkotlin/jvm/functions/Function1;", "mCallback", "Search_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class SpeechRecognizerView extends AppCompatImageView implements View.OnClickListener {

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private Function1 mCallback;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    @JvmOverloads
    public SpeechRecognizerView(Context context) {
        this(context, null, 2, 0 == true ? 1 : 0);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public SpeechRecognizerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.h(context, "context");
        setOnClickListener(this);
        setBackgroundResource(R$drawable.sr_icon_microphone);
    }

    public /* synthetic */ SpeechRecognizerView(Context context, AttributeSet attributeSet, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i11 & 2) != 0 ? null : attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit d(final SpeechRecognizerView speechRecognizerView) {
        q.f52227a.b();
        Context context = speechRecognizerView.getContext();
        final AppCompatActivity appCompatActivity = context instanceof AppCompatActivity ? (AppCompatActivity) context : null;
        if (appCompatActivity != null) {
            ye.c.f78993a.e(appCompatActivity).b("android.permission.RECORD_AUDIO").b().c(new ze.b() { // from class: com.transsion.search.speech.n
                @Override // ze.b
                public final void a(cf.f fVar, List list, boolean z10, boolean z11) {
                    SpeechRecognizerView.e(this.f52223a, fVar, list, z10, z11);
                }
            }).a(new ze.c() { // from class: com.transsion.search.speech.o
                @Override // ze.c
                public final void a(boolean z10, List list, List list2) {
                    SpeechRecognizerView.f(this.f52224a, appCompatActivity, z10, list, list2);
                }
            });
        } else {
            f.f52214a.a(speechRecognizerView.getClassTag() + " --> context as? AppCompatActivity == null");
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e(SpeechRecognizerView speechRecognizerView, cf.f scope, List deniedList, boolean z10, boolean z11) {
        Intrinsics.h(scope, "scope");
        Intrinsics.h(deniedList, "deniedList");
        if (z10) {
            if (z11) {
                scope.c(deniedList, new bf.a(null, speechRecognizerView.getResources().getString(R$string.search_sr_permission_tip), speechRecognizerView.getResources().getString(R$string.search_sr_permission_setting), Integer.valueOf(R$mipmap.sr_icon_active), Integer.valueOf(R$color.white_20), 1, null));
            } else {
                scope.b(deniedList);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f(SpeechRecognizerView speechRecognizerView, AppCompatActivity appCompatActivity, boolean z10, List grantedList, List deniedList) {
        Intrinsics.h(grantedList, "grantedList");
        Intrinsics.h(deniedList, "deniedList");
        f.f52214a.a(speechRecognizerView.getClassTag() + " --> allGranted = " + z10);
        if (z10) {
            SpeechRecognizerDialog speechRecognizerDialogI0 = new SpeechRecognizerDialog().I0(speechRecognizerView.mCallback);
            FragmentManager supportFragmentManager = appCompatActivity.getSupportFragmentManager();
            Intrinsics.g(supportFragmentManager, "getSupportFragmentManager(...)");
            speechRecognizerDialogI0.show(supportFragmentManager, "SpeechRecognizerDialog");
        }
    }

    private final String getClassTag() {
        String simpleName = SpeechRecognizerView.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void setCallback$default(SpeechRecognizerView speechRecognizerView, Function1 function1, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            function1 = null;
        }
        speechRecognizerView.setCallback(function1);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v11) {
        com.transsion.baseui.util.d.a(1000L, new Function0() { // from class: com.transsion.search.speech.m
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return SpeechRecognizerView.d(this.f52222a);
            }
        });
    }

    public final void setCallback(Function1<? super String, Unit> callback) {
        this.mCallback = callback;
    }
}
