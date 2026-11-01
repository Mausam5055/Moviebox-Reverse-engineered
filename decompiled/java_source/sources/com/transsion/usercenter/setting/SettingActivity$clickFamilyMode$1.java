package com.transsion.usercenter.setting;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.usercenter.setting.SettingActivity$clickFamilyMode$1", f = "SettingActivity.kt", l = {682}, m = "invokeSuspend")
@SourceDebugExtension
final class SettingActivity$clickFamilyMode$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    Object L$0;
    boolean Z$0;
    int label;
    final /* synthetic */ SettingActivity this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SettingActivity$clickFamilyMode$1(SettingActivity settingActivity, Continuation<? super SettingActivity$clickFamilyMode$1> continuation) {
        super(2, continuation);
        this.this$0 = settingActivity;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final native Continuation create(Object obj, Continuation continuation);

    @Override // kotlin.jvm.functions.Function2
    public final native Object invoke(n0 n0Var, Continuation continuation);

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final native Object invokeSuspend(Object obj);
}
