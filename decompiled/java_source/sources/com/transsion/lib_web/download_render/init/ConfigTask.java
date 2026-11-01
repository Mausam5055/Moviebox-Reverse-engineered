package com.transsion.lib_web.download_render.init;

import com.blankj.utilcode.util.o;
import com.google.gson.reflect.TypeToken;
import com.transsion.base.report.athena.sampler.EventConfig;
import com.transsion.base.report.athena.sampler.EventStrategyBean;
import com.transsion.mb.config.manager.ConfigBean;
import gm.i;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import sm.f;

/* JADX INFO: loaded from: classes5.dex */
public final class ConfigTask implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f46171a = new a(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f46172b = "(event =='files_download')";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f46173c = "(event =='render')";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String f46174d = "(event =='pages_download')";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final EventStrategyBean f46175e = new EventStrategyBean("(event =='files_download')", "pre_download", 1);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final EventStrategyBean f46176f = new EventStrategyBean("(event =='render')", "pre_download", 1);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final EventStrategyBean f46177g = new EventStrategyBean("(event =='pages_download')", "pre_download", 1);

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @Override // com.transsion.lib_web.download_render.init.c
    public void invoke() {
        String value;
        List arrayList = new ArrayList();
        try {
            boolean z10 = true;
            ConfigBean configBeanC = f.f75407c.a().c("point_config", true);
            if (configBeanC == null || (value = configBeanC.getValue()) == null) {
                value = "";
            }
            i.f63883a.a("DR_Config", "remote point config: " + value);
            if (StringsKt.q0(value)) {
                arrayList.add(f46175e);
                arrayList.add(f46176f);
                arrayList.add(f46177g);
            } else {
                List<EventStrategyBean> list = (List) o.e(value, new TypeToken<List<EventStrategyBean>>() { // from class: com.transsion.lib_web.download_render.init.ConfigTask$invoke$type$1
                }.getType());
                try {
                    boolean z11 = true;
                    boolean z12 = true;
                    for (EventStrategyBean eventStrategyBean : list) {
                        if (Intrinsics.c(eventStrategyBean.getEventExpr(), f46172b)) {
                            z10 = false;
                        }
                        if (Intrinsics.c(eventStrategyBean.getEventExpr(), f46173c)) {
                            z11 = false;
                        }
                        if (Intrinsics.c(eventStrategyBean.getEventExpr(), f46174d)) {
                            z12 = false;
                        }
                    }
                    if (z10) {
                        list.add(f46175e);
                    }
                    if (z11) {
                        list.add(f46176f);
                    }
                    if (z12) {
                        list.add(f46177g);
                    }
                    arrayList = list;
                } catch (Throwable th2) {
                    th = th2;
                    arrayList = list;
                    arrayList.clear();
                    arrayList.add(f46175e);
                    arrayList.add(f46176f);
                    arrayList.add(f46177g);
                    String strJ = o.j(arrayList);
                    i.f63883a.a("DR_Config", "fail: " + th + ", point config: " + strJ);
                    EventConfig.f43003a.j(strJ);
                    return;
                }
            }
            String strJ2 = o.j(arrayList);
            i.f63883a.a("DR_Config", "point config: " + strJ2);
            EventConfig.f43003a.j(strJ2);
        } catch (Throwable th3) {
            th = th3;
        }
    }
}
