package com.transsion.base.infras_config;

import com.google.gson.Gson;
import com.tn.lib.net.bean.BaseDto;
import com.transsion.base.infras_config.api.InfraInitApi;
import com.transsion.base.infras_config.model.ConfigInitData;
import com.transsion.base.infras_config.model.ConfigInitDataItem;
import com.transsion.base.infras_config.model.ConfigInitMobileInfraReq;
import com.transsion.base.infras_config.model.ConfigInitRspCode;
import com.transsion.base.infras_config.model.InfrasSourceType;
import io.reactivex.rxjava3.core.j;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.i;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.y0;
import lz.d;
import lz.f;
import lz.h;

/* JADX INFO: loaded from: classes5.dex */
public final class InfraInitManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final InfraInitManager f42995a = new InfraInitManager();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Lazy f42996b = LazyKt.b(new Function0() { // from class: com.transsion.base.infras_config.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return InfraInitManager.b();
        }
    });

    static final class a implements d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final a f42997a = new a();

        a() {
        }

        @Override // lz.d
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final boolean a(Integer count, Throwable th2) {
            Intrinsics.h(count, "count");
            Intrinsics.h(th2, "<unused var>");
            return count.intValue() <= 1;
        }
    }

    static final class b implements h {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ long f42998a;

        public /* synthetic */ class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final /* synthetic */ int[] f42999a;

            static {
                int[] iArr = new int[ConfigInitRspCode.values().length];
                try {
                    iArr[ConfigInitRspCode.IRC_MODIFIED.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[ConfigInitRspCode.IRC_NOT_MODIFIED.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[ConfigInitRspCode.IRC_UNKNOWN.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                f42999a = iArr;
            }
        }

        b(long j11) {
            this.f42998a = j11;
        }

        @Override // lz.h
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ConfigInitData apply(BaseDto response) {
            Intrinsics.h(response, "response");
            ConfigInitData configInitData = (ConfigInitData) response.getData();
            if (configInitData == null) {
                throw new IllegalStateException("init response data is null");
            }
            ConfigInitRspCode code = configInitData.getCode();
            int i11 = code == null ? -1 : a.f42999a[code.ordinal()];
            if (i11 != -1 && i11 != 1 && i11 != 2) {
                if (i11 != 3) {
                    throw new NoWhenBranchMatchedException();
                }
                throw new IllegalStateException("init failed, code=" + configInitData.getCode());
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            gj.b.f63623a.j(configInitData, jCurrentTimeMillis);
            long j11 = jCurrentTimeMillis - this.f42998a;
            lg.a.C0828a c0828a = lg.a.f68839a;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("initRx() success, code=");
            sb2.append(configInitData.getCode());
            sb2.append(", items=");
            List<ConfigInitDataItem> items = configInitData.getItems();
            sb2.append(items != null ? items.size() : 0);
            sb2.append(", version=");
            sb2.append(configInitData.getVersion());
            sb2.append(", cost=");
            sb2.append(j11);
            sb2.append("ms");
            lg.a.C0828a.f(c0828a, "InfraInitManager", sb2.toString(), false, 4, null);
            return configInitData;
        }
    }

    static final class c implements f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ long f43000a;

        c(long j11) {
            this.f43000a = j11;
        }

        @Override // lz.f
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(Throwable t11) {
            Intrinsics.h(t11, "t");
            long jCurrentTimeMillis = System.currentTimeMillis() - this.f43000a;
            lg.a.C0828a c0828a = lg.a.f68839a;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("initRx() failed, cost=");
            sb2.append(jCurrentTimeMillis);
            sb2.append("ms, msg=");
            String message = t11.getMessage();
            if (message == null) {
                message = t11.getClass().getSimpleName();
            }
            sb2.append(message);
            lg.a.C0828a.k(c0828a, "InfraInitManager", sb2.toString(), t11, false, 8, null);
        }
    }

    private InfraInitManager() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final InfraInitApi b() {
        return (InfraInitApi) zg.c.f79414e.a().h(InfraInitApi.class);
    }

    private final InfraInitApi c() {
        return (InfraInitApi) f42996b.getValue();
    }

    public final ConfigInitDataItem d(InfrasSourceType sourceType) {
        Intrinsics.h(sourceType, "sourceType");
        return gj.b.f63623a.c(sourceType);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object e(List list, String str, String str2, Continuation continuation) throws Throwable {
        InfraInitManager$init$1 infraInitManager$init$1;
        if (continuation instanceof InfraInitManager$init$1) {
            infraInitManager$init$1 = (InfraInitManager$init$1) continuation;
            int i11 = infraInitManager$init$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                infraInitManager$init$1.label = i11 - Integer.MIN_VALUE;
            } else {
                infraInitManager$init$1 = new InfraInitManager$init$1(this, continuation);
            }
        } else {
            infraInitManager$init$1 = new InfraInitManager$init$1(this, continuation);
        }
        Object objG = infraInitManager$init$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = infraInitManager$init$1.label;
        if (i12 == 0) {
            ResultKt.b(objG);
            i0 i0VarB = y0.b();
            InfraInitManager$init$2 infraInitManager$init$2 = new InfraInitManager$init$2(list, str, str2, null);
            infraInitManager$init$1.label = 1;
            objG = i.g(i0VarB, infraInitManager$init$2, infraInitManager$init$1);
            if (objG == objF) {
                return objF;
            }
        } else {
            if (i12 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(objG);
        }
        return ((Result) objG).getValue();
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0016  */
    public final Object f(List list, String str, long j11, String str2, Continuation continuation) throws Throwable {
        InfraInitManager$initIfNeeded$1 infraInitManager$initIfNeeded$1;
        if (continuation instanceof InfraInitManager$initIfNeeded$1) {
            infraInitManager$initIfNeeded$1 = (InfraInitManager$initIfNeeded$1) continuation;
            int i11 = infraInitManager$initIfNeeded$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                infraInitManager$initIfNeeded$1.label = i11 - Integer.MIN_VALUE;
            } else {
                infraInitManager$initIfNeeded$1 = new InfraInitManager$initIfNeeded$1(this, continuation);
            }
        } else {
            infraInitManager$initIfNeeded$1 = new InfraInitManager$initIfNeeded$1(this, continuation);
        }
        Object objG = infraInitManager$initIfNeeded$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = infraInitManager$initIfNeeded$1.label;
        if (i12 == 0) {
            ResultKt.b(objG);
            i0 i0VarB = y0.b();
            InfraInitManager$initIfNeeded$2 infraInitManager$initIfNeeded$2 = new InfraInitManager$initIfNeeded$2(j11, list, str, str2, null);
            infraInitManager$initIfNeeded$1.label = 1;
            objG = i.g(i0VarB, infraInitManager$initIfNeeded$2, infraInitManager$initIfNeeded$1);
            if (objG == objF) {
                return objF;
            }
        } else {
            if (i12 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(objG);
        }
        return ((Result) objG).getValue();
    }

    public final j h(List sourceVersions, String str, String str2) {
        Intrinsics.h(sourceVersions, "sourceVersions");
        long jCurrentTimeMillis = System.currentTimeMillis();
        lg.a.C0828a.f(lg.a.f68839a, "InfraInitManager", "initRx() start, sourceCount=" + sourceVersions.size() + ", version=" + str + ", baseUrl=" + str2, false, 4, null);
        List list = sourceVersions;
        gj.b.f63623a.l(list.isEmpty() ? null : list);
        if (list.isEmpty()) {
            list = null;
        }
        ConfigInitMobileInfraReq configInitMobileInfraReq = new ConfigInitMobileInfraReq(list, str);
        new Gson().toJson(configInitMobileInfraReq);
        j jVarJ = c().initMobileInfra(str2, configInitMobileInfraReq).f(sg.d.f75349a.e()).y(a.f42997a).u(new b(jCurrentTimeMillis)).j(new c(jCurrentTimeMillis));
        Intrinsics.g(jVarJ, "doOnError(...)");
        return jVarJ;
    }
}
