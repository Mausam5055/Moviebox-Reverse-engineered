package com.transsion.baselib.report;

import android.os.Bundle;
import com.transsion.memberapi.IMemberApi;
import com.transsion.memberapi.IPremiumApi;
import com.transsion.startup.pref.consume.AppStartDotState;
import com.transsnet.loginapi.ILoginApi;
import java.util.HashSet;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Pair;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes5.dex */
public final class j implements hj.j {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ILoginApi f43356c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private IMemberApi f43357d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private HashSet f43354a = new HashSet();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f43355b = "ext";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Lazy f43358e = LazyKt.b(new Function0() { // from class: com.transsion.baselib.report.i
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return j.e();
        }
    });

    public j() {
        this.f43354a.add(AppStartDotState.APP_START);
        this.f43354a.add("app_stop");
        this.f43354a.add("download_click");
    }

    private final native IPremiumApi d();

    /* JADX INFO: Access modifiers changed from: private */
    public static final native IPremiumApi e();

    @Override // hj.j
    public native Bundle a(String str, Bundle bundle);

    @Override // hj.j
    public native void b(String str, String str2, Map map);

    @Override // hj.j
    public native Pair getAccount();
}
