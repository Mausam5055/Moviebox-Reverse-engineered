package com.transsion.member;

import com.transsion.memberapi.TaskRewards;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class q0 implements Function1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ MemberProvider f46719a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Function0 f46720b;

    public /* synthetic */ q0(MemberProvider memberProvider, Function0 function0) {
        this.f46719a = memberProvider;
        this.f46720b = function0;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return MemberProvider.U(this.f46719a, this.f46720b, (TaskRewards) obj);
    }
}
