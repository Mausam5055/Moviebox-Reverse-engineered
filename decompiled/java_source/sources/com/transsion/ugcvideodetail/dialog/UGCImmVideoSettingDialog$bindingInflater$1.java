package com.transsion.ugcvideodetail.dialog;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
/* synthetic */ class UGCImmVideoSettingDialog$bindingInflater$1 extends FunctionReferenceImpl implements Function3<LayoutInflater, ViewGroup, Boolean, qv.c> {
    public static final UGCImmVideoSettingDialog$bindingInflater$1 INSTANCE = new UGCImmVideoSettingDialog$bindingInflater$1();

    UGCImmVideoSettingDialog$bindingInflater$1() {
        super(3, qv.c.class, "inflate", "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/transsion/ugcvideodetail/databinding/DialogUgcImmVideoSettingBinding;", 0);
    }

    @Override // kotlin.jvm.functions.Function3
    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3) {
        return invoke((LayoutInflater) obj, (ViewGroup) obj2, ((Boolean) obj3).booleanValue());
    }

    public final qv.c invoke(LayoutInflater p11, ViewGroup viewGroup, boolean z10) {
        Intrinsics.h(p11, "p0");
        return qv.c.c(p11, viewGroup, z10);
    }
}
