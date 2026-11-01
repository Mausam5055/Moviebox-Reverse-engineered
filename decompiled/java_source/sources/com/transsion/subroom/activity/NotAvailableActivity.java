package com.transsion.subroom.activity;

import android.content.SharedPreferences;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.style.ForegroundColorSpan;
import android.text.style.URLSpan;
import android.view.View;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.tencent.mmkv.MMKV;
import com.therouter.TheRouter;
import com.tn.lib.widget.R$color;
import com.transsion.baseui.activity.BaseActivity;
import com.transsion.subroom.R$string;
import com.transsion.usercenter.laboratory.LabPwdDialog;
import com.transsion.usercenter.message.detail.CustomURLSpan;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.lang.reflect.InvocationTargetException;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0007\u0018\u0000 #2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0018B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u0019\u0010\t\u001a\u00020\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0014¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u0019\u0010\r\u001a\u00020\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\r\u0010\nJ\u000f\u0010\u000e\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u000e\u0010\u0004J\u000f\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0012\u0010\u0011J\u000f\u0010\u0013\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0013\u0010\u0011J\u000f\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0015\u0010\u0016R\u0016\u0010\u001a\u001a\u00020\u00178\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0016\u0010\u001c\u001a\u00020\u00178\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\u0019R\u001a\u0010\"\u001a\u00020\u001d8\u0006X\u0086D¢\u0006\f\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!¨\u0006$"}, d2 = {"Lcom/transsion/subroom/activity/NotAvailableActivity;", "Lcom/transsion/baseui/activity/BaseActivity;", "Lau/b;", "<init>", "()V", "", "j0", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "g0", "()Lau/b;", "initView", "onBackPressed", "", "isTranslucent", "()Z", "isStatusDark", "isChangeStatusBar", "Lhj/b;", "newLogViewConfig", "()Lhj/b;", "", "a", "Ljava/lang/String;", "htmlMessage", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "reason", "", "c", "I", "getCLICK_COUNT", "()I", "CLICK_COUNT", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "app_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class NotAvailableActivity extends BaseActivity<au.b> {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    public String htmlMessage = "";

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    public String reason = "";

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private final int CLICK_COUNT = 10;

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h0(Ref.IntRef intRef, final NotAvailableActivity notAvailableActivity, View view) {
        int i11 = intRef.element + 1;
        intRef.element = i11;
        if (i11 == notAvailableActivity.CLICK_COUNT) {
            new LabPwdDialog().r0(new Function0() { // from class: com.transsion.subroom.activity.c0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return NotAvailableActivity.i0(this.f54634a);
                }
            }).k0(notAvailableActivity, "labPwd");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit i0(NotAvailableActivity notAvailableActivity) {
        notAvailableActivity.j0();
        return Unit.f67061a;
    }

    private final void j0() {
        SharedPreferences.Editor editorPutString;
        MMKV mmkvC = bh.a.f16469a.c();
        if (mmkvC != null && (editorPutString = mmkvC.putString("sp_code", "90101")) != null) {
            editorPutString.commit();
        }
        com.tn.lib.widget.toast.core.h.f41479a.l("Please restart the App");
        kotlinx.coroutines.k.d(androidx.p009lifecycle.v.a(this), null, null, new NotAvailableActivity$welcomeMovieBox$1(null), 3, null);
    }

    @Override // com.transsion.baseui.activity.BaseCommonActivity
    /* JADX INFO: renamed from: g0, reason: merged with bridge method [inline-methods] */
    public au.b getViewBinding() {
        au.b bVarC = au.b.c(getLayoutInflater());
        Intrinsics.g(bVarC, "inflate(...)");
        return bVarC;
    }

    /* JADX WARN: Multi-variable type inference failed */
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
    @Override // com.transsion.baseui.activity.BaseActivity
    public void initView(Bundle savedInstanceState) {
        HashMap mapG;
        HashMap mapG2;
        super.initView(savedInstanceState);
        if (this.htmlMessage.length() > 0) {
            Spanned spannedA = androidx.core.text.b.a(this.htmlMessage, 0);
            Intrinsics.g(spannedA, "fromHtml(...)");
            SpannableString spannableString = new SpannableString(spannedA);
            Object[] spans = spannableString.getSpans(0, spannableString.length(), URLSpan.class);
            Intrinsics.g(spans, "getSpans(...)");
            for (Object obj : spans) {
                URLSpan uRLSpan = (URLSpan) obj;
                int spanStart = spannableString.getSpanStart(uRLSpan);
                int spanEnd = spannableString.getSpanEnd(uRLSpan);
                spannableString.removeSpan(uRLSpan);
                if (spanStart != -1 && spanEnd != -1) {
                    String url = uRLSpan.getURL();
                    Intrinsics.g(url, "getURL(...)");
                    spannableString.setSpan(new CustomURLSpan(url), spanStart, spanEnd, 33);
                }
            }
            ((au.b) getMViewBinding()).f16140b.setText(spannableString);
            ((au.b) getMViewBinding()).f16140b.setMovementMethod(new oh.f(null));
        } else {
            String string = getResources().getString(R$string.not_available);
            Intrinsics.g(string, "getString(...)");
            String string2 = getResources().getString(R$string.in_current_region);
            Intrinsics.g(string2, "getString(...)");
            SpannableString spannableString2 = new SpannableString(string + string2);
            spannableString2.setSpan(new ForegroundColorSpan(androidx.core.content.b.getColor(this, R$color.error_red)), 0, string.length(), 34);
            ((au.b) getMViewBinding()).f16140b.setText(spannableString2);
        }
        hj.b logViewConfig = getLogViewConfig();
        if (logViewConfig != null && (mapG2 = logViewConfig.g()) != null) {
        }
        hj.b logViewConfig2 = getLogViewConfig();
        if (logViewConfig2 != null && (mapG = logViewConfig2.g()) != null) {
        }
        final Ref.IntRef intRef = new Ref.IntRef();
        ((au.b) getMViewBinding()).f16140b.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.subroom.activity.b0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NotAvailableActivity.h0(intRef, this, view);
            }
        });
    }

    @Override // com.transsion.baseui.activity.BaseActivity
    public boolean isChangeStatusBar() {
        return false;
    }

    @Override // com.transsion.baseui.activity.BaseActivity
    public boolean isStatusDark() {
        return !ak.x.f658a.a();
    }

    @Override // com.transsion.baseui.activity.BaseActivity
    public boolean isTranslucent() {
        return true;
    }

    @Override // com.transsion.baseui.activity.BaseActivity
    public hj.b newLogViewConfig() {
        return new hj.b("not_available", false, 2, null);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
    }

    @Override // com.transsion.baseui.activity.BaseActivity, com.transsion.baseui.activity.BaseCommonActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) throws IllegalAccessException, InvocationTargetException {
        TheRouter.l(this);
        super.onCreate(savedInstanceState);
    }
}
