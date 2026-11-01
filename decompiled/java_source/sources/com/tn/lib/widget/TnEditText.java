package com.tn.lib.widget;

import android.content.Context;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatEditText;
import com.cloud.tmc.integration.event.EventConstants;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import tj.a;
import tj.c;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\r\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u00012\u00020\u0002B\u0011\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006B\u001b\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\u0005\u0010\tB#\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\u0005\u0010\fJ)\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0004\u001a\u00020\u00032\b\u0010\b\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u000b\u001a\u00020\nH\u0002¢\u0006\u0004\b\u000e\u0010\fJ\u0019\u0010\u0010\u001a\u00020\r2\b\b\u0001\u0010\u000f\u001a\u00020\nH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u0019\u0010\u0012\u001a\u00020\r2\b\b\u0001\u0010\u000f\u001a\u00020\nH\u0016¢\u0006\u0004\b\u0012\u0010\u0011J\u0019\u0010\u0015\u001a\u00020\r2\b\u0010\u0014\u001a\u0004\u0018\u00010\u0013H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u0019\u0010\u0017\u001a\u00020\r2\b\u0010\u0014\u001a\u0004\u0018\u00010\u0013H\u0016¢\u0006\u0004\b\u0017\u0010\u0016J!\u0010\u001a\u001a\u00020\r2\u0010\u0010\u0019\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0013\u0018\u00010\u0018H\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ\u000f\u0010\u001c\u001a\u00020\rH\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ\u001d\u0010\u001f\u001a\u00020\r2\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\r0\u0018H\u0016¢\u0006\u0004\b\u001f\u0010\u001bR\u0014\u0010\"\u001a\u00020 8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010!¨\u0006#"}, d2 = {"Lcom/tn/lib/widget/TnEditText;", "Landroidx/appcompat/widget/AppCompatEditText;", "Ltj/a;", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "defStyleAttr", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "", "a", "resId", "setTextById", "(I)V", "setHintById", "", "srt", "setHintWithString", "(Ljava/lang/CharSequence;)V", "setTextWithString", "Lkotlin/Function0;", EventConstants.KEY_ACTION, "setTextAction", "(Lkotlin/jvm/functions/Function0;)V", "changeLocal", "()V", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "setLocalChangeListener", "Ltj/c;", "Ltj/c;", "delegate", "UI_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class TnEditText extends AppCompatEditText implements a {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private final c delegate;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TnEditText(Context context) {
        super(context);
        Intrinsics.h(context, "context");
        this.delegate = new c(this);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TnEditText(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.h(context, "context");
        this.delegate = new c(this);
        a(context, attributeSet, 0);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TnEditText(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        Intrinsics.h(context, "context");
        this.delegate = new c(this);
        a(context, attributeSet, i11);
    }

    private final void a(Context context, AttributeSet attrs, int defStyleAttr) {
        this.delegate.a(context, attrs, defStyleAttr);
    }

    @Override // tj.a
    public void changeLocal() {
        this.delegate.changeLocal();
    }

    public void setHintById(int resId) {
        this.delegate.b(resId);
    }

    public void setHintWithString(CharSequence srt) {
        this.delegate.c(srt);
    }

    public void setLocalChangeListener(Function0<Unit> listener) {
        Intrinsics.h(listener, "listener");
        this.delegate.d(listener);
    }

    public void setTextAction(Function0<? extends CharSequence> action) {
        this.delegate.e(action);
    }

    public void setTextById(int resId) {
        this.delegate.f(resId);
    }

    public void setTextWithString(CharSequence srt) {
        this.delegate.g(srt);
    }
}
