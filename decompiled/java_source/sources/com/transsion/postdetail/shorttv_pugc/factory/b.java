package com.transsion.postdetail.shorttv_pugc.factory;

import com.transsion.mb.config.manager.ConfigBean;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes6.dex */
public final class b implements st.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f49301a = new a(null);

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @Override // st.b
    public String a() {
        ConfigBean configBeanC = sm.f.f75407c.a().c("shorts_unlock_config", true);
        String value = configBeanC != null ? configBeanC.getValue() : null;
        lg.a.C0828a.f(lg.a.f68839a, "ShortTv", "getUnlockConfig config：" + value, false, 4, null);
        return value;
    }
}
