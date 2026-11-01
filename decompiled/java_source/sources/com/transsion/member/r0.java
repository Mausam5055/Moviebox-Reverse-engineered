package com.transsion.member;

import com.transsion.memberapi.MemberCheckResult;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class r0 implements Function1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ MemberProvider f46722a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Function0 f46723b;

    public /* synthetic */ r0(MemberProvider memberProvider, Function0 function0) {
        this.f46722a = memberProvider;
        this.f46723b = function0;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return MemberProvider$checkShowAdState$1.d(this.f46722a, this.f46723b, (MemberCheckResult) obj);
    }
}
