package com.transsion.push.helper;

import com.transsion.mb.config.manager.ConfigBean;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes6.dex */
public final class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final i f50864a = new i();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Lazy f50865b = LazyKt.b(new Function0() { // from class: com.transsion.push.helper.h
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return i.c();
        }
    });

    private i() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Integer c() {
        String value;
        ConfigBean configBeanC = sm.f.f75407c.a().c("push_remind_notification_time", true);
        Integer numV = (configBeanC == null || (value = configBeanC.getValue()) == null) ? null : StringsKt.v(value);
        lg.a.C0828a.f(lg.a.f68839a, "PushConfigHelper", "remindTime:" + numV, false, 4, null);
        return numV;
    }

    public final Integer b() {
        return (Integer) f50865b.getValue();
    }
}
